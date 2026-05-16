import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DashboardPage(),
    );
  }
}

//////////////////////////////////////////////////////
// DASHBOARD
//////////////////////////////////////////////////////

class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  String result = "No Feedback Yet";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Dashboard")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Text(
              "Result: $result",
              style: TextStyle(fontSize: 20),
            ),

            SizedBox(height: 20),

            ElevatedButton(
              child: Text("Go to Heart Rate"),
              onPressed: () async {
                final feedback = await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HeartRatePage(),
                  ),
                );

                if (feedback != null) {
                  setState(() {
                    result = feedback;
                  });
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}

//////////////////////////////////////////////////////
// HEART RATE PAGE
//////////////////////////////////////////////////////

class HeartRatePage extends StatelessWidget {
  final int bpm = 78;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Heart Rate")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Text("Heart Rate: $bpm BPM", style: TextStyle(fontSize: 22)),

            SizedBox(height: 20),

            ElevatedButton(
              child: Text("View Details"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailsPage(bpm: bpm),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

//////////////////////////////////////////////////////
// DETAILS PAGE
//////////////////////////////////////////////////////

class DetailsPage extends StatelessWidget {
  final int bpm;

  DetailsPage({required this.bpm});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Details")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Text("BPM: $bpm", style: TextStyle(fontSize: 22)),

            SizedBox(height: 20),

            ElevatedButton(
              child: Text("Give Feedback"),
              onPressed: () async {
                final result = await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FeedbackPage(),
                  ),
                );

                Navigator.pop(context, result);
              },
            ),
          ],
        ),
      ),
    );
  }
}

//////////////////////////////////////////////////////
// FEEDBACK PAGE
//////////////////////////////////////////////////////

class FeedbackPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Feedback")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Text("How is your health?"),

            SizedBox(height: 20),

            ElevatedButton(
              child: Text("Good"),
              onPressed: () {
                Navigator.pop(context, "Good");
              },
            ),

            ElevatedButton(
              child: Text("Bad"),
              onPressed: () {
                Navigator.pop(context, "Bad");
              },
            ),
          ],
        ),
      ),
    );
  }
}