import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'messages_all.dart'; //1

class DemoLocalizations {
  static Future<DemoLocalizations> load(Locale locale) {
    final String name =
        locale.countryCode.isEmpty ? locale.languageCode : locale.toString();
    final String localeName = Intl.canonicalizedLocale(name);
    //2
    return initializeMessages(localeName).then((b) {
      Intl.defaultLocale = localeName;
      return new DemoLocalizations();
    });
  }

  static DemoLocalizations of(BuildContext context) {
    return Localizations.of<DemoLocalizations>(context, DemoLocalizations);
  }

  String get title {
    return Intl.message(
      'Flutter APP',
      name: 'title',
      desc: 'Title for the Demo application',
    );
  }

  String get language {
    return Intl.message(
      'Language',
      name: 'language',
      desc: 'Language of application',
    );
  }

  String get theme {
    return Intl.message(
      'Theme',
      name: 'theme',
      desc: 'Theme of application',
    );
  }

  String get auto {
    return Intl.message(
      'Auto',
      name: 'auto',
      desc: 'Follow system',
    );
  }

  String get login {
    return Intl.message(
      'Login',
      name: 'login',
      desc: 'Login action',
    );
  }

  String get logout {
    return Intl.message(
      'Logout',
      name: 'logout',
      desc: 'Logout action',
    );
  }

  String get home {
    return Intl.message(
      'Home',
      name: 'home',
      desc: 'Title of home page',
    );
  }

  String get yes {
    return Intl.message(
      'Yes',
      name: 'yes',
      desc: 'yes action',
    );
  }

  String get cancel {
    return Intl.message(
      'Cancel',
      name: 'cancel',
      desc: 'Cancel action',
    );
  }

  String get logoutTip {
    return Intl.message(
      'Are you sure to logout?',
      name: 'logoutTip',
      desc: 'Logout tip',
    );
  }

  String get userName {
    return Intl.message(
      'User Name',
      name: 'userName',
      desc: 'User account',
    );
  }

  String get userNameOrEmail {
    return Intl.message(
      'User Name Or Email',
      name: 'userNameOrEmail',
      desc: 'User name or email for account',
    );
  }

  String get userNameRequired {
    return Intl.message(
      'User name can not be empty!',
      name: 'userNameRequired',
      desc: 'userNameRequired',
    );
  }

  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: 'password',
    );
  }

  String get userNameOrPasswordWrong {
    return Intl.message(
      'User name or password is wrong!',
      name: 'userNameOrPasswordWrong',
      desc: 'User name or password is wrong',
    );
  }

  String get noDescription {
    return Intl.message(
      'No Description',
      name: 'noDescription',
      desc: 'No Description',
    );
  }

  String get passwordRequired {
    return Intl.message(
      'Password Required',
      name: 'passwordRequired',
      desc: 'Password Required',
    );
  }

  remainingEmailsMessage(int howMany) => Intl.plural(howMany,
      zero: 'There are no emails left',
      one: 'There is $howMany email left',
      other: 'There are $howMany emails left',
      name: "remainingEmailsMessage",
      args: [howMany],
      desc: "How many emails remain after archiving.",
      examples: const {'howMany': 42, 'userName': 'Fred'});
}

//Locale代理类
class DemoLocalizationsDelegate
    extends LocalizationsDelegate<DemoLocalizations> {
  const DemoLocalizationsDelegate();

  //是否支持某个Local
  @override
  bool isSupported(Locale locale) => ['en', 'zh'].contains(locale.languageCode);

  // Flutter会调用此类加载相应的Locale资源类
  @override
  Future<DemoLocalizations> load(Locale locale) {
    //3
    return DemoLocalizations.load(locale);
  }

  // 当Localizations Widget重新build时，是否调用load重新加载Locale资源.
  @override
  bool shouldReload(DemoLocalizationsDelegate old) => false;
}
