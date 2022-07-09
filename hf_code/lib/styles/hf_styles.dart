import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import '../../utils/color/colors.dart';

class HfStyles{

  TextStyle getGoogleFontMontserrat(Color textColor,double fontSize,FontWeight fontWeight){
    return GoogleFonts.montserrat(
        textStyle: HfStyles().getStyle(textColor, fontSize,fontWeight)
    );
  }

  TextStyle getStyle(Color textColor, double fontSize,FontWeight fontWeight){
      return TextStyle(color: textColor,fontSize: fontSize,fontWeight: fontWeight);
  }

//  Button orange style

   ButtonStyle getOrangeStyle(){
        return  ButtonStyle(
            foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
            backgroundColor: MaterialStateProperty.all<Color>(hf_happy_120),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4.0),
                    side: const BorderSide(color: hf_happy_120)
                )
            )
        );
   }

  ButtonStyle getWhiteBackgroundWithGreyBorderStyle(){
    return  ButtonStyle(
        foregroundColor: MaterialStateProperty.all<Color>(hf_happy_120),
        backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4.0),
                side:  BorderSide(color: Colors.grey[600]!)
            )
        )
    );
  }

}