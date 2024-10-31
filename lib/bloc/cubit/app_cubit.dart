import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppState{
  late int themeColor;
  late String? currency;

  static Future<AppState> getState() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    int? themeColor = prefs.getInt("themeColor");
    String? currency = prefs.getString("currency");

    AppState appState = AppState();
    appState.themeColor = themeColor ?? Colors.green.value;
    appState.currency = currency;

    return appState;
  }
}
class AppCubit extends Cubit<AppState>{
  AppCubit(super.initialState);

  Future<void> updateCurrency(currency) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString("currency", currency);
    emit(await AppState.getState());
  }
  Future<void> updateThemeColor(int color) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt("themeColor", color);
    emit(await AppState.getState());
  }

  Future<void> reset() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove("currency");
    await prefs.remove("themeColor");
    emit(await AppState.getState());
  }

}