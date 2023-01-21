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

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      controller: _scrollController,
      itemCount: widget.items.length,
      itemBuilder: widget.itemBuilder,
    );
  }
}
