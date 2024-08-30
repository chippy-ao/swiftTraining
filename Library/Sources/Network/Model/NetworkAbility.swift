import Foundation

public struct NetworkAbility: Codable, Equatable, Hashable, Sendable {
  var id: Int
  var name: String
  var names: [NetworkName]
  var effectEntries: [NetworkVerboseEffect]
  var flavorTextEntries: [NetworkAbilityFlavorText]

  public init(
    id: Int,
    name: String,
    names: [NetworkName],
    effectEntries: [NetworkVerboseEffect],
    flavorTextEntries: [NetworkAbilityFlavorText]
  ) {
    self.id = id
    self.name = name
    self.names = names
    self.effectEntries = effectEntries
    self.flavorTextEntries = flavorTextEntries
  }
}
