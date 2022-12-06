import 'package:flutter/material.dart';
import 'package:shoxy/core/Widgets/custom_text_field.dart';
import 'package:shoxy/core/common/common_var.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  TextEditingController searchbar_cotroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              fixheight,
              CustomTextField(
                controller: searchbar_cotroller,
                hintText: 'Search',
                // onChange: (p0) {
                //   setState(() {
                //     takeMeTo(SearchScreen(), context);
                //   });
                // },
                prefix: Icon(
                  Icons.search,
                  color: Colors.black,
                  size: textsize + 10,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
