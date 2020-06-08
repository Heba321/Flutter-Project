import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mytest/Widgets/custom_textfield.dart';
import 'package:mytest/models/product.dart';
import 'package:mytest/services/Store.dart';

class AddProduct extends StatelessWidget{
  String _name, _price, _description, _category, _imageLocation;
  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();
  final _store = Store();
   static String id ='AddProduct';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       resizeToAvoidBottomPadding: false,
      body: Form(
        key: _globalKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CustomTextField(
              hint: 'Product Name',
              onClick: (value) {
                _name = value;
              }, icon: null,
            ),
            SizedBox(
              height: 10,
            ),
            CustomTextField(
              onClick: (value) {
                _price = value;
              },
              hint: 'Product Price', icon: null,
            ),
            SizedBox(
              height: 10,
            ),
            CustomTextField(
              onClick: (value) {
                _description = value;
              },
              hint: 'Product Description', icon: null,
            ),
            SizedBox(
              height: 10,
            ),
            CustomTextField(
              onClick: (value) {
                _category = value;
              },
              hint: 'Product Category', icon: null,
            ),
            SizedBox(
              height: 10,
            ),
            CustomTextField(
              onClick: (value) {
                _imageLocation = value;
              },
              hint: 'Product Location "Pick Image"', icon: null,
            ),
            SizedBox(
              height: 20,
            ),
            RaisedButton(
              onPressed: () {
                if (_globalKey.currentState.validate()) {
                  _globalKey.currentState.save();

                  _store.addProduct(Product(
                      pName: _name,
                      pPrice: _price,
                      pDescription: _description,
                      pLocation: _imageLocation,
                      pCategory: _category));
                }
              },
              child: Text('Add Product'),
            )
          ],
        ),
      ),


    );
  }

}