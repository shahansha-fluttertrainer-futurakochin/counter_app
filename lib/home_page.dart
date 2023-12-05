import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
   const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int value=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(mainAxisAlignment:MainAxisAlignment.center ,children: [
          ElevatedButton(onPressed: () {
            setState(() {
              value--;
            });
          }, child: const Icon(Icons.minimize)),
          const SizedBox(width: 60,),
          Text(style: const TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 30),value.toString()),
          const SizedBox(width: 60,),
          ElevatedButton(onPressed: (){
            setState(() {
              value++;
            });
          }, child: const Icon(CupertinoIcons.plus))
        ]),
      ),
    );
  }
}
