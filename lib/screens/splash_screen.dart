import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';

import 'package:tobeto_pair_one/screens/welcome_screen.dart';

class Scene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: TextButton(
        // splasey75 (1:168)
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => WelcomeScreen()),
          );
        },
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
        ),
        child: Container(
          width: double.infinity,
          height: 812 * fem,
          child: Container(
            // splaseR7V (1:169)
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xfff9fafb),
              borderRadius: BorderRadius.circular(30 * fem),
            ),
            child: Stack(
              children: [
                Positioned(
                  // rectangle2hqh (1:170)
                  left: 0 * fem,
                  top: 0 * fem,
                  child: Container(
                    width: 375 * fem,
                    height: 812 * fem,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment(0.049, -2.104),
                        end: Alignment(-1.866, 0.042),
                        colors: <Color>[
                          Color(0xffbf57bf),
                          Color(0xff8c2c8c),
                          Color(0xff319e9e),
                          Color(0xff8c2c8c)
                        ],
                        stops: <double>[0, 0.529, 0.689, 1],
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x04000000),
                          offset: Offset(12 * fem, 20 * fem),
                          blurRadius: 20 * fem,
                        ),
                      ],
                    ),
                    child: Center(
                      // autogroupms4pVFm (Jfrp4vd5gXHRNUqfHkMS4P)
                      child: SizedBox(
                        width: 375 * fem,
                        height: 812 * fem,
                        child: Image.asset(
                          'assets/page-1/images/auto-group-ms4p.png',
                          width: 375 * fem,
                          height: 812 * fem,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  // tebetologoyataybeyaz11dWP (3:1626)
                  left: 59 * fem,
                  top: 372 * fem,
                  child: Align(
                    child: SizedBox(
                      width: 255.59 * fem,
                      height: 49 * fem,
                      child: Image.asset(
                        'assets/page-1/images/tebeto-logo-yatay-beyaz-1-1.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  // iklogolight1H59 (3:1627)
                  left: 165 * fem,
                  top: 674 * fem,
                  child: Align(
                    child: SizedBox(
                      width: 150 * fem,
                      height: 58.44 * fem,
                      child: Image.asset(
                        'assets/page-1/images/ik-logo-light-1.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
