import 'package:flutter/material.dart';
import 'package:get/get.dart';


class Language extends Translations{
  @override
  Map<String, Map<String, String>> get keys => {
    'en Us': {
      'welcome': 'Welcome to',
      'adopt': 'Adopt',
      'candidate': 'candidate',
      'connection': 'Register for free or log in',
      'email': 'Continue with an email',
      'input1': 'Your Email',
      'password': 'Password',
      'forgot': 'Forgot Password',
      'name': 'Name',
      'confirm': 'Confirm Password',
      'login'  : 'Login',
      'choice': 'or',
  },
    'fr FR': {
      'welcome': 'Bienvenue sur',
      'adopt': 'Adopte',
      'candidate': 'candidat',
      'connection': 'Inscrivez-vous gratuitement ou connectez-vous',
      'email': 'Continuer avec un email',
      'input1': 'Votre Email',
      'password': 'Mot de passe',
      'forgot': 'Mot de passe oublié',
      'name': 'Nom',
      'confirm': 'Confirmer le mot de passe',
      'login'  : 'Connexion',
      'choice': 'ou',
    },
  };
}
