import 'package:flutter/material.dart';
import 'package:happy_fresh_flutter/styles/hf_styles.dart';



class HFButtonWidget{


  ElevatedButton getHFButton(String text,ButtonStyle buttonStyle){
    return ElevatedButton(onPressed: (){}, child: Text(text),style:buttonStyle
      );
  }

}