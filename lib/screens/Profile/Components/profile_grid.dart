import 'package:flutter/material.dart';

class ProfileGrid extends StatefulWidget {
  @override
  _ProfileGridState createState() => _ProfileGridState();
}

class _ProfileGridState extends State<ProfileGrid> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CustomScrollView(
          primary: false,
          slivers: <Widget>[
            SliverPadding(
              padding: const EdgeInsets.all(2),
              sliver: SliverGrid.count(
                crossAxisSpacing: 2,
                mainAxisSpacing: 2,
                crossAxisCount: 3,
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.all(8),
                    child: const Text("He'd have you all unravel at the"),
                    color: Colors.green[100],
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    child: const Text('Heed not the rabble'),
                    color: Colors.green[200],
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    child: const Text('Sound of screams but the'),
                    color: Colors.green[300],
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    child: const Text('Who scream'),
                    color: Colors.green[400],
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    child: const Text('Revolution is coming...'),
                    color: Colors.green[500],
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    child: const Text('Revolution, they...'),
                    color: Colors.green[600],
                  ),
                ],
              ),
            ),
          ],
        )
    );
  }
}