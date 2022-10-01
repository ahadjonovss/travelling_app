import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../utils/models.dart';
import 'dart:math';
import 'package:sizer/sizer.dart';

Random random = new Random();

class SecondPage extends StatelessWidget {
  MyModels model;

  SecondPage({Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(model.title),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            padding: EdgeInsets.all(8),
            // child: ListView.builder(
            //     itemCount: 5,
            //     itemBuilder: (context, index) {
            //       return photos();
            //     }),,
            child: Column(
              children: [
                photos(),
                photos(),
                photos(),
                photos(),
                photos()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget photos() {
  return Container(
    margin: EdgeInsets.only(top: 12),
    height: 220,
    width: double.infinity,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(16),
            bottomLeft: Radius.circular(16),
            topRight: Radius.circular(16)),
        image: DecorationImage(
          image: NetworkImage("https://picsum.photos/${random.nextInt(1000)}"),
          fit: BoxFit.cover,
        )),
  );
}
