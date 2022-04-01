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
            title: normalText(
              'Download',
            ),
          ),
          ListSongs(
            title: normalText('WhatsApp Audio'),
          ),
          ListSongs(
            title: normalText('Unknown'),
          )
        ],
      ),
    );
  }
}
