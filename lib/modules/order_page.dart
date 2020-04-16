import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/models/orderItems.dart';

class OrderPage extends StatelessWidget{
  List<OrderItems> orderItems = [
    OrderItems(number: "1", text: "Spaghetti Aglia Olio", secondaryText: "200ml | 234 kcal", amount: "16.48"),
    OrderItems(number: "1", text: "Pizza & Pasta", secondaryText: "270ml | 134 kcal", amount: "13.57"),
    OrderItems(number: "1", text: "Sweet lemonade", secondaryText: "220ml | 304 kcal", amount: "12.48"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(Icons.keyboard_backspace,color: Colors.black,),
        ),
      ),
      body: Stack(
        children: <Widget>[
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(left: 16,right: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                   SizedBox(height: 10,),
                   Text("Order Summary",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
                  SizedBox(height: 40,),
                  ListView.builder(
                    itemCount: orderItems.length,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index){
                      return Column(
                        children: <Widget>[
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                height: 24,
                                width: 24,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey.shade300),
                                  borderRadius: BorderRadius.circular(5)
                                ),
                                child: Center(
                                  child: Text(orderItems[index].number,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
                                ),
                              ),
                              SizedBox(width: 8,),
                              Text("*"),
                              SizedBox(width: 8,),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(orderItems[index].text,style: TextStyle(fontWeight: FontWeight.w600),),
                                    SizedBox(height: 8,),
                                    Text(orderItems[index].secondaryText,style: TextStyle(fontSize: 12,color: Colors.grey.shade500),),
                                  ],
                                ),
                              ),
                              Text(orderItems[index].amount,style: TextStyle(color: Colors.amber,fontSize: 17,fontWeight: FontWeight.bold),),
                            ],
                          ),
                          SizedBox(height: 14,),
                          Divider(thickness: 1.3,color: Colors.grey.shade200,height: 1,),
                          SizedBox(height: 14,),
                        ],
                      );
                    },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Order",style: TextStyle(fontSize: 14,color: Colors.grey.shade500),),
                      Text("\$69.60",style: TextStyle(fontSize: 14,color: Colors.grey.shade500),),
                    ],
                  ),
                  SizedBox(height: 12,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Delivery",style: TextStyle(fontSize: 14,color: Colors.grey.shade500),),
                      Text("\$1.60",style: TextStyle(fontSize: 14,color: Colors.grey.shade500),),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Total",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
                      Text("\$71.20",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Text("Address",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
                  SizedBox(height: 12,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("725 5th Ave,\nNY 10024 New York",style: TextStyle(fontSize: 14,color: Colors.grey.shade500,height: 1.4),),
                      Text("Change",style: TextStyle(fontSize: 14,color: Colors.amber),),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Text("Payment",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
                  SizedBox(height: 12,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Image.asset("images/mastercard.png",height: 24,width: 24,),
                      SizedBox(width: 8,),
                      Text("**** **** **** ",style: TextStyle(fontSize: 14,color: Colors.grey.shade500,height: 1.4),),
                      Expanded(child: Text("1420",style: TextStyle(fontSize: 14,color: Colors.grey.shade500),),),
                      Text("Change",style: TextStyle(fontSize: 14,color: Colors.amber),),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SafeArea(
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                height: 80,
                width: double.infinity,
                padding: EdgeInsets.all(16),
                child: FlatButton(
                  onPressed: (){},
                  child: Text("SUBMIT ORDER",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                  color: Colors.amber,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}