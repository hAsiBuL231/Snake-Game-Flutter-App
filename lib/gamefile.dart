import 'dart:async';

import 'package:flutter/material.dart';

class GamePage extends StatefulWidget {
  const GamePage({super.key});

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  int _k = 1;

  startGame() {
    Future.delayed(
      const Duration(milliseconds: 300),
    );
    updateSnake(1);
  }

  updateSnake(int t) {
    setState(() {
      _k += t;
      if (_k > 950) _k = 0;
      if (_k < 0) _k = 950;
    });
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
                    //physics: const NeverScrollableScrollPhysics(),
                    padding: const EdgeInsets.all(10),
                    itemCount: 25 * 38,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 25,
                      mainAxisSpacing: 2,
                      crossAxisSpacing: 2,
                    ),
                    itemBuilder: (contex, index) {
                      if (index == _k) {
                        return Container(color: Colors.black);
                      } else {
                        return Container(
                          color: Colors.white,
                        );
                      }
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
                            onPressed: () {
                              updateSnake(-25);
                            },
                            icon: const Icon(Icons.arrow_upward_outlined),
                            label: const Text("Up")),
                      ),
                      Container()
                    ]),
                    TableRow(children: [
                      SizedBox(
                        height: 60,
                        child: ElevatedButton.icon(
                            onPressed: () {
                              updateSnake(-1);
                            },
                            icon: const Icon(Icons.arrow_back),
                            label: const Text("Left")),
                      ),
                      Container(
                        height: 52,
                      ),
                      SizedBox(
                        height: 60,
                        child: ElevatedButton.icon(
                            onPressed: () {
                              updateSnake(1);
                            },
                            icon: const Icon(Icons.arrow_forward),
                            label: const Text("Right")),
                      )
                    ]),
                    TableRow(children: [
                      Container(),
                      SizedBox(
                        height: 60,
                        child: ElevatedButton.icon(
                            onPressed: () {
                              updateSnake(25);
                            },
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
