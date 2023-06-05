import 'package:flutter/material.dart';

class Player1 extends StatelessWidget {
  Player1({super.key});
  final TextEditingController player1Controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
              padding: const EdgeInsets.all(15),
              child: TextFormField(
                controller: player1Controller,
                style: const TextStyle(
                  color: Colors.white,
                ),
                decoration: const InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                    focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                    errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red)),
                    hintText: "Player1 Name",
                    hintStyle: TextStyle(color: Colors.white)),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please Enter Player 1 name";
                  }
                  return null;
                },
              ),
            );
  }
}