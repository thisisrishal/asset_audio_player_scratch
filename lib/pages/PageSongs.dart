import 'package:flutter/material.dart';
import 'package:musico/customs/ListSongs.dart';
import 'package:musico/customs/bottomSheets.dart';
import 'package:musico/customs/widgets.dart';

class PageSongs extends StatelessWidget {
  const PageSongs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Column(
        children: [
          Expanded(
              child: Container(
            margin: EdgeInsets.only(bottom: 10),
            child: NotificationListener<OverscrollIndicatorNotification>(
              onNotification: (OverscrollIndicatorNotification overscroll) {
                overscroll.disallowIndicator();
                return false;
              },
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return ListSongs(
                    title: normalText('Shape of you'),
                    leading_widget: Container(
                      child: Image.asset(
                          'assets/Shape_Of_You_(Official_Single_Cover)_by_Ed_Sheeran.png'),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      height: 54,
                      width: 44,
                    ),
                    trailing: IconButton(
                      icon: Icon(
                        Icons.more_horiz_sharp,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        bottomSheet(context);
                      },
                    ),

                   
                    subtitile: normalText('Ed Sheeran', color: Colors.grey),
                  );
                },
              ),
            ),
          ))
        ],
      ),
    );
  }
}
