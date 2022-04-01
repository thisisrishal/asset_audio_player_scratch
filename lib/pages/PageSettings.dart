import 'package:flutter/material.dart';
import 'package:musico/customs/AppColors.dart';
import 'package:musico/customs/customs.dart';

class PageSettings extends StatelessWidget {
  const PageSettings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
      ),
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Container(
          color: Colors.black,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      // TextButton(onPressed: (){}, child:Column(
                      //   children: [

                      //   ],
                      // ) ),
                      richText(
                        'About',
                        color: Colors.white,
                        weight: FontWeight.bold,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      richText('Version', size: 16, color: Colors.white),
                      richText('1.2.1.013', size: 14, color: Colors.white60),
                      SizedBox(
                        height: 15,
                      ),
                      richText('Terms and Conditions',
                          size: 16, color: Colors.white),
                      richText('All the stuff you need to know',
                          size: 14, color: Colors.white60),
                      SizedBox(
                        height: 15,
                      ),
                      richText('Privacy Policy', size: 16, color: Colors.white),
                      richText('important for both of us',
                          size: 14, color: Colors.white60),
                      SizedBox(
                        height: 15,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
