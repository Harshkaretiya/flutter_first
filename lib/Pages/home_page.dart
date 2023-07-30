import 'package:flutter/material.dart';
import '../widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true ,
        title: Text("Flutter App"),
      ),
      body: const Center(
          child: Text("Hello India")
      ),
      drawer: MyDrawer(),

    );
  }

}
