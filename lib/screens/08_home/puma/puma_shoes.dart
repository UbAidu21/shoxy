import 'package:flutter/material.dart';
import 'package:shoxy/core/Widgets/app_text.dart';
import 'package:shoxy/core/Widgets/new_arrivals.dart';
import 'package:shoxy/core/Widgets/popular_shoes.dart';
import 'package:shoxy/core/common/common_var.dart';
import 'package:shoxy/core/model/local_json_data.dart';
import 'package:shoxy/screens/08_home/nike/nike_shoes.dart';

class PumaShoes extends StatefulWidget {
  const PumaShoes({super.key});

  @override
  State<PumaShoes> createState() => _PumaShoesState();
}

class _PumaShoesState extends State<PumaShoes> {
  LocalJson data = LocalJson();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppText(text: 'Popular Shoes', fontSize: textsize + 5),
              TextButton(
                  onPressed: () {},
                  child: AppText(
                      text: 'See all', fontSize: textsize, color: kMainColor))
            ],
          ),
          popularShoesList(
            future: data.pumaShoes(),
            context,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppText(
                text: 'New Arrivals',
                fontSize: textsize + 5,
              ),
              TextButton(
                  onPressed: () {},
                  child: AppText(
                      text: 'See all', fontSize: textsize, color: kMainColor))
            ],
          ),
          NewArrivals(
            future: data.pumaShoes(),
          ),
        ],
      ),
    ));
  }
}
