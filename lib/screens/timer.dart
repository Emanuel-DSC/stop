import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:stop/constants.dart';
import 'package:stop/widgets/lato_text.dart';
import 'package:stop/widgets/my_timer.dart';

class TimerSettings extends StatefulWidget {
  const TimerSettings({super.key});

  @override
  State<TimerSettings> createState() => TimerSettingsState();
}

class TimerSettingsState extends State<TimerSettings> {
  // create TimeOfDay variable
  static int currentHorizontalIntValue = 60;
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBgColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          LatoText(size: 22, text: kTimerText.toUpperCase()),
          const SizedBox(height: 5),
          LatoText(size: 22, text: kTimerText2.toUpperCase()),
          const SizedBox(height: 30),
          NumberPicker(
            textStyle: myTextStyle,
            selectedTextStyle: mySelectedTextStyle,
            value: currentHorizontalIntValue,
            minValue: 30,
            maxValue: 300,
            step: 30,
            itemHeight: 100,
            axis: Axis.horizontal,
            onChanged: (value) =>
                setState(() => currentHorizontalIntValue = value),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: kButtonColor),
            ),
          ),
          const SizedBox(height: 50),
          const LatoText(size: 22, text: 'Mute alarm'),
          const SizedBox(height: 5),
          Switch(
            activeColor: kResetColor,
            inactiveTrackColor: kButtonColor,
            value: isSwitched,
            onChanged: (value) {
              setState(() {
                isSwitched = value;
                if (isSwitched == false) {
                  MyTimer.vol = 1;
                }
                else {
                  MyTimer.vol = 0;
                }              
              });
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
          ),
        ],
      ),
    );
  }
}