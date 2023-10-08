import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FeatureList extends StatelessWidget {
  FeatureList({super.key});

  final List<String> features = [
    'Request',
    'Send',
    'Bills',
    'Top Up',
    'Withdraw',
    'Games',
    'Split',
    'Mobile',
  ];

  final List<Icon> icons = [
    const Icon(Icons.call_received),
    const Icon(Icons.call_made),
    const Icon(Icons.receipt_long),
    const Icon(Icons.add),
    const Icon(Icons.payments),
    const Icon(Icons.gamepad),
    const Icon(Icons.splitscreen),
    const Icon(Icons.phone_android),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 200,
      child: Center(
        child: GridView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: features.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemBuilder: (context, index) {
            return Column(
              children: [
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: icons[index],
                ),
                const SizedBox(
                  height: 4,
                ),
                Expanded(
                  child: Text(
                    features[index].toString(),
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 14,
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
