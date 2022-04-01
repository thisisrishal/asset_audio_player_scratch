import 'package:flutter/material.dart';
import 'package:musico/customs/ListPlaylists.dart';

class PagePlaylists extends StatelessWidget {
  const PagePlaylists({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 5),
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          children: [
            ListView(
              children: [
                ListPlaylists(
                  leadingIcon: Icon(
                    Icons.favorite,
                    color: Colors.white,
                  ),
                  leadingColor: Color(0xffdb5960),
                  title: 'Favourites',
                ),
                ListPlaylists(
                  leadingIcon: Icon(Icons.watch_later),
                  leadingColor: Color(0xffba9e84),
                  title: 'Recently Played',
                ),
                ListPlaylists(
                  title: 'Playlist 1',
                ),
                ListPlaylists(
                  leadingColor: Color(0xff3d3d3d),
                  title: 'Playlist 2',
                ),
              ],
            ),
            Positioned(
                right: 10,
                bottom: 60,
                child: FloatingActionButton(
                  onPressed: () {},
                  child: Icon(Icons.add),
                ))
          ],
        ),
      ),
    );
  }
}
