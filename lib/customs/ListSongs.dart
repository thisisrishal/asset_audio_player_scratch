import 'package:flutter/material.dart';
import 'package:musico/customs/customs.dart';
import 'package:musico/customs/widgets.dart';

class ListSongs extends StatelessWidget {
  final Widget title;
  final Widget? subtitile;
  final Widget? leading_widget;
  final Widget? trailing;

  ListSongs(
      {Key? key,
      required this.title,
      this.subtitile,
      this.leading_widget,
      this.trailing})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: leading_widget,
      title: title,
      subtitle: subtitile,
      trailing: trailing,
    );
  }
}






// richText('Shape of you', weight: FontWeight.w400)

// Text('Ed Sheeran', style: TextStyle(color: Colors.white70)),