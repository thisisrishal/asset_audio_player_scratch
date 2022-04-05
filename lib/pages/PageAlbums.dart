import 'package:flutter/material.dart';
import 'package:musico/customs/ListSongs.dart';
import 'package:musico/customs/widgets.dart';

class PageAlbums extends StatelessWidget {
  const PageAlbums({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: ListView(
        children: [
          ListSongs(
            leading_widget: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(8)),
                color: Color(0xff404040),
              ),
              height: 45,
              width: 45,
              child: Icon(
                Icons.music_note_outlined,
                color: Colors.white60,
              ),
            ),
            title: normalText(
              'Download',
            ),
          ),
          ListSongs(
            leading_widget: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(8)),
                color: Color(0xff404040),
              ),
              height: 45,
              width: 45,
              child: Icon(
                Icons.music_note_outlined,
                color: Colors.white60,
              ),
            ),
            title: normalText('WhatsApp Audio'),
          ),
          ListSongs(
            leading_widget: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(8)),
                color: Color(0xff404040),
              ),
              height: 45,
              width: 45,
              child: Icon(
                Icons.music_note_outlined,
                color: Colors.white60,
              ),
            ),
            
            title: normalText('Unknown'),
          )
        ],
      ),
    );
  }
}
