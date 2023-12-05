import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class StackWidget extends StatelessWidget {
  StackWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return PageView.builder(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Stack(
          children: [
            Image(
              height: height,
              width: width,
              fit: BoxFit.fitHeight,
              image: NetworkImage(
                  'https://images.pexels.com/photos/2469122/pexels-photo-2469122.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
            ),
            Positioned(
              bottom: width / 4,
              child: Row(
                children: [
                  SizedBox(width: width/80),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage(
                                'https://cdn.dribbble.com/users/22157/screenshots/4413334/media/5e5a6a2ce7da758b79a9d91e1a3b7232.jpg?resize=400x0'))),
                  ),
                  Text(
                      style:
                          TextStyle( decoration: TextDecoration.none,color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),
                      'adithyanvr'),
                  TextButton(onPressed: (){}, child:Text('Follow',style:TextStyle(color: Colors.white),) )
                ],
              ),
            )
          ],
        );
      },
    );
  }
}
