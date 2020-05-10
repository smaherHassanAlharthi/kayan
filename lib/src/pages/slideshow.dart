import 'package:flutter/material.dart';
import 'package:on_boarding_ui/on_boarding_ui.dart';
import 'package:on_boarding_ui/model/slider.dart' as SliderModel;
import 'choosecall.dart';

class SlideShow extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _SlideShow();

  }
}
class _SlideShow extends State<SlideShow> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: OnBoardingUi(slides:[
        SliderModel.Slider(
          sliderHeading: "خدماتنا",
          sliderSubHeading: "-البقاء على تواصل مع الأهل والأصدقاء و عمل الاجتماعات العملية الهامة بشكل مباشر و فوري بفديو ثلاثي الأبعاد\n"
              "-امكانية تسجيل الجلسة ومشاهدتها في وقت لاحق\n"
              "-الاتصال بعدة اشخاص\n",
          sliderImageUrl: 'assets/images/slider_3.png',
        ),
        SliderModel.Slider(
          sliderHeading: "تعريف KAYAN",
          sliderSubHeading: "تواصل مباشر وفوري بخيارين جديدين التواصل بفديو للشخص ب 360 درجة بكاميرا والتواصل بشكل ثلاثي الأبعاد باستخدام النظارة ",
          sliderImageUrl: 'assets/images/slider_2.png',
        ),
        SliderModel.Slider(
          sliderHeading: "لننطلق",
          sliderSubHeading: "",
          sliderImageUrl: 'assets/images/slider_3.png',
        )
      ],onFinish: (
          ){
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => ChooseCall(),
          ),
        );
      }),
    );
  }
}




