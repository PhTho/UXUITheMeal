import 'package:flutter/material.dart';
import 'home2_screen.dart';

class Home1Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/home1.jpg',
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),
          Container(
            color: Colors.black.withOpacity(0.5),
          ),
          Positioned(
            bottom: 100,
            left: 0,
            right: 0,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Bắt đầu với những\nmón ăn',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 34, fontWeight: FontWeight.w700,height: 41 / 34,),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (_) => Home2Screen()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFCEA700),
                      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Bắt đầu',
                          style: TextStyle(fontSize: 17, color: Colors.white),
                        ),
                        SizedBox(width: 10),
                        Icon(
                          Icons.arrow_forward,
                          size: 20,
                          color: Colors.white,
                        ),
                      ],
                    ),

                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
