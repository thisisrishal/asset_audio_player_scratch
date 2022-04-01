import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:musico/customs/bottomSheets.dart';
import 'package:musico/customs/customs.dart';
import 'package:musico/customs/widgets.dart';

pageMusic(context) {
  bool _isPlaying = true;

  return showModalBottomSheet(
      isScrollControlled: true,
      // backgroundColor: ,
      context: context,
      builder: (context1) {
        return Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.black, Color.fromARGB(221, 10, 10, 10)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter),
          ),
          child: SizedBox(
            height: MediaQuery.of(context).size.height -
                MediaQuery.of(context).viewPadding.top,
            child: Container(
              margin: EdgeInsets.only(right: 10, left: 10),
              child: Column(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.expand_more_outlined),
                    color: Colors.grey,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      richText('Shape of you',
                          size: 20, weight: FontWeight.w600),
                      IconButton(
                        onPressed: () {
                          bottomSheet(context);
                        },
                        icon: Icon(
                          Icons.more_vert_outlined,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [richText('Ed Sheeran')],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    height: 300,
                    width: 300,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                                'assets/Shape_Of_You_(Official_Single_Cover)_by_Ed_Sheeran.png'),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        color: Colors.white),
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.loop_outlined,
                          color: Colors.white,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.favorite_border_outlined,
                          color: Colors.white,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.queue_music,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          FontAwesomeIcons.backwardStep,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          FontAwesomeIcons.circlePlay,
                          size: 50,
                          color: Colors.white,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          FontAwesomeIcons.forwardStep,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        );
      });
}
