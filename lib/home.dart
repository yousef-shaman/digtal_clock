import 'package:digtal_clock/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:timer_builder/timer_builder.dart';
import 'package:intl/intl.dart';



class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  DateTime now = DateTime.now();
  bool isDarkMode = false;

  
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
        backgroundColor:
            isDarkMode ? AppStyle.primaryColor : AppStyle.primaryColorDark,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
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
                    // Getting the current day name
                    String dayName = DateFormat('EEEE').format(DateTime.now());
                    return Center(
                      child: Column(
                        children: [
                          Text(
                            dayName,
                            style: isDarkMode
                                ? AppStyle.mainTextThin
                                : AppStyle.mainTextThinDark,
                          ),
                          const SizedBox(
                            height: 62.0,
                          ),
                          Text(
                            "$hour:$minute:$second",
                            style: isDarkMode
                                ? AppStyle.maintext
                                : AppStyle.maintextDark,
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
