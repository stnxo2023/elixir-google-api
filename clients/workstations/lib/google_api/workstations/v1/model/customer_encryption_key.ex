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

defmodule GoogleApi.Workstations.V1.Model.CustomerEncryptionKey do
  @moduledoc """
  A customer-managed encryption key (CMEK) for the Compute Engine resources of the associated workstation configuration. Specify the name of your Cloud KMS encryption key and the default service account. We recommend that you use a separate service account and follow [Cloud KMS best practices](https://cloud.google.com/kms/docs/separation-of-duties).

  ## Attributes

  *   `kmsKey` (*type:* `String.t`, *default:* `nil`) - Immutable. The name of the Google Cloud KMS encryption key. For example, `"projects/PROJECT_ID/locations/REGION/keyRings/KEY_RING/cryptoKeys/KEY_NAME"`. The key must be in the same region as the workstation configuration.
  *   `kmsKeyServiceAccount` (*type:* `String.t`, *default:* `nil`) - Immutable. The service account to use with the specified KMS key. We recommend that you use a separate service account and follow KMS best practices. For more information, see [Separation of duties](https://cloud.google.com/kms/docs/separation-of-duties) and `gcloud kms keys add-iam-policy-binding` [`--member`](https://cloud.google.com/sdk/gcloud/reference/kms/keys/add-iam-policy-binding#--member).
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :kmsKey => String.t() | nil,
          :kmsKeyServiceAccount => String.t() | nil
        }

  field(:kmsKey)
  field(:kmsKeyServiceAccount)
end

defimpl Poison.Decoder, for: GoogleApi.Workstations.V1.Model.CustomerEncryptionKey do
  def decode(value, options) do
    GoogleApi.Workstations.V1.Model.CustomerEncryptionKey.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Workstations.V1.Model.CustomerEncryptionKey do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
