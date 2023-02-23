import 'package:flutter/material.dart';
import 'package:pagination_view/pagination_view.dart';

class PaginationList<T> extends StatefulWidget {
  const PaginationList({
    super.key,
    required this.onEnd,
    required this.itemBuilder,
    this.preloadItems,
  });
  final Function onEnd;
  final Widget Function(BuildContext context, T item, int index) itemBuilder;
  final List<T>? preloadItems;

  @override
  State<PaginationList<T>> createState() => _PaginationListState<T>();
}

class _PaginationListState<T> extends State<PaginationList<T>> {
  final ScrollController _scrollController = ScrollController();
  late int page;
  late GlobalKey<PaginationViewState<T>> key;

  @override
  void initState() {
    page = -1;
    key = GlobalKey<PaginationViewState<T>>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return PaginationView<T>(
      key: key,
      preloadedItems: widget.preloadItems,
      itemBuilder: widget.itemBuilder,
      paginationViewType: PaginationViewType.listView,
      pullToRefresh: true,
      pageFetch: pageFetch,
      onError: (dynamic error) => const Center(
        child: Text('Some error occured'),
      ),
      onEmpty: const Center(
        child: Text('Sorry! This is empty'),
      ),
      bottomLoader: const Center(
        // optional
        child: CircularProgressIndicator(),
      ),
      initialLoader: const Center(
        // optional
        child: CircularProgressIndicator(),
      ),
    );
  }

  Future<List<T>> pageFetch(int offset) async {
    page = (offset / 20).round();

    final dynamic newItemList = await widget.onEnd();
    //await Future<List<T>>.delayed(Duration(seconds: 1));
    return page == 5 ? <T>[] : newItemList;
  }
}
