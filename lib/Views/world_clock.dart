import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:world_clock/Utils/watches.dart';

class WorldClock extends StatefulWidget {
  const WorldClock({super.key});

  @override
  State<WorldClock> createState() => _WorldClockState();
}

DateTime dateTime = DateTime.now();

class _WorldClockState extends State<WorldClock> with AutomaticKeepAliveClientMixin{
  @override
  bool get wantKeepAlive =>true;
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '\tWorld Clock',
          style: GoogleFonts.poppins(
              color: const Color(0xFF00FFB2),
              fontSize: 30,
              fontWeight: FontWeight.w600),
        ),
        actions: [
          Container(
            height: 50,
            width: 50,
            decoration: const BoxDecoration(
                color: Color(0xff0a0a0a),
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.white38,
                    spreadRadius: 0.01,
                    blurRadius: 7,
                  )
                ]),
            child: const Icon(
              CupertinoIcons.settings,
              size: 30,
              color: Color(0xFF00FFB2),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
        ],
        toolbarHeight: 80,
      ),
      body: const Watch1(),
    );
  }
}
