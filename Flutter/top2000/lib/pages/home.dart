import 'package:flutter/material.dart';
import 'package:jiffy/jiffy.dart';
import 'package:top2000/components/async_builder.dart';
import 'package:top2000/components/filter_drawer.dart';
import 'package:top2000/components/pagination_list.dart';
import 'package:top2000/components/position_list_item.dart';
import 'package:top2000/components/translation_wrapper.dart';
import 'package:top2000/generators/position.dart';
import 'package:top2000/models/position.dart';
import 'package:top2000/utils/data_provicer.dart';
import 'package:top2000/utils/utils.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  RemoteService owo = RemoteService();
  @override
  Widget build(BuildContext context) {
    final double sizeX = MediaQuery.of(context).size.width;
    final double sizeY = MediaQuery.of(context).size.height;

    return SimpleAsyncBuilder<List<Position>>(
      future: owo.getSongs(
          'year=${Jiffy().year}&reversed=false&onlyIncreased=false&onlyDecreased=false'),
      onLoad: (List<Position> data, BuildContext context) => Scaffold(
        endDrawer: const FilterDrawer(),
        appBar: AppBar(
          actions: <Widget>[Container()],
          toolbarHeight: sizeX < sizeY ? 120 : 60,
          title: responsiveHomeAppBar(sizeX, sizeY, context),
        ),
        body: TranslationWrapper(
          onLoad: (BuildContext context) => Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: PaginationList<Position>(
              preloadItems: data,
              itemBuilder: (BuildContext context, Position item, int index) =>
                  PositionList(position: item),
              onEnd: () async {
                // return await getPosition();
              },
            ),
          ),
        ),
      ),
    );
  }
}
