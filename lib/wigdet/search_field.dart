import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:project_pfe/constants/constants.dart';

class SearchField extends StatefulWidget {
  const SearchField({Key? key}) : super(key: key);

  @override
  State<SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: appPadding),
      child: Container(
        margin: EdgeInsets.only(top: 10),
        width: double.infinity,
        height: 40,
        decoration: BoxDecoration(
          color: black.withOpacity(0.07),
          borderRadius: BorderRadius.circular(20),
        ),
        child: TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(borderSide: BorderSide.none),
            contentPadding: EdgeInsets.symmetric(
              vertical: appPadding * 0.75, horizontal: appPadding,
            ),
            fillColor: white,
            hintText: 'Search',
            prefixIcon: Icon(
              Icons.search,
              size: 30,
              color: black.withOpacity(0.4),
            ),
            suffixIcon: Icon(Icons.filter_alt_outlined)
          ),
        ),
      ),
    );
    
  }
}
 