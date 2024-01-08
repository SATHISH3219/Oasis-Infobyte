import 'package:flutter/material.dart';
import 'package:unitconverter/Engineering/Sound.dart';
import 'package:unitconverter/Engineering/pressure.dart';

class MyGridViewee extends StatelessWidget {
  const MyGridViewee({super.key});

  @override
  Widget build(BuildContext context) {
    return MyGridViewsee();
  }
}

class MyGridViewsee extends StatefulWidget {
  const MyGridViewsee({super.key});

  @override
  State<MyGridViewsee> createState() => _MyGridViewsState();
}

class _MyGridViewsState extends State<MyGridViewsee> {
  final List<String> image = [
    'images/Sound.png',
    'images/Pressure.png',
  ];
  final List<String> text = [
    'Sound',
    'Pressure',
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: GridView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
        ),
        itemCount: 2,
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onTap: () {
              navigateToPage(context, index);
            },
            child: Container(
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black, spreadRadius: 0, blurRadius: 4),
                  ]),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Center(
                      child: Image.asset(
                        image[index],
                        width: 80.0,
                        height: 80.0,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(text[index]),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  void navigateToPage(BuildContext context, int index) {
    switch (index) {
      case 0:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Sound()));
        break;
      case 1:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => pressure()));
        break;
      default:
        break;
    }
  }
}
