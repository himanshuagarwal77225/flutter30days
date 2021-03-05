import 'package:flutter/material.dart';
import 'package:flutter30days/components/Text%20setting.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

class ExampleViewModel {
  final List<Color> pageColors;
  final CircularSliderAppearance appearance;
  final double min;
  final double max;
  final double value;
  final InnerWidget innerWidget;

  ExampleViewModel(
      {@required this.pageColors,
      @required this.appearance,
      this.min = 0,
      this.max = 100,
      this.value = 50,
      this.innerWidget});
}

class ExamplePage extends StatelessWidget {
  final ExampleViewModel viewModel;

  const ExamplePage({
    Key key,
    @required this.viewModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: MediaQuery.of(context).size.height,
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 35),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.arrow_back_sharp),
                  onPressed: () => Navigator.pop(context, false),
                ),
                SizedBox(
                  width: 30,
                ),
                headerText("Backup"),
              ]),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 35),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text('Your Complete Data Will get backed up in your email'),
                Text(
                  'Example@example.com',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                SizedBox(
                  height: 30,
                ),
                headerText("Start"),
              ]),
        ),
        SafeArea(
          child: Center(
              child: SleekCircularSlider(
            onChangeStart: (double value) {},
            onChangeEnd: (double value) {},
            innerWidget: viewModel.innerWidget,
            appearance: viewModel.appearance,
            min: viewModel.min,
            max: viewModel.max,
            initialValue: viewModel.value,
          )),
        ),
      ]),
    ));
  }
}
