import Foundation

public struct NetworkName: Codable, Equatable, Hashable, Sendable {
  var name: String
  var language: NetworkLanguage

  public init(name: String, language: NetworkLanguage) {
    self.name = name
    self.language = language
  }
}
