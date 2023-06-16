import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// import 'package:switch_test/provider/provider.dart';
import 'package:switch_test/switch_page.dart';
import 'package:switch_test/themes/themes.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    // Map<String, String> data = Provider.of<DataProvider>(context).alldata;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Switch test'),
      ),
      body: Center(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Text('Hello World'),
                Switch.adaptive(
                  value: themeProvider.isDarkMode,
                  onChanged: (value) {
                    final provider =
                        Provider.of<ThemeProvider>(context, listen: false);
                    provider.toggleTheme(value);
                    // data.addAll({
                    //   value ? 'DarkMode' : 'LightMode':
                    //       '${DateTime.now().hour}- ${DateTime.now().minute}'
                    // });
                    // final dataprvd = Provider.of<DataProvider>(context);
                    // dataprvd.addDatas(value ? 'DarkMode' : 'LightMode');
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SwitchPage(isDarkMode: value),
                      ),
                    );
                    // print(data.keys);
                  },
                ),
                const Text('Bye World'),
              ],
            ),
            // ListView.builder(
            //   shrinkWrap: true,
            //   itemBuilder: (context, index) {
            //     print(data.keys.elementAt(index));
            //     return Text(
            //         '${data.keys.elementAt(index)} -- ${data.values.elementAt(index)}');
            //   },
            //   itemCount: data.length,
            // ),
          ],
        ),
      ),
    );
  }
}
