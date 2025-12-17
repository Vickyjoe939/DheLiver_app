import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math' as math;

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFF6B00),
      body: Stack(
        children: [
          // Faded Logos
          ..._buildFadedLogos(),

          // Decorative Circles
          ..._buildDecorativeCircles(),

          // Main content
          SafeArea(
            child: Column(
              children: [
                Expanded(
                  child: Center(
                    child: SizedBox(
                      width: 392,
                      height: 165,
                      child: ColorFiltered(
                        colorFilter: const ColorFilter.mode(
                          Colors.white,
                          BlendMode.srcIn,
                        ),
                        child: Image.asset(
                          'assets/dheliver_logo.png', // Assuming transparent logo
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.fromLTRB(40, 40, 40, 60),
                  child: Column(
                    children: [
                      _buildClientButton(),
                      const SizedBox(height: 18),
                      _buildRiderButton(),
                      const SizedBox(height: 18),
                      _buildMoreButton(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildClientButton() {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFFFF8A3B),
          foregroundColor: Colors.black,
          elevation: 5,
          shadowColor: Colors.black.withOpacity(0.4),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
            side: const BorderSide(color: Colors.white, width: 0.5),
          ),
        ),
        child: const Text(
          'Client',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  Widget _buildRiderButton() {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFFD9D9D9),
          foregroundColor: Colors.black,
          elevation: 5,
          shadowColor: Colors.black.withOpacity(0.4),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        child: const Text(
          'Rider',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  Widget _buildMoreButton() {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.black,
          elevation: 5,
          shadowColor: Colors.black.withOpacity(0.4),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        child: const Text(
          'MORE',
          style: TextStyle(
            fontSize: 20,
            color: Color(0xFFF57C00),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  List<Widget> _buildFadedLogos() {
    return [
      // Top logos
      _fadedLogo(top: 100, left: -20, angle: 20, opacity: 0.1),
      _fadedLogo(top: 180, left: 80, angle: -25, opacity: 0.1),

      // Bottom logos
      _fadedLogo(top: 600, left: 130, angle: 25, opacity: 0.15),
      _fadedLogo(top: 720, left: 50, angle: -30, opacity: 0.15),
    ];
  }

  Widget _fadedLogo({
    required double top,
    required double left,
    required double angle,
    required double opacity,
  }) {
    return Positioned(
      top: top,
      left: left,
      child: Transform.rotate(
        angle: angle * (math.pi / 180),
        child: Opacity(
          opacity: opacity,
          child: Text(
            'DheLiver',
            style: GoogleFonts.inter(
              fontSize: 72,
              fontWeight: FontWeight.w700,
              fontStyle: FontStyle.italic,
              color: Colors.white,
              height: 1.0,
            ),
          ),
        ),
      ),
    );
  }

  List<Widget> _buildDecorativeCircles() {
    return [
      // Circles based on your coordinates
      _circle(top: 153, left: 358, size: 100),
      _circle(top: 39, left: -17, size: 100),
      _circle(top: 260, left: 38, size: 50),
      _circle(top: 681, left: 272, size: 25),
      _circle(top: 683, left: 0, size: 100),
      _circle(top: 808, left: 345, size: 100),
      _circle(top: 190, left: 188, size: 15),
      _circle(top: 678, left: 263, size: 25),

      // Circle for the MORE button
      _circle(top: 817, left: 145, size: 25),
    ];
  }

  Widget _circle({
    required double top,
    required double left,
    required double size,
  }) {
    return Positioned(
      top: top,
      left: left,
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          color: const Color(0xFFD9D9D9).withOpacity(0.51),
          shape: BoxShape.circle,
          boxShadow: const [
            BoxShadow(
              color: Color(0x40000000),
              blurRadius: 4.0,
              spreadRadius: 0.0,
              offset: Offset(0, 4),
            ),
          ],
        ),
      ),
    );
  }
}
