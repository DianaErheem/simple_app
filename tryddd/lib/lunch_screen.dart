import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LaunchScreen extends StatefulWidget {
  const LaunchScreen({Key? key}) : super(key: key);

  @override
  State<LaunchScreen> createState() => _LaunchScreenState();
}

class _LaunchScreenState extends State<LaunchScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3),(){
      Navigator.pushReplacementNamed(context, "/admin_screen");
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  Colors.blue,
                  Colors.amber
                ],
                end: AlignmentDirectional.topStart,
                begin: AlignmentDirectional.bottomEnd
            )),
        alignment: Alignment.center,
        child: Text("Eng.Diana",
          style: GoogleFonts.poppins(color: Colors.black,
            fontSize: 25,
            fontWeight: FontWeight.bold,

          ),
        ),
      ),
    );
  }
}
