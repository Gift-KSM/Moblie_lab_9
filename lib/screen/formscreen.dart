import 'package:firebase/model/student.dart';
import 'package:flutter/material.dart';

class FromScreen extends StatefulWidget {
  @override
  State<FromScreen> createState() => _FromScreenState();
}

class _FromScreenState extends State<FromScreen> {
  final formKey = GlobalKey<FormState>();
  Student myStudent = Student();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('แบบฟอร์มบันทึกข้อมูล'),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Form(
          key: formKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('ชื่อ', style: TextStyle(fontSize: 20)),
                TextFormField(
                  onSaved: (value) {
                    myStudent.fname = value;
                  },
                ),
                SizedBox(height: 15),
                Text('นามสกุล', style: TextStyle(fontSize: 20)),
                TextFormField(
                  onSaved: (value) {
                    myStudent.lname = value;
                  },
                ),
                SizedBox(height: 15),
                Text('อีเมล', style: TextStyle(fontSize: 20)),
                TextFormField(
                  onSaved: (value) {
                    myStudent.email = value;
                  },
                ),
                SizedBox(height: 15),
                Text('อุณหภูมิ', style: TextStyle(fontSize: 20)),
                TextFormField(
                  onSaved: (value) {
                    myStudent.temp = value;
                  },
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    child: Text('บันทึก'),
                    style: ElevatedButton.styleFrom(
                        textStyle: TextStyle(fontSize: 20)),
                    onPressed: () {
                      formKey.currentState!.save();
                      print("${myStudent.fname}");
                      print("${myStudent.lname}");
                      print("${myStudent.email}");
                      print("${myStudent.temp}");
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
