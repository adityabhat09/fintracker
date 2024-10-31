import 'package:fintracker/bloc/cubit/app_cubit.dart';
import 'package:fintracker/helpers/migrations/theme_controller.dart';
import 'package:fintracker/screens/main.screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class App extends StatelessWidget {
  const App({super.key});
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: MediaQuery.of(context).platformBrightness == Brightness.dark ? Brightness.light : Brightness.dark
    ));

    return  BlocBuilder<AppCubit, AppState>(
        builder: (context, state){
          return MaterialApp(
            title: 'Fintracker',
            theme: ThemeController.buildTheme(Brightness.light),
            darkTheme: ThemeController.buildTheme(Brightness.dark),
            home: const MainScreen(),
            localizationsDelegates: const [
              GlobalWidgetsLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
            ],
            themeMode: ThemeMode.system,
          );
        }
    );
  }
}