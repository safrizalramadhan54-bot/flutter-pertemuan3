void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: FontTextWidget(),
        ),
      ),
    );
  }
}

class FontTextWidget extends StatelessWidget {
  const FontTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Normal',
          style: TextStyle(fontSize: 24),
        ),
        Text(
          'Bold',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        Text(
          'Semi Bold',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
        ),
        Text(
          'Italic',
          style: TextStyle(fontSize: 24, fontStyle: FontStyle.italic),
        ),
      ],
    );
  }
}