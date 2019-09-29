import 'package:flutter_web/material.dart';

void main() => runApp(SampleApp());

class SampleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: SampleAppPage(),
    );
  }
}

class SampleAppPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SampleAppPageState();
  }
}

class _SampleAppPageState extends State<SampleAppPage> {
  var textToShow = 'show something';
  var show = false;
  void _updateText() {
    setState(() {
      show = !show;
      textToShow = 'I am updated';
    });
  }

  _getToggleChild() {
    if (show) {
      return Text(textToShow);
    } else {
      return MaterialButton(
        onPressed: () {
          _updateText();
        },
        color: Colors.red,
        child: Text(textToShow),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    // Column
    return Scaffold(
        appBar: AppBar(title: Text('I love you')),
        body: Center(
          child: _getToggleChild(),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            _updateText();
          },
          tooltip: 'Update',
          // child: Icon(Icons.update),
        ));
  }
}
