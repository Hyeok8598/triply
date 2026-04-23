import 'package:flutter/material.dart';
import 'package:triply/features/checklist/presentation/checklist_page.dart';
import 'package:triply/features/checklist/presentation/schedule_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Triply"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "여행 시작",
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20,),
            SizedBox(
              width: 200,
              child: ElevatedButton(
                onPressed: () { moveToSchedule(context); },
                child: Text("일정 만들기")
              ),
            ),
            SizedBox(height: 20,),
            SizedBox(
              width: 200,
              child: ElevatedButton(
                onPressed: () { moveToChecklist(context); },
                child: Text("체크리스트")
              ),
            ),
          ],
        ),
      ),
    );
  }

  void moveToSchedule(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SchedulePage())
    );
  }

  void moveToChecklist(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ChecklistPage())
    );
  }
}