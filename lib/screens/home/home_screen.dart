import 'package:flutter/material.dart';
import 'package:justduit/screens/home/feature_list.dart';
import 'package:justduit/screens/home/header_profile.dart';
import 'package:justduit/screens/home/member_card.dart';
import 'package:justduit/screens/home/promo_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF6F8FB),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const HeaderProfile(
                  imagePath: 'assets/images/home/rifanstd.png',
                  userName: 'Rifan',
                ),
                const SizedBox(
                  height: 20,
                ),
                const MemberCard(
                  type: "Platinum",
                  period: "08/23",
                  balance: "4.000.000",
                ),
                const SizedBox(
                  height: 20,
                ),
                FeatureList(),
                const SizedBox(
                  height: 20,
                ),
                PromoList(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
