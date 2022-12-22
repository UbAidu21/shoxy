import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoxy/core/Widgets/app_text.dart';
import 'package:shoxy/core/common/common_var.dart';
import 'package:shoxy/screens/13_details/details/gallery/gallery.dart';
import 'package:shoxy/screens/13_details/details/size_of_shoes/size_given.dart';

class Details extends StatefulWidget {
  Details({
    this.description,
    this.name,
    this.price,
    Key? key,
  }) : super(key: key);
  String? name;
  double? price;
  String? description;

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  bool text_visible = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //Seller Tag
        AppText(
          text: 'BEST SELLER',
          fontSize: textsize,
          color: kMainColor,
        ),
        fixheight,
        //Name
        AppText(
          text: '${widget.name}',
          fontSize: textsize + 10,
        ),
        fixheight,
        //Price
        AppText(
          text: '\$${widget.price}',
          fontSize: textsize + 5,
        ),
        fixheight,
        AppText(
          text: '${widget.description}',
          fontSize: textsize,
          textOverflow: text_visible == false
              ? TextOverflow.ellipsis
              : TextOverflow.visible,
          maxLines: text_visible == false ? 3 : null,
        ),
        TextButton(
          onPressed: () {
            setState(() {
              text_visible = !text_visible;
            });
          },
          child: AppText(
            text: text_visible == false ? "Read More" : "Read Less",
            fontSize: textsize,
          ),
        ),
        //Gallery Images
        AppText(
          text: 'Gallery',
          fontSize: textsize + 5,
        ),
        SizedBox(height: 80.h, child: GalleryListImg()),

        //Sizes
        fixheight,
        AppText(
          text: 'Size',
          fontSize: textsize + 5,
        ),
        SizedBox(
          height: 65.h,
          child: SizeGiven(),
        )
      ],
    );
  }
}
