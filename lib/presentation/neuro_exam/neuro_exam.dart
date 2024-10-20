import 'package:flutter/material.dart';

class NeurologicalExam extends StatefulWidget {
  const NeurologicalExam({Key? key}) : super(key: key);

  @override
  _NeurologicalExamState createState() => _NeurologicalExamState();
}

class _NeurologicalExamState extends State<NeurologicalExam> {
  int currentStep = 0;

  void _showNextStep(
      BuildContext context, String stepTitle, String stepQuestion) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(stepTitle),
          content: Text(stepQuestion),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                // If "No", conclude exam and show the user is good
                Navigator.of(context).pop();
                _showGoodResult(context);
              },
              child: const Text("No"),
            ),
            TextButton(
              onPressed: () {
                // If "Yes", move to the next step
                Navigator.of(context).pop();
                setState(() {
                  currentStep++;
                });
                if (currentStep < examSteps.length) {
                  _showNextStep(
                    context,
                    examSteps[currentStep]['title']!,
                    examSteps[currentStep]['question']!,
                  );
                } else {
                  _showEmergencyResult(context);
                }
              },
              child: const Text("Yes"),
            ),
          ],
        );
      },
    );
  }

  void _showGoodResult(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("You're Good"),
          content: const Text(
              "No issues detected. You may return to the home screen."),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text("Okay"),
            ),
          ],
        );
      },
    );
  }

  void _showEmergencyResult(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Call 911!"),
          content: const Text(
              "You may be experiencing a stroke. Please call 911 immediately."),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text("Call 911"),
            ),
          ],
        );
      },
    );
  }

  List<Map<String, String>> examSteps = [
    {
      'title': 'Facial Droop',
      'question': 'Do you have facial droop (Yes or No)?',
    },
    {
      'title': 'Arm Weakness',
      'question': 'Do you have arm weakness (Yes or No)?',
    },
    {
      'title': 'Speech Difficulty',
      'question': 'Do you have speech difficulty (Yes or No)?',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Neurological Exam"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Start the exam from the first step
            _showNextStep(
                context, examSteps[0]['title']!, examSteps[0]['question']!);
          },
          child: const Text("Start Exam"),
        ),
      ),
    );
  }
}
