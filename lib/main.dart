import 'package:flutter/material.dart';
import 'package:on_boarding_ui/on_boarding_ui.dart';
import 'package:on_boarding_ui/model/slider.dart' as SliderModel;


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  Widget build(BuildContext context) {
    return Scaffold(
      body: OnBoardingUi(slides:[
        SliderModel.Slider(
          sliderHeading: "خدماتنا",
          sliderSubHeading: "-البقاء على تواصل مع الأهل والأصدقاء و عمل الاجتماعات العملية الهامة بشكل مباشر و فوري بفديو ثلاثي الأبعاد\n"
              "-امكانية تسجيل الجلسة ومشاهدتها في وقت لاحق\n"
              "-الاتصال بعدة اشخاص\n",
          sliderImageUrl: "http://clipart-library.com/data_images/392773.png",
        ),
        SliderModel.Slider(
          sliderHeading: "Slide 1",
          sliderSubHeading: "Slide Sub Heading 1",
          sliderImageUrl: "http://clipart-library.com/data_images/392773.png",
        ),
        SliderModel.Slider(
          sliderHeading: "Slide 1",
          sliderSubHeading: "Slide Sub Heading 1",
          sliderImageUrl: "http://clipart-library.com/data_images/392773.png",
        )
      ],onFinish: (){
        // Your OnFinish code here
      }),
    );
  }
}
