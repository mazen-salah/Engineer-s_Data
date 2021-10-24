import 'package:flutter/material.dart';

class GridItem extends StatelessWidget {
  final String id, title, image;

  const GridItem(this.title, this.image, this.id, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(image), fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(20)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: Text(title),
          ),
        ],
      ),
    );
  }
}

class ListItem extends StatelessWidget {
  final String title;

  const ListItem(this.title, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Container(
            child: Center(
                child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                title,
                style: const TextStyle(fontSize: 20, color: Colors.white),
              ),
            )),
            decoration: BoxDecoration(
                color: Colors.blueGrey,
                borderRadius: BorderRadius.circular(20)),
          ),
        ),
      ),
    );
  }
}
