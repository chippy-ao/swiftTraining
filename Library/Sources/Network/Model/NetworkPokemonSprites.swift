import Foundation

public struct NetworkPokemonSprites: Codable, Equatable, Hashable, Sendable {
  var frontDefault: String
  var frontShiny: String
  var frontFamale: String
  var frontShinyFemale: String
  var backDefault: String
  var backShiny: String
  var backFemale: String
  var backShinyFemale: String

  public init(
    frontDefault: String, frontShiny: String, frontFamale: String, frontShinyFemale: String,
    backDefault: String, backShiny: String, backFemale: String, backShinyFemale: String
  ) {
    self.frontDefault = frontDefault
    self.frontShiny = frontShiny
    self.frontFamale = frontFamale
    self.frontShinyFemale = frontShinyFemale
    self.backDefault = backDefault
    self.backShiny = backShiny
    self.backFemale = backFemale
    self.backShinyFemale = backShinyFemale
  }
}
