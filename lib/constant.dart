
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

myStyle(double fs, [Color ?clr, FontWeight ?fw]){
  return GoogleFonts.nunito(
      fontSize: fs,
      color: clr,
      fontWeight: fw,
  );
}
Color primaryColor = Colors.blue;
Color secondaryColor = Colors.green;

String myText= "The COVID-19 pandemic killed nearly 16 million people worldwide in 2020 and 2021 and caused global life expectancy to decline by 1.6 years between 2019 and 2020.";
String blog1= "Mrs. Norbu, presents with active  tuberculosis. She has a history of intermittent cough, night sweats, and unintentional weight loss over the past three months. Diagnostic tests including sputum smear and culture confirmed Mycobacterium tuberculosis infection. Mrs. Norbu has previously completed a six-month course of first-line anti-tuberculosis medications without evidence of drug resistance. Therefore, the current regimen includes Isoniazid 300 mg daily, Rifampicin 600 mg daily for an initial two-month phase, followed by continuation therapy. She is instructed to adhere strictly to this regimen and to attend regular follow-up appointments for clinical monitoring and evaluation of treatment response. It is crucial to ensure Mrs. Norbu completes the prescribed course to prevent relapse and development of drug resistance.";
