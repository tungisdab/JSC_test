import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'theme_event.dart';

class ThemeBloc extends Bloc<ThemeEvent, bool> {
  ThemeBloc() : super(false) {
    on<InitializeThemeEvent>((event, emit) async {
      bool isDark = await getLocalTheme();
      emit(isDark);
    });

    on<ChangeThemeEvent>((event, emit) async {
      bool isDark = await getLocalTheme();
      emit(!isDark);
      final SharedPreferences sharedPreferences =
          await SharedPreferences.getInstance();
      await sharedPreferences.setBool('isDark', !isDark);
    });
  }
}

Future<bool> getLocalTheme() async {
  final SharedPreferences sharedPreferences =
      await SharedPreferences.getInstance();
  return sharedPreferences.getBool('isDark') ?? false;
}
