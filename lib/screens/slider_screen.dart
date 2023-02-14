import 'package:flutter/material.dart';
import 'package:fl_components/theme/app_theme.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _sliderEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Slides & Checks')),
      body: Column(
        children: [
          CheckboxListTile(
            activeColor: AppTheme.primary,
            title: const Text('Habilitar Slider'),
            value: _sliderEnabled,
            onChanged: (value) => setState(() {
              _sliderEnabled = value ?? true;
            }),
          ),
          SwitchListTile(
            activeColor: AppTheme.primary,
            title: const Text('Habilitar Slider'),
            value: _sliderEnabled,
            onChanged: (value) => setState(() {
              _sliderEnabled = value;
            }),
          ),
          const AboutListTile(),
          Slider(
            min: 50,
            max: 500,
            // divisions: 9,
            activeColor: AppTheme.primary,
            value: _sliderValue,
            onChanged: (value) {
              _sliderValue = value;
              setState(() {});
            },
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  FadeInImage(
                    fit: BoxFit.contain,
                    placeholder: const AssetImage('assets/jar-loading.gif'),
                    width: _sliderValue,
                    image: const NetworkImage(
                        // 'https://img.freepik.com/free-vector/laptop-with-program-code-isometric-icon-software-development-programming-applications-dark-neon_39422-971.jpg'),
                        'https://www.fonewalls.com/wp-content/uploads/2019/09/Minimal-Wallpaper-HD-for-Phone-015.jpg'),
                  ),
                  const SizedBox(height: 100)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
