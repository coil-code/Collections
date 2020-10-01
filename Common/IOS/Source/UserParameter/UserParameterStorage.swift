
import Foundation


protocol UserParameterStorage: AnyObject {

  func string(forKey key: String) -> String?
  func integer(forKey key: String) -> Int?
  func single(forKey key: String) -> Float?
  func double(forKey key: String) -> Double?
  func boolean(forKey key: String) -> Bool?

  func set(_ value: String, forKey key: String)
  func set(_ value: Int, forKey key: String)
  func set(_ value: Float, forKey key: String)
  func set(_ value: Double, forKey key: String)
  func set(_ value: Bool, forKey key: String)

}
