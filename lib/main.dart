import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoxy/screens/01_splash_screen/splash_screen.dart';
import 'package:shoxy/screens/02_on_board/on_boarding1.dart';
import 'package:shoxy/screens/03_sign_in/sign_in.dart';
import 'package:shoxy/screens/04_signup/sign_up.dart';
import 'package:shoxy/screens/05_forget_password/forget_password.dart';
import 'package:shoxy/screens/07_main_screen/my_home_page.dart';
import 'package:shoxy/screens/08_home/home.dart';
import 'package:shoxy/screens/09_favorit/favorite.dart';
import 'package:shoxy/screens/10_cart/cart.dart';
import 'package:shoxy/screens/11_notifications/notifications.dart';
import 'package:shoxy/screens/12_profile/profile.dart';
import 'package:shoxy/screens/13_details/my_shoe_details.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: ((context, child) => MaterialApp(
              title: 'Flutter Demo',
              theme: ThemeData(
                primarySwatch: Colors.lightBlue,
              ),
              debugShowCheckedModeBanner: false,
              initialRoute: '/07-main-home',
              routes: {
                '/01-splash': (context) => SplashScreen(),
                '/02-onboard': (context) => OnBoarding(),
                // ignore: prefer_const_constructors
                '/03-signin': (context) => SignIn(),
                '/04-signup': (context) => SignUp(),
                '/05-forget': (context) => ForgetPassword(),
                // '/06-otp':(context) => OTP(),
                '/07-main-home': (context) => MyHomePage(),
                '/08-home': (context) => Home(),
                '/09-fav': (context) => Favorite(),
                '/10-cart': (context) => CartScreen(),
                '/11-noti': (context) => NotificationPage(),
                '/12-profile': (context) => ProfilePage(),
                '/13-details': (context) => MyShoeDetail(),
              })),
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }

//   void _decrementCounter() {
//     setState(() {
//       _counter--;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headline4,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: Material(
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//           children: [
//             InkWell(
//               onTap: _decrementCounter,
//               child: CircleAvatar(
//                 child: Icon(Icons.remove),
//               ),
//             ),
//             InkWell(
//               onTap: _incrementCounter,
//               child: CircleAvatar(
//                 child: Icon(Icons.add),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
