import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Pavvolaaa'),
        ),
        body: const TwoRowBoxes(),
      ),
    );
  }
}

class TwoRowBoxes extends StatelessWidget {
  const TwoRowBoxes({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.blue,
          height: 307, // Adjust the height as needed
          child: Row(
            children: [
              Expanded(
                flex: 1, // One-third of available space
                child: Container(
                  color: const Color.fromARGB(255, 241, 254, 222),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Box 1',
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 10), // Adjust the padding as needed
                        child: BoxColumn(
                          text: 'Strawberry Pavlova', // Change the text here
                        ),
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 10), // Adjust the padding as needed
                        child: BoxColumn(
                          text:
                              'Pavlova is a meringe-based dessert named after the Russian ballerine Anna Pavlova. Pavlova featues a crisp crust and soft, light inside, topped with fruit and whipped cream',
                          centerText: true, // Change the text here
                        ),
                      ), // Add spacing between the text and columns// Change the text here // Change the text here
                      SizedBox(height: 10),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 10), // Adjust the padding as needed
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.star, color: Colors.black),
                            Icon(Icons.star, color: Colors.black),
                            Icon(Icons.star, color: Colors.black),
                            Icon(Icons.star, color: Colors.black),
                            Icon(Icons.star, color: Colors.black),
                            BoxColumn(text: '170 Reviews')
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: EdgeInsets.all(2), // Adjust the padding as needed
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.local_cafe, color: Colors.black),
                            Icon(Icons.lock_clock, color: Colors.black),
                            Icon(Icons.kitchen, color: Colors.black),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: EdgeInsets.only(
                            right: 15), // Adjust the padding as needed
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text('PERP:'),
                            Text('COOK:'),
                            Text('FEEDS:'),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: 10, right: 15), // Adjust the padding as needed
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text('25 min'),
                            Text('1 hr'),
                            Text('4-6'),
                          ],
                        ),
                      ), // Change the text here // Change the text here
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 2, // Two-thirds of available space
                child: Container(
                  color: Colors.green,
                  child: const Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: double.infinity,
                          height: 307, // Adjust the height as needed
                          child: Image(
                            image: AssetImage('assets/images/pavvola.jpg'),
                            fit: BoxFit
                                .cover, // Ensure the image fills the container
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class BoxColumn extends StatelessWidget {
  final String text;
  final bool centerText;

  const BoxColumn(
      {super.key, this.text = 'Box', this.centerText = false}); // Default value is 'Box'

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(
          255, 99, 249, 226), // Customize the color of each box as needed
      height: 50, // Adjust the height of each box as needed
      child: Center(
        child: centerText
            ? Center(
                child: Text(
                  text, // Use the provided text or the default 'Box' text
                  style: const TextStyle(color: Colors.white),
                ),
              )
            : Text(
                text, // Use the provided text or the default 'Box' text
                style: const TextStyle(color: Colors.white),
              ),
      ),
    );
  }
}
