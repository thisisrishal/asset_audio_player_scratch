import 'package:flutter/material.dart';

class ListAlbums extends StatelessWidget {
  final String title;

  ListAlbums({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        decoration: BoxDecoration(
          color: Colors.grey[800],
          borderRadius: BorderRadius.circular(8),
        ),
        height: 50,
        width: 50,
        child: Icon(
          Icons.audiotrack,
          color: Colors.white,
        ),
      ),
      title: Text(
        title,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
