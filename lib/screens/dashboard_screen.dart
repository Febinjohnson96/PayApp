import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class DashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 20.0),
          child: Column(
            children: [
              SizedBox(
                height: 30.0,
              ),
              Text(
                'Hello Jane Doe',
                style: TextStyle(
                  color: Colors.red[400],
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/brooke.png'),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 100,
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                decoration: BoxDecoration(
                  color: Colors.red[400],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Text(
                      'Your Balance',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Text(
                      '₹ 15,000',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Card(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            'Date',
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Expanded(
                          child: Text(
                            'Desc',
                            textAlign: TextAlign.center,

                          ),
                        ),
                        Expanded(
                            child: Text(
                              'Type',
                              textAlign: TextAlign.center,
                            ),
                        ),
                        Expanded(
                          child: Text(
                            'Amount',
                            textAlign: TextAlign.center,
                          ),
                        ),

                      ],
                    ),
                    //SEcond Row
                    Divider(),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            '09-jan-2021',
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Expanded(
                          child: Text(
                            'NEFT',
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Expanded(
                          child: Text(
                            'Debit',
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Expanded(
                          child: Text(
                            '2000',
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                    // Third Row
                    Divider(),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            '01-jan-2021',
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Expanded(
                          child: Text(
                            'NACH',
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Expanded(
                          child: Text(
                            'Debit',
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Expanded(
                          child: Text(
                            '3000',
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                    //Fourth Row
                    Divider(),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            '28-dec-2020',
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Expanded(
                          child: Text(
                            'NEFT',
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Expanded(
                          child: Text(
                            'Credit',
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Expanded(
                          child: Text(
                            '20000',
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              ElevatedButton(
                  child: Text(
                    'New Payment',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.red[400]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
