import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class homepage extends StatelessWidget {
  static const routename = '/home';
  const homepage({super.key});

  @override
  Widget build(BuildContext context) {
    var ht = MediaQuery.of(context).size.height;
    var wd = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Using AppWrite'),
        centerTitle: true,
      ),
      body: Container(
        height: ht,
        width: wd,
        child: const Center(
          child: Text("Welcome"),
        ),
      ),
    );
  }
}
