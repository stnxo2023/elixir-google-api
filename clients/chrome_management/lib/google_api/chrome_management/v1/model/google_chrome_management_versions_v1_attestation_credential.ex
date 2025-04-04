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

defmodule GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementVersionsV1AttestationCredential do
  @moduledoc """
  Information of public key associated with a Chrome browser profile.

  ## Attributes

  *   `keyRotationTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Latest rotation timestamp of the public key rotation.
  *   `keyTrustLevel` (*type:* `String.t`, *default:* `nil`) - Output only. Trust level of the public key.
  *   `keyType` (*type:* `String.t`, *default:* `nil`) - Output only. Type of the public key.
  *   `publicKey` (*type:* `String.t`, *default:* `nil`) - Output only. Value of the public key.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :keyRotationTime => DateTime.t() | nil,
          :keyTrustLevel => String.t() | nil,
          :keyType => String.t() | nil,
          :publicKey => String.t() | nil
        }

  field(:keyRotationTime, as: DateTime)
  field(:keyTrustLevel)
  field(:keyType)
  field(:publicKey)
end

defimpl Poison.Decoder,
  for: GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementVersionsV1AttestationCredential do
  def decode(value, options) do
    GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementVersionsV1AttestationCredential.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementVersionsV1AttestationCredential do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
