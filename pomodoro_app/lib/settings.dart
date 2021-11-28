import 'package:flutter/material.dart';
import 'package:pomodoro_app/home.dart';

class Settings extends StatefulWidget {
  final int duration;

  Settings({required this.duration});

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    var scaffold = Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: IconButton(
            onPressed: () => showTimePicker(
              initialTime: TimeOfDay(
                  hour: widget.duration ~/ 60, minute: widget.duration % 60),
              context: context,
            ),
            icon: Icon(
              Icons.timer,
              size: 60,
              color: Colors.white,
            ),
          ),
        ));
    print(widget.duration);
    return myStack(scaffold);
  }
}
