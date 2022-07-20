class ApiProvider {
  static Future<List<String>> loadMenus() async {
    await Future.delayed(Duration(seconds: 2));
    return [
      'ទំព័រដើម',
      'ទំព័រដើម',
      'ទំព័រដើម',
      'ទំព័រដើម',
      'ទំព័រដើម',
      'ទំព័រដើម',
      'ទំព័រដើម',
      'ទំព័រដើម',
      'ទំព័រដើម',
    ];
  }
}
