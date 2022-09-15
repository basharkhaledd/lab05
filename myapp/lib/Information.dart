import 'package:flutter/material.dart';

class InformationPage extends StatefulWidget {
  const InformationPage({super.key});

  @override
  State<InformationPage> createState() => _InformationPageState();
}

class _InformationPageState extends State<InformationPage> {
  GlobalKey<ScaffoldState> scaffolkey = new GlobalKey<ScaffoldState>();
  String restaurant = "";
  List myitems = ["jordan", "iraq", "palastine", "syria"];
  String myselecteditem = "jordan";
  bool cach = false;
  bool visa = false;
  bool debet = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("talabat mart"),
        backgroundColor: Colors.orange,
        actions: <Widget>[],
      ),
      body: Container(
        color: Colors.orange.shade100,
        child: ListView(children: [
          Container(
            child: Text(
              "Please enter your information",
              style: TextStyle(fontSize: 30, fontStyle: FontStyle.italic),
              textAlign: TextAlign.center,
            ),
            color: Colors.white,
            margin: EdgeInsets.only(top: 20, bottom: 30, right: 20, left: 20),
          ),
          Container(
            width: double.infinity,
            child: Text(
              "Where are you from ?",
              style: TextStyle(
                  color: Colors.red.shade300,
                  fontSize: 30,
                  fontStyle: FontStyle.italic),
              textAlign: TextAlign.center,
            ),
            margin: EdgeInsets.only(top: 20, bottom: 0),
            padding: EdgeInsets.only(top: 10, bottom: 0),
          ),
          Divider(color: Colors.blue.shade300, thickness: 10),
          DropdownButton(
              value: myselecteditem,
              items: myitems
                  .map((e) => DropdownMenuItem(value: e, child: Text("$e")))
                  .toList(),
              onChanged: (val) {
                setState(() {
                  myselecteditem = val.toString();
                });
              }),
          Container(
            width: double.infinity,
            child: Text(
              "please select from  ?",
              style: TextStyle(
                  color: Colors.red.shade300,
                  fontSize: 30,
                  fontStyle: FontStyle.italic),
              textAlign: TextAlign.center,
            ),
            margin: EdgeInsets.only(top: 60, bottom: 0),
            padding: EdgeInsets.only(top: 10, bottom: 0),
          ),
          Divider(color: Colors.blue.shade300, thickness: 10),
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
            width: double.infinity,
            child: Text(
              "please select Payament pay ?",
              style: TextStyle(
                  color: Colors.red.shade300,
                  fontSize: 30,
                  fontStyle: FontStyle.italic),
              textAlign: TextAlign.center,
            ),
            margin: EdgeInsets.only(top: 60, bottom: 0),
            padding: EdgeInsets.only(top: 10, bottom: 0),
          ),
          Divider(color: Colors.blue.shade300, thickness: 10),
          Container(
            child: Column(
              children: [
                Divider(height: 35),
                CheckboxListTile(
                    secondary: Icon(
                      Icons.book,
                      color: Colors.amber,
                    ),
                    subtitle: Text("____________",
                        style: TextStyle(
                            fontStyle: FontStyle.italic,
                            fontSize: 20,
                            color: Colors.green[700])),
                    title: Text(
                      "Cach",
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold),
                    ),
                    value: cach,
                    onChanged: ((val) {
                      setState(() {
                        cach = val!;
                      });
                    })),
                CheckboxListTile(
                    secondary: Icon(
                      Icons.book,
                      color: Colors.amber,
                    ),
                    subtitle: Text(
                      "__________",
                      style: TextStyle(
                          fontSize: 20,
                          fontStyle: FontStyle.italic,
                          color: Colors.green[700]),
                    ),
                    title: Text(
                      "visa",
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold),
                    ),
                    value: visa,
                    onChanged: ((val) {
                      setState(() {
                        visa = val!;
                      });
                    })),
                CheckboxListTile(
                    secondary: Icon(
                      Icons.book,
                      color: Colors.amber,
                    ),
                    subtitle: Text(
                      "__________",
                      style: TextStyle(
                          fontSize: 20,
                          fontStyle: FontStyle.italic,
                          color: Colors.green[700]),
                    ),
                    title: Text(
                      "debet",
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold),
                    ),
                    value: debet,
                    onChanged: ((val) {
                      setState(() {
                        debet = val!;
                      });
                    })),
                Container(
                  margin: EdgeInsets.only(top: 80, bottom: 40),
                  width: 400,
                  child: RaisedButton(
                    color: Colors.orange,
                    child: Text(
                      "Back to home",
                      style:
                          TextStyle(fontSize: 40, fontStyle: FontStyle.italic),
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
        ]),
      ),
    );
  }
}
