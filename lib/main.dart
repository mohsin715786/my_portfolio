import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfolio',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        scaffoldBackgroundColor: Colors.lightBlue[100],
        textTheme: TextTheme(
          displayLarge: TextStyle(fontWeight: FontWeight.w100),
          headlineSmall: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w300,
            fontFamily: 'Font1',
          ),
          bodySmall: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w100,
            fontStyle: FontStyle.italic,
          ),
        ),
      ),
      home: const MyHomePage(title: 'Muhammad Mohsin Ghafoor'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var emailText = TextEditingController();
  var passText = TextEditingController();
  String selectedDate = '';

  @override
  Widget build(BuildContext context) {
    var time = DateTime.now();
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue, title: Text('Portfolio')),
      body: Center(
        child: SizedBox(
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: SizedBox(
                  width: 200,
                  height: 200,
                  child: Text(
                    'Log In',
                    style: TextStyle(fontSize: 40, fontFamily: 'Font1'),
                  ),
                ),
              ),
              TextField(
                controller: emailText,
                decoration: InputDecoration(
                  hintText: 'Enter your Email',
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(21),
                    borderSide: BorderSide(color: Colors.blueAccent, width: 2),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(21),
                    borderSide: BorderSide(color: Colors.blueAccent, width: 2),
                  ),
                  prefixIcon: Icon(Icons.email),
                ),
              ),
              Container(height: 11),
              TextField(
                controller: passText,
                obscureText: true,
                obscuringCharacter: '*',
                decoration: InputDecoration(
                  hintText: 'Enter your Password',
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(21),
                    borderSide: BorderSide(color: Colors.blueAccent, width: 2),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(21),
                    borderSide: BorderSide(color: Colors.blueAccent, width: 2),
                  ),
                  prefixIcon: Icon(Icons.password),
                ),
              ),
              Container(height: 11),
              ElevatedButton(
                onPressed: () {
                  String uEmail = emailText.text;
                  String uPass = passText.text;
                  print("Email : $uEmail , Password : $uPass");
                },
                child: Text(
                  'Log In',
                  style: TextStyle(fontSize: 15, fontFamily: 'Font1'),
                ),
              ),
              Container(height: 11),
              Container(child: Text('If you do not have an account please,')),
              TextButton(onPressed: () {}, child: Text('Sign Up')),
            ],
          ),
        ),
      ),

      // Grid view
      // GridView.count(
      // crossAxisCount: 3,
      // children: [
      //   Padding(
      //     padding: const EdgeInsets.all(8.0),
      //     child: Container(color: Colors.black,),
      //   ),
      //   Padding(
      //     padding: const EdgeInsets.all(8.0),
      //     child: Container(color: Colors.green,),
      //   ),
      //   Padding(
      //     padding: const EdgeInsets.all(8.0),
      //     child: Container(color: Colors.red,),
      //   ),
      //   Padding(
      //     padding: const EdgeInsets.all(8.0),
      //     child: Container(color: Colors.orange,),
      //   ),
      //   Padding(
      //     padding: const EdgeInsets.all(8.0),
      //     child: Container(color: Colors.grey,),
      //   ),
      //   Padding(
      //     padding: const EdgeInsets.all(8.0),
      //     child: Container(color: Colors.blue,),
      //   ),
      //   ],
      // ),

      // Date picker and Time Picker
      // Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       Text('Select Date',style: TextStyle(fontSize: 25),),
      //       ElevatedButton(
      //         child: const Text('Select Date'),
      //         onPressed: () async {
      //           final DateTime? picked = await showDatePicker(
      //             context: context,
      //             initialDate: DateTime.now(),
      //             firstDate: DateTime(2020),
      //             lastDate: DateTime(2030),
      //           );
      //           if (picked != null) {
      //             setState(() {
      //               selectedDate = '${picked.day}/${picked.month}/${picked.year}';
      //             });
      //             print('Picked date: $selectedDate');
      //           }
      //         },
      //       ),
      //       const SizedBox(height: 10),
      //       ElevatedButton(onPressed: () async {
      //         TimeOfDay? pickedTime = await showTimePicker(
      //             context: context,
      //             initialTime: TimeOfDay.now(),
      //           initialEntryMode: TimePickerEntryMode.input
      //         );
      //         if(pickedTime!=null){
      //           print('Time Selected: ${pickedTime.hour}: ${pickedTime.minute}');
      //         }
      //       }, child: Text('Select Time'))
      //     ],
      //   ),
      // ),
    );
  }
}
