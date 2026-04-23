import 'package:flutter/material.dart';

class ChecklistPage extends StatefulWidget {
  @override
  _ChecklistPage createState() => _ChecklistPage();
}

class _ChecklistPage extends State<ChecklistPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("체크리스트"),
      ),
      body: Center(
        child: Text("체크리스트 화면"),
      ),
    );
  }
}
