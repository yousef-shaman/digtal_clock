import 'package:digtal_clock/style/text_style.dart';
import 'package:digtal_clock/style/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:timer_builder/timer_builder.dart';
import 'package:intl/intl.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  DateTime now = DateTime.now();
  

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () =>
          Provider.of<ThemeProvider>(context, listen: false).toggleTheme(),
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.surface,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: TimerBuilder.periodic(
              const Duration(seconds: 1),
              builder: (context) {
                //getting the time
                String second = DateTime.now().second < 10
                    ? "0${DateTime.now().second}"
                    : DateTime.now().second.toString();
                String minute = DateTime.now().minute < 10
                    ? "0${DateTime.now().minute}"
                    : DateTime.now().minute.toString();
                String hour = DateTime.now().hour < 10
                    ? "0${DateTime.now().hour}"
                    : DateTime.now().hour.toString();

                // Getting the current day name
                String dayName = DateFormat('EEEE').format(DateTime.now());

                return Stack(children: [
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      dayName.toUpperCase(),
                      style: AllTextStyle.subText(context),
                    ),
                  ),
                  const SizedBox(
                    height: 62.0,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      textScaler: const TextScaler.linear(0.9),
                      "$hour   $minute   $second",
                      style: AllTextStyle.mainText(context),
                    ),
                  ),
                ]);
              },
            ),
          ),
        ),
      ),
    );
  }
}
