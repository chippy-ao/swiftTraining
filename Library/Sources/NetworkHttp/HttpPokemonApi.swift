import Dependencies
import Foundation
import HTTPTypes
import HTTPTypesFoundation
import Network

extension PokemonApi: TestDependencyKey {
  public static let testValue = Self()
  public static let previewValue = Self()
}

extension PokemonApi: DependencyKey {
  static public var liveValue: PokemonApi = .init(
    getPokemonList: { pageNation in
      var request = HTTPRequest(
        method: .get, url: URL(string: "https://pokeapi.co/api/v2/pokemon")!,
        headerFields: [.contentType: "application/json"])

      let jsonDecoder = JSONDecoder()
      jsonDecoder.keyDecodingStrategy = .convertFromSnakeCase

      var result: [NetworkPokemon] = []

      // MEMO: １回あたり１０件の図鑑を取得するようにイテレーターを回す
      for num in (pageNation * 10) - 1...(pageNation * 10) {
        request.path = "/\(num)"
        let (data, response) = try await URLSession.shared.data(for: request)
        guard response.status == .ok else {
          // FIXME: エラーハンドリングは後ほど考える
          continue
        }
        let pokemon = try jsonDecoder.decode(NetworkPokemon.self, from: data)
        result.append(pokemon)
      }
      return result
    }
  )
}
