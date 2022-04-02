import 'package:flutter/material.dart';

class Analise extends StatelessWidget {
  const Analise({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(children: <Widget>[_makeListWheelScrollView()]),
    );
  }
}

ListWheelScrollView _makeListWheelScrollView() {
  Color colorPickerForList(int indeks) {
    Color c1 = Colors.grey.shade500;
    if (indeks % 2 == 0)
      return c1;
    else
      return Colors.blueGrey.shade500;
  }

  return ListWheelScrollView.useDelegate(
      itemExtent: 450,
      diameterRatio: 2,
      physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
      clipBehavior: Clip.hardEdge,
      squeeze: 0.88,
      perspective: 0.004,
      childDelegate: ListWheelChildBuilderDelegate(
          builder: (BuildContext context, int index) {
        if (index < 1 || index > 4)
          return null;
        else {
          return ListTile(
            title: Container(
              decoration: BoxDecoration(
                  color: colorPickerForList(index).withOpacity(1),
                  borderRadius: BorderRadius.all(Radius.circular(30))),
              width: 20,
              height: 500,
              foregroundDecoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://upload.wikimedia.org/wikipedia/commons/thumb/5/55/Composition_of_38th_Parliament.png/640px-Composition_of_38th_Parliament.png"))),
            ),
          );
        }
      }));
}
