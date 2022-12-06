import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoxy/core/Widgets/app_text.dart';
import 'package:shoxy/core/common/common_var.dart';

class NewArrivals extends StatelessWidget {
  NewArrivals({
    required this.future,
    Key? key,
  }) : super(key: key);

  Future future;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.h,
      child: FutureBuilder(
        future: future,
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 1,
                itemBuilder: (context, index) {
                  var name = snapshot.data["items"][index]["name"];
                  var image = snapshot.data["items"][index]["image"];
                  var price = snapshot.data["items"][index]["price"];

                  return Container(
                    // height: 120,
                    width: 320.w,
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.r),
                        color: white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(0, -1),
                            blurRadius: 10.r,
                          )
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                AppText(
                                  text: "BEST CHOICE",
                                  color: Colors.blueAccent,
                                  fontSize: textsize,
                                ),
                                AppText(
                                  text: name,
                                  fontSize: textsize + 2,
                                ),
                                AppText(
                                  text: "\$ ${price}",
                                  fontSize: 17.sp,
                                ),
                              ],
                            ),
                          ),
                          Image.network(
                            image,
                            fit: BoxFit.cover,
                            // height: 300,
                          ),
                        ],
                      ),
                    ),
                  );
                });
          } else {
            return CircularProgressIndicator();
          }
        },
      ),
    );
  }
}
