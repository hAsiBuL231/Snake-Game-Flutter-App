import 'package:flutter/material.dart';

class GamePage extends StatefulWidget {
  const GamePage({Key? key}) : super(key: key);

  @override
  GamePageState createState() => GamePageState();
}

class GamePageState extends State<GamePage> {
  @override
  Widget build(BuildContext context) {
    double profileH = MediaQuery.of(context).size.height;
    double profileW = MediaQuery.of(context).size.width;
    double h= profileH/3;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Container(
                height: profileH - h,
                width: profileW - 10,
                color: Colors.black,
                child: GridView.builder(
                    padding: const EdgeInsets.all(10),
                    itemCount: 900,
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
                height: h-50,
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
