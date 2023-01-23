import 'package:flutter/material.dart';

class PaginationList<T> extends StatefulWidget {
  const PaginationList(
      {super.key,
      required this.onEnd,
      required this.items,
      required this.itemBuilder});
  final Function onEnd;
  final List<T> items;
  final Widget Function(BuildContext context, int index) itemBuilder;

  @override
  State<PaginationList<T>> createState() => _PaginationListState<T>();
}

class _PaginationListState<T> extends State<PaginationList<T>> {
  final ScrollController _scrollController = ScrollController();
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      controller: _scrollController,
      itemCount: widget.items.length,
      itemBuilder: widget.itemBuilder,
    );
  }

  @override
  void initState() {
    //added the pagination function with listener
    _scrollController.addListener(pagination);
    super.initState();
  }

  //&& (_subCategoryModel.products.length < widget.items.length)
  void pagination() {
    if ((_scrollController.offset ==
        _scrollController.position.maxScrollExtent)) {
      setState(() {
        isLoading = true;
        //page += 1;
        widget.onEnd();
        //add api for load the more data according to new page
      });
    }
  }
}
