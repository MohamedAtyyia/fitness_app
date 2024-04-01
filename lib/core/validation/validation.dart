
class ValidationForm {
  static String? userNameValidator(String? value) {



    if (value?.isEmpty??true) {
      return 'Please Enter your name';
    }
    return null;
  }
  static String? phoneValidator(String? value) {
    //validation for egypt phone
    bool isValid =
        RegExp(r"^(\+201|1|01|00201)[0-2,5]{1}[0-9]{8}").hasMatch(value!);

    if (value.isEmpty) {
      return 'Please Enter your Phone Number';
    } else if (!isValid) {
      return 'Please Enter the correct phone number';
    }
    return null;
  }

  static String? emailValidator(String? value) {
    bool emailValid = RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(value!);
    if (value.isEmpty) {
      return 'Please Enter your email ';
    } else if (!emailValid) {
      return 'Please Enter the correct email';
    }
    return null;
  }

  static String? websiteValidator(String? value) {
    bool websiteValid = RegExp(
            r'((http|https)://)?[\w-]+(\.[\w-]+)+([\w.,@?^=%&amp;:/~+#-]*[\w@?^=%&amp;/~+#-])?',
            caseSensitive: false)
        .hasMatch(value!);
    if (value.isEmpty) {
      return "[TYPE YOUR TEXT]";
    } else if (!websiteValid) {
      return "[TYPE YOUR TEXT]";
    }
    return null;
  }

  static String? passwordValidator(String? v) {
    if (v?.isEmpty ?? true) {
      return 'Please Enter your Phone Number';
    }else if (v!.length < 6){
      return 'The password must be greater than 6 numbers';
    }  else {
      return null;
    }
  }

  // static String? confirmPasswordValidator(
  //   String? v,
  //   String text,
  // ) {
  //   if (v?.isEmpty??true) {
  //     return AppStrings.pleaseEnterConfirmPassword;
  //   } else if (text != v) {
  //     return AppStrings.passwordNotMatch;
  //   } else {
  //     return null;
  //   }
  // }
 
}