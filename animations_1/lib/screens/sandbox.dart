import 'package:flutter/material.dart';

class Sandbox extends StatefulWidget {
  const Sandbox({super.key});

  @override
  State<Sandbox> createState() => _SandboxState();
}

class _SandboxState extends State<Sandbox> {

  late double _opacity = 1;
  late double _margin = 0;
  late double _width = 200;
  late Color _color = Colors.blue;
  late MainAxisAlignment _alignment = MainAxisAlignment.start;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: AnimatedContainer(
        duration: Duration(seconds: 1),
        margin: EdgeInsets.all(_margin),
        width: _width,
        color: _color,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: _alignment,
            children: [
              ElevatedButton(
                  onPressed: (){
                    setState(() {
                      _margin = 50;
                      _width = 300;
                      _color = Colors.purple;
                      _alignment = MainAxisAlignment.center;
                      _opacity = 0;
                    });
                  },
                  child: Text("Animated Container")
              ),
              AnimatedOpacity(opacity: _opacity, duration: Duration(seconds: 1),
                child: Text("Hide Me", style: TextStyle(color: Colors.white),),
              ),
            ],
          ),
      ),
    );
  }
}
