import 'package:barbar_app/core/CustomNextButton.dart';
import 'package:barbar_app/experience%20level/ExperienceLevel.dart';
import 'package:barbar_app/providers/ChooseProfessionProvider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class Profession extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) {
        return ChooseProfessionProvider();
      },
      child: SafeArea(
        child: Consumer<ChooseProfessionProvider>(
            builder: (context, model, child) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              toolbarHeight: 100,
              elevation: 0,
              title: Center(
                  child: Text(
                'Choose Profession',
                style: GoogleFonts.manrope(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              )),
            ),
            body: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.75,
                  child: GridView.builder(
                    padding: EdgeInsets.all(10.0),
                    itemCount: professions.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Padding(
                            padding:
                                EdgeInsets.only(left: 20, right: 25, top: 30),
                            child: InkWell(
                              onTap: () {
                                model.getValue(index);
                              },
                              child: Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.19,
                                child: Container(
                                  padding: EdgeInsets.all(10.0),
                                  decoration: model.value == index
                                      ? BoxDecoration(
                                          border: Border.all(
                                              color: Color(0xFF0941CE),
                                              width: 1),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Color(0xFF0941CE),
                                              blurRadius: 5,
                                              offset: Offset(0,
                                                  0), // changes position of shadow
                                            ),
                                          ],
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(15),
                                        )
                                      : BoxDecoration(
                                          boxShadow: [
                                            BoxShadow(
                                              color:
                                                  Colors.black.withOpacity(0.3),
                                              blurRadius: 5,
                                              offset: Offset(0,
                                                  0), // changes position of shadow
                                            ),
                                          ],
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(15),
                                        ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        professions[index].imageUrl,
                                        fit: BoxFit.cover,
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Container(
                                        // width: double.infinity,
                                        child: Center(
                                          child: Text(
                                            professions[index].title,
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 15),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1.9 / 2,
                      crossAxisSpacing: 1,
                      mainAxisSpacing: 5,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    height: 50.h,
                    //width: MediaQuery.of(context).size.height * 0.18,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ExperienceLevel()),
                        );
                      },
                      child: CustomNextButton(),
                    ),
                  ),
                )
              ],
            ),
          );
        }),
      ),
    );
  }
}

class MyProfession {
  final String title;
  final String imageUrl;

  MyProfession({
    this.title,
    this.imageUrl,
  });
}

///Profession Class List
final List<MyProfession> professions = [
  MyProfession(
    title: 'Barbers',
    imageUrl: 'assets/icons/image 7.png',
  ),
  MyProfession(
    title: 'Brows',
    imageUrl: 'assets/icons/group.png',
  ),
  MyProfession(
    title: 'Hair Style',
    imageUrl: 'assets/icons/group(1).png',
  ),
  MyProfession(
    title: 'Pedicurist',
    imageUrl: 'assets/icons/group(2).png',
  ),
  MyProfession(
    title: 'Hair\nBeauty Products',
    imageUrl: 'assets/icons/Frame.png',
  ),
  MyProfession(
    title: 'Makeup Products',
    imageUrl: 'assets/icons/Frame.png',
  ),
];
