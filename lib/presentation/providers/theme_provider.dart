
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

final isDarkModeProvider = StateProvider<bool>((ref) => false);

// Listado de colores inmulables
final colorListProvider = Provider((ref) => colorList);

final selectedColorProvider = StateProvider((ref) => 0);

// Un objeto de tipo AppTheme (custom)
final themeNotifierProvider = StateNotifierProvider<ThemeNotifier, AppTheme>(
  (ref) => ThemeNotifier()
);

// Controller a Notifier
class ThemeNotifier extends StateNotifier<AppTheme> {
  // STATE = Estado = new AppTheme();
  ThemeNotifier(): super(AppTheme());

  void toogleDarkMode(){

  }

  void changeColorIndex(int colorIndex){

  }
}