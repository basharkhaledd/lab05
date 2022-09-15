import 'package:flutter/material.dart';

class QuestionPage extends StatefulWidget {
  const QuestionPage({super.key});

  @override
  State<QuestionPage> createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
  GlobalKey<ScaffoldState> scaffolkey = new GlobalKey<ScaffoldState>();
  String restaurant = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("talabat mart"),
        backgroundColor: Colors.orange,
        actions: <Widget>[],
      ),
      body: Container(
        width: double.infinity,
        color: Colors.orange.shade100,
        child: Column(
          children: [
            Container(
                width: 600,
                child: Text(
                  "What is your favorite restaurant?",
                  style: TextStyle(fontSize: 30, fontStyle: FontStyle.italic),
                ),
                color: Colors.white,
                margin: EdgeInsets.only(top: 100, bottom: 30),
                padding: EdgeInsets.only(left: 20, right: 20)),
            RadioListTile(
                secondary: Icon(Icons.restaurant),
                title: Text(
                  "KFC",
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),
                subtitle: Text(
                  "bre for you to",
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),
                value: "KFC",
                groupValue: restaurant,
                onChanged: (val) {
                  setState(() {
                    restaurant = val.toString();
                  });
                }),
            RadioListTile(
                secondary: Icon(Icons.restaurant),
                title: Text(
                  "Popyies",
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),
                subtitle: Text("bre for you to"),
                value: "Popyies",
                groupValue: restaurant,
                onChanged: (val) {
                  setState(() {
                    restaurant = val.toString();
                  });
                }),
            RadioListTile(
                secondary: Icon(Icons.restaurant),
                title: Text(
                  "Macdonalds",
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),
                subtitle: Text("bre for you to"),
                value: "Macdonalds",
                groupValue: restaurant,
                onChanged: (val) {
                  setState(() {
                    restaurant = val.toString();
                  });
                }),
            Container(
              margin: EdgeInsets.only(top: 60),
              width: 400,
              child: RaisedButton(
                color: Colors.orange,
                child: Text(
                  "Back to home",
                  style: TextStyle(fontSize: 40, fontStyle: FontStyle.italic),
                ),
                onPressed: () {
                  // var snackbar = SnackBar(content: Text("hellllllllllllllo"),);
                  // scaffolkey.currentState.showSnackBar(snackbar);
                  Navigator.of(context).pop();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
