import 'package:mapproject/allpackages.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  GoogleMapController? mapController;
  List<LatLng> polylineCoordinates = [];

  TextEditingController latitudeController = new TextEditingController();
  TextEditingController longitudeController = new TextEditingController();
  TextEditingController latitudeController1 = new TextEditingController();
  TextEditingController longitudeController1 = new TextEditingController();
  TextEditingController latitudeController2 = new TextEditingController();
  TextEditingController longitudeController2 = new TextEditingController();
  TextEditingController latitudeController3 = new TextEditingController();
  TextEditingController longitudeController3 = new TextEditingController();
  TextEditingController latitudeController4 = new TextEditingController();
  TextEditingController longitudeController4 = new TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 8.0.hp,
        leading: Image.asset(
          'assets/images/map3.png',
          height: 2.0.hp,
        ),
        //centerTitle: true,

        title: Text(
          'MapScreen',
          style: toptitleStyle,
        ),

        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.bottomRight,
                colors: <Color>[appcolor, appcolor1]),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 6.0.hp,
            ),
            Text(
              'To enter the lat and long fields',
              style: listtitle,
            ),
            SizedBox(
              height: 2.0.hp,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  color: const Color(0xffD9D9D9).withOpacity(0.1),
                  height: 7.00.hp, width: 45.00.wp,
                  // padding: const EdgeInsets.only(
                  //   left: 20,
                  //   right: 20,
                  // ),
                  child: TextFormField(
                    controller: latitudeController,
                    keyboardType: TextInputType.number,
                    style: GoogleFonts.jost(
                        textStyle: TextStyle(
                            fontSize: 10.00.sp,
                            color: forminputcolor,
                            fontWeight: FontWeight.w500)),
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide:
                              const BorderSide(color: appcolor, width: 1),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: BorderSide(
                              color: const Color(0xffC6C6C6).withOpacity(0.5),
                              width: 1),
                        ),
                        fillColor: const Color(0xffC6C6C6),
                        hintText: 'lat',
                        contentPadding: const EdgeInsets.only(left: 10),
                        hintStyle: GoogleFonts.jost(
                            textStyle: TextStyle(
                                fontSize: 10.00.sp,
                                color: formhintcolor,
                                fontWeight: FontWeight.w500)),
                        border: const OutlineInputBorder(
                          gapPadding: 4,
                        )),
                  ),
                ),
                Container(
                  color: const Color(0xffD9D9D9).withOpacity(0.1),
                  height: 7.00.hp, width: 45.00.wp,
                  // padding: const EdgeInsets.only(
                  //   left: 20,
                  //   right: 20,
                  // ),
                  child: TextFormField(
                    controller: longitudeController,
                    keyboardType: TextInputType.number,
                    style: GoogleFonts.jost(
                        textStyle: TextStyle(
                            fontSize: 10.00.sp,
                            color: forminputcolor,
                            fontWeight: FontWeight.w500)),
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide:
                              const BorderSide(color: appcolor, width: 1),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: BorderSide(
                              color: const Color(0xffC6C6C6).withOpacity(0.5),
                              width: 1),
                        ),
                        fillColor: const Color(0xffC6C6C6),
                        hintText: 'long',
                        contentPadding: const EdgeInsets.only(left: 10),
                        hintStyle: GoogleFonts.jost(
                            textStyle: TextStyle(
                                fontSize: 10.00.sp,
                                color: formhintcolor,
                                fontWeight: FontWeight.w500)),
                        border: const OutlineInputBorder(
                          gapPadding: 4,
                        )),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  color: const Color(0xffD9D9D9).withOpacity(0.1),
                  height: 7.00.hp, width: 45.00.wp,
                  // padding: const EdgeInsets.only(
                  //   left: 20,
                  //   right: 20,
                  // ),
                  child: TextFormField(
                    controller: latitudeController1,
                    keyboardType: TextInputType.number,
                    style: GoogleFonts.jost(
                        textStyle: TextStyle(
                            fontSize: 10.00.sp,
                            color: forminputcolor,
                            fontWeight: FontWeight.w500)),
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide:
                              const BorderSide(color: appcolor, width: 1),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: BorderSide(
                              color: const Color(0xffC6C6C6).withOpacity(0.5),
                              width: 1),
                        ),
                        fillColor: const Color(0xffC6C6C6),
                        hintText: 'lat',
                        contentPadding: const EdgeInsets.only(left: 10),
                        hintStyle: GoogleFonts.jost(
                            textStyle: TextStyle(
                                fontSize: 10.00.sp,
                                color: formhintcolor,
                                fontWeight: FontWeight.w500)),
                        border: const OutlineInputBorder(
                          gapPadding: 4,
                        )),
                  ),
                ),
                Container(
                  color: const Color(0xffD9D9D9).withOpacity(0.1),
                  height: 7.00.hp, width: 45.00.wp,
                  // padding: const EdgeInsets.only(
                  //   left: 20,
                  //   right: 20,
                  // ),
                  child: TextFormField(
                    controller: longitudeController1,
                    keyboardType: TextInputType.number,
                    style: GoogleFonts.jost(
                        textStyle: TextStyle(
                            fontSize: 10.00.sp,
                            color: forminputcolor,
                            fontWeight: FontWeight.w500)),
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide:
                              const BorderSide(color: appcolor, width: 1),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: BorderSide(
                              color: const Color(0xffC6C6C6).withOpacity(0.5),
                              width: 1),
                        ),
                        fillColor: const Color(0xffC6C6C6),
                        hintText: 'long',
                        contentPadding: const EdgeInsets.only(left: 10),
                        hintStyle: GoogleFonts.jost(
                            textStyle: TextStyle(
                                fontSize: 10.00.sp,
                                color: formhintcolor,
                                fontWeight: FontWeight.w500)),
                        border: const OutlineInputBorder(
                          gapPadding: 4,
                        )),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  color: const Color(0xffD9D9D9).withOpacity(0.1),
                  height: 7.00.hp, width: 45.00.wp,
                  // padding: const EdgeInsets.only(
                  //   left: 20,
                  //   right: 20,
                  // ),
                  child: TextFormField(
                    controller: latitudeController2,
                    keyboardType: TextInputType.number,
                    style: GoogleFonts.jost(
                        textStyle: TextStyle(
                            fontSize: 10.00.sp,
                            color: forminputcolor,
                            fontWeight: FontWeight.w500)),
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide:
                              const BorderSide(color: appcolor, width: 1),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: BorderSide(
                              color: const Color(0xffC6C6C6).withOpacity(0.5),
                              width: 1),
                        ),
                        fillColor: const Color(0xffC6C6C6),
                        hintText: 'lat',
                        contentPadding: const EdgeInsets.only(left: 10),
                        hintStyle: GoogleFonts.jost(
                            textStyle: TextStyle(
                                fontSize: 10.00.sp,
                                color: formhintcolor,
                                fontWeight: FontWeight.w500)),
                        border: const OutlineInputBorder(
                          gapPadding: 4,
                        )),
                  ),
                ),
                Container(
                  color: const Color(0xffD9D9D9).withOpacity(0.1),
                  height: 7.00.hp, width: 45.00.wp,
                  // padding: const EdgeInsets.only(
                  //   left: 20,
                  //   right: 20,
                  // ),
                  child: TextFormField(
                    controller: longitudeController2,
                    keyboardType: TextInputType.number,
                    style: GoogleFonts.jost(
                        textStyle: TextStyle(
                            fontSize: 10.00.sp,
                            color: forminputcolor,
                            fontWeight: FontWeight.w500)),
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide:
                              const BorderSide(color: appcolor, width: 1),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: BorderSide(
                              color: const Color(0xffC6C6C6).withOpacity(0.5),
                              width: 1),
                        ),
                        fillColor: const Color(0xffC6C6C6),
                        hintText: 'long',
                        contentPadding: const EdgeInsets.only(left: 10),
                        hintStyle: GoogleFonts.jost(
                            textStyle: TextStyle(
                                fontSize: 10.00.sp,
                                color: formhintcolor,
                                fontWeight: FontWeight.w500)),
                        border: const OutlineInputBorder(
                          gapPadding: 4,
                        )),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  color: const Color(0xffD9D9D9).withOpacity(0.1),
                  height: 7.00.hp, width: 45.00.wp,
                  // padding: const EdgeInsets.only(
                  //   left: 20,
                  //   right: 20,
                  // ),
                  child: TextFormField(
                    controller: latitudeController3,
                    keyboardType: TextInputType.number,
                    style: GoogleFonts.jost(
                        textStyle: TextStyle(
                            fontSize: 10.00.sp,
                            color: forminputcolor,
                            fontWeight: FontWeight.w500)),
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide:
                              const BorderSide(color: appcolor, width: 1),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: BorderSide(
                              color: const Color(0xffC6C6C6).withOpacity(0.5),
                              width: 1),
                        ),
                        fillColor: const Color(0xffC6C6C6),
                        hintText: 'lat',
                        contentPadding: const EdgeInsets.only(left: 10),
                        hintStyle: GoogleFonts.jost(
                            textStyle: TextStyle(
                                fontSize: 10.00.sp,
                                color: formhintcolor,
                                fontWeight: FontWeight.w500)),
                        border: const OutlineInputBorder(
                          gapPadding: 4,
                        )),
                  ),
                ),
                Container(
                  color: const Color(0xffD9D9D9).withOpacity(0.1),
                  height: 7.00.hp, width: 45.00.wp,
                  // padding: const EdgeInsets.only(
                  //   left: 20,
                  //   right: 20,
                  // ),
                  child: TextFormField(
                    controller: longitudeController3,
                    keyboardType: TextInputType.number,
                    style: GoogleFonts.jost(
                        textStyle: TextStyle(
                            fontSize: 10.00.sp,
                            color: forminputcolor,
                            fontWeight: FontWeight.w500)),
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide:
                              const BorderSide(color: appcolor, width: 1),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: BorderSide(
                              color: const Color(0xffC6C6C6).withOpacity(0.5),
                              width: 1),
                        ),
                        fillColor: const Color(0xffC6C6C6),
                        hintText: 'long',
                        contentPadding: const EdgeInsets.only(left: 10),
                        hintStyle: GoogleFonts.jost(
                            textStyle: TextStyle(
                                fontSize: 10.00.sp,
                                color: formhintcolor,
                                fontWeight: FontWeight.w500)),
                        border: const OutlineInputBorder(
                          gapPadding: 4,
                        )),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  color: const Color(0xffD9D9D9).withOpacity(0.1),
                  height: 7.00.hp, width: 45.00.wp,
                  // padding: const EdgeInsets.only(
                  //   left: 20,
                  //   right: 20,
                  // ),
                  child: TextFormField(
                    controller: latitudeController4,
                    keyboardType: TextInputType.number,
                    style: GoogleFonts.jost(
                        textStyle: TextStyle(
                            fontSize: 10.00.sp,
                            color: forminputcolor,
                            fontWeight: FontWeight.w500)),
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide:
                              const BorderSide(color: appcolor, width: 1),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: BorderSide(
                              color: const Color(0xffC6C6C6).withOpacity(0.5),
                              width: 1),
                        ),
                        fillColor: const Color(0xffC6C6C6),
                        hintText: 'lat',
                        contentPadding: const EdgeInsets.only(left: 10),
                        hintStyle: GoogleFonts.jost(
                            textStyle: TextStyle(
                                fontSize: 10.00.sp,
                                color: formhintcolor,
                                fontWeight: FontWeight.w500)),
                        border: const OutlineInputBorder(
                          gapPadding: 4,
                        )),
                  ),
                ),
                Container(
                  color: const Color(0xffD9D9D9).withOpacity(0.1),
                  height: 7.00.hp, width: 45.00.wp,
                  // padding: const EdgeInsets.only(
                  //   left: 20,
                  //   right: 20,
                  // ),
                  child: TextFormField(
                    controller: longitudeController4,
                    keyboardType: TextInputType.number,
                    style: GoogleFonts.jost(
                        textStyle: TextStyle(
                            fontSize: 10.00.sp,
                            color: forminputcolor,
                            fontWeight: FontWeight.w500)),
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide:
                              const BorderSide(color: appcolor, width: 1),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: BorderSide(
                              color: const Color(0xffC6C6C6).withOpacity(0.5),
                              width: 1),
                        ),
                        fillColor: const Color(0xffC6C6C6),
                        hintText: 'long',
                        contentPadding: const EdgeInsets.only(left: 10),
                        hintStyle: GoogleFonts.jost(
                            textStyle: TextStyle(
                                fontSize: 10.00.sp,
                                color: formhintcolor,
                                fontWeight: FontWeight.w500)),
                        border: const OutlineInputBorder(
                          gapPadding: 4,
                        )),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5.0.hp,
            ),
            SmallActionButton(
                text: 'Draw Tence',
                bordercolor: screenbackground,
                press: () {
                  setState(() {
                    if (latitudeController.text.isEmpty) {
                      Fluttertoast.showToast(msg: 'pls enter all fields');
                    } else {
                      Get.to(MapPage(
                        lat1: latitudeController.text,
                        long1: longitudeController.text,
                        lat2: latitudeController1.text,
                        long2: longitudeController1.text,
                        lat3: latitudeController2.text,
                        long3: longitudeController2.text,
                        lat4: latitudeController3.text,
                        long4: longitudeController3.text,
                        lat5: latitudeController4.text,
                        long5: longitudeController4.text,
                      ));
                    }
                  });
                })
          ],
        ),
      ),
    );
  }
}
