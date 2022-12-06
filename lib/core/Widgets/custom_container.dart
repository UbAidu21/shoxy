import 'package:flutter/material.dart';
import 'package:shoxy/core/Widgets/app_text.dart';

class CustomContainer extends StatelessWidget {
  CustomContainer({
    Key? key,
    required this.image,
    required this.onAddClick,
    this.description,
    this.name,
    this.id,
    this.price,
    this.quantity,
  }) : super(key: key);

  String image;
  String? price;
  String? name;
  String? id;
  String? description;
  String? quantity;

  VoidCallback onAddClick;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 2.2,
      height: MediaQuery.of(context).size.height / 3,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
        image: DecorationImage(image: NetworkImage(image), fit: BoxFit.fill),
        boxShadow: const [
          BoxShadow(
            color: Colors.blueGrey,
            blurRadius: 20,
            offset: Offset(0, -1),
          ),
        ],
      ),
      margin: EdgeInsets.all(10),
      child: Stack(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Positioned(
            bottom: 50,
            left: 6,
            child: AppText(
              text: name!,
              fontSize: 18,
              fontWeight: FontWeight.w700,
              color: Colors.black87.withOpacity(0.9),
            ),
          ),
          Positioned(
            bottom: 30,
            left: 6,
            child: AppText(
              text: "BEST SELLER",
              color: Colors.blueAccent,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          Positioned(
            top: 8,
            right: 10,
            child: AppText(
              text: "\$ ${price.toString()}",
              fontSize: 22,
              fontWeight: FontWeight.w500,
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: InkWell(
              onTap: onAddClick,
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(25),
                        topLeft: Radius.circular(25))),
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
