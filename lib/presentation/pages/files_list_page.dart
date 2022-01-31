import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:xdev_test/interface_adapters/interface_adapters.dart';

import '../change_notifiers/change_notifiers.dart';

class FilesListPage extends StatelessWidget {
  const FilesListPage({Key? key}) : super(key: key);

  static const String route = '/files_list';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Файлы')),
      body: const FilesList(),
      floatingActionButton: const AddFileButton(),
    );
  }
}

class FilesList extends StatelessWidget {
  const FilesList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final FilesStatesNotifier notifier = context.watch<FilesStatesNotifier>();
    final List<FileUploadingState> states =
        notifier.filesStates.values.toList();

    return ListView.builder(
      itemCount: states.length,
      itemBuilder: (BuildContext context, int index) {
        late final String itemFileName;
        late final String itemMessage;
        late final String itemFileId;

        final FileUploadingState uploadingState = states[index];

        uploadingState.mapOrNull(
          waiting: (FileWaitingState state) {
            itemFileName = state.fileName;
            itemFileId = state.fileId;
            itemMessage = 'В ожидании';
          },
          uploading: (FileUploadingProgressState state) {
            itemFileName = state.fileName;
            itemFileId = state.fileId;
            itemMessage = 'Загружается';
          },
          uploaded: (FileUploadedState state) {
            itemFileName = state.fileName;
            itemFileId = state.fileId;
            itemMessage = 'Успешно загружен';
          },
        );

        return _FileListTile(
          message: itemMessage,
          fileName: itemFileName,
          onClose: () {
            context.read<FileUploadingCubit>().cancelUpload(itemFileId);
          },
        );
      },
    );
  }
}

class _FileListTile extends ListTile {
  _FileListTile({
    Key? key,
    required String message,
    required String fileName,
    required VoidCallback onClose,
  }) : super(
          key: key,
          title: Text(fileName),
          subtitle: Text(message),
          trailing: IconButton(
            icon: const Icon(Icons.close),
            onPressed: onClose,
          ),
        );
}

@visibleForTesting
class AddFileButton extends StatefulWidget {
  const AddFileButton({Key? key}) : super(key: key);

  static const ValueKey buttonKey = ValueKey(AddFileButton);

  @override
  AddFileButtonState createState() => AddFileButtonState();
}

class AddFileButtonState extends State<AddFileButton> {
  AddFileButtonState() : _isVisible = true;

  bool _isVisible;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: _isVisible,
      child: BlocListener<FileUploadingCubit, FileUploadingState>(
        listener: (BuildContext context, FileUploadingState state) {
          state.whenOrNull(limitExceeded: (
            String fileName,
            String fileId,
          ) {
            setState(() {
              _isVisible = false;
            });
          });
        },
        child: FloatingActionButton(
          key: AddFileButton.buttonKey,
          onPressed: context.read<FileUploadingCubit>().uploadFile,
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
