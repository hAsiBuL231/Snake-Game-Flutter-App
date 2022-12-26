import 'dart:async';

import 'package:flutter/material.dart';

class GamePage extends StatefulWidget {
  const GamePage({Key? key}) : super(key: key);

  @override
  GamePageState createState() => GamePageState();
}

class GamePageState extends State<GamePage> {
  startGame() {
    Timer.periodic(const Duration(milliseconds: 300), (timer) {
      updateSnake();
    });
  }

  updateSnake() {
    /*@override
    void setState(VoidCallback fn) {
      // TODO: implement setState

      super.setState(fn);
    }*/
  }

  @override
  Widget build(BuildContext context) {
    int profileH = MediaQuery.of(context).size.height.toInt();
    int profileW = MediaQuery.of(context).size.width.toInt();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            //Text(profileH.toString()),
            //Text(profileW.toString()),
            Container(
                height: profileH - (profileH / 3),
                //width: profileW - 10,
                width: profileH / 2,
                color: Colors.black,
                child: GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    padding: const EdgeInsets.all(10),
                    itemCount: 25 * 38,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 25,
                      mainAxisSpacing: 2,
                      crossAxisSpacing: 2,
                    ),
                    itemBuilder: (contex, index) {
                      return Container(
                        color: Colors.white,
                      );
                    })),
            Container(
                padding: const EdgeInsets.all(7),
                height: (profileH / 3) - 40,
                width: profileW - 20,
                color: Colors.amber,
                child: Table(
                  children: [
                    TableRow(children: [
                      Container(
                        height: 52,
                      ),
                      SizedBox(
                        height: 60,
                        child: ElevatedButton.icon(
                            onPressed: () {},
                            icon: const Icon(Icons.arrow_upward_outlined),
                            label: const Text("Up")),
                      ),
                      Container()
                    ]),
                    TableRow(children: [
                      SizedBox(
                        height: 60,
                        child: ElevatedButton.icon(
                            onPressed: () {},
                            icon: const Icon(Icons.arrow_back),
                            label: const Text("Left")),
                      ),
                      Container(
                        height: 52,
                      ),
                      SizedBox(
                        height: 60,
                        child: ElevatedButton.icon(
                            onPressed: () {},
                            icon: const Icon(Icons.arrow_forward),
                            label: const Text("Right")),
                      )
                    ]),
                    TableRow(children: [
                      Container(),
                      SizedBox(
                        height: 60,
                        child: ElevatedButton.icon(
                            onPressed: () {},
                            icon: const Icon(Icons.arrow_downward),
                            label: const Text("Down")),
                      ),
                      Container()
                    ])
                  ],
                )),
          ],
        ),
      ),
      backgroundColor: Colors.blue[100],
    );
  }
}
