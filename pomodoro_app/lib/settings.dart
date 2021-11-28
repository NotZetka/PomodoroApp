import 'package:flutter/material.dart';
import 'package:pomodoro_app/home.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

class Settings extends StatefulWidget {
  final int duration;

  Settings({required this.duration});

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  int newduration = 0;
  @override
  Widget build(BuildContext context) {
    var scaffold = Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: IconButton(
            onPressed: () {
              DatePicker.showTimePicker(context,
                  locale: LocaleType.pl,
                  showTitleActions: true,
                  onChanged: (date) {}, onConfirm: (date) {
                newduration = date.hour * 3600 + date.minute * 60 + date.second;
                Navigator.pop(context, newduration);
              },
                  currentTime: DateTime(
                      0, 0, 0, 0, widget.duration ~/ 60, widget.duration % 60));
            },
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
