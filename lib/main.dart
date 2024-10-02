import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jsc_test/core/styles/styles.dart';

void main() {
  runApp(
    BlocProvider(
        create: (context) => ThemeBloc()..add(InitializeThemeEvent()),
        child: const MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, bool>(
      builder: (context, state) {
        return MaterialApp(
          title: 'My Shoes',
          debugShowCheckedModeBanner: false,
          theme: state
              ? AppTheme(AppColor.darkColors).getTheme()
              : AppTheme(AppColor.lightColors).getTheme(),
          home: const MyHomePage(title: 'Flutter Demo Home Page'),
        );
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          BlocBuilder<ThemeBloc, bool>(
            builder: (context, state) {
              return Switch(
                  value: state,
                  onChanged: (bool value) {
                    context.read<ThemeBloc>().add(ChangeThemeEvent());
                  });
            },
          )
        ],
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              'counter',
            ),
          ],
        ),
      ),
    );
  }
}
