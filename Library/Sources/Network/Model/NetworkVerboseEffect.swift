import Foundation

public struct NetworkVerboseEffect: Codable, Equatable, Hashable, Sendable {
  var effect: String
  var shortEffect: String
  var language: NetworkLanguage

  public init(effect: String, shortEffect: String, language: NetworkLanguage) {
    self.effect = effect
    self.shortEffect = shortEffect
    self.language = language
  }
}
