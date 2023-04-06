import 'package:firebase/screen/formscreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp();
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: TabBarView(children: [FromScreen(),]),
        bottomNavigationBar: const TabBar(
          tabs: [
          Tab(text: 'บันทึกอุณหภูมิ'),
          Tab(text: 'รายชื่อนักเรียน',
          )
        ]),
        backgroundColor: Colors.blue,
      ),
    );
  }
}
