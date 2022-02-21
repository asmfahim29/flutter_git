

import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

<<<<<<< HEAD
  //branchB added method
  void git_method_branchB(){
    print('git branch branchB is created and added a method');
  }

=======
  TextEditingController _taskEditingController = TextEditingController();

  //creating method for branchA
  void git_method_branchA(){
    print('created method for branch a');
  }
>>>>>>> branchA
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
