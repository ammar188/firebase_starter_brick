import 'package:hive_flutter/hive_flutter.dart';

class PreferencesService {
  static const _preferencesBox = '_preferencesBox';
  static const _counterKey = '_counterKey';

  final HiveInterface _hive;

  const PreferencesService(this._hive);

  Future<int> getCounter() => _getValue(_counterKey, defaultValue: 0);

  Future<void> setCounter(int counter) => _setValue(_counterKey, counter);

  Future<T> _getValue<T>(Object key, {required T defaultValue}) async {
    final box = await _hive.openBox<Object>(_preferencesBox);
    return box.get(key, defaultValue: defaultValue) as T;
  }

  Future<T?> _getValueOrNull<T>(Object key) async {
    final box = await _hive.openBox<Object>(_preferencesBox);
    return box.get(key) as T?;
  }

  Future<void> _setValue(String key, Object value) async {
    final box = await _hive.openBox<Object>(_preferencesBox);
    return box.put(key, value);
  }
}
