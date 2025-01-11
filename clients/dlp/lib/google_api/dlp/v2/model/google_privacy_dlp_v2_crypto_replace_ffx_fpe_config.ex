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

defmodule GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2CryptoReplaceFfxFpeConfig do
  @moduledoc """
  Replaces an identifier with a surrogate using Format Preserving Encryption (FPE) with the FFX mode of operation; however when used in the `ReidentifyContent` API method, it serves the opposite function by reversing the surrogate back into the original identifier. The identifier must be encoded as ASCII. For a given crypto key and context, the same identifier will be replaced with the same surrogate. Identifiers must be at least two characters long. In the case that the identifier is the empty string, it will be skipped. See https://cloud.google.com/sensitive-data-protection/docs/pseudonymization to learn more. Note: We recommend using CryptoDeterministicConfig for all use cases which do not require preserving the input alphabet space and size, plus warrant referential integrity. FPE incurs significant latency costs.

  ## Attributes

  *   `commonAlphabet` (*type:* `String.t`, *default:* `nil`) - Common alphabets.
  *   `context` (*type:* `GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2FieldId.t`, *default:* `nil`) - The 'tweak', a context may be used for higher security since the same identifier in two different contexts won't be given the same surrogate. If the context is not set, a default tweak will be used. If the context is set but: 1. there is no record present when transforming a given value or 1. the field is not present when transforming a given value, a default tweak will be used. Note that case (1) is expected when an `InfoTypeTransformation` is applied to both structured and unstructured `ContentItem`s. Currently, the referenced field may be of value type integer or string. The tweak is constructed as a sequence of bytes in big endian byte order such that: - a 64 bit integer is encoded followed by a single byte of value 1 - a string is encoded in UTF-8 format followed by a single byte of value 2
  *   `cryptoKey` (*type:* `GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2CryptoKey.t`, *default:* `nil`) - Required. The key used by the encryption algorithm.
  *   `customAlphabet` (*type:* `String.t`, *default:* `nil`) - This is supported by mapping these to the alphanumeric characters that the FFX mode natively supports. This happens before/after encryption/decryption. Each character listed must appear only once. Number of characters must be in the range [2, 95]. This must be encoded as ASCII. The order of characters does not matter. The full list of allowed characters is: ``0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz~`!@#$%^&*()_-+={[}]|\\:;"'<,>.?/``
  *   `radix` (*type:* `integer()`, *default:* `nil`) - The native way to select the alphabet. Must be in the range [2, 95].
  *   `surrogateInfoType` (*type:* `GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2InfoType.t`, *default:* `nil`) - The custom infoType to annotate the surrogate with. This annotation will be applied to the surrogate by prefixing it with the name of the custom infoType followed by the number of characters comprising the surrogate. The following scheme defines the format: info_type_name(surrogate_character_count):surrogate For example, if the name of custom infoType is 'MY_TOKEN_INFO_TYPE' and the surrogate is 'abc', the full replacement value will be: 'MY_TOKEN_INFO_TYPE(3):abc' This annotation identifies the surrogate when inspecting content using the custom infoType [`SurrogateType`](https://cloud.google.com/sensitive-data-protection/docs/reference/rest/v2/InspectConfig#surrogatetype). This facilitates reversal of the surrogate when it occurs in free text. In order for inspection to work properly, the name of this infoType must not occur naturally anywhere in your data; otherwise, inspection may find a surrogate that does not correspond to an actual identifier. Therefore, choose your custom infoType name carefully after considering what your data looks like. One way to select a name that has a high chance of yielding reliable detection is to include one or more unicode characters that are highly improbable to exist in your data. For example, assuming your data is entered from a regular ASCII keyboard, the symbol with the hex code point 29DD might be used like so: ⧝MY_TOKEN_TYPE
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :commonAlphabet => String.t() | nil,
          :context => GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2FieldId.t() | nil,
          :cryptoKey => GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2CryptoKey.t() | nil,
          :customAlphabet => String.t() | nil,
          :radix => integer() | nil,
          :surrogateInfoType => GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2InfoType.t() | nil
        }

  field(:commonAlphabet)
  field(:context, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2FieldId)
  field(:cryptoKey, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2CryptoKey)
  field(:customAlphabet)
  field(:radix)
  field(:surrogateInfoType, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2InfoType)
end

defimpl Poison.Decoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2CryptoReplaceFfxFpeConfig do
  def decode(value, options) do
    GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2CryptoReplaceFfxFpeConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2CryptoReplaceFfxFpeConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
