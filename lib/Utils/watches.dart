import 'dart:async';
import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Watch1 extends StatefulWidget {
  const Watch1({super.key});

  @override
  State<Watch1> createState() => _Watch1State();
}

class _Watch1State extends State<Watch1> {
  @override
  void initState() {
    Timer.periodic(
      const Duration(seconds: 1),
      (timer) {
        if (DateTime != DateTime.now()) {
          setState(
            () {
              dateTime = DateTime.now();
            },
          );
        }
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: PageView(
        scrollDirection: Axis.horizontal,
        allowImplicitScrolling: true,
        scrollBehavior: const CupertinoScrollBehavior(),
        physics: const BouncingScrollPhysics(),
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: 350,
                width: 350,
                child: Stack(
                  children: [
                    Center(
                      child: Container(
                        height: 300,
                        width: 300,
                        decoration: BoxDecoration(
                          boxShadow: [
                            const BoxShadow(
                              color: Color(0x28000000),
                              blurRadius: 25,
                              offset: Offset(10.04, 10.04),
                              spreadRadius: 0,
                            ),
                            BoxShadow(
                              color: Colors.grey.shade900,
                              blurRadius: 25,
                              offset: const Offset(-15, -10),
                              spreadRadius: 0,
                            )
                          ],
                          color: const Color(0xFF1C1B1F),
                          shape: BoxShape.circle,
                        ),
                        child: Stack(
                          fit: StackFit.expand,
                          children: [
                            ...List.generate(
                              4,
                              (index) => Transform.rotate(
                                angle: index * 90 * pi / 180,
                                child: const Center(
                                  child: Divider(
                                    color: Colors.grey,
                                    indent: 275,
                                    thickness: 3.5,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Center(
                      child: Container(
                        height: 180,
                        width: 180,
                        decoration: BoxDecoration(
                          boxShadow: [
                            const BoxShadow(
                              color: Color(0x28000000),
                              blurRadius: 11.68,
                              offset: Offset(5.87, 5.87),
                              spreadRadius: 0,
                            ),
                            BoxShadow(
                              color: Colors.grey.shade900,
                              blurRadius: 11.68,
                              offset: const Offset(-5.84, -5.84),
                              spreadRadius: 0,
                            )
                          ],
                          color: const Color(0xFF1C1B1F),
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    Stack(
                      children: [
                        Transform.rotate(
                          angle: pi / 2,
                          child: Center(
                            child: Transform.rotate(
                              angle: dateTime.hour % 12 * 30 * pi / 180,
                              child: const Divider(
                                color: Colors.white,
                                thickness: 2,
                                indent: 90,
                                endIndent: 150,
                              ),
                            ),
                          ),
                        ),
                        Transform.rotate(
                          angle: pi / 2,
                          child: Center(
                            child: Transform.rotate(
                              angle: dateTime.minute * 6 * pi / 180,
                              child: const Divider(
                                color: Color(0xFF00FFB2),
                                thickness: 2,
                                indent: 65,
                                endIndent: 155,
                              ),
                            ),
                          ),
                        ),
                        Center(
                          child: Container(
                            height: 10,
                            width: 10,
                            decoration: const BoxDecoration(
                                color: Colors.black, shape: BoxShape.circle),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                width: 201,
                height: 138,
                decoration: ShapeDecoration(
                  color: const Color(0xFF1C1B1F),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  shadows: const [
                    BoxShadow(
                      color: Color(0x38000000),
                      blurRadius: 12,
                      offset: Offset(4, 4),
                      spreadRadius: 0,
                    ),
                    BoxShadow(
                      color: Color(0x7F4D4D4D),
                      blurRadius: 12,
                      offset: Offset(-4, -4),
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Gujarat',
                      style: GoogleFonts.poppins(
                        color: const Color(0xFF00FFB2),
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "${(dateTime.hour > 12) ? (dateTime.hour >= 9) ? (dateTime.hour % 12) : dateTime.hour : dateTime.hour}:${dateTime.minute}:${dateTime.second}",
                          style: GoogleFonts.poppins(
                            color: const Color(0xFF00FFB2),
                            fontSize: 32,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          (dateTime.day >= 12) ? " PM" : " AM",
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "${dateTime.day} Mar",
                      style: GoogleFonts.poppins(
                        color: const Color(0xFF94C1AE),
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      'India',
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                alignment: Alignment.center,
                height: 30,
                width: 150,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 20,
                      width: 20,
                      decoration: const BoxDecoration(
                        color: Color(0xFF00FFB2),
                        shape: BoxShape.circle,
                      ),
                    ),
                    Container(
                      height: 20,
                      width: 20,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                    ),
                    Container(
                      height: 20,
                      width: 20,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                    ),
                    Container(
                      height: 20,
                      width: 20,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: 350,
                width: 350,
                child: Stack(
                  children: [
                    Center(
                      child: Container(
                        height: 300,
                        width: 300,
                        decoration: BoxDecoration(
                          boxShadow: [
                            const BoxShadow(
                              color: Color(0x28000000),
                              blurRadius: 25,
                              offset: Offset(10.04, 10.04),
                              spreadRadius: 0,
                            ),
                            BoxShadow(
                              color: Colors.grey.shade900,
                              blurRadius: 25,
                              offset: const Offset(-15, -10),
                              spreadRadius: 0,
                            )
                          ],
                          color: const Color(0xFF1C1B1F),
                          shape: BoxShape.circle,
                        ),
                        child: Stack(
                          fit: StackFit.expand,
                          children: [
                            ...List.generate(
                              4,
                              (index) => Transform.rotate(
                                angle: index * 90 * pi / 180,
                                child: const Center(
                                  child: Divider(
                                    color: Colors.grey,
                                    indent: 275,
                                    thickness: 3.5,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Center(
                      child: Container(
                        height: 180,
                        width: 180,
                        decoration: BoxDecoration(
                          boxShadow: [
                            const BoxShadow(
                              color: Color(0x28000000),
                              blurRadius: 11.68,
                              offset: Offset(5.87, 5.87),
                              spreadRadius: 0,
                            ),
                            BoxShadow(
                              color: Colors.grey.shade900,
                              blurRadius: 11.68,
                              offset: const Offset(-5.84, -5.84),
                              spreadRadius: 0,
                            )
                          ],
                          color: const Color(0xFF1C1B1F),
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    Stack(
                      children: [
                        Transform.rotate(
                          angle: pi / 1,
                          child: Center(
                            child: Transform.rotate(
                              angle: dateTime.hour % 12 * 30 * pi / 180,
                              child: const Divider(
                                color: Colors.white,
                                thickness: 2,
                                indent: 90,
                                endIndent: 150,
                              ),
                            ),
                          ),
                        ),
                        Transform.rotate(
                          angle: pi / 30,
                          child: Center(
                            child: Transform.rotate(
                              angle: dateTime.minute * 6 * pi / 180,
                              child: const Divider(
                                color: Color(0xFF00FFB2),
                                thickness: 2,
                                indent: 65,
                                endIndent: 155,
                              ),
                            ),
                          ),
                        ),
                        Center(
                          child: Container(
                            height: 10,
                            width: 10,
                            decoration: const BoxDecoration(
                                color: Colors.black, shape: BoxShape.circle),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                width: 201,
                height: 138,
                decoration: ShapeDecoration(
                  color: const Color(0xFF1C1B1F),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  shadows: const [
                    BoxShadow(
                      color: Color(0x38000000),
                      blurRadius: 12,
                      offset: Offset(4, 4),
                      spreadRadius: 0,
                    ),
                    BoxShadow(
                      color: Color(0x7F4D4D4D),
                      blurRadius: 12,
                      offset: Offset(-4, -4),
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Sydney',
                      style: GoogleFonts.poppins(
                        color: const Color(0xFF00FFB2),
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "01:24:45",
                          style: GoogleFonts.poppins(
                            color: const Color(0xFF00FFB2),
                            fontSize: 32,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          (dateTime.day >= 12) ? "PM" : "AM",
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "${dateTime.day} Mar",
                      style: GoogleFonts.poppins(
                        color: const Color(0xFF94C1AE),
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      'Australia',
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                alignment: Alignment.center,
                height: 30,
                width: 150,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 20,
                      width: 20,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                    ),
                    Container(
                      height: 20,
                      width: 20,
                      decoration: const BoxDecoration(
                        color: Color(0xFF00FFB2),
                        shape: BoxShape.circle,
                      ),
                    ),
                    Container(
                      height: 20,
                      width: 20,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                    ),
                    Container(
                      height: 20,
                      width: 20,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: 350,
                width: 350,
                child: Stack(
                  children: [
                    Center(
                      child: Container(
                        height: 300,
                        width: 300,
                        decoration: BoxDecoration(
                          boxShadow: [
                            const BoxShadow(
                              color: Color(0x28000000),
                              blurRadius: 25,
                              offset: Offset(10.04, 10.04),
                              spreadRadius: 0,
                            ),
                            BoxShadow(
                              color: Colors.grey.shade900,
                              blurRadius: 25,
                              offset: const Offset(-15, -10),
                              spreadRadius: 0,
                            )
                          ],
                          color: const Color(0xFF1C1B1F),
                          shape: BoxShape.circle,
                        ),
                        child: Stack(
                          fit: StackFit.expand,
                          children: [
                            ...List.generate(
                              4,
                              (index) => Transform.rotate(
                                angle: index * 90 * pi / 180,
                                child: const Center(
                                  child: Divider(
                                    color: Colors.grey,
                                    indent: 275,
                                    thickness: 3.5,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Center(
                      child: Container(
                        height: 180,
                        width: 180,
                        decoration: BoxDecoration(
                          boxShadow: [
                            const BoxShadow(
                              color: Color(0x28000000),
                              blurRadius: 11.68,
                              offset: Offset(5.87, 5.87),
                              spreadRadius: 0,
                            ),
                            BoxShadow(
                              color: Colors.grey.shade900,
                              blurRadius: 11.68,
                              offset: const Offset(-5.84, -5.84),
                              spreadRadius: 0,
                            )
                          ],
                          color: const Color(0xFF1C1B1F),
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    Stack(
                      children: [
                        Transform.rotate(
                          angle: pi / 4,
                          child: Center(
                            child: Transform.rotate(
                              angle: dateTime.hour % 12 * 30 * pi / 180,
                              child: const Divider(
                                color: Colors.white,
                                thickness: 2,
                                indent: 90,
                                endIndent: 150,
                              ),
                            ),
                          ),
                        ),
                        Transform.rotate(
                          angle: pi / 1,
                          child: Center(
                            child: Transform.rotate(
                              angle: dateTime.minute * 6 * pi / 180,
                              child: const Divider(
                                color: Color(0xFF00FFB2),
                                thickness: 2,
                                indent: 65,
                                endIndent: 155,
                              ),
                            ),
                          ),
                        ),
                        Center(
                          child: Container(
                            height: 10,
                            width: 10,
                            decoration: const BoxDecoration(
                                color: Colors.black, shape: BoxShape.circle),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                width: 201,
                height: 138,
                decoration: ShapeDecoration(
                  color: const Color(0xFF1C1B1F),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  shadows: const [
                    BoxShadow(
                      color: Color(0x38000000),
                      blurRadius: 12,
                      offset: Offset(4, 4),
                      spreadRadius: 0,
                    ),
                    BoxShadow(
                      color: Color(0x7F4D4D4D),
                      blurRadius: 12,
                      offset: Offset(-4, -4),
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'London',
                      style: GoogleFonts.poppins(
                        color: const Color(0xFF00FFB2),
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "08:55:01",
                          style: GoogleFonts.poppins(
                            color: const Color(0xFF00FFB2),
                            fontSize: 32,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          (dateTime.day >= 12) ? "PM" : "AM",
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "${dateTime.day} Mar",
                      style: GoogleFonts.poppins(
                        color: const Color(0xFF94C1AE),
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      'England',
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                alignment: Alignment.center,
                height: 30,
                width: 150,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 20,
                      width: 20,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                    ),
                    Container(
                      height: 20,
                      width: 20,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                    ),
                    Container(
                      height: 20,
                      width: 20,
                      decoration: const BoxDecoration(
                        color: Color(0xFF00FFB2),
                        shape: BoxShape.circle,
                      ),
                    ),
                    Container(
                      height: 20,
                      width: 20,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: 350,
                width: 350,
                child: Stack(
                  children: [
                    Center(
                      child: Container(
                        height: 300,
                        width: 300,
                        decoration: BoxDecoration(
                          boxShadow: [
                            const BoxShadow(
                              color: Color(0x28000000),
                              blurRadius: 25,
                              offset: Offset(10.04, 10.04),
                              spreadRadius: 0,
                            ),
                            BoxShadow(
                              color: Colors.grey.shade900,
                              blurRadius: 25,
                              offset: const Offset(-15, -10),
                              spreadRadius: 0,
                            )
                          ],
                          color: const Color(0xFF1C1B1F),
                          shape: BoxShape.circle,
                        ),
                        child: Stack(
                          fit: StackFit.expand,
                          children: [
                            ...List.generate(
                              4,
                              (index) => Transform.rotate(
                                angle: index * 90 * pi / 180,
                                child: const Center(
                                  child: Divider(
                                    color: Colors.grey,
                                    indent: 275,
                                    thickness: 3.5,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Center(
                      child: Container(
                        height: 180,
                        width: 180,
                        decoration: BoxDecoration(
                          boxShadow: [
                            const BoxShadow(
                              color: Color(0x28000000),
                              blurRadius: 11.68,
                              offset: Offset(5.87, 5.87),
                              spreadRadius: 0,
                            ),
                            BoxShadow(
                              color: Colors.grey.shade900,
                              blurRadius: 11.68,
                              offset: const Offset(-5.84, -5.84),
                              spreadRadius: 0,
                            )
                          ],
                          color: const Color(0xFF1C1B1F),
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    Stack(
                      children: [
                        Transform.rotate(
                          angle: pi / 12,
                          child: Center(
                            child: Transform.rotate(
                              angle: dateTime.hour % 12 * 30 * pi / 180,
                              child: const Divider(
                                color: Colors.white,
                                thickness: 2,
                                indent: 90,
                                endIndent: 150,
                              ),
                            ),
                          ),
                        ),
                        Transform.rotate(
                          angle: pi / 12,
                          child: Center(
                            child: Transform.rotate(
                              angle: dateTime.minute * 6 * pi / 180,
                              child: const Divider(
                                color: Color(0xFF00FFB2),
                                thickness: 2,
                                indent: 65,
                                endIndent: 155,
                              ),
                            ),
                          ),
                        ),
                        Center(
                          child: Container(
                            height: 10,
                            width: 10,
                            decoration: const BoxDecoration(
                                color: Colors.black, shape: BoxShape.circle),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                width: 201,
                height: 138,
                decoration: ShapeDecoration(
                  color: const Color(0xFF1C1B1F),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  shadows: const [
                    BoxShadow(
                      color: Color(0x38000000),
                      blurRadius: 12,
                      offset: Offset(4, 4),
                      spreadRadius: 0,
                    ),
                    BoxShadow(
                      color: Color(0x7F4D4D4D),
                      blurRadius: 12,
                      offset: Offset(-4, -4),
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Moscow',
                      style: GoogleFonts.poppins(
                        color: const Color(0xFF00FFB2),
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "07:29:45",
                          style: GoogleFonts.poppins(
                            color: const Color(0xFF00FFB2),
                            fontSize: 32,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          (dateTime.day >= 12) ? "PM" : "AM",
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "${dateTime.day} Mar",
                      style: GoogleFonts.poppins(
                        color: const Color(0xFF94C1AE),
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      'US',
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                alignment: Alignment.center,
                height: 30,
                width: 150,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 20,
                      width: 20,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                    ),
                    Container(
                      height: 20,
                      width: 20,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                    ),
                    Container(
                      height: 20,
                      width: 20,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                    ),
                    Container(
                      height: 20,
                      width: 20,
                      decoration: const BoxDecoration(
                        color: Color(0xFF00FFB2),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

DateTime dateTime = DateTime.now();
