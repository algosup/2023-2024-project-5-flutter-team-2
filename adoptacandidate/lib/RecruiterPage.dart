import 'package:adoptacandidate/softskills.dart';
import 'package:adoptacandidate/softskills2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';


class RecruiterPage extends StatefulWidget {

  @override
  State<RecruiterPage> createState() => _RecruiterPageState();
}

class _RecruiterPageState extends State<RecruiterPage> {
  bool _obscure1 = true;

  bool _obscure2 = true;

  final _companysNameFocusNode = FocusNode();

  final _phoneFocusNode = FocusNode();

  final _EmailFocusNode = FocusNode();

  final _addressFocusNode = FocusNode();

  final _town = FocusNode();

  final _passwordFocusNode = FocusNode();

  final _confirmPasswordFocusNode = FocusNode();

  final _sizeOfTheCompanyFocusNode = FocusNode();

  void dispose() {
    _companysNameFocusNode.dispose();
    _sizeOfTheCompanyFocusNode.dispose();
    _phoneFocusNode.dispose();
    _EmailFocusNode.dispose();
    _town.dispose();
    _addressFocusNode.dispose();
    _passwordFocusNode.dispose();
    _confirmPasswordFocusNode.dispose();
    super.dispose();
  }

  String newValue = "1-10";
  List <String> listItems = ["1-10", "11-50", "51-200", "201-500", "501-1000", "1000+"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Get.back();
          },
        ),
        actions: [
          Container(
            height: 90,
            child: Image.asset('images/logo.png'),
          ),
        ],
      ),


      backgroundColor: Color(0xFF0D1B2A),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Créer Un Compte'.tr,
                  style: GoogleFonts.roboto(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(height: 20),

                  TextField(
                    onChanged: (String val){
                      setState(() {
                        val;
                      });
                    },
                    focusNode: _companysNameFocusNode,
                    textInputAction: TextInputAction.next,
                    onSubmitted: (_) {
                      FocusScope.of(context).requestFocus(_EmailFocusNode);
                    },
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      labelText: 'Nom De L\'entreprise'.tr,
                      labelStyle: TextStyle(color: Colors.grey[400]),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),

                SizedBox(height: 20),

                TextField(
                    onChanged: (String val){
                      setState(() {
                        val;
                      });
                    },
                    focusNode: _EmailFocusNode,
                    textInputAction: TextInputAction.next,
                    onSubmitted: (_) {
                      FocusScope.of(context).requestFocus(_town);
                    },
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      labelText: 'Address Email De L\'entreprise'.tr,
                      labelStyle: TextStyle(color: Colors.grey[400]),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),

                SizedBox(height: 20),

                TextField(
                    onChanged: (String val){
                      setState(() {
                        val;
                      });
                    },
                    focusNode: _town,
                    textInputAction: TextInputAction.next,
                    onSubmitted: (_) {
                      FocusScope.of(context).requestFocus(_addressFocusNode);
                    },
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      labelText: 'Ville'.tr,
                      labelStyle: TextStyle(color: Colors.grey[400]),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),

                SizedBox(height: 20),

                TextField(
                  onChanged: (String val){
                    setState(() {
                      val;
                    });
                  },
                  focusNode: _addressFocusNode,
                  textInputAction: TextInputAction.next,
                  onSubmitted: (_) {
                    FocusScope.of(context).requestFocus(_passwordFocusNode);
                  },
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    labelText: 'Addresse Postale'.tr,
                    labelStyle: TextStyle(color: Colors.grey[400]),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),

                SizedBox(height: 20),

                TextField(
                  onChanged: (String val){
                    setState(() {
                      val;
                    });
                  },
                  focusNode: _passwordFocusNode,
                  textInputAction: TextInputAction.next,
                  onSubmitted: (_) {
                    FocusScope.of(context).requestFocus(_confirmPasswordFocusNode);
                  },
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    labelText: 'Mot de passe'.tr,
                    labelStyle: TextStyle(color: Colors.grey[400]),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),

                SizedBox(height: 20),

                TextField(
                  onChanged: (String val){
                    setState(() {
                      val;
                    });
                  },
                  focusNode: _confirmPasswordFocusNode,
                  textInputAction: TextInputAction.next,
                  onSubmitted: (_) {
                    FocusScope.of(context).requestFocus(_sizeOfTheCompanyFocusNode);
                  },
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    labelText: 'Confirmer Le Mot De Passe'.tr,
                    labelStyle: TextStyle(color: Colors.grey[400]),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),

                SizedBox(height: 20),


                    DropdownButtonFormField(
                      decoration: InputDecoration
                        (
                        labelText: 'Taille De L\'entreprise'.tr,
                        labelStyle: TextStyle(color: Colors.grey),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      value: newValue,
                      onChanged: (String? choice) {
                        setState(() {
                          newValue = choice!;
                        });
                      },
                      icon: Icon(Icons.arrow_drop_down_circle_outlined, color: Colors.white),
                      items: listItems.map((valueItem) {
                        return DropdownMenuItem(
                          value: valueItem,
                          child: Text(
                              valueItem,
                              style: TextStyle(color: Colors.grey),
                          ),
                        );
                      }).toList(),
                    ),


                SizedBox(height: 20),

                Center(
                  child: Container(
                    margin: EdgeInsets.only(top: 30),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder:
                                    (context) => SoftSkills2()
                            )
                        );
                      },
                      child: Text(
                        'Créer Un Compte',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFFFFA500),
                        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                  ),
                ),

              ],
            ),
          ),
        ),
    );
  }
}