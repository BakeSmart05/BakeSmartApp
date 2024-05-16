import 'package:flutter/material.dart';

import 'components/discount_banner.dart';
import 'components/home_header.dart';
import 'components/popular_product.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";

  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFFF5F5DC),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(vertical: 16),
          child: Column(
            children: [
              HomeHeader(),
              DiscountBanner(),
              PopularProducts(),
            ],
          ),
        ),
      ),
    );
  }
}
