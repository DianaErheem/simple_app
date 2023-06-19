
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class AboutStoreProductScreen extends StatelessWidget {
  const AboutStoreProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            ListTile(
              leading: InkWell(
                onTap: () => Navigator.pop(context),
                child: Container(
                  height: 48,
                  width: 48,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(12)),
                    color: const Color(0xFFFFFFFF),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.15),
                        spreadRadius: 0,
                        blurRadius: 10,
                        offset: const Offset(0, 0.75),
                      ),
                    ],
                  ),
                  child: InkWell(
                    onTap: () => Navigator.pop(context),
                    child: const Icon(
                      Icons.arrow_back_ios_outlined,
                      color: Color(0xFF000000),
                      size: 25,
                    ),
                  ),
                ),
              ),
              title: Text(
                "About store",
                textAlign: TextAlign.center,
                style: GoogleFonts.nunito(
                  fontWeight: FontWeight.w600,
                  fontSize: 17,
                  color: const Color(0xFF454F5B),
                ),
              ),
              trailing: const SizedBox(
                height: 48,
                width: 48,
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.8211,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                  color: Color(0xFFF9FAFB),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: ListView.separated(
                    itemBuilder: (BuildContext context, int index) {
                      
                      if (kDebugMode) {
                        
                      }
                      return Container(
                        width: double.infinity,
                        height: 275,
                        color: const Color(0xFFFFFFFF),
                        child: Column(
                          children: [
                            Stack(
                              children: [
                                Container(
                                  width: double.infinity,
                                  height: 190,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(10),
                                    ),
                                  
                                  
                                  ),
                                ),
                                Positioned(
                                  top: 5,
                                  right:
                                  MediaQuery.of(context).size.width * 0.02,
                                  child: Container(
                                    height: 45,
                                    width: 45,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: const Color(0xFF5C6AC4),
                                      ),
                                      borderRadius: const BorderRadius.all(
                                        Radius.circular(12),
                                      ),
                                      color: const Color(0x00000000),
                                    ),
                                    child: const Icon(
                                      Icons.favorite_outline,
                                      color: Color(0xFF5C6AC4),
                                      size: 25,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 5,
                                  left:
                                  MediaQuery.of(context).size.width * 0.02,
                                  child: Container(
                                    height: 45,
                                    width: 45,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: const Color(0xFF5C6AC4),
                                      ),
                                      borderRadius: const BorderRadius.all(
                                        Radius.circular(12),
                                      ),
                                      color: const Color(0x00000000),
                                    ),
                                    child: const Icon(
                                      Icons.shopping_cart_outlined,
                                      color: Color(0xFF5C6AC4),
                                      size: 25,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 5, left: 5),
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'ggg',
                                    textAlign: TextAlign.left,
                                    style: GoogleFonts.nunito(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16,
                                        color: const Color(0xFF454F5B)),
                                  ),
                                  Text(
                                    "kk",
                                    textAlign: TextAlign.right,
                                    style: GoogleFonts.nunito(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                      color: const Color(0xFF5C6AC4),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 5, left: 5),
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'bbb',
                                    textAlign: TextAlign.left,
                                    overflow: TextOverflow.ellipsis,
                                    style: GoogleFonts.nunito(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                      color: const Color(0xFF5C6AC4),
                                    ),
                                  ),
                                  Text(
                                    'aaa',
                                    textAlign: TextAlign.right,
                                    overflow: TextOverflow.ellipsis,
                                    style: GoogleFonts.nunito(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 13,
                                      decoration: TextDecoration.lineThrough,
                                      color: const Color(0xFF5C6AC4),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return const SizedBox(
                        height: 20,
                      );
                    }, itemCount: 10,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
