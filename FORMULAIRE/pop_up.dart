

import 'package:flutter/material.dart';

import '../generateqecode.dart';


class ExistsPage extends StatefulWidget {
  @override
  Exist createState() => Exist();
}

class Exist extends State<ExistsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 93, 218, 205),
        title: Text("Prendre un rendez-vous"),
      ),
      body: AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        title: const Text(
            "Cette date a été déja prise , Veuillez selectionner une autre"),
        // content: Container(
        //   width: 400,
        //   height: 100,
        // ),
        actions: <Widget>[
          TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Center(
                  child:
                  const Text("retourner", style: TextStyle(fontSize: 20))))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.grey,
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: ((context) => GeneratePage()),
            ),
          );
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}