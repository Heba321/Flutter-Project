import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mytest/constants.dart';

class CustomTextField extends StatelessWidget {
  final String hint;
  final IconData icon;
  final Function onClick;
  String _erroeMessage(String str)
  {
  switch(hint)
  {
    case  'Enter your name' :return 'Name is empty !';
    case  'Enter your email' :return 'Email is empty !';
    case  'Enter your password' :return 'Password is empty !';
    case  'Enter your type' :return 'Type is empty !';

  }

  }
  CustomTextField({@required this.hint,@required this.icon,@required this.onClick});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: TextFormField(
      validator: (value){
      if(value.isEmpty){
      return _erroeMessage(hint);
      } 
      },
      onSaved: onClick,
      obscureText: hint == 'Enter your password'? true:false,
      cursorColor: color8,
      decoration: InputDecoration(
        hintText: hint,
        prefixIcon: Icon(icon,color: color9,),
         filled: true,
         fillColor: color9,
         enabledBorder: OutlineInputBorder(
         borderRadius: BorderRadius.circular(20),
         borderSide: BorderSide(color:Colors.white)


         )
       ,focusedBorder:OutlineInputBorder(
         borderRadius: BorderRadius.circular(20),
         borderSide: BorderSide(color:Colors.white)


         ),
        border: OutlineInputBorder(
         borderRadius: BorderRadius.circular(20),
         borderSide: BorderSide(color:Colors.white)


         )
       
       
      ),






      ),
    );
  }
}
