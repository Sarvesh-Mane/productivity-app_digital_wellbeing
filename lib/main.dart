import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:digitalwellbeing/util/piechart.dart';
import 'package:digitalwellbeing/util/appusagetile.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Map<String, double> data_Map={
    "Instagram": 24,
    "Whatsapp": 45,
    "Reddit": 32,
    "Facebook": 44,
  };

  List<String> Apps =["Instagram","Whatsapp","Reddit","Facebook"];
  List<int> time =[24,45,32,44];






  List<Color> color_list= [
  Colors.greenAccent,
  Colors.red,
  Colors.blue,
  Colors.orange
  ];



  @override


  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        shadowColor: Colors.purpleAccent.shade700,
        title: const Text(
          'Digital Well Being',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 28,

          ),
        ),
        actions: const [

          Icon(
            Icons.more_vert,
            size: 35,
          ),
          SizedBox(
            width: 20,
          ),
        ],
        centerTitle: false,
        backgroundColor: Colors.transparent,
        elevation: 2,
      ),
    body: Container(
    height: 900,
    width: 430,
    decoration: const BoxDecoration(


      gradient: LinearGradient(
        colors: [Color(0xFF673AB7),Color(0xFFAA00FF)],
        begin: Alignment.bottomCenter,
        end: Alignment.topCenter,


      ),
    ),
      child: SafeArea(
        child:
           Column(
            children: [
              SizedBox(height: 20,),
              Text(
                'Daily App Usage',
                style: TextStyle(
                  fontSize: 28,

                ),
              ),
              SizedBox(height: 20,),
              SafeArea(

                  child: Pie(
                    dataMap:  data_Map,
                    colorList: color_list,
                    centerText: "App Usage",


                  )
                ),
              ListView(
                shrinkWrap: true,

                children: [

                     Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(width: 50,),
                        Text("Apps",style: TextStyle(
                          fontSize: 20,
                        ),),
                        Spacer(),


                        Text("Time Spent",style: TextStyle(
                          fontSize: 20,)),
                        SizedBox(width: 50,),
                      ],
                    ),
                  ListView.builder(
                    itemCount: data_Map.length,
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) {
                      return apptile(
                        appname: Apps[index],
                        time_min: time[index],





                      );
                    },
                  ),




                ],
              )










            ],
          ),
        ),
      ),
    );


  }
}


