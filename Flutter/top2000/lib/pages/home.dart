import 'package:flutter/material.dart';
import 'package:top2000/components/async_builder.dart';
import 'package:top2000/components/filter_drawer.dart';
import 'package:top2000/components/partial/position_list_item.dart';
import 'package:top2000/components/translation_wrapper.dart';
import 'package:top2000/models/home_page.dart';
import 'package:top2000/utils/data_provider.dart';
import 'package:top2000/components/home_app_bar.dart';

class Home extends StatefulWidget {
  const Home(
      {super.key,
      this.searchOptions =
          'year=2020&reversed=false&onlyIncreased=false&onlyDecreased=false'});
  final String searchOptions;

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  RemoteService service = RemoteService();
  @override
  Widget build(BuildContext context) {
    final double sizeX = MediaQuery.of(context).size.width;
    final double sizeY = MediaQuery.of(context).size.height;

    return SimpleAsyncBuilder<List<HomeData>>(
      future: service.getSongs(widget.searchOptions),
      onLoad: (List<HomeData> data, BuildContext context) => Scaffold(
        endDrawer: const FilterDrawer(),
        appBar: AppBar(
          actions: <Widget>[Container()],
          toolbarHeight: 60,
          title: const HomeAppBar(title: 'top2000'),
        ),
        body: TranslationWrapper(
          onLoad: (BuildContext context) => Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: ListView.builder(
                itemBuilder: (BuildContext context, int index) =>
                    PositionList(position: data[index]),
                itemCount: data.length,
              )),
        ),
      ),
    );
  }
}
