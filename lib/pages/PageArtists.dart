import 'package:flutter/material.dart';
import 'package:musico/customs/ListSongs.dart';
import 'package:musico/customs/widgets.dart';

class PageArtists extends StatelessWidget {
  const PageArtists({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListSongs(
          title: normalText('Kadhar'),
          trailing: Icon(
            Icons.navigate_next,
            color: Colors.white,
          ),
        ),
        ListSongs(
          title: normalText('Ed Sheeran'),
          trailing: Icon(
            Icons.navigate_next,
            color: Colors.white,
          ),
        ),
        ListSongs(
          title: normalText('Unknown'),
          trailing: Icon(
            Icons.navigate_next,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
