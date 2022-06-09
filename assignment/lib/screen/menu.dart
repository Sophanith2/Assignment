import 'package:assignment/widgets/custom_slide.dart';
import 'package:assignment/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu'),
        backgroundColor: const Color.fromARGB(255, 160, 128, 241),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(children: [
          CustomTextFiled(
            prefix: Icon(
              Icons.search,
              color: Colors.grey.shade400,
            ),
          ),
          AdvertisingBanner(),
        ]),
      ),
      bottomNavigationBar: Container(
        height: 100,
        color: Colors.transparent,
        child: Row(
          children: [
            Expanded(
              child: Icon(
                Icons.home,
                color: Colors.blue[900],
              ),
            ),
            Expanded(
              child: Icon(
                Icons.home,
                color: Colors.blue[900],
              ),
            ),
            Expanded(
              child: Icon(
                Icons.home,
                color: Colors.blue[900],
              ),
            ),
            Expanded(
              child: Icon(
                Icons.home,
                color: Colors.blue[900],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
