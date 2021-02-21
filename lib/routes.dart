import './screens/main/main_screen.dart';
import './screens/order_booking/order_booking_screen.dart';
import './screens/overview/overview_screen.dart';
import './screens/profile/profile_screen.dart';

// ignore: type_annotate_public_apis
var myRoutes = {
  MainScreen.routeName: (context) => MainScreen(),
  OverviewScreen.routeName: (context) => OverviewScreen(),
  ProfileScreen.routeName: (context) => ProfileScreen(),
  OrderBookingScreen.routeName: (context) => OrderBookingScreen(),
};
