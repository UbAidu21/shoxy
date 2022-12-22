import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoxy/core/Widgets/app_text.dart';
import 'package:shoxy/core/common/common_var.dart';

int selected_index = 0;

class SizeGiven extends StatefulWidget {
  const SizeGiven({
    Key? key,
  }) : super(key: key);

  @override
  State<SizeGiven> createState() => _SizeGivenState();
}

class _SizeGivenState extends State<SizeGiven> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: size_of_shoes.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            setState(() {
              selected_index = index;
            });
          },
          child: Container(
            height: 50.h,
            width: 50.w,
            margin: EdgeInsets.fromLTRB(10, 10, 0, 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(49.r),
                color:
                    selected_index == index ? kMainColor : Colors.grey.shade100,
                boxShadow: [
                  selected_index == index
                      ? BoxShadow(
                          color: kMainColor,
                          blurRadius: 10,
                          offset: Offset(0, -1))
                      : BoxShadow(
                          color: Colors.grey.shade100,
                          blurRadius: 15,
                          offset: Offset(0, -1))
                ]),
            child: Center(
              child: AppText(
                text: size_of_shoes[index],
                fontSize: textsize + 5,
                color: selected_index == index ? white : black,
              ),
            ),
          ),
        );
      },
    );
  }
}

List<String> size_of_shoes = ['38', '39', '40', '41', '42', '43'];
