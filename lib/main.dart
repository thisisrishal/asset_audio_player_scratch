import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:musico/customs/ListSongs.dart';
import 'package:musico/customs/widgets.dart';
import 'package:musico/pages/PageAlbums.dart';
import 'package:musico/pages/PageArtists.dart';
import 'package:musico/pages/PageMusic.dart';
import 'package:musico/pages/PagePlaylists.dart';
import 'package:musico/pages/PageSongs.dart';
import 'package:musico/customs/customs.dart';
import 'package:musico/pages/PageSearch.dart';
import 'package:musico/pages/PageSettings.dart';
import 'package:on_audio_query/on_audio_query.dart';

void main() {
  runApp(const Musico());
}

class Musico extends StatelessWidget {
  const Musico({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Musico',
      home: Myhome(),
    );
  }
}

class Myhome extends StatefulWidget {
  Myhome({Key? key}) : super(key: key);

  @override
  State<Myhome> createState() => _MyhomeState();
}

class _MyhomeState extends State<Myhome> with TickerProviderStateMixin {
  late TabController _tabController;

  final assetsAudioPlayer = AssetsAudioPlayer();
  final _audioQuery = OnAudioQuery();

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
    _tabController.addListener(_handleTabSelection);

    requestStoragePermission();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        bottomSheet: GestureDetector(
          onTap: () {
            pageMusic(context);
          },
          child: FractionallySizedBox(
            widthFactor: 1,
            heightFactor: 0.1 / 1.1,
            child: Container(
              color: Color.fromARGB(255, 71, 71, 71),
              child: Wrap(
                children: [
                  ListSongs(
                    leading_widget: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                                'assets/Shape_Of_You_(Official_Single_Cover)_by_Ed_Sheeran.png'),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.all(
                          Radius.circular(8),
                        ),
                      ),
                    ),
                    title: normalText(''),
                    subtitile: normalText('Ed Sheeran'),
                    trailing: Wrap(
                      spacing: 20,
                      children: [
                        Icon(
                          FontAwesomeIcons.pause,
                          color: Colors.white,
                        ),
                        Icon(
                          FontAwesomeIcons.forwardStep,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.black,
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PageSearch(),
                    ),
                  );
                },
                icon: Icon(Icons.search)),
            IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PageSettings(),
                    ),
                  );
                },
                icon: Icon(Icons.settings))
          ],
          bottom: TabBar(
            controller: _tabController,
            labelPadding: EdgeInsets.only(bottom: 20, top: 10),
            tabs: [
              richTextHead('Songs'),
              richTextHead('Artists'),
              richTextHead('Albums'),
              richTextHead('Playlists')
            ],
          ),
        ),
        body: SafeArea(
          child: TabBarView(
            controller: _tabController,
            children: [
              PageSongs(),
              PageArtists(),
              PageAlbums(),
              PagePlaylists(),
            ],
          ),
        ),
      ),
    );
  }

  void _handleTabSelection() {
    setState(() {});
  }

  void requestStoragePermission() async {
    if (!kIsWeb) {
      //only if the platform is not web(coz we have no permission there
      bool permissionStatus = await _audioQuery.permissionsStatus();
      if (!permissionStatus) {
        await _audioQuery.permissionsRequest();

        //ensure build method is called
        setState(() {});
      }
    }
  }
}
