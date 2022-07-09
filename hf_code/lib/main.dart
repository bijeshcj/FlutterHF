import 'package:flutter/material.dart';
import 'package:happy_fresh_flutter/hf_widgets/button_widgets/hf_button_widget.dart';
import 'package:happy_fresh_flutter/hf_widgets/text_widgets/hf_text_widgets.dart';
import 'package:happy_fresh_flutter/styles/hf_styles.dart';
import 'package:happy_fresh_flutter/utils/color/colors.dart';

void main() {
  runApp(const HappyFreshApp());
}

class HappyFreshApp extends StatelessWidget {
  const HappyFreshApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child:Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              getCardLayerNew(),
              getBottomLayout()
            ],
          ),
        ),
      ),
    );
  }

  Widget getBottomLayout(){
    return Column(
      children: [
        getAgreementBanner(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(child: HFButtonWidget().getHFButton('Disagree',HfStyles().getWhiteBackgroundWithGreyBorderStyle())),
            const SizedBox(width: 10,),
            Expanded(child: HFButtonWidget().getHFButton('I Agree',HfStyles().getOrangeStyle())),
          ],
        ),
      ],
    );
  }

  Widget getAgreementBanner(){
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
      SizedBox(
                height: 20,
                 child: Image.asset('images/hf_icon_information_16px_dark.png')
      ),
          Flexible(
            child: HfTextWidget().getText("""I hereby agree to the information above to continue using HappyFresh’s mobile application.""",TextAlign.center,
                HfStyles().getGoogleFontMontserrat(hf_grey_40, 12.0,FontWeight.normal)),
          ),
        ],
    );
  }

  // Widget getAgreementBanner(){
  //   return  SizedBox(
  //     child: ListTile(
  //        leading: SizedBox(
  //           height: 20,
  //            child: Image.asset('images/hf_icon_information_16px_dark.png')),
  //        title:  HfTextWidget().getText("""I hereby agree to the information above to continue using HappyFresh’s mobile application.""",TextAlign.center,
  //            HfStyles().getGoogleFontMontserrat(hf_grey_40, 12.0,FontWeight.normal)),
  //     ),
  //   );
  // }

  // reference : https://www.geeksforgeeks.org/flutter-card-widget/
  Widget getCardLayerNew(){
     return Card(
       margin: const EdgeInsets.only(top: 20),
       elevation: 50,
       shadowColor: Colors.black,
       color: hf_fresh_100,
       // child: SizedBox(width: 500,
       // height: 400,
       child: Column(
         mainAxisSize: MainAxisSize.min,
         children: [
           SizedBox(
             width: 180,
             child: Column(
               children: [
                 Image.asset('images/hf_img_new_information_200px.png'),
                 HfTextWidget().getText("""Welcome! We'd like you to know that...""",TextAlign.center,
                     HfStyles().getGoogleFontMontserrat(Colors.white, 16.0,FontWeight.w600)),
               ],
             ),
           ),

           Padding(
             padding: const EdgeInsets.all(32.0),
             child: Center(child: HfTextWidget().getText("As part of our commitment to privacy and transparency, we're updating you on how we use information within your device, such as installed applications to further improve our service and fraud management.",
                  TextAlign.center,HfStyles().getGoogleFontMontserrat(Colors.white, 12.0,FontWeight.w600))
             ),
           ),
         ],
        ),
       // ),
     );
  }


  Widget getCardLayer(){
     return Container(
       child: Card(
         shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8.0))),
         child: Column(
           children: [
         ClipRRect(
         borderRadius: const BorderRadius.only(
         topLeft: Radius.circular(8.0),
         topRight: Radius.circular(8.0),
       ),
       child: Image.asset(
           'images/hf_img_new_information_200px.png',
           // width: 300,
           // height: 150,
           fit:BoxFit.fill

       ),
         ),
           ],
         ),
       ),
     );
  }


}



