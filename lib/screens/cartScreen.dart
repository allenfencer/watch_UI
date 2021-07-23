import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:watch/screens/paymentScreen.dart';

class CartScreen extends StatefulWidget {
  static final String id='cart_Screen';
  const CartScreen({Key key}) : super(key: key);

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  int _val=1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[60],
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_outlined,size: 28,color: Colors.black,),),
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.all(20),
        child: MaterialButton(
          onPressed: (){
            Navigator.pushNamed(context, PaymentScreen.id);
          },
          elevation: 0,
          height: 45,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          highlightElevation: 0,
          color: Colors.brown[300],
          textColor: Colors.white,
          child: Text('Proceed to Pay',style: GoogleFonts.notoSans(textStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: ListTile(
                    title: Text('The 1969 Artisinal Philosopher',style: GoogleFonts.playfairDisplaySc(textStyle: TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),),
                    subtitle: Text('Black',style: GoogleFonts.notoSans(textStyle: TextStyle(fontSize: 18,color: Colors.grey[600])),),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 10),
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Image.asset('images/image 668.png',fit: BoxFit.cover,),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 10,right: 10),
              child: Divider(thickness: 0.8,color: Colors.grey[500],),
            ),
            ListTile(
              onTap: (){
                showCupertinoModalPopup(context: context, builder: (BuildContext context){
                  return Container(
                    padding: EdgeInsets.all(15),
                    height: 600,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.grey[50],
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30))
                    ),
                    child: Scaffold(
                      body: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: Text('Select Delivery Address',style: GoogleFonts.playfairDisplay(textStyle: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.w600)),),
                          ),
                          Divider(
                            thickness: 1,
                            color: Colors.grey[300],
                          ),
                          ListTile(
                            minVerticalPadding: 10,
                            leading: Radio(
                              value: 1,
                              groupValue: _val,
                              onChanged: (value){
                                setState(() {
                                  _val=value;
                                });
                              },
                            ),
                            title: Text('John Doe',style: GoogleFonts.notoSans(textStyle: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),),
                            subtitle: Text('#41, 7th Cross, 12 Road, Nalanchira,\nTrivandrum - 12345,\nMobile: +91-1234567891'),
                          ),
                          Divider(
                            thickness: 1,
                            color: Colors.grey[300],
                          ),
                          ListTile(
                            minVerticalPadding: 10,
                            leading: Radio(
                              value: 2,
                              groupValue: _val,
                              onChanged: (value){
                                setState(() {
                                  _val=value;
                                });
                              },
                            ),
                            title: Text('Suresh Kumar',style: GoogleFonts.notoSans(textStyle: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),),
                            subtitle: Text('#41, 7th Cross, 12 Road, Nalanchira,\nTrivandrum - 12345,\nMobile: +91-1234567891'),
                          ),
                          Divider(
                            thickness: 1,
                            color: Colors.grey[300],
                          ),
                          ListTile(
                            minVerticalPadding: 10,
                            leading: Radio(
                              value: 3,
                              groupValue: _val,
                              onChanged: (value){
                                setState(() {
                                  _val=value;
                                });
                              },
                            ),
                            title: Text('Priya Venkatesh',style: GoogleFonts.notoSans(textStyle: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),),
                            subtitle: Text('#41, 7th Cross, 12 Road, Nalanchira,\nTrivandrum - 12345,\nMobile: +91-1234567891'),
                          ),
                          Divider(
                            thickness: 1,
                            color: Colors.grey[300],
                          ),
                          ListTile(
                            leading: Icon(Icons.add,size: 28,color: Colors.brown[300],),
                            title: Text('Add new address',style: GoogleFonts.notoSans(textStyle: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.brown[300])),),
                          ),
                          Divider(thickness: 2,color: Colors.grey[300],),
                          Padding(
                              padding: EdgeInsets.all(20),
                              child: MaterialButton(
                                onPressed: (){
                                  Navigator.pop(context);
                                },
                                elevation: 0,
                                height: 50,
                                highlightElevation: 0,
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                                minWidth: MediaQuery.of(context).size.width,
                                textColor: Colors.white,
                                color: Colors.brown[300],
                                child: Text('Done',style: GoogleFonts.notoSans(textStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),),),
                              ),
                          ),
                        ],
                      ),
                    ),
                  );
                });
              },
              leading: Icon(Icons.location_pin,size: 28,color: Colors.brown[300],),
              title: Text('Pick Delivery Address',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.brown[300]),),
              trailing: Icon(Icons.arrow_forward_ios,size: 25,color: Colors.brown[300],),
            ),
            Container(
              margin: EdgeInsets.all(20),
              padding:EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  textRow(itemHeader: 'Item Price',price: 69999),
                  textRow(itemHeader: 'Packing Charges',price: 990),
                  textRow(itemHeader: 'GST(18%)',price: 12599),
                  Divider(thickness: 1,color: Colors.grey[500],),
                  textRow(itemHeader: 'Grand Total',price: 83588),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


Widget textRow({String itemHeader, int price}){
  return Padding(
    padding: const EdgeInsets.all(10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(itemHeader,style: GoogleFonts.notoSans(textStyle: TextStyle(fontSize: 20),)),
        Text('₹ ${price.toString()}',style: GoogleFonts.notoSans(textStyle: TextStyle(fontSize: 18),) ,),
      ],
    ),
  );
}