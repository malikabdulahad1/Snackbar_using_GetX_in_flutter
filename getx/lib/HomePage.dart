import 'package:flutter/material.dart';
import 'package:get/get.dart';



class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('snackbar'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
           ElevatedButton(onPressed: () {
            Get.snackbar('Snack Bar title', 'Sncak bar message',
                         snackPosition: SnackPosition.BOTTOM,
            colorText: Colors.red,
             backgroundColor: Colors.black,
             borderRadius: 30,
              margin: EdgeInsets.all(10),
          // maxWidth: 100
           animationDuration: Duration(milliseconds: 3000),
             backgroundGradient: LinearGradient(colors: [
              Colors.red,
              Colors.blue,
              Colors.pink
             ]),
             borderWidth: 4,
             borderColor: Colors.purple,
             boxShadows: [
              BoxShadow(
                color: Colors.yellow,
                offset: Offset(80, 0),
                spreadRadius: 20,
                blurRadius: 8,
              )
             ],
              forwardAnimationCurve: Curves.bounceOut,
             icon: Icon(Icons.send),
              shouldIconPulse: false,
              leftBarIndicatorColor: Colors.black,
             mainButton: TextButton(onPressed: () {
               
             }, child: Icon(Icons.search)),
             onTap: (val) {
               print('Snack bar clicked');
             },
            //  overlayBlur: 2,
            //  overlayColor: Colors.grey,
             showProgressIndicator: true,
              progressIndicatorBackgroundColor: Colors.red,
             reverseAnimationCurve: Curves.decelerate,
             snackbarStatus: (status) {
               print(status);
             },
             userInputForm: Form(child: TextField())
            
            );
           }, child: Text('Show snack bar'))
          ],
        ),
      ),
    );
  }
}