import 'package:flutter/material.dart';
import 'package:get/get.dart';


class Language extends Translations{
  @override
  Map<String, Map<String, String>> get keys => {
    'en Us': {
      'welcome': 'Welcome to',
      'adopt': 'Adopt',
      'candidate': 'candidate',
      'login': 'Register for free or log in',
      'register': 'Continue with an email',
      'email': 'Email',
      'password': 'Password',
      'forgot': 'Forgot Password',
      'name': 'Name',
      'confirm': 'Confirm Password',
      'ou': 'or',
  },
    'fr FR': {
      'welcome': 'Bienvenue sur',
      'adopt': 'Adopte',
      'candidate': 'candidat',
      'login': 'Inscrivez-vous gratuitement ou connectez-vous',
      'register': 'Continuer avec un email',
      'email': 'Email',
      'password': 'Mot de passe',
      'forgot': 'Mot de passe oublié',
      'name': 'Nom',
      'confirm': 'Confirmer le mot de passe',
      'ou': 'ou',
    },
  };
}
