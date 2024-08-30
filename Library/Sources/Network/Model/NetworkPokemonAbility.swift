import Foundation

public struct NetworkPokemonAbility: Codable, Equatable, Hashable, Sendable {
  var isHidden: Bool
  var slot: Int
  var ability: NetworkAbility

  public init(isHidden: Bool, slot: Int, ability: NetworkAbility) {
    self.isHidden = isHidden
    self.slot = slot
    self.ability = ability
  }
}
