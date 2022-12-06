import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoxy/core/common/common_var.dart';
import 'package:shoxy/screens/08_home/home.dart';

int selectedIndex = 0;

class ListOfTabs extends StatefulWidget {
  const ListOfTabs({
    Key? key,
  }) : super(key: key);

  @override
  State<ListOfTabs> createState() => _ListOfTabsState();
}

class _ListOfTabsState extends State<ListOfTabs> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        dragStartBehavior: DragStartBehavior.start,
        // physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              setState(() {
                selectedIndex = index;
                pageController.jumpToPage(index);
              });
            },
            splashColor: kMainColor,
            child: Padding(
              padding: EdgeInsets.only(top: 8.0.h, bottom: 8.0.h, right: 15.w),
              child: Material(
                elevation: 3,
                borderRadius: BorderRadius.circular(30.r),
                child: Container(
                  decoration: BoxDecoration(
                    color: selectedIndex == index ? kMainColor : Colors.white,
                    borderRadius: BorderRadius.circular(30.r),
                  ),
                  height: 50.h,
                  width: selectedIndex == index
                      ? MediaQuery.of(context).size.width - 180.w
                      : 58.w,
                  child: selectedIndex == index
                      ? Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CircleAvatar(
                                backgroundColor: white,
                                maxRadius: 27.r,
                                child: Padding(
                                  padding: EdgeInsets.all(5),
                                  child: Image.network(images[index]),
                                ),
                              ),
                            ),
                            Text(
                              names[index],
                              style:
                                  TextStyle(fontSize: 30, color: Colors.white),
                            )
                          ],
                        )
                      : Padding(
                          padding: const EdgeInsets.all(5),
                          child: Image.network(images[index]),
                        ),
                ),
              ),
            ),
          );
        });
  }
}

List<String> names = ["Nike", "Addidas", "Puma"];
List<String> images = [
  "https://pngimg.com/uploads/nike/nike_PNG5.png",
  "https://th.bing.com/th/id/R.30ca9669c8b6f374cb2ec479218a5f6c?rik=ORJk7N5jYe4iYQ&pid=ImgRaw&r=0",
  "https://th.bing.com/th/id/R.51f2903974859e8aca6c1245f4f27f57?rik=sl7QRbrXVRvyRA&pid=ImgRaw&r=0",
];
