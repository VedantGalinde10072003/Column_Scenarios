import "package:flutter/material.dart";

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    print("Device width:${MediaQuery.of(context).size.width}");
    print("Device height:${MediaQuery.of(context).size.height}");
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(
          title: const Text(
            "Column Demo",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w600,
            ),
          ),
            centerTitle:true,
            backgroundColor:Colors.blue, 
        ),
        body: Container(
          width:MediaQuery.of(context).size.width,
          color: Colors.amber,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                height:200,
                width:200,
                color: Colors.red,
              ),
            ], 
          ),
        ),
      )
    );
    
  }
}