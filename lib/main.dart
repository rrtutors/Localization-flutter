import 'package:flutter/material.dart';
import 'package:flutter_languagechange/updateData.dart';
import 'package:provider/provider.dart';
import 'package:toggle_switch/toggle_switch.dart';

void main() => runApp(
    ChangeNotifierProvider(builder: (_){
      return UpdateDataProvider(lang_selected: 0);
    },child: MyLangState(),)
);

/*class MyLang extends StatelWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyLangState();
  }


}*/

class MyLangState extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    final dataProvider = Provider.of<UpdateDataProvider>(context);
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Language Change"),backgroundColor: Colors.pink,),
        body: Container(
          margin: EdgeInsets.all(16),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.end,

                children: <Widget>[
                  ToggleSwitch(
                      minWidth: 60.0,
                      cornerRadius: 20,
                      activeBgColor: Colors.green,
                      activeTextColor: Colors.white,
                      inactiveBgColor: Colors.grey,
                      inactiveTextColor: Colors.white,
                      labels: ['EN', 'Hindi'],

                      onToggle: (index) {
                        dataProvider.setLang=index;
                      }),
                ],
              ),
              SizedBox(height: 20,),
          Row(

            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Container(width:100,child: Text((dataProvider.lang==0)?"Enter Name":"नाम दर्ज",style: TextStyle(fontSize: 18))),
            SizedBox(width: 20,),
            Container(
              width: 200,
                height: 40,
                child: TextField(decoration: InputDecoration(border: OutlineInputBorder(borderRadius:BorderRadius.circular(2))),))
            ],
          ),
              SizedBox(height: 20,),
              Row(

                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Container(width:100,child: Text((dataProvider.lang==0)?"Enter Email":"ईमेल दर्ज करें",style: TextStyle(fontSize: 18))),
                  SizedBox(width: 20,),
                  Container(
                      width: 200,
                      height: 40,
                      child: TextField(decoration: InputDecoration(border: OutlineInputBorder(borderRadius:BorderRadius.circular(2))),))
                ],
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Container(width:100,child: Text((dataProvider.lang==0)?"Enter Password":"पास वर्ड दर्ज करें",style: TextStyle(fontSize: 18),)),
                  SizedBox(width: 20,),
                  Container(
                      width: 200,
                      height: 40,
                      child: TextField(decoration: InputDecoration(border: OutlineInputBorder(borderRadius:BorderRadius.circular(2))),))
                ],
              ),
              SizedBox(height: 40,),
              FlatButton(
                child: Container(width:80,child: Center(child: Text((dataProvider.lang==0)?"Submit":"प्रस्तुत",style: TextStyle(color: Colors.pink,fontSize: 20),))),
                shape: RoundedRectangleBorder(

                    borderRadius: BorderRadius.circular(18),side: BorderSide(color: Colors.pink)),
              )
            ],
          ),

        ),
      ),
    );
  }

}
