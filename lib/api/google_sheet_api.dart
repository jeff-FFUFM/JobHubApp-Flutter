import 'package:gsheets/gsheets.dart';

class GoogleSheetApi {
  static const _credentials = r'''
  {
  "type": "service_account",
  "project_id": "flutter-gsheet-jobapp",
  "private_key_id": "eee37e8ba8e9ab75e5681e263d5f4f7bff387894",
  "private_key":
      "-----BEGIN PRIVATE KEY-----\nMIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQCpZhwxA8EAS0fu\nPK7uRZj70hxq7w5S5aOEX8WE/AyNirbTQjTqUDbXAuATZY3u1GolEVQ+d3vCs6PW\n1y13C/6UqMmGgzBxU6W6Ct1lieSs3fvaOD+oeJK82jH6fuCHnDGxp4R/vumeLUry\n1R/K5D22B/i/rrxUWO0WdLz5rbFkomC1SjoQhSFHN5Kl2nZ/yUNA/nl70J8neh++\nnVOdWx20/UQ+DhU7MXQ2Oj3fHitYQ2hhFhiq7D3HEKz+R4Gjmvukh9i9r+ewpHhO\ngZAsLZEUpXGKo6kn41U31MJ2OruiT62jKjW4exx9zFnjfwWWMFEq2P2knBN30PI0\nUxtYsbW3AgMBAAECggEAByoiQ3EbtBtQVFitCLcuhGlmD0sYvtPR6dLdI/CUcqtt\nFnFPPfZyOKoj97NiCzm2WuapOqfLYbg+/o1aRxXdnhmncFt9wdqeVfMzWvc350HP\nmZ1Vv+vdlO7g50MqKZd8behJDS1yFwu7sZqRqNSkxt1TyCj9SSSmXmlF5tom+GZo\ns85IAIeYYGDirtdBr8bBBR1SPt1OjTtCl38vKrJ1CRRdXzSp/5UruWlClE3hWjg4\nEJ/v4/KdiJLNLsbjK1abBN32A9pVY10MfhPmYIAGYHFzAvZBlJAGKsfusY/54WjM\njZ1tMKGmSUsG5H+oqP4c/Z3ST7rvY4JucxEf5tnXkQKBgQDmX91zAILr+CwCBie7\n8c6sOalOPH/D6bwHIl4R9MVNjKDAitFGM5HCEGtPFZnmZlaJDCQ9LtjEszJXUAXO\nExBTuJTtzlKfTJyfng76Cp/k8+RbBaa2dfDBX3YrAMkG3txene1mmplpacUQQPos\ndj4HJeLRAozgq/zlDxHHmRN0JwKBgQC8PefwWTVeHi3ewLyrhy5AiE81muI0TRtR\nFCXjok8Pon+JsmcqqBRgdxWiJ7mnKHyV3D+fAEUl0K2blpNpgPQ38Mi8jtGF/ZDP\njK8xUQjH9hng7fF2A31erjrWD/VOPd6KE2KxlnQ3lgIhFmRqe1MQ68++rS5br1pE\nJQhoLVzb8QKBgQDGEQH6UCQ/8P0VOGmNI1cHqAOyaj2HGTw5/ghW89V22UOUh0Vq\nUAgvi6JXOkE5YB9icPfvSonAhDjx7LEw/h75fCc/VjafE2VNrr09qUjTtgVNZMxy\n72/xMbwNOP2dVJqvFqT3pE/l27Q8R0FQXNDzoFUkUkcBG52w6oXkz+1z3QKBgGRg\nFkdhKkXvjcITwAcu5AjhJmuNFUWSQBixx6pkKAhMO/muubhTO9pcZZq72BE8U4KN\nmRcty7FoXspyNlSxwIf7yu5QsYTjOs6RU/HWJfqKTi5UcsbdAYL1IMZ4Z/O6pem2\ngI/1jC7/vE7sY8sry5VgSLyCGBAnpthjbuIuHi/hAoGAb2Q/k9tTvLlN+K4FpY7L\nopYXyEMhGdJFUGhHvjfJhK+oI2sl6vIZxPVSTnoaALUbLXUP3UBVJor7Kx2GW+vG\nvIdZSjvFIkABT1XHGDcktvOvKHl1eHfGmGthWq9tR+TP7JMzd1G+iX42E624BtQo\nqW9t8FKY9MnRQJP7lBLyxnE=\n-----END PRIVATE KEY-----\n",
  "client_email": "flutter-gsheet-jobapp@flutter-gsheet-jobapp.iam.gserviceaccount.com",
  "client_id": "101579614415391998777",
  "auth_uri": "https://accounts.google.com/o/oauth2/auth",
  "token_uri": "https://oauth2.googleapis.com/token",
  "auth_provider_x509_cert_url": "https://www.googleapis.com/oauth2/v1/certs",
  "client_x509_cert_url":
      "https://www.googleapis.com/robot/v1/metadata/x509/flutter-gsheet-jobapp%40flutter-gsheet-jobapp.iam.gserviceaccount.com"
  }''';

  static const _spreadsheetId = '1uynoOOma6oIwIdxK_8xf6BRW-DseW4zYNS6KlGK_N00';
  static final _gsheets = GSheets(_credentials);

  //Start of API Logic
  static int numberOfAccounts = 0;
  static List<String> currentAccounts = List.empty(growable: true);

  static Worksheet? _worksheet;

  //Initialize the worksheet
  static Future init() async {
    final ss = await _gsheets.spreadsheet(_spreadsheetId);
    _worksheet = ss.worksheetByTitle('Accounts');
    countAccountRows();
  }

  //Count rows
  static Future countAccountRows() async {
    while (await _worksheet!.values.value(column: 3, row: numberOfAccounts + 1) != '') {
      numberOfAccounts += 1;
    }
    numberOfAccounts -= 1;
    print('Number of accounts: $numberOfAccounts');
  }

  //Insert method
  static Future insert(String id) async {
    if (_worksheet == null) return;
    numberOfAccounts += 1;

    await _worksheet!.values.appendRow([id], fromColumn: 3);
  }
}
