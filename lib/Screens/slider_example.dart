import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:slider_provider_example/Providers/slider_provider_model.dart';

class SliderExample extends StatefulWidget {
  const SliderExample({super.key});

  @override
  State<SliderExample> createState() => _SliderExampleState();
}

class _SliderExampleState extends State<SliderExample> {
  @override
  Widget build(BuildContext context) {
    print("bulid");
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Slider Example with Provider",
          style: TextStyle(fontSize: 25),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Consumer<SliderProviderClass>(
            builder: (context, value, child) {
              return Slider(
                min: 0,
                max: 1,
                value: value.value,
                onChanged: (val) {
                  value.setValue(val);
                },
              );
            },
          ),
          Consumer<SliderProviderClass>(
            builder: (context, value, child) {
              return Row(
                children: [
                  Container(
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.pink.withOpacity(value.value),
                    ),
                    child: const Text(
                      "Container 1",
                      style: TextStyle(fontSize: 35),
                    ),
                  ),
                  Container(
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.pinkAccent.withOpacity(value.value),
                    ),
                    child: const Text(
                      "Container 2",
                      style: TextStyle(fontSize: 35),
                    ),
                  ),
                ],
              );
            },
          )
        ],
      ),
    );
  }
}
