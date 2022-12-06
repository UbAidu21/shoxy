import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoxy/core/Widgets/app_button.dart';
import 'package:shoxy/core/Widgets/app_text.dart';
import 'package:shoxy/core/Widgets/custom_text_field.dart';
import 'package:shoxy/core/common/common_var.dart';
import 'package:shoxy/screens/08_home/Search/search.dart';
import 'package:shoxy/screens/08_home/addidas/addidas_shoes.dart';
import 'package:shoxy/screens/08_home/drawer/custom_drawer.dart';
import 'package:shoxy/screens/08_home/nike/nike_shoes.dart';
import 'package:shoxy/screens/08_home/puma/puma_shoes.dart';
import 'package:shoxy/screens/08_home/tab_bar/tab_bar.dart';
import 'package:shoxy/screens/10_cart/cart.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

int _selectedIndex = 0;

class _HomeState extends State<Home> {
  final scaffol_key = GlobalKey<ScaffoldState>();
  TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffol_key,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        toolbarHeight: 70.h,
        leadingWidth: 60.w,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () {
              // Get.to(Manue());
              scaffol_key.currentState!.openDrawer();
            },
            child: CircleAvatar(
              minRadius: 30.r,
              backgroundColor: white,
              child: Image.asset(fourDots, height: 20.h, width: 20.w),
            ),
          ),
        ),
        centerTitle: true,
        title: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppText(
              text: 'Store Location',
              fontSize: textsize,
              color: grey,
              fontWeight: FontWeight.w400,
            ),
            Row(
              children: [
                Icon(
                  Icons.location_on,
                  color: Colors.redAccent,
                ),
                AppText(
                  text: "Darra Bazar, Germany",
                  color: black,
                )
              ],
            )
          ],
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
      drawer: CustomDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          //Search
          // CustomTextField(
          //   controller: _searchController,
          //   hintText: 'Search',
          //   // onChange: (p0) {
          //   //   setState(() {
          //   //     takeMeTo(SearchScreen(), context);
          //   //   });
          //   // },
          //   prefix: Icon(
          //     Icons.search,
          //     color: Colors.black,
          //     size: textsize + 10,
          //   ),
          // ),
          // fixheight,
          SearchButton(
            onPressed: () {
              takeMeTo(SearchScreen(), context);
            },
          ),
          // fixheight,
          //tabbar
          Container(height: 70.h, width: 370.w, child: ListOfTabs()),
          Expanded(
              child: PageView.builder(
                  controller: pageController,
                  itemCount: 3,
                  scrollDirection: Axis.horizontal,
                  onPageChanged: (value) {
                    setState(() {
                      // value = selectedIndex;
                      selectedIndex = value;
                    });
                  },
                  itemBuilder: (context, index) {
                    return pages[index];
                  })),
        ]),
      ),
    );
  }
}

PageController pageController = PageController();
List<Color> colors = [Colors.green, kMainColor, Colors.amber];
List<Widget> pages = [NikeShoes(), AddidasShoes(), PumaShoes()];
