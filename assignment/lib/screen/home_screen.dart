import 'package:flutter/material.dart';

import '../widgets/custom_textfield.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        title: const Text("OrderList"),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            const Text(
              'LogIn To Your Account',
              style: TextStyle(
                  fontSize: 40,
                  color: Color.fromARGB(255, 186, 176, 212),
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text("E-mail address"),
            const CustomTextFiled(),
            const Text("Enter password"),
            const CustomTextFiled(),
            const Padding(
              padding: EdgeInsets.only(left: 230),
              child: Text(
                "forgot password?",
                style: TextStyle(color: Colors.grey),
              ),
            ),
            Row(
              children: [
                Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1.5, color: Colors.black54),
                    // color: Colors.black,
                  ),
                  //  child: const Icon(Icons.check),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  "Remind me",
                  style: TextStyle(
                    color: Color.fromARGB(255, 42, 41, 43),
                  ),
                ),
                // Container(
                //   height: 40,
                //   width: 100,
                //   decoration: BoxDecoration(
                //     border: Border.all(color: Colors.black),
                //     borderRadius: BorderRadius.circular(8),
                //     color: Colors.transparent,
                //   ),
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.spaceAround,
                //     crossAxisAlignment: CrossAxisAlignment.center,
                //     children: const [
                //       Icon(
                //         Icons.remove_circle_outline,
                //         size: 20,
                //       ),
                //       Text('1'),
                //       Icon(
                //         Icons.add_circle_outline,
                //         size: 20,
                //       )
                //     ],
                //   ),
                // )
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: const Color(0xff9583C1),
                ),
                child: const Center(
                    child: Text(
                  'Sign In',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
