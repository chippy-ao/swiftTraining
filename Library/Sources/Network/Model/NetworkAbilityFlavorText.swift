import Foundation

public struct NetworkAbilityFlavorText: Codable, Equatable, Hashable, Sendable {
  var flavorText: String
  var language: NetworkLanguage

  public init(flavorText: String, language: NetworkLanguage) {
    self.flavorText = flavorText
    self.language = language
  }
}
