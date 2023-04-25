import 'package:flutter/material.dart';

class SearchController extends StatelessWidget {
  const SearchController({
    super.key,
    required TextEditingController searchController,
    required FocusNode searchFocus,
  }) : _searchController = searchController, _searchFocus = searchFocus;

  final TextEditingController _searchController;
  final FocusNode _searchFocus;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _searchController,
      focusNode: _searchFocus,
      decoration: const InputDecoration(
        hintText: 'Search',
      ),
    );
  }
}