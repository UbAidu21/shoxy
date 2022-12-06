import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoxy/core/Widgets/app_text.dart';
import 'package:shoxy/core/common/common_var.dart';

popularShoesList(BuildContext context, {required Future future}) {
  return Container(
    height: 180.h,
    width: MediaQuery.of(context).size.width,
    child: FutureBuilder(
        future: future,
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
                itemCount: snapshot.data["items"].length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  var name = snapshot.data["items"][index]["name"];
                  var image = snapshot.data["items"][index]["image"];
                  var price = snapshot.data["items"][index]["price"];
                  return Container(
                    margin: EdgeInsets.all(10),
                    // height: 20,
                    width: 157.w,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              blurRadius: 10,
                              offset: Offset(0, -1))
                        ]),
                    child: Padding(
                      padding: EdgeInsets.only(left: 8.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //image will load from firebase
                          Expanded(
                            child: Align(
                              alignment: Alignment.center,
                              child: Image.network(
                                image,
                                fit: BoxFit.fill,
                                height: 300,
                              ),
                            ),
                          ),
                          //Here We will git seller tag according to sales
                          AppText(
                            text: "BEST SELLER",
                            color: Colors.blueAccent,
                            fontSize: textsize - 3,
                          ),

                          //Name of the shoes, load from API
                          AppText(
                            text: name,
                            color: Colors.black87,
                            fontSize: textsize + 2,
                          ),

                          //Price Tag will load from API
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AppText(
                                text: "\$ $price",
                                fontSize: textsize,
                              ),
                              InkWell(
                                onTap: () {
                                  print('$index item added to Favorite');
                                },
                                child: Container(
                                  width: 40.w,
                                  height: 40.h,
                                  decoration: BoxDecoration(
                                      color: kMainColor,
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(25),
                                        bottomRight: Radius.circular(25),
                                      )),
                                  child: Center(
                                      child: Icon(
                                    Icons.add_outlined,
                                    color: white,
                                  )),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                });
          } else {
            return CircularProgressIndicator();
          }
        }),
  );
}
