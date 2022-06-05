import 'package:flutter/material.dart';
import 'GridViewScreen.dart';
import 'animation_screen.dart';

class FromFillingRegistrationScreen extends StatefulWidget {
  const FromFillingRegistrationScreen({Key? key}) : super(key: key);

  @override
  State<FromFillingRegistrationScreen> createState() =>
      _FromFillingRegistrationScreenState();
}

class _FromFillingRegistrationScreenState
    extends State<FromFillingRegistrationScreen> {
  final _formkey = GlobalKey<FormState>();
  bool isCheckBoxChecked = false;
  int selectGenderValue = 0;
  double sliderValue = 0;

  @override
  Widget build(BuildContext context) {
    var groupValue;
    return Scaffold(
      appBar: AppBar(title: const Text("Form Registraction")),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(right: 15, left: 15, top: 35),
          child: Form(
            key: _formkey,
            child: Column(
              children: [
                TextFormField(
                    validator: (value) {
                      if (value != null && value.isEmpty) {
                        return "This filed is mandatory";
                      } else {
                        return null;
                      }
                    },
                    decoration: const InputDecoration(
                        hintText: "First Name", labelText: "First Name")),
                TextFormField(
                    validator: (value) {
                      if (value != null && value.isEmpty) {
                        if (value.length > 10) {
                          return "must be minimum 10 charectors are required";
                        }
                        return "This filed is mandatory";
                      } else {
                        return null;
                      }
                    },
                    decoration: const InputDecoration(
                        hintText: "Last Name", labelText: "Last name")),
                TextFormField(
                    validator: (value) {
                      if (value != null && value.isEmpty) {
                        return "This filed is mandatory";
                      } else {
                        return null;
                      }
                    },
                    decoration: const InputDecoration(
                        hintText: "Date of Birth", labelText: "Date of Birth"),
                    keyboardType: TextInputType.datetime),
                TextFormField(
                    validator: (value) {
                      if (value != null && value.isEmpty) {
                        return "This field is mandatory";
                      } else {
                        return null;
                      }
                    },
                    decoration: const InputDecoration(
                        hintText: "Address", labelText: "Address")),
                TextFormField(
                    validator: (value) {
                      if (value != null && value.isEmpty) {
                        return "This filed is mandatory";
                      } else {
                        return null;
                      }

                      // if (value.length != 10) {
                      //   return "Please enter 10 dight number";
                      // }
                    },
                    decoration: const InputDecoration(
                        hintText: "Mobile Number", labelText: "Mobile Number"),
                    keyboardType: TextInputType.phone),
                TextFormField(
                  validator: (value) {
                    if (value != null && value.isEmpty) {
                      return "This filed is mandatory";
                    } else {
                      return null;
                    }
                  },
                  decoration: const InputDecoration(
                      hintText: "Email Id", labelText: "Email Id"),
                  keyboardType: TextInputType.emailAddress,
                ),
                TextButton(
                    onPressed: () {
                      _formkey.currentState?.validate();
                    },
                    child: Center(
                        child: ElevatedButton(
                            onPressed: () {
                              bool? Validated =
                                  _formkey.currentState?.validate();
                              if (Validated == true) {
                                showSubmitDialoge(context);
                              }
                            },
                            child: const Text("Submit",
                                style: TextStyle(color: Colors.white))))),
                CheckboxListTile(
                    title: Text("Accept terms & condition"),
                    value: isCheckBoxChecked,
                    onChanged: (value) {
                      setState(() {
                        isCheckBoxChecked = value ?? false;
                      });
                    }),
                RadioListTile(
                  value: selectGenderValue,
                  groupValue: 1,
                  onChanged: (value) {
                    setState(() {
                      selectGenderValue = 1;
                    });
                  },
                  title: Text("Male"),
                ),
                RadioListTile(
                  value: selectGenderValue,
                  groupValue: 2,
                  onChanged: (value) {
                    setState(() {
                      selectGenderValue = 2;
                    });
                  },
                  title: Text("Female"),
                ),
                Container(
                  color: Colors.orange,
                  width: (MediaQuery.of(context).size.width) / 2,
                  height: 50,
                  child: Center(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const gridview_screen(),
                        ));
                      },
                      child: const Text(
                        "Continue",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Slider(
                  value: sliderValue,
                  onChanged: (value) {
                    setState(() {
                      sliderValue = value;
                    });
                  },
                  min: 0,
                  max: 100,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  showSubmitDialoge(BuildContext context) {
    return showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return AlertDialog(
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("Cancel")),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => animation_screen(),
                    ));
                  },
                  child: Text("ok"))
            ],
            title: Text("Submit Alert"),
            content: Text("Are you sure submit the form?"),
          );
        });
  }
}
