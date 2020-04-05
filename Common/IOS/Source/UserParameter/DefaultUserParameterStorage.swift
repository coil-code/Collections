
import Foundation


class DefaultUserParameterStorage: UserParameterStorage {

  let underlying: UserDefaults

  init(underlying: UserDefaults) {
    self.underlying = underlying
  }

  static func makeStandard() -> DefaultUserParameterStorage { DefaultUserParameterStorage(underlying: UserDefaults.standard) }

  func string(forKey key: String) -> String? {
    guard let object = underlying.object(forKey: key) else {
      return nil
    }
    return (object as! String)
  }

  func integer(forKey key: String) -> Int? { numberObject(forKey: key)?.intValue }
  func single(forKey key: String) -> Float? { numberObject(forKey: key)?.floatValue }
  func double(forKey key: String) -> Double? { numberObject(forKey: key)?.doubleValue }
  func boolean(forKey key: String) -> Bool? { numberObject(forKey: key)?.boolValue }

  func set(_ value: String, forKey key: String) { underlying.set(value, forKey: key) }
  func set(_ value: Int, forKey key: String) { underlying.set(NSNumber(value: value), forKey: key) }
  func set(_ value: Float, forKey key: String) { underlying.set(NSNumber(value: value), forKey: key) }
  func set(_ value: Double, forKey key: String) { underlying.set(NSNumber(value: value), forKey: key) }
  func set(_ value: Bool, forKey key: String) { underlying.set(NSNumber(value: value), forKey: key) }

  private func numberObject(forKey key: String) -> NSNumber? {
    guard let object = underlying.object(forKey: key) else {
      return nil
    }
    return (object as! NSNumber)
  }

}
