import 'package:flutter/material.dart';
import 'package:shoxy/core/Widgets/app_button.dart';
import 'package:shoxy/core/Widgets/app_text.dart';
import 'package:shoxy/core/common/common_var.dart';

class BottomTab extends StatelessWidget {
  BottomTab({
    Key? key,
    this.price,
  }) : super(key: key);
  double? price;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        color: white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        boxShadow: const [
          BoxShadow(color: Colors.grey, blurRadius: 25, offset: Offset(0, -1))
        ],
      ),
      child: Padding(
        padding: EdgeInsets.all(defaultPadding + 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                AppText(
                  text: 'Price',
                  color: grey,
                  fontSize: textsize + 5,
                ),
                AppText(
                  text: '\$${price}',
                  fontSize: textsize,
                )
              ],
            ),
            AppButton(
              onPressed: () {},
              text: "Add to Cart",
              width: 200,
            )
          ],
        ),
      ),
    );
  }
}
