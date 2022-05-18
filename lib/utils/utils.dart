abstract class Utils {

  static String subS(String i) => i.length < 35 ? i : i.substring(0, 40) + '...';
  static String tab(int n) => '\t' * n;

}