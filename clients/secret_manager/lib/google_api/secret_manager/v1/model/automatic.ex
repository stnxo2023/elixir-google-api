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

defmodule GoogleApi.SecretManager.V1.Model.Automatic do
  @moduledoc """
  A replication policy that replicates the Secret payload without any restrictions.

  ## Attributes

  *   `customerManagedEncryption` (*type:* `GoogleApi.SecretManager.V1.Model.CustomerManagedEncryption.t`, *default:* `nil`) - Optional. The customer-managed encryption configuration of the Secret. If no configuration is provided, Google-managed default encryption is used. Updates to the Secret encryption configuration only apply to SecretVersions added afterwards. They do not apply retroactively to existing SecretVersions.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :customerManagedEncryption =>
            GoogleApi.SecretManager.V1.Model.CustomerManagedEncryption.t()
        }

  field(:customerManagedEncryption, as: GoogleApi.SecretManager.V1.Model.CustomerManagedEncryption)
end

defimpl Poison.Decoder, for: GoogleApi.SecretManager.V1.Model.Automatic do
  def decode(value, options) do
    GoogleApi.SecretManager.V1.Model.Automatic.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.SecretManager.V1.Model.Automatic do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
