import 'package:faker/faker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_i18n/flutter_i18n.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:top2000/models/home_page.dart';
import 'package:top2000/pages/artist.dart';

class PositionList extends StatefulWidget {
  const PositionList({super.key, required this.position});
  final HomeData position;

  @override
  State<PositionList> createState() => _PositionListState();
}

class _PositionListState extends State<PositionList> {
  @override
  Widget build(BuildContext context) {
    final double sizeX = MediaQuery.of(context).size.width;
    final double sizeY = MediaQuery.of(context).size.height;

    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: const BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.black)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            width: 70,
            child: Row(
              children: <Widget>[
                if (widget.position.oldPosition != null &&
                    widget.position.oldPosition! >
                        widget.position.place) ...<Widget>[
                  const Icon(
                    CupertinoIcons.up_arrow,
                    color: Colors.green,
                  )
                ] else if (widget.position.oldPosition != null &&
                    widget.position.oldPosition! <
                        widget.position.place) ...<Widget>[
                  const Icon(
                    CupertinoIcons.down_arrow,
                    color: Colors.red,
                  )
                ] else ...<Widget>[
                  Icon(
                    CupertinoIcons.equal,
                    color: Colors.grey.shade600,
                  )
                ],
                const SizedBox(
                  width: 5,
                ),
                Column(
                  children: <Widget>[
                    Text('${widget.position.place}'),
                    Text(
                      widget.position.oldPosition != null
                          ? widget.position.oldPosition.toString()
                          : FlutterI18n.translate(context, 'home.oldIsNull'),
                      style: const TextStyle(
                          fontSize: 10, fontStyle: FontStyle.italic),
                    )
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          if (widget.position.songPhoto != null) ...<Widget>[
            SizedBox(
                height:
                    (sizeY < sizeX ? sizeY / 6 : sizeY / 12).floorToDouble(),
                width: (sizeX / 6).floorToDouble(),
                child: Image.memory(widget.position.songPhoto!)),
          ] else ...<Widget>[
            Image.network(
              faker.image.image(
                  width: (sizeX / 6).floor(),
                  height: (sizeY < sizeX ? sizeY / 6 : sizeY / 12).floor(),
                  random: true),
            ),
          ],
          const SizedBox(
            width: 20,
          ),
          Flexible(
            child: Align(
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    widget.position.title,
                    overflow: TextOverflow.ellipsis,
                  ),
                  InkWell(
                    onTap: () => PersistentNavBarNavigator.pushNewScreen(
                      context,
                      screen: ArtistInfo(artistId: widget.position.artistId),
                    ),
                    child: Text(
                      widget.position.name,
                      overflow: TextOverflow.ellipsis,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
