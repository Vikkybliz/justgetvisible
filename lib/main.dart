import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Just get visible',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(229, 229, 229, 1),
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Color.fromRGBO(229, 229, 229, 1),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: const Icon(Icons.arrow_back, color: Color.fromRGBO(20, 34, 59, 1)
        ,),
        title: const Text('Dashboard', style: TextStyle(color: Colors.black),),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right:16.0),
            child: SvgPicture.asset('assets/icon_arrow-back_m_black.33ab5c066ab3131e0ff47d2800589749.svg'),
          )
        ],
      ),
      body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              const Text('Justgetvisible.com', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),),
              const SizedBox(
                height: 20,
              ),
              GridView(
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1/0.5,
                    crossAxisSpacing: 20,
                    // mainAxisSpacing: 10
                ),
                children: [
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                    gradient: const LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Color.fromRGBO(45, 179, 152, 1),
                        Color.fromRGBO(61, 200, 172, 1),
                      ],
                    )
                    ),
                    child: Padding(
      padding: const EdgeInsets.only(left: 15, top: 15, right: 10),
      child: Column(
        children: const [
          Text('Positive score factors', softWrap: true, style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white),),
          Align(
            alignment: Alignment.bottomRight,
            child: CircleAvatar(
              maxRadius: 15,
              backgroundColor: Colors.white,
              child: Text('8'),
            ),
          )
        ],
      ),
    ),
                  ),
                  Container(
                    height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      gradient: const LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [
                          Color.fromRGBO(230, 93, 74, 1),
                          Color.fromRGBO(246, 128, 112, 1)
                        ],
                      )
                  ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15, top: 15, right: 10),
                      child: Column(
                        children: const [
                          Text('Negative score factors', softWrap: true, style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white),),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: CircleAvatar(
                              maxRadius: 15,
                              backgroundColor: Colors.white,
                              child: Text('2'),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: GridView(
                  shrinkWrap: true,
                  primary: false,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 15
                  ),
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                                             ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SvgPicture.asset('assets/desktop.svg', height: 60,),
                          const Text('Website Report', style: TextStyle(fontSize: 17,),),
                          RichText(text: const TextSpan(
                            text: '72',
                            style: TextStyle(color: Color.fromRGBO(45, 179, 152, 1), fontSize: 16),
                            children: <TextSpan>[
                              TextSpan(
                                  text: '/100', style: TextStyle(color: Colors.black, fontSize: 16)),
                            ],
                          ),)
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SvgPicture.asset('assets/car.svg', height: 60,),
                          const Text('Page Speed', style: TextStyle(fontSize: 17,),),
                          const Text('3.42 s', style: TextStyle(fontSize: 14, color: Color.fromRGBO(248, 142, 17, 1),
                          ))
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SvgPicture.asset('assets/secure-shield.svg', height: 60,),
                          const Text('Security', style: TextStyle(fontSize: 17,),),
                          const Text('Safe', style: TextStyle(fontSize: 14, color: Color.fromRGBO(45, 179, 152, 1)
                          ))
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SvgPicture.asset('assets/desktop (1).svg', height: 60,),
                          const Text('Desktop PageSpeed', style: TextStyle(fontSize: 17,),),
                        RichText(text: const TextSpan(
                          text: '84',
                          style: TextStyle(color: Color.fromRGBO(45, 179, 152, 1), fontSize: 16),
                          children: <TextSpan>[
                            TextSpan(
                                text: '/100', style: TextStyle(color: Colors.black, fontSize: 16)),
                          ],
                        ),)
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SvgPicture.asset('assets/smartphone.svg', height: 60,),
                          const Text('Mobile PageSpeed', style: TextStyle(fontSize: 17,),),
                          RichText(text: const TextSpan(
                            text: '82',
                            style: TextStyle(color: Color.fromRGBO(45, 179, 152, 1), fontSize: 16),
                            children: <TextSpan>[
                              TextSpan(
                                  text: '/100', style: TextStyle(color: Colors.black, fontSize: 16)),
                            ],
                          ),)
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SvgPicture.asset('assets/smartphone (1).svg', height: 60,),
                          const Text('Mobile Friendly', style: TextStyle(fontSize: 17,),),
                          const Text('Yes', style: TextStyle(fontSize: 14, color: Color.fromRGBO(45, 179, 152, 1)
                          ))
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SvgPicture.asset('assets/desktop (2).svg', height: 60,),
                          const Text('Domain Expiry', style: TextStyle(fontSize: 17,),),
                          const Text('14 days', style: TextStyle(fontSize: 14, color: Color.fromRGBO(235, 87, 87, 1),
                          ))
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SvgPicture.asset('assets/website.svg', height: 60,),
                          const Text('Uptime Monitor', style: TextStyle(fontSize: 17,),),
                          const Text('Up', style: TextStyle(fontSize: 14, color: Color.fromRGBO(45, 179, 152, 1)
                          ))
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SvgPicture.asset('assets/malware.svg', height: 60,),
                          const Text('Report a Bug', style: TextStyle(fontSize: 17,),),
                          const Text('+', style: TextStyle(fontSize: 14, color: Color.fromRGBO(45, 179, 152, 1),
                          ))
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SvgPicture.asset('assets/domain.svg', height: 60,),
                          const Text('Domain Info', style: TextStyle(fontSize: 17,),),
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SvgPicture.asset('assets/broken-link.svg', height: 60,),
                          const Text('Broken Links', style: TextStyle(fontSize: 17,),),
                          const Text('5', style: TextStyle(fontSize: 14, color: Color.fromRGBO(230, 93, 74, 1),
                          ))
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SvgPicture.asset('assets/team.svg', height: 60,),
                          const Text('Users', style: TextStyle(fontSize: 17,),),
                          const Text('12 534', style: TextStyle(fontSize: 14, color: Color.fromRGBO(45, 179, 152, 1)
                          ))
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
      ),
    );
  }
}



