import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  addShapeInArray(String icon) {
    print("-----$icon Button clicked --------");
    setState(() {
      totalShapes.add(icon);
      lastShape = icon;
    });
  }

  List totalShapes = [];
  static String lastShape = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Shape Task'),
          centerTitle: true,
        ),
        //display Shapes
        body: GridView.builder(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 5),
          itemCount: totalShapes.length,
          itemBuilder: (BuildContext context, int index) {
            if (totalShapes[index] == 'star') {
              return ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                ),
                onPressed: () {
                  setState(() {
                    totalShapes[index] = lastShape;
                  });
                },
                child: Icon(Icons.star_border_outlined, color: Colors.black),
              );
            } else if (totalShapes[index] == 'circle') {
              return ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                ),
                onPressed: () {
                  setState(() {
                    totalShapes[index] = lastShape;
                  });
                },
                child: Icon(Icons.circle_outlined, color: Colors.black),
              );
            } else {
              return ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                ),
                onPressed: () {
                  setState(() {
                    totalShapes[index] = lastShape;
                  });
                },
                child: Icon(Icons.crop_square_outlined, color: Colors.black),
              );
            }
          },
        ),

        //bottom ButtonBar
        bottomSheet: Container(
          color: Colors.black,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                onPressed: () {
                  return addShapeInArray("star");
                },
                child: Icon(Icons.star_border_outlined),
              ),
              ElevatedButton(
                onPressed: () {
                  return addShapeInArray("circle");
                },
                child: Icon(Icons.circle_outlined),
              ),
              ElevatedButton(
                onPressed: () {
                  return addShapeInArray("square");
                },
                child: Icon(Icons.crop_square_outlined),
              ),
            ],
          ),
        ));
  }
}
