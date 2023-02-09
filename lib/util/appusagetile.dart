import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:digitalwellbeing/util/piechart.dart';

class apptile extends StatelessWidget {

  final String appname;
  final int time_min;
  const apptile({Key? key, required this.appname, required this.time_min}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [Colors.deepPurple,/*Colors.white70,*/Colors.purple], ),
          color: Colors.white70,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(width: 20,),




            Text(appname,
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
                fontFamily:"",
              ),
            ),

            Spacer(),
        Text("$time_min",
          style: TextStyle(
            fontSize: 18,
            color: Colors.white,
            fontFamily:"",
          ),
        ),
            SizedBox(width: 30,),










          ],
        ),
      ),
    );
  }
}
