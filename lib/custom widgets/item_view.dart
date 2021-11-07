import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class GridItem extends StatelessWidget {
  final String id, title, image, navId, url;

  const GridItem(
    this.title,
    this.image,
    this.id,
    this.navId,
    this.url, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectMenu(context, navId, url),
      child: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(image), fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(20)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: Text(
              title,
              style: const TextStyle(fontSize: 14, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}

class ListItem extends StatelessWidget {
  final String title, navId, url;

  const ListItem(this.title, this.navId, this.url, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectMenu(context, navId, url),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Container(
            child: Center(
                child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                title,
                style: const TextStyle(fontSize: 20, color: Colors.white),
              ),
            )),
            decoration: BoxDecoration(
                color: Colors.blueGrey,
                borderRadius: BorderRadius.circular(15)),
          ),
        ),
      ),
    );
  }
}

Future<void> selectMenu(BuildContext context, navId, url) async {
  kIsWeb && navId == 'Web'
      ? launch(
          url,
          forceSafariVC: true,
          forceWebView: true,
          enableJavaScript: true,
        )
      : Navigator.of(context).pushNamed(navId, arguments: {'url': url});
}
