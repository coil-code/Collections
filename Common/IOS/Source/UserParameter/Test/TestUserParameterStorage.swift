
import Foundation


class TestUserParameterStorage: UserParameterStorage {

  func string(forKey key: String) -> String? { value(forKey: key) }
  func integer(forKey key: String) -> Int? { value(forKey: key) }
  func single(forKey key: String) -> Float? { value(forKey: key) }
  func double(forKey key: String) -> Double? { value(forKey: key) }
  func boolean(forKey key: String) -> Bool? { value(forKey: key) }

  func set(_ value: String, forKey key: String) { entries[key] = value }
  func set(_ value: Int, forKey key: String) { entries[key] = value }
  func set(_ value: Float, forKey key: String) { entries[key] = value }
  func set(_ value: Double, forKey key: String) { entries[key] = value }
  func set(_ value: Bool, forKey key: String) { entries[key] = value }

  private func value<T>(forKey key: String) -> T? {
    guard let value = entries[key] else {
      return nil
    }
    return (value as! T)
  }

  private var entries = Dictionary<String, Any>()

}
