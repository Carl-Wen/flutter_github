// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a zh_CN locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'zh_CN';

  static m0(howMany) => "${Intl.plural(howMany, zero: '没有未读邮件', one: '有${howMany}封未读邮件', other: '有${howMany}封未读邮件')}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function> {
    "auto" : MessageLookupByLibrary.simpleMessage("跟随系统"),
    "cancel" : MessageLookupByLibrary.simpleMessage("取消"),
    "home" : MessageLookupByLibrary.simpleMessage("主页"),
    "language" : MessageLookupByLibrary.simpleMessage("语言"),
    "login" : MessageLookupByLibrary.simpleMessage("登录"),
    "logout" : MessageLookupByLibrary.simpleMessage("注销"),
    "logoutTip" : MessageLookupByLibrary.simpleMessage("确定要注销吗?"),
    "noDescription" : MessageLookupByLibrary.simpleMessage("没有描述"),
    "password" : MessageLookupByLibrary.simpleMessage("密码"),
    "passwordRequired" : MessageLookupByLibrary.simpleMessage("密码不能为空"),
    "remainingEmailsMessage" : m0,
    "theme" : MessageLookupByLibrary.simpleMessage("主题"),
    "title" : MessageLookupByLibrary.simpleMessage("Flutter应用"),
    "userName" : MessageLookupByLibrary.simpleMessage("用户账号"),
    "userNameOrEmail" : MessageLookupByLibrary.simpleMessage("用户名或者邮箱"),
    "userNameOrPasswordWrong" : MessageLookupByLibrary.simpleMessage("用户名或密码错误!"),
    "userNameRequired" : MessageLookupByLibrary.simpleMessage("用户名不能为空!"),
    "yes" : MessageLookupByLibrary.simpleMessage("是")
  };
}
