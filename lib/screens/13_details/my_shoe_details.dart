import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoxy/core/common/common_var.dart';
import 'package:shoxy/screens/13_details/app_bar/app_bar.dart';
import 'package:shoxy/screens/13_details/bottom_tab/bottom_tab.dart';
import 'package:shoxy/screens/13_details/details/details.dart';

class MyShoeDetail extends StatefulWidget {
  MyShoeDetail({
    this.image,
    this.name,
    this.description,
    this.price,
    super.key,
  });
  String? image;
  String? name;
  double? price;
  String? description;
  @override
  State<MyShoeDetail> createState() => _MyShoeDetailState();
}

class _MyShoeDetailState extends State<MyShoeDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: PreferredSize(
        preferredSize: Size(370, 70),
        child: CustomAppBar(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 202.h,
              child: Center(
                child: Image.network(
                  "${widget.image}",
                  height: 300.h,
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                color: white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25.r),
                    topRight: Radius.circular(25.r)),
              ),
              child: Padding(
                padding: EdgeInsets.all(defaultPadding),
                child: Details(
                  description: widget.description,
                  name: widget.name,
                  price: widget.price,
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomTab(price: widget.price),
    );
  }
}
