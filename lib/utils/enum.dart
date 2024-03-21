enum Categories {
  dog,
  cat,
  bird;

  int toInt() {
    switch (this) {
      case dog:
        return 7;
      case cat:
        return 8;
      case bird:
        return 9;
      default:
        return -1;
    }
  }
}

enum Requirements {
  age,
  residence,
  afterCare;

  int toInto() {
    switch (this) {
      case age:
        return 7;
      case residence:
        return 8;
      case afterCare:
        return 9;
      default:
        return -1;
    }
  }
}

enum Tags {
  region,
  age,
  gender,
  inoculation;

  int toInt() {
    switch (this) {
      case region:
        return 9;
      case age:
        return 10;
      case gender:
        return 11;
      case inoculation:
        return 12;
      default:
        return -1;
    }
  }
}

enum SelectInfomation {
  infomation,
  inputInfomation,
  title,
  inputTitle,
  description,
  inputDescription,
  minimumConditions,
  essential,
  residenceType,
  afterCare,
  categories,
  types,
  region,
  age,
  inoculation,
  gender;

  String toStringName() {
    switch (this) {
      case inputInfomation:
        return "詳細情報入力";
      case infomation:
        return "詳細情報";
      case title:
        return "タイトル";
      case inputTitle:
        return "タイトルを入力してください";
      case description:
        return "お譲り内容";
      case inputDescription:
        return "内容を入力してください";
      case minimumConditions:
        return "必須条件";
      case essential:
        return "必須";
      case residenceType:
        return "住居の種類";
      case afterCare:
        return "アフタケア";
      case categories:
        return "カテゴリ";
      case types:
        return "品種";
      case region:
        return "地域";
      case age:
        return "年齢";
      case inoculation:
        return "接種";
      case gender:
        return "性別";
      default:
        return "";
    }
  }
}
