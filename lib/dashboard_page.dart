import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("List Tile"),
        ),
        body: ListView(
          children: [
            _listView(235),
            SizedBox(
              height: 10,
            ),
            _listView(236),
            SizedBox(
              height: 10,
            ),
            _listView(234),
            SizedBox(
              height: 10,
            ),
            _listView(233),
            SizedBox(
              height: 10,
            ),
          ],
        ));
  }

  Widget _twit() {
    return Column(
      children: [
        ListTile(
          leading: ClipOval(
            child: Image.network(
              "https://picsum.photos/200",
              fit: BoxFit.cover,
            ),
          ),
          minVerticalPadding: 10,
          title: Row(
            children: const [
              Flexible(
                child: Text(
                  "CODINGFESS",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Flexible(
                child: Text(
                  "@codingfess",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ],
          ),
          subtitle: const Text(
            "Hai guys, adakah yang paham flutter? code;",
          ),
          trailing: Text("6h"),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              Icons.reply_rounded,
            ),
            Icon(
              Icons.replay,
            ),
            Icon(
              Icons.favorite_border,
            )
          ],
        ),
      ],
    );
  }

  Widget _listView(int index) {
    return SizedBox(
      height: 200,
      child: Image.network(
        "https://picsum.photos/id/$index/400",
        fit: BoxFit.cover,
      ),
    );
  }
}
