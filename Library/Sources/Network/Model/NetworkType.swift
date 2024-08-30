import Foundation

public struct NetworkType: Codable, Equatable, Hashable, Sendable {
  var id: Int
  var name: String
  var names: [NetworkName]

  public init(id: Int, name: String, names: [NetworkName]) {
    self.id = id
    self.name = name
    self.names = names
  }
}
