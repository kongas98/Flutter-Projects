import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:expense_tracker/widgets/expenses.dart';

var kColorScheme = ColorScheme.fromSeed(
  seedColor: Color.fromARGB(255, 9, 22, 37),
);

var kDarkColorScheme = ColorScheme.fromSeed(
  brightness: Brightness.dark,
  seedColor: Color.fromARGB(255, 5, 99, 125));
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]).then((fn){
    runApp(
    MaterialApp(
      darkTheme: ThemeData.dark().copyWith(
        colorScheme: kDarkColorScheme,

        appBarTheme: const AppBarTheme().copyWith(
          backgroundColor: kDarkColorScheme.onPrimaryFixedVariant,
          centerTitle: true,
        ),
        
        cardTheme: CardTheme().copyWith(
          color: kDarkColorScheme.primaryContainer,
          margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        ),
        
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: kDarkColorScheme.secondaryContainer,
          ),
        ),
        
        textTheme: ThemeData().textTheme.copyWith(
          titleMedium: TextStyle(
            fontWeight: FontWeight.bold,
            color: kDarkColorScheme.primaryFixedDim,
            fontSize: 18,
          ),

        titleLarge: TextStyle(
          color: kDarkColorScheme.primaryFixedDim
        ),

        bodyMedium: TextStyle(
          color: kDarkColorScheme.primaryFixedDim
        )
        ),
      ),

      theme: ThemeData().copyWith(
        colorScheme: kColorScheme,

        appBarTheme: const AppBarTheme().copyWith(
          backgroundColor: kColorScheme.onPrimaryFixedVariant,
          centerTitle: true,
        ),
        
        cardTheme: CardTheme().copyWith(
          color: kColorScheme.primaryContainer,
          margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        ),
        
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: kColorScheme.secondaryContainer,
          ),
        ),

        textTheme: ThemeData().textTheme.copyWith(
          titleMedium: TextStyle(
            fontWeight: FontWeight.bold,
            color: kColorScheme.primaryFixedDim,
            fontSize: 18,
          ),
        ),

        scaffoldBackgroundColor: kColorScheme.primaryFixedDim,
      ),
      
      themeMode: ThemeMode.system,
      home: Expenses(),
    ),
  );
  });
  
}
