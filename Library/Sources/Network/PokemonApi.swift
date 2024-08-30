import Dependencies
import DependenciesMacros
import Foundation

@DependencyClient
public struct PokemonApi {
  public var getPokemonList: @Sendable (_ pageNation: Int) async throws -> [NetworkPokemon]
}
