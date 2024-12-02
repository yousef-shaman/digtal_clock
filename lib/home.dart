import 'package:digtal_clock/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:timer_builder/timer_builder.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  DateTime now = DateTime.now();
  bool isDarkMode = false;

  // Future<DateTime> fetchClock() async {
  //   now = DateTime.now();
  //   return now;
  // }

  changeMode() {
    setState(() {
          isDarkMode = !isDarkMode;
        });
  }

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: () => changeMode(),
      child: Scaffold(
        backgroundColor: isDarkMode ? AppStyle.primaryColor : AppStyle.primaryColorDark,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TimerBuilder.periodic(
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
                    // String day = DateTime.now().toString();
                    return Center(
                      child: Column(
                        children: [
                          Text(
                            "Today",
                            style: isDarkMode? AppStyle.mainTextThin : AppStyle.mainTextThinDark,
                          ),
                          const SizedBox(
                            height: 40.0,
                          ),
                          Text(
                                "$hour:$minute:$second",
                                style: isDarkMode? AppStyle.maintext : AppStyle.maintextDark,
                              ),
                        ],
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}