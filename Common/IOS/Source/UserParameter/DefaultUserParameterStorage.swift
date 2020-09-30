
import Foundation


class DefaultUserParameterStorage: UserParameterStorage {

  let underlying: UserDefaults

  init(underlying: UserDefaults) {
    self.underlying = underlying
  }

  static func makeStandard() -> DefaultUserParameterStorage { DefaultUserParameterStorage(underlying: UserDefaults.standard) }

  func string(forKey key: String) -> String? { object(forKey: key) }
  func integer(forKey key: String) -> Int? { (object(forKey: key) as NSNumber?)?.intValue }
  func single(forKey key: String) -> Float? { (object(forKey: key) as NSNumber?)?.floatValue }
  func double(forKey key: String) -> Double? { (object(forKey: key) as NSNumber?)?.doubleValue }
  func boolean(forKey key: String) -> Bool? { (object(forKey: key) as NSNumber?)?.boolValue }

  func set(_ value: String, forKey key: String) { underlying.set(value, forKey: key) }
  func set(_ value: Int, forKey key: String) { underlying.set(NSNumber(value: value), forKey: key) }
  func set(_ value: Float, forKey key: String) { underlying.set(NSNumber(value: value), forKey: key) }
  func set(_ value: Double, forKey key: String) { underlying.set(NSNumber(value: value), forKey: key) }
  func set(_ value: Bool, forKey key: String) { underlying.set(NSNumber(value: value), forKey: key) }

  private func object<T>(forKey key: String) -> T? {
    guard let object = underlying.object(forKey: key) else {
      return nil
    }
    return (object as! T)
  }

}
