import 'package:flutter/material.dart';

class GamePage extends StatefulWidget {
  const GamePage({Key? key}) : super(key: key);

  @override
  _GamePageState createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  @override
  Widget build(BuildContext context) {
    double profileH = MediaQuery.of(context).size.height;
    double profileW = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Container(
                height: profileH - 200,
                width: profileW - 20,
                color: Colors.black,
                child: GridView.builder(
                    padding: const EdgeInsets.all(10),
                    itemCount: 2475,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 45,
                      mainAxisSpacing: 1,
                      crossAxisSpacing: 1,
                    ),
                    itemBuilder: (contex, index) {
                      return Container(
                        color: Colors.white,
                      );
                    })),
            Container(
                padding: const EdgeInsets.all(7),
                height: 160,
                width: profileW - 20,
                color: Colors.amber,
                child: Table(
                  children: [
                    TableRow(children: [
                      Container(
                        height: 52,
                      ),
                      SizedBox(
                        height: 50,
                        child: ElevatedButton.icon(
                            onPressed: () {},
                            icon: const Icon(Icons.arrow_upward_outlined),
                            label: const Text("Up")),
                      ),
                      Container()
                    ]),
                    TableRow(children: [
                      SizedBox(
                        height: 50,
                        child: ElevatedButton.icon(
                            onPressed: () {},
                            icon: const Icon(Icons.arrow_back),
                            label: const Text("Left")),
                      ),
                      Container(
                        height: 52,
                      ),
                      SizedBox(
                        height: 50,
                        child: ElevatedButton.icon(
                            onPressed: () {},
                            icon: const Icon(Icons.arrow_forward),
                            label: const Text("Right")),
                      )
                    ]),
                    TableRow(children: [
                      Container(),
                      SizedBox(
                        height: 50,
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
