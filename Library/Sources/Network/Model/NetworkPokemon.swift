import Foundation

public struct NetworkPokemon: Codable, Equatable, Hashable, Sendable {
  var id: Int
  var name: String
  var height: Int
  var order: Int
  var weight: Int
  var abilities: [NetworkPokemonAbility]
  var sprites: NetworkPokemonSprites
  var stats: [NetworkPokemonStat]
  var types: [NetworkPokemonType]

  public init(
    id: Int,
    name: String,
    height: Int,
    order: Int,
    weight: Int,
    abilities: [NetworkPokemonAbility],
    sprites: NetworkPokemonSprites,
    stats: [NetworkPokemonStat],
    types: [NetworkPokemonType]
  ) {
    self.id = id
    self.name = name
    self.height = height
    self.order = order
    self.weight = weight
    self.abilities = abilities
    self.sprites = sprites
    self.stats = stats
    self.types = types
  }
}
