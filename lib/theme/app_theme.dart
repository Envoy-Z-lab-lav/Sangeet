import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_it/get_it.dart';
import 'package:sangeet/Helpers/config.dart';

// ignore: avoid_classes_with_only_static_members
class AppTheme {
  static MyTheme get currentTheme => GetIt.I<MyTheme>();
  static ThemeMode get themeMode => GetIt.I<MyTheme>().currentTheme();

  static ThemeData darkTheme({
    required BuildContext context,
  }) {
    return ThemeData(
      useMaterial3: false,
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: Colors.transparent,
          elevation: 0.0,
        ),
      ),
      textSelectionTheme: TextSelectionThemeData(
        selectionHandleColor: currentTheme.currentColor(),
        cursorColor: currentTheme.currentColor(),
        selectionColor: currentTheme.currentColor(),
      ),
      inputDecorationTheme: InputDecorationTheme(
        focusedBorder: UnderlineInputBorder(
          borderSide:
              BorderSide(width: 1.5, color: currentTheme.currentColor()),
        ),
      ),
      listTileTheme: ListTileThemeData(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(7.0),
        ),
      ),
      visualDensity: VisualDensity.adaptivePlatformDensity,
      brightness: Brightness.dark,
      appBarTheme: const AppBarTheme(
        color: Color(0xFF000326),
        foregroundColor: Colors.white,
        systemOverlayStyle: SystemUiOverlayStyle.light,
      ),
      canvasColor: const Color(0xFF000326),
      cardColor: const Color(0xFF121212),
      cardTheme: CardTheme(
        clipBehavior: Clip.antiAlias,
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(7.0),
        ),
      ),
      dialogBackgroundColor: const Color(0xFF121212),
      progressIndicatorTheme: const ProgressIndicatorThemeData()
          .copyWith(color: currentTheme.currentColor()),
      iconTheme: const IconThemeData(
        color: Colors.white,
        opacity: 1.0,
        size: 24.0,
      ),
      indicatorColor: currentTheme.currentColor(),
      colorScheme: Theme.of(context).colorScheme.copyWith(
            primary: Colors.white,
            secondary: currentTheme.currentColor(),
            brightness: Brightness.dark,
          ),
    );
  }
}
