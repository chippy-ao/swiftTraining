import Foundation

public struct NetworkEffect {
  var effect: String
  var language: NetworkLanguage

  public init(effect: String, language: NetworkLanguage) {
    self.effect = effect
    self.language = language
  }
}
