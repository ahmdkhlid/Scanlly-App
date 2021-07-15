import 'package:flutter/material.dart';

// ignore: camel_case_types
class tipsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: Container(
            width: MediaQuery.of(context).size.width,
            height:MediaQuery.of(context).size.height  ,
            child: ListView(
                children: [

                  Container(
                    width: MediaQuery.of(context).size.width,
                    height:MediaQuery.of(context).size.height *.1,
                    child: Stack(
                      children: [

                        Container(
                          width: MediaQuery.of(context).size.width ,
                          height:MediaQuery.of(context).size.height *.1 ,
                          decoration: BoxDecoration(
                            color: Color(0xff6707ed),
                          ),),
                        Container(
                          width: MediaQuery.of(context).size.width * .8,
                          height:MediaQuery.of(context).size.height *.1 ,

                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              GestureDetector(
                                  onTap:(){
                                    Navigator.pop(context);
                                  },child: Icon(Icons.arrow_back,color: Colors.white,)),
                              Text(" Tips",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                              Spacer(),
                              Icon(Icons.search, color: Colors.white,),
                              Icon(Icons.notifications, color: Colors.white,),

                            ],
                          ),
                        ),
                        Container(
                          child: Positioned(
                            right: 0,
                            bottom: 0
                            ,child: Container(
                            width: 60,
                            height: 60,
                            child: Icon(Icons.person_add, color: Colors.black,size: 40,),
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black),
                                color: Colors.white,
                                shape: BoxShape.circle
                            ),
                          ),
                          ),
                        )
                      ],
                    ),

                  ),
                  Container (
                    width: MediaQuery.of(context).size.width,
                    height:MediaQuery.of(context).size.height *.25,
                    color: Colors.grey,
                  ),Container (
                    width: MediaQuery.of(context).size.width,
                    height:MediaQuery.of(context).size.height *.6,
                    color: Colors.grey,
                    child: Image.asset("assets/4.png", fit: BoxFit.fitWidth,),
                  ),

                ])

        ));
  }
  // ignore: non_constant_identifier_names
  Widget ButtonAdd(context, title){
    return Container (
      decoration: BoxDecoration(
          color: Color(0xff6707ed),borderRadius: BorderRadius.circular(32 )
      ),
      padding: EdgeInsets.only(left: 32, right: 32),
      height:MediaQuery.of(context).size.height *.06 ,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(Icons.add, color: Colors.white,),
          Text(title, style: TextStyle(
              color: Colors.white
          ),)
        ],
      ),

    );
  }
}