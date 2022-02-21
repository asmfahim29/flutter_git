

import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  TextEditingController _taskEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        title: Text("Database_post"),

      ),
      body: Center(
        child: Column(
          children: [
            TextField(
              controller: _taskEditingController,
              decoration: const InputDecoration(hintText: 'Enter your tasks'),
            ),
            const SizedBox(
              height: 10,
            ),
            TextButton(
                onPressed: (){},
                child: Text("SynC", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),)
            ),
          ],
        ),
      ),
    ));
  }
}
