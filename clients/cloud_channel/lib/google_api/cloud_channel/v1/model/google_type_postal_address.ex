# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This file is auto generated by the elixir code generator program.
# Do not edit this file manually.

defmodule GoogleApi.CloudChannel.V1.Model.GoogleTypePostalAddress do
  @moduledoc """
  Represents a postal address (for example, for postal delivery or payments addresses). Given a postal address, a postal service can deliver items to a premise, P.O. box or similar. It is not intended to model geographical locations (roads, towns, mountains). In typical usage, an address would be created by user input or from importing existing data, depending on the type of process. Advice on address input or editing: - Use an internationalization-ready address widget such as https://github.com/google/libaddressinput. - Users should not be presented with UI elements for input or editing of fields outside countries where that field is used. For more guidance on how to use this schema, see: https://support.google.com/business/answer/6397478.

  ## Attributes

  *   `addressLines` (*type:* `list(String.t)`, *default:* `nil`) - Unstructured address lines describing the lower levels of an address. Because values in `address_lines` do not have type information and may sometimes contain multiple values in a single field (for example, "Austin, TX"), it is important that the line order is clear. The order of address lines should be "envelope order" for the country or region of the address. In places where this can vary (for example, Japan), `address_language` is used to make it explicit (for example, "ja" for large-to-small ordering and "ja-Latn" or "en" for small-to-large). In this way, the most specific line of an address can be selected based on the language. The minimum permitted structural representation of an address consists of a `region_code` with all remaining information placed in the `address_lines`. It would be possible to format such an address very approximately without geocoding, but no semantic reasoning could be made about any of the address components until it was at least partially resolved. Creating an address only containing a `region_code` and `address_lines` and then geocoding is the recommended way to handle completely unstructured addresses (as opposed to guessing which parts of the address should be localities or administrative areas).
  *   `administrativeArea` (*type:* `String.t`, *default:* `nil`) - Optional. Highest administrative subdivision which is used for postal addresses of a country or region. For example, this can be a state, a province, an oblast, or a prefecture. For Spain, this is the province and not the autonomous community (for example, "Barcelona" and not "Catalonia"). Many countries don't use an administrative area in postal addresses. For example, in Switzerland, this should be left unpopulated.
  *   `languageCode` (*type:* `String.t`, *default:* `nil`) - Optional. BCP-47 language code of the contents of this address (if known). This is often the UI language of the input form or is expected to match one of the languages used in the address' country/region, or their transliterated equivalents. This can affect formatting in certain countries, but is not critical to the correctness of the data and will never affect any validation or other non-formatting related operations. If this value is not known, it should be omitted (rather than specifying a possibly incorrect default). Examples: "zh-Hant", "ja", "ja-Latn", "en".
  *   `locality` (*type:* `String.t`, *default:* `nil`) - Optional. Generally refers to the city or town portion of the address. Examples: US city, IT comune, UK post town. In regions of the world where localities are not well defined or do not fit into this structure well, leave `locality` empty and use `address_lines`.
  *   `organization` (*type:* `String.t`, *default:* `nil`) - Optional. The name of the organization at the address.
  *   `postalCode` (*type:* `String.t`, *default:* `nil`) - Optional. Postal code of the address. Not all countries use or require postal codes to be present, but where they are used, they may trigger additional validation with other parts of the address (for example, state or zip code validation in the United States).
  *   `recipients` (*type:* `list(String.t)`, *default:* `nil`) - Optional. The recipient at the address. This field may, under certain circumstances, contain multiline information. For example, it might contain "care of" information.
  *   `regionCode` (*type:* `String.t`, *default:* `nil`) - Required. CLDR region code of the country/region of the address. This is never inferred and it is up to the user to ensure the value is correct. See https://cldr.unicode.org/ and https://www.unicode.org/cldr/charts/30/supplemental/territory_information.html for details. Example: "CH" for Switzerland.
  *   `revision` (*type:* `integer()`, *default:* `nil`) - The schema revision of the `PostalAddress`. This must be set to 0, which is the latest revision. All new revisions **must** be backward compatible with old revisions.
  *   `sortingCode` (*type:* `String.t`, *default:* `nil`) - Optional. Additional, country-specific, sorting code. This is not used in most regions. Where it is used, the value is either a string like "CEDEX", optionally followed by a number (for example, "CEDEX 7"), or just a number alone, representing the "sector code" (Jamaica), "delivery area indicator" (Malawi) or "post office indicator" (Côte d'Ivoire).
  *   `sublocality` (*type:* `String.t`, *default:* `nil`) - Optional. Sublocality of the address. For example, this can be a neighborhood, borough, or district.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :addressLines => list(String.t()) | nil,
          :administrativeArea => String.t() | nil,
          :languageCode => String.t() | nil,
          :locality => String.t() | nil,
          :organization => String.t() | nil,
          :postalCode => String.t() | nil,
          :recipients => list(String.t()) | nil,
          :regionCode => String.t() | nil,
          :revision => integer() | nil,
          :sortingCode => String.t() | nil,
          :sublocality => String.t() | nil
        }

  field(:addressLines, type: :list)
  field(:administrativeArea)
  field(:languageCode)
  field(:locality)
  field(:organization)
  field(:postalCode)
  field(:recipients, type: :list)
  field(:regionCode)
  field(:revision)
  field(:sortingCode)
  field(:sublocality)
end

defimpl Poison.Decoder, for: GoogleApi.CloudChannel.V1.Model.GoogleTypePostalAddress do
  def decode(value, options) do
    GoogleApi.CloudChannel.V1.Model.GoogleTypePostalAddress.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudChannel.V1.Model.GoogleTypePostalAddress do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
