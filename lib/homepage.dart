

import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  //branchB added method
  void git_method_branchB(){
    print('git branch branchB is created and added a method');
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        title: Text("Database_post"),

      ),
      body: Center(
        child: Column(
          children: [
            TextField(),
            TextButton(onPressed: (){}, child: Text("sync")),
          ],
        ),
      ),
    ));
  }
}
