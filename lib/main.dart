import 'package:flutter/material.dart';
import 'package:flutter_github/routes/github_app.dart';
import 'package:flutter_github/states/global.dart';

void main() => Global.init().then((e) => runApp(GithubApp()));
