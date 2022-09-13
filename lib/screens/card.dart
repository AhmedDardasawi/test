import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CardFood extends StatelessWidget {
  const CardFood({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 667),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'First Method',
          // You can use the library anywhere in the app even in theme
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: child,
        );
      },
      child: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            // title: Text(widget.title),
            ),
        body: Center(
          child: SizedBox(
            width: 329.r,
            height: 177.r,
            child: Card(
              clipBehavior: Clip.hardEdge,
              color: Colors.amber,
              child: Column(
                children: [
                  Flexible(
                    flex: 3,
                    child: Container(
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('images/food.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Stack(
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                end: Alignment.bottomCenter,
                                begin: Alignment.topCenter,
                                colors: [
                                  Colors.black87,
                                  Colors.black12,
                                  Colors.transparent,
                                  Colors.black12,
                                  Colors.black87,
                                ],
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Flexible(
                                flex: 3,
                                child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Container(
                                    width: double.infinity,
                                    color: Colors.transparent,
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            SvgPicture.asset('icons/heart.svg'),
                                            SizedBox(
                                              width: 4.r,
                                            ),
                                            Text(
                                              '94%',
                                              style: TextStyle(
                                                color: Color(0xFFFFFFFF),
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 4.r,
                                            ),
                                            Text(
                                              'EEE',
                                              style: TextStyle(
                                                color: Color(0xFFE5B826),
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Shampyon',
                                              style: TextStyle(
                                                color: Color(0xFFFFFFFF),
                                                fontSize: 24,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Container(
                                              height: 5.r,
                                              width: 32.r,
                                              decoration: BoxDecoration(
                                                color: Color(0xFF3ED3CD),
                                                borderRadius:
                                                    BorderRadius.circular(50),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 4,
                                            ),
                                            Text(
                                              'mezil - labensie - bresian',
                                              style: TextStyle(
                                                color: Color(0xFFFFFFFF),
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Flexible(
                                flex: 1,
                                child: Container(
                                  width: double.infinity,
                                  color: Colors.transparent,
                                  padding: EdgeInsets.only(right: 10.r),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                            color: Colors.black38,
                                            border: Border.all(
                                              color: Colors.white,
                                              width: 2,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(20.r)),
                                        child: Padding(
                                          padding: EdgeInsets.only(
                                              top: 2.r,
                                              bottom: 2.r,
                                              right: 2.r,
                                              left: 16.r),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              const Text(
                                                '30%',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                ),
                                              ),
                                              SizedBox(
                                                width: 5.r,
                                              ),
                                              SvgPicture.asset(
                                                  'icons/discount.svg'),
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 2.r,
                                      ),
                                      CircleAvatar(
                                        radius: 12.r,
                                        backgroundColor: Colors.black38,
                                        child: SvgPicture.asset(
                                          'icons/take-away.svg',
                                          color: Colors.white,
                                          width: 12.27,
                                          height: 15.39,
                                        ),
                                        // child: const Icon(
                                        //   Icons.check,

                                        // ),
                                      ),
                                      CircleAvatar(
                                        radius: 12.r,
                                        backgroundColor: Colors.black38,
                                        child: SvgPicture.asset(
                                          'icons/delivery.svg',
                                          color: Colors.white,
                                          width: 16.02,
                                          height: 10.82,
                                        ),
                                      ),
                                      CircleAvatar(
                                        radius: 12.r,
                                        backgroundColor: Colors.black38,
                                        child: SvgPicture.asset(
                                          'icons/dining-room-furniture.svg',
                                          color: Colors.white,
                                          width: 15.35,
                                          height: 10.35,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Container(
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              children: const [
                                Text(
                                  '2.5E',
                                  style: TextStyle(
                                    color: Color(0xFF000000),
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  width: 6,
                                ),
                                Text(
                                  'delivery',
                                  style: TextStyle(
                                    color: Color(0xFF000000),
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: const [
                              Icon(
                                Icons.circle_sharp,
                                color: Color(0xFFcccccc),
                                size: 10,
                              ),
                              SizedBox(
                                width: 6,
                              ),
                              Text(
                                'No minmum',
                                style: TextStyle(
                                  color: Color(0xFF8A8A8A),
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          ),
                          const Spacer(),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                '15 - 25',
                                style: TextStyle(
                                  color: Color(0xFF25B6C7),
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'Mins',
                                style: TextStyle(
                                  color: Color(0xFF000000),
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                          SvgPicture.asset('icons/share.svg'),
                          const Spacer(),
                        ],
                      ),
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ) // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
