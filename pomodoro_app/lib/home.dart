import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[400],
      body: SafeArea(
        child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/bgimage.png"), fit: BoxFit.cover),
            ),
            child: Center(
              //layoutbuilder is responsive for sizing app
              child: LayoutBuilder(builder: (context, constraints) {
                return Column(
                  children: [
                    //Settings button
                    Container(
                      height: constraints.maxHeight * 0.08,
                      child: Align(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.settings,
                              color: Colors.white,
                            ),
                            alignment: Alignment.centerRight,
                          ),
                        ),
                        alignment: Alignment.centerRight,
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.settings,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: constraints.maxHeight * 0.08,
                      child: SizedBox(),
                    )
                  ],
                );
              }),
            )),
      ),
    );
  }
}
