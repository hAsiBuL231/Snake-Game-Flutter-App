import 'package:flutter/material.dart';

class Func extends StatefulWidget {
  const Func({Key? key}) : super(key: key);

  @override
  State<Func> createState() => _FuncState();
}

class _FuncState extends State<Func> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      ///   Drawer    ///
      child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            color: Colors.cyan,
            height: 100,
            child: const Text(
              "Welcome to Drawer",
            ),
          ),
          const ListTile(
              leading: Icon(Icons.info_outline),
              title: TextButton(
                  onPressed: null, child: Text("Info"))), // Drawer : Info
          const ListTile(
              leading: Icon(Icons.help_outline),
              title: TextButton(
                  onPressed: null,
                  child: Text("Help & Support"))), // Drawer : help & support
          const ListTile(
              leading: Icon(Icons.feedback_outlined),
              title: TextButton(
                  onPressed: null, child: Text("Feedback"))), // Drawer : feedback
          const ListTile(
              leading: Icon(Icons.settings),
              title: TextButton(
                  onPressed: null, child: Text("Settings"))), // Drawer : settings
          const ListTile(
              leading: Icon(Icons.exit_to_app),
              title: TextButton(
                  onPressed: null, child: Text("Exit"))) // Drawer : exit
        ],
      ),
    );
  }
}