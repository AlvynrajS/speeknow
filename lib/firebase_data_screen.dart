import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class firebase_data_screeen extends StatefulWidget {
  const firebase_data_screeen({Key? key}) : super(key: key);

  @override
  State<firebase_data_screeen> createState() => _firebase_data_screeenState();
}

class _firebase_data_screeenState extends State<firebase_data_screeen> {
  final databaseReference = FirebaseDatabase.instance.ref();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Firebase Connect'),
      ),
      body: Center(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          ElevatedButton(
              child: Text('Create Record'),
              onPressed: () {
                createRecord();
              }),
          ElevatedButton(
              child: Text('View Record'),
              onPressed: () {
                getData();
              }),
          ElevatedButton(
              child: Text('Update Record'),
              onPressed: () {
                updateData();
              }),
          ElevatedButton(
              child: Text('Delete Record'),
              onPressed: () {
                deleteData();
              }),
        ],
      )), //center
    );
  }

  void createRecord() {
    databaseReference.child("1").set({
      'title': 'Mastering EJB',
      'description': 'Programming Guide for J2EE'
    });
    databaseReference.child("2").set({
      'title': 'Flutter in Action',
      'description': 'Complete Programming Guide to learn Flutter'
    });
  }

  void getData() {
    databaseReference.once().then((var snapshot) {
      print('Data : ${snapshot.snapshot.value}');
    });
  }

  void updateData() {
    databaseReference
        .child('1')
        .update({'description': 'J2EE complete Reference'});
  }

  void deleteData() {
    databaseReference.child('1').remove();
  }
}
