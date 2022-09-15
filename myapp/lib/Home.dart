import 'package:flutter/material.dart';
import 'package:myapp/Question.dart';

import 'Information.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return HomePage();
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // GlobalKey<ScaffoldState> scaffolkey= new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.orange.shade50,
        child: Center(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 30),
                color: Colors.orange.shade700,
                padding:
                    EdgeInsets.only(top: 20, bottom: 20, left: 20, right: 20),
                child: Image(
                    width: 400,
                    image: NetworkImage(
                        "data:image/png;base64,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")),
              ),
              Container(
                width: 400,
                padding: EdgeInsets.only(top: 160),
                child: RaisedButton(
                  color: Colors.orange.shade700,
                  child: Text(
                    "question for you",
                    style: TextStyle(
                        fontSize: 40,
                        color: Colors.black,
                        fontStyle: FontStyle.italic),
                  ),
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return QuestionPage();
                    }));
                  },
                ),
              ),
              Container(
                width: 400,
                padding: EdgeInsets.only(top: 30),
                child: RaisedButton(
                  color: Colors.orange.shade700,
                  child: Text(
                    "Tell us for you",
                    style: TextStyle(
                        fontSize: 40,
                        color: Colors.black,
                        fontStyle: FontStyle.italic),
                  ),
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return InformationPage();
                    }));
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
