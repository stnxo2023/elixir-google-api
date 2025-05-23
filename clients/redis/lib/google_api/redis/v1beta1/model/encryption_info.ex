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

defmodule GoogleApi.Redis.V1beta1.Model.EncryptionInfo do
  @moduledoc """
  EncryptionInfo describes the encryption information of a cluster or a backup.

  ## Attributes

  *   `encryptionType` (*type:* `String.t`, *default:* `nil`) - Output only. Type of encryption.
  *   `kmsKeyPrimaryState` (*type:* `String.t`, *default:* `nil`) - Output only. The state of the primary version of the KMS key perceived by the system. This field is not populated in backups.
  *   `kmsKeyVersions` (*type:* `list(String.t)`, *default:* `nil`) - Output only. KMS key versions that are being used to protect the data at-rest.
  *   `lastUpdateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The most recent time when the encryption info was updated.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :encryptionType => String.t() | nil,
          :kmsKeyPrimaryState => String.t() | nil,
          :kmsKeyVersions => list(String.t()) | nil,
          :lastUpdateTime => DateTime.t() | nil
        }

  field(:encryptionType)
  field(:kmsKeyPrimaryState)
  field(:kmsKeyVersions, type: :list)
  field(:lastUpdateTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.Redis.V1beta1.Model.EncryptionInfo do
  def decode(value, options) do
    GoogleApi.Redis.V1beta1.Model.EncryptionInfo.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Redis.V1beta1.Model.EncryptionInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
