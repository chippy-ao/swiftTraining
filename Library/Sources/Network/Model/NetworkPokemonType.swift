import Foundation

public struct NetworkPokemonType: Codable, Equatable, Hashable, Sendable {
  var slot: Int
  var type: NetworkType

  public init(slot: Int, type: NetworkType) {
    self.slot = slot
    self.type = type
  }
}
