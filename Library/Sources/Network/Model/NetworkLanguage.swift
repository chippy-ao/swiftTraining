import Foundation

public struct NetworkLanguage: Codable, Equatable, Hashable, Sendable {
  var id: Int
  var name: String
  var official: Bool
  var iso639: String
  var iso3166: String
  var names: [NetworkName]

  public init(
    id: Int, name: String, official: Bool, iso639: String, iso3166: String, names: [NetworkName]
  ) {
    self.id = id
    self.name = name
    self.official = official
    self.iso639 = iso639
    self.iso3166 = iso3166
    self.names = names
  }
}
