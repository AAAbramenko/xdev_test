import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:xdev_test/interface_adapters/interface_adapters.dart';

import 'files_list_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  static const String route = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('HomePage')),
      body: const _HomePageBody(),
    );
  }
}

class _HomePageBody extends StatelessWidget {
  const _HomePageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<SaveFilesCubit, SaveFilesState>(
      listener: (BuildContext context, SaveFilesState state) {
        if (state is SavedFilesState) {
          _SaveFilesSnackbar.show(context);
        }
      },
      child: Center(
        child: Column(children: [
          ClickableElement(),
          const Spacer(),
          Row(children: [
            ResetButton(),
            const Spacer(),
            SaveButton(),
          ]),
        ]),
      ),
    );
  }
}

@visibleForTesting
class ResetButton extends BlocBuilder<FilesCountCubit, FilesCountState> {
  static const ValueKey buttonKey = ValueKey(ResetButton);

  ResetButton({Key? key})
      : super(
            key: key,
            builder: (BuildContext context, FilesCountState state) {
              final VoidCallback? onPressed = state.maybeWhen<VoidCallback?>(
                noFiles: () => null,
                orElse: () => () {
                  context.read<FileUploadingCubit>().reset();
                },
              );

              return _BottomTextButton(
                key: buttonKey,
                onPressed: onPressed,
                title: 'Сбросить',
              );
            });
}

@visibleForTesting
class SaveButton extends BlocBuilder<FilesCountCubit, FilesCountState> {
  static const ValueKey buttonKey = ValueKey(SaveButton);

  SaveButton({Key? key})
      : super(
            key: key,
            builder: (BuildContext context, FilesCountState state) {
              final VoidCallback? onPressed = state.maybeWhen<VoidCallback?>(
                loadingFinished: (int totalFiles) => () {
                  context.read<SaveFilesCubit>().saveFiles();
                },
                orElse: () => null,
              );

              return _BottomTextButton(
                key: buttonKey,
                onPressed: onPressed,
                title: 'Сохранить',
              );
            });
}

class _BottomTextButton extends TextButton {
  _BottomTextButton({
    Key? key,
    required String title,
    required VoidCallback? onPressed,
  }) : super(
          key: key,
          onPressed: onPressed,
          child: Text(title),
        );
}

@visibleForTesting
class ClickableElement extends Builder {
  static const elementKey = ValueKey(ClickableElement);

  ClickableElement({Key? key})
      : super(
            key: key,
            builder: (BuildContext context) {
              return ListTile(
                key: elementKey,
                title: const Text('Файлы'),
                subtitle: _ClickableElementSubtitle(),
                trailing: const Icon(Icons.chevron_right),
                onTap: () {
                  Navigator.pushNamed(context, FilesListPage.route);
                },
              );
            });
}

class _ClickableElementSubtitle
    extends BlocBuilder<FilesCountCubit, FilesCountState> {
  _ClickableElementSubtitle({Key? key})
      : super(
          key: key,
          builder: (BuildContext context, FilesCountState state) {
            final String message = state.when<String>(
              noFiles: () {
                return 'Нет файлов';
              },
              inProgress: (
                int totalFiles,
                int remainingFiles,
              ) {
                return 'Осталось загрузить: $remainingFiles. Всего файлов: $totalFiles';
              },
              loadingFinished: (int totalFiles) {
                return 'Кол-во файлов: $totalFiles';
              },
            );

            return Text(message);
          },
        );
}

class _SaveFilesSnackbar extends SnackBar {
  const _SaveFilesSnackbar()
      : super(
          content: const Text('Файлы сохранены.'),
        );

  static show(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(const _SaveFilesSnackbar());
  }
}
