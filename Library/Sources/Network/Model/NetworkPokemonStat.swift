import Foundation

public struct NetworkPokemonStat: Codable, Equatable, Hashable, Sendable {
  var effort: Int
  var baseStat: Int

  public init(effort: Int, baseStat: Int) {
    self.effort = effort
    self.baseStat = baseStat
  }
}
