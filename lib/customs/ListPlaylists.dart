import 'package:flutter/material.dart';

class ListPlaylists extends StatelessWidget {
  final String title;
  Icon? leadingIcon;
  Color? leadingColor;

  ListPlaylists(
      {Key? key, required this.title, this.leadingIcon, this.leadingColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        decoration: BoxDecoration(
          color: leadingColor ?? Colors.grey[800],
          borderRadius: BorderRadius.circular(8),
        ),
        height: 40,
        width: 40,
        child: leadingIcon ??
            Icon(
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
      trailing: Icon(
        Icons.navigate_next,
        color: Colors.white,
      ),
    );
  }
}
