import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:xdev_test/domain/domain.dart';
import 'package:xdev_test/interface_adapters/interface_adapters.dart';

import 'change_notifiers/change_notifiers.dart';
import 'pages/files_list_page.dart';
import 'pages/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
    required this.uploadInteractor,
    required this.saveInteractor,
  }) : super(key: key);

  final UploadFileInteractor<List<int>> uploadInteractor;
  final SaveFilesInteractor saveInteractor;

  @override
  Widget build(BuildContext context) {
    final FilesCountCubit countCubit = FilesCountCubit();

    final FileUploadingCubit uploadingCubit = FileUploadingCubit(
      interactor: uploadInteractor,
      countCubit: countCubit,
    );

    return ChangeNotifierProvider<FilesStatesNotifier>(
      create: (BuildContext context) => FilesStatesNotifier(uploadingCubit),
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (BuildContext context) => SaveFilesCubit(
              saveInteractor,
            ),
          ),
          BlocProvider.value(
            value: uploadingCubit,
          ),
          BlocProvider.value(
            value: countCubit,
          ),
        ],
        child: MaterialApp(
          title: 'xdev_test',
          debugShowCheckedModeBanner: false,
          initialRoute: HomePage.route,
          routes: {
            HomePage.route: (context) => const HomePage(),
            FilesListPage.route: (context) => const FilesListPage(),
          },
        ),
      ),
    );
  }
}
