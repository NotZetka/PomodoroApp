import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  CountDownController _controller = CountDownController();
  int duration = 100;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Image.asset('assets/bgimage.png', fit: BoxFit.cover),
      Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.settings),
              ),
            ),
          ],
        ),
        body: SafeArea(child: Center(
          //layoutbuilder is responsive for sizing app
          child: LayoutBuilder(builder: (context, constraints) {
            return Column(
              children: [
                //Settings button
                Expanded(
                  flex: 10,
                  child: Row(
                    children: [
                      Expanded(
                        child: SizedBox(),
                        flex: 5,
                      ),
                      Expanded(
                        flex: 5,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Opacity(
                            opacity: 0.6,
                            child: CircularCountDownTimer(
                              controller: _controller,
                              width: constraints.maxWidth * 0.25,
                              height: constraints.maxHeight * 0.2,
                              duration: duration,
                              fillColor: Colors.pink,
                              ringColor: Colors.purple,
                              strokeWidth: 10.0,
                              textStyle: TextStyle(
                                fontSize: 23.0,
                                color: Colors.white,
                                fontFamily: 'Montserrat',
                              ),
                              isReverse: true,
                              autoStart: false,
                              isTimerTextShown: true,
                              onStart: () {},
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: SizedBox(),
                        flex: 5,
                      )
                    ],
                  ),
                ),
                Row(children: [
                  _button(
                      title: "Start",
                      onPressed: () {
                        _controller.resume();
                      },
                      myicon: Icon(Icons.play_arrow_rounded)),
                ]),
                Row(children: [
                  Expanded(
                    child: SizedBox(),
                    flex: 1,
                  ),
                  _button(
                      title: "Pause",
                      onPressed: () {
                        _controller.pause();
                      },
                      myicon: Icon(Icons.pause)),
                  _button(
                      title: "Restart",
                      onPressed: () {
                        _controller.restart(duration: duration);
                        _controller.pause();
                      },
                      myicon: Icon(Icons.restart_alt)),
                  Expanded(
                    child: SizedBox(),
                    flex: 1,
                  )
                ]),
                Container(
                  height: constraints.maxHeight * 0.1,
                  child: SizedBox(),
                )
              ],
            );
          }),
        )),
      ),
    ]);
  }

  _button(
      {required String title, VoidCallback? onPressed, required Icon myicon}) {
    return Expanded(
      child: IconButton(
        icon: myicon,
        onPressed: onPressed,
        color: Colors.white,
        iconSize: 40,
      ),
      flex: 1,
    );
  }
}
