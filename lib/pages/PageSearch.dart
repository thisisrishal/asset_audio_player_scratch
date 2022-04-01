import 'package:flutter/material.dart';
import 'package:musico/customs/customs.dart';

class PageSearch extends StatelessWidget {
  const PageSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
          child: Container(
        color: Colors.black,
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  // padding: EdgeInsets.zero,
                  width: 340,
                  child: TextField(
                    style: TextStyle(color: Colors.white70),
                    autofocus: true,
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(
                          left: 16,
                        ),
                        border: InputBorder.none,
                        hintText: 'Search',
                        hintStyle:
                            TextStyle(color: Color.fromARGB(255, 100, 99, 99)),
                        suffix: TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: const Text(
                            'Cancel',
                            style: TextStyle(
                                color: Colors.white70,
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                        )),
                  ),
                ),
              ],
            ),
            customDivider(),
            Expanded(
                child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Play what you love',
                    style: TextStyle(
                        color: Colors.white30, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ))
          ],
        ),
      )),
    );
  }
}
