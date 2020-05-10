import 'package:flutter/material.dart';
import 'index.dart';
import 'voicecall.dart';

class ChooseCall extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _ChooseCall();
  }
}
class _ChooseCall extends State<ChooseCall> {


  @override
  void initState() {
    super.initState();

  }

  @override
  void dispose() {

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('كيان'),
        backgroundColor: Color(0xff927DFF),
      ),
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          padding: EdgeInsets.all(50.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 10.0,
              ),

              SizedBox(
                height: 20.0,
              ),

              SizedBox(
                height: 20.0,
              ),

              SizedBox(
                height: 20.0,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(200.0),
                child: Image.network(
                  'https://pixel.nymag.com/imgs/daily/vulture/2017/06/14/14-tom-cruise.w700.h700.jpg',
                  height: 200.0,
                  width: 200.0,
                ),
              ),
              SizedBox(
                height: 50.0,
              ),
              Text(
                'اختر طريقة الاتصال ',
                style: TextStyle(
                    color: Color(0xff927DFF),
                    fontWeight: FontWeight.w900,
                    fontSize: 20),
              ),
              SizedBox(
                height: 50.0,
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  FunctionalButton(
                    title: 'اتصال 3D',
                    icon: Icons.video_call,
                    onPressed: () {

                    },
                  ),
                  FunctionalButton(
                    title: 'اتصال ٣٦٠ درجة',
                    icon: Icons.videocam,

                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (BuildContext context) {
                            return IndexPage();
                          },
                        ),
                      );
                    },
                  ),
                  FunctionalButton(
                    title: 'اتصال صوتي',
                    icon: Icons.phone_in_talk, //VoiceCall page
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (BuildContext context) {
                            return VoiceCall();
                          },
                        ),
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FunctionalButton extends StatefulWidget {
  final title;
  final icon;
  final Function() onPressed;

  const FunctionalButton({Key key, this.title, this.icon, this.onPressed})
      : super(key: key);

  @override
  _FunctionalButtonState createState() => _FunctionalButtonState();
}

class _FunctionalButtonState extends State<FunctionalButton> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        RawMaterialButton(
          onPressed: widget.onPressed,
          splashColor: Colors.deepOrangeAccent,
          fillColor: Colors.white,
          elevation: 10.0,
          shape: CircleBorder(),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Icon(
              widget.icon,
              size: 30.0,
              color: Color(0xff927DFF),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
          child: Text(
            widget.title,
            style: TextStyle(fontSize: 15.0,  color: Color(0xff927DFF),),
          ),
        )
      ],
    );
  }
}