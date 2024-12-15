import 'package:digtal_clock/home.dart';
import 'package:digtal_clock/style/theme.dart';
import 'package:digtal_clock/style/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // تحديد توجهات الشاشة المسموحة فقط
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight,
  ]);

  runApp(ChangeNotifierProvider(
    create: (context) => ThemeProvider(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Digtal Clock',

      /* App Theme */
      theme: Provider.of<ThemeProvider>(context).themeData,
      // darkTheme: darkMode,
      home: const HomePage(),
    );
  }
}
