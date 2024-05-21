import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:hccb_channel_verse_app/common%20widget/Drawer.dart';
import 'package:hccb_channel_verse_app/common%20widget/bottomAppBar.dart';
import '../common widget/Hexagonal.dart';
import '../common widget/color extension.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int current = 0;
  PageController controller =PageController(
    viewportFraction: 0.9
  );
  List<String> images = [
    'assets/images/jcbfullImage.png',
    'assets/images/jcbimage.png',
    'assets/images/jcbfullImage.png',
  ];
  final _totalDots = 5;
  double _currentPosition = 0.0;

  double _validPosition(double position) {
    if (position >= _totalDots) return 0;
    if (position < 0) return _totalDots - 1.0;
    return position;
  }

  void _updatePosition(double position) {
    setState(() => _currentPosition = _validPosition(position));
  }

  @override
  Widget build(BuildContext context) {
    var decorator = const DotsDecorator(
      activeColor: Colors.green,
      activeSize: Size.square(30.0),
      activeShape: RoundedRectangleBorder(),

    );

    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent, // status bar color
        statusBarIconBrightness: Brightness.light,
        // status bar icons' color
        systemNavigationBarColor: Colors.black));
    var media = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        // leading: Icon(Icons.menu),
        // automaticallyImplyLeading: true,
        title: const Image(
          image: AssetImage("assets/images/JCB.png"),
          height: 37,
          width: 96,
        ),
        toolbarHeight: MediaQuery.sizeOf(context).height * 0.1,
        flexibleSpace: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: HexColor.fromHex("#FBA505")),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.notifications))
        ],
      ),
      bottomNavigationBar: MobileFooter(),
      drawer: const NavBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Row(
              //   children: [
              //
              //     Container(
              //       height: media.height * 0.2,
              //       width: media.width * 1,
              //       decoration: BoxDecoration(
              //         borderRadius: BorderRadius.circular(5),
              //       ),
              //       child: Image.asset(
              //         "assets/images/jcbfullImage.png",
              //         fit: BoxFit.cover,
              //       ),
              //     )
              //   ],
              // ),
              CarouselSlider(
                options: CarouselOptions(
                  enlargeFactor: 0.1,
              viewportFraction: 1,
                  enlargeCenterPage: true,
                  //onPageChanged: (){}


                ),
                items: images
                    .map((image) => Container(
                          color: Colors.transparent,
                          child:  Image(
                            semanticLabel: image.toString(),
                            image: AssetImage(image),
                            height: media.height * 0.4,
                            width: double.infinity,
                           fit: BoxFit.fitWidth,
                          ),
                        ))
                    .toList(),
              ),

              DotsIndicator(
                  dotsCount: 5,
                  position:  4,
                  decorator: DotsDecorator(

                    size: const Size.square(9.0),
                    activeSize: const Size(18.0, 9.0),
                    activeShape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0)),
                  )),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Container(
                    height: media.height * 0.4,
                    width: media.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(width: 1),
                        color: HexColor.fromHex("#000000")),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                HexagonWidget(image: 'assets/images/SV1.png'),
                                const Text(
                                  "Start Visit",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                HexagonWidget(image: 'assets/images/Ip1.png'),
                                const Text(
                                  "In Process",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white),
                                )
                              ],
                            ),
                          ],
                        ),
                       
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                HexagonWidget(image: 'assets/images/Ih1.png'),
                                const Text(
                                  "Incentive History",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                HexagonWidget(
                                    image: 'assets/images/profile1.png'),
                                const Text(
                                  "Profile",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white),
                                )
                              ],
                            ),
                          ],
                        ),
                      ],
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
