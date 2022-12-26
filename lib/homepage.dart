import 'package:flutter/material.dart';
import 'package:game_project/makefile.dart';
import 'package:game_project/drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Func(),
      appBar: AppBar(
        /// Appbar ///
        title: const Text("Flutter Demo Snake Game"),
        centerTitle: true,
        shape: const RoundedRectangleBorder(
          side: BorderSide.none,
          borderRadius: BorderRadius.horizontal(
              left: Radius.circular(25), right: Radius.circular(25)),
        ),

        ///
        leading: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return const Func();
                  },
                ),
              );
            }),
        actions: <Widget>[
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          PopupMenuButton(itemBuilder: (BuildContext context) {
            return [
              const PopupMenuItem(
                child: Text("hello"),
              )
            ];
          })
        ],
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 12, right: 4, top: 30),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(200.0),
              child: Image.asset(
                'images/R.png',
                width: 150.0,
                height: 150.0,
                fit: BoxFit.fill,
              ),
            ),
          ),

          const Padding(
            /// Welcome title ///
            padding: EdgeInsets.fromLTRB(15, 15, 15, 70),
            child: Text(
              "Welcome to My Flutter APP",

              /// title  ///
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
                color: Colors.purple,
              ),
            ),
          ),

          /// Welcome title ///
          // ignore: deprecated_member_use
          Center(
            /// Start Game Button ///
            // ignore: deprecated_member_use
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return const GamePage();
                }));
              },
              child: Container(
                color: Colors.blue,
                padding: const EdgeInsets.all(30.0),
                child: const Text(
                  "Start Game",

                  ///  Button ///
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          )

          /// Start Game Button ///
        ],
      ),
      floatingActionButton: const Icon(Icons.account_circle),
      backgroundColor: Colors.cyan[50],
    );
  }
}
