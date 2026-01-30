import 'package:flutter/material.dart';
import 'package:flutter_application_1/theme.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(120),
          child: AppBar(
            flexibleSpace: Center(
              child: Text(
                "Finance App",
                style: GoogleFonts.archivoBlack(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Apptheme.lightBackground
                ),
              ),
            ),
            backgroundColor: Apptheme.primaryBlue,
          ),
        ),
        body: Container(),
      ),
    );
  }
}
