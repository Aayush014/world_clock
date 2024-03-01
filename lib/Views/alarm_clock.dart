import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AlarmClock extends StatefulWidget {
  const AlarmClock({super.key});

  @override
  State<AlarmClock> createState() => _AlarmClockState();
}

class _AlarmClockState extends State<AlarmClock> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '\tAlarm',
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
      body: Center(
        child: Column(
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
                        child: const Center(
                          child: Divider(
                            color: Colors.white,
                            thickness: 2,
                            indent: 90,
                            endIndent: 150,
                          ),
                        ),
                      ),
                      Transform.rotate(
                        angle: pi / 2,
                        child: const Center(
                          child: Divider(
                            color: Color(0xFF00FFB2),
                            thickness: 2,
                            indent: 65,
                            endIndent: 155,
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
              width: 283,
              height: 40,
              decoration: ShapeDecoration(
                color: const Color(0xFF1C1B1F),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                shadows: [
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
              ),
              child: Row(
                children: [
                  const SizedBox(width: 10,),
                  const Text(
                    '5:00',
                    style: TextStyle(
                      color: Color(0xFF00FFB2),
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                  const Text(
                    'am',
                    style: TextStyle(
                      color: Color(0xFF00FFB2),
                      fontSize: 18,
                      fontFamily: 'Quattrocento Sans',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                  const Spacer(),
                  SizedBox(
                    width: 43,
                    height: 17,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 4,
                          top: 2,
                          child: Container(
                            width: 39,
                            height: 13,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade700,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(width: 0.5),
                              // color: Color(0xFF1C1B1F),
                              boxShadow: const [
                                BoxShadow(
                                  color: Color(0x1C000000),
                                  blurRadius: 12,
                                  offset: Offset(4, 4),
                                  spreadRadius: 0,
                                ),
                                BoxShadow(
                                  color: Color(0x00000000),
                                  blurRadius: 20,
                                  offset: Offset(-4, -4),
                                  spreadRadius: 5,
                                )
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          left: 26,
                          top: 0,
                          child: Container(
                            width: 17,
                            height: 17,
                            decoration: const ShapeDecoration(
                              color: Color(0xFF00FFB2),
                              shape: OvalBorder(),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: 283,
              height: 40,
              decoration: ShapeDecoration(
                color: const Color(0xFF1C1B1F),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                shadows: [
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
              ),
              child: Row(
                children: [
                  const SizedBox(width: 10,),
                  const Text(
                    '6:45',
                    style: TextStyle(
                      color: Color(0xFF00FFB2),
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                  const Text(
                    'pm',
                    style: TextStyle(
                      color: Color(0xFF00FFB2),
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const Spacer(),
                  SizedBox(
                    width: 43,
                    height: 17,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 4,
                          top: 2,
                          child: Container(
                            width: 39,
                            height: 13,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade700,
                             borderRadius: BorderRadius.circular(10),
                             border: Border.all(width: 0.5),
                             // color: Color(0xFF1C1B1F),
                              boxShadow: const [
                                BoxShadow(
                                  color: Color(0x1C000000),
                                  blurRadius: 12,
                                  offset: Offset(4, 4),
                                  spreadRadius: 0,
                                ),
                                BoxShadow(
                                  color: Color(0x00000000),
                                  blurRadius: 20,
                                  offset: Offset(-4, -4),
                                  spreadRadius: 5,
                                )
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Container(
                            width: 17,
                            height: 17,
                            decoration: const ShapeDecoration(
                              color: Color(0xFF00FFB2),
                              shape: OvalBorder(),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: 283,
              height: 40,
              decoration: ShapeDecoration(
                color: const Color(0xFF1C1B1F),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                shadows: [
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
              ),
              child: Row(
                children: [
                  const SizedBox(width: 10,),
                  const Text(
                    '8:00',
                    style: TextStyle(
                      color: Color(0xFF00FFB2),
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                  const Text(
                    'pm',
                    style: TextStyle(
                      color: Color(0xFF00FFB2),
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const Spacer(),
                  SizedBox(
                    width: 43,
                    height: 17,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 4,
                          top: 2,
                          child: Container(
                            width: 39,
                            height: 13,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade700,
                             borderRadius: BorderRadius.circular(10),
                             border: Border.all(width: 0.5),
                             // color: Color(0xFF1C1B1F),
                              boxShadow: const [
                                BoxShadow(
                                  color: Color(0x1C000000),
                                  blurRadius: 12,
                                  offset: Offset(4, 4),
                                  spreadRadius: 0,
                                ),
                                BoxShadow(
                                  color: Color(0x00000000),
                                  blurRadius: 20,
                                  offset: Offset(-4, -4),
                                  spreadRadius: 5,
                                )
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Container(
                            width: 17,
                            height: 17,
                            decoration: const ShapeDecoration(
                              color: Color(0xFF00FFB2),
                              shape: OvalBorder(),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
