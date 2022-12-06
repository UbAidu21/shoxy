import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoxy/core/Widgets/app_button.dart';
import 'package:shoxy/core/Widgets/app_text.dart';
import 'package:shoxy/core/Widgets/back_btn.dart';
import 'package:shoxy/core/common/common_var.dart';
import 'package:shoxy/screens/10_cart/cart.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      appBar: AppBar(
        leadingWidth: 70.w,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        toolbarHeight: 65.h,
        leading: PopButton(),
        title: AppText(
          text: 'Men\'s Shoes',
          color: black,
          fontSize: textsize + 5,
        ),
        actions: [
          InkWell(
            onTap: () => takeMeTo(CartScreen(), context),
            child: CircleAvatar(
              child: Icon(
                Icons.shopping_bag_outlined,
                color: black,
              ),
              minRadius: 25.r,
              backgroundColor: white,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Imagee
            Container(
              height: 220.h,
              width: double.infinity,
              decoration: BoxDecoration(),
              child: Image.asset(
                imgOnB,
                fit: BoxFit.cover,
                height: 150.h,
                width: 150.w,
              ),
            ),
            //Details Container
            Container(
              height: MediaQuery.of(context).size.height,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35.r),
                    topRight: Radius.circular(35.r),
                  )),
              child: Padding(
                padding: EdgeInsets.all(textsize),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //Seller Tag
                      AppText(
                        text: 'BEST SELLER',
                        fontSize: textsize + 2,
                        color: kMainColor,
                      ),
                      fixheight,
                      //Name
                      AppText(
                        text: 'Nike Air Jordan ',
                        fontSize: textsize + 15,
                      ),
                      //Price
                      fixheight,
                      AppText(
                        text: '\$ 989.00',
                        fontSize: textsize + 5,
                      ),
                      fixheight,

                      Container(
                        height: 100,
                        width: double.infinity,
                        // color: kMainColor,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 5,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Container(
                                  // height: 60,
                                  width: 80,
                                 decoration: BoxDecoration(),
                                  margin: EdgeInsets.all(10),
                                ),
                              );
                            }),
                      ),

                      //Description
                      AppText(
                        text:
                            """The linear scale factor for drawing this image at its intended size.The scale factor applies to the width and the height.For example, if this is 2.0, it means that there are four image pixels for every one logical pixel, and the image's actual width and height (as given by the dart:ui.Image.width and dart:ui.Image.height properties) are double the height and width that should                             be used when painting the image (e.g. in the arguments given to Canvas.drawImage).""",
                        fontSize: textsize,
                        color: Colors.blueGrey[500],
                        textOverflow: TextOverflow.fade,
                      ),
                    ]),
              ),
            )
            //Gallery

            //Size

            //price cart
          ],
        ),
      ),
    );
  }
}
