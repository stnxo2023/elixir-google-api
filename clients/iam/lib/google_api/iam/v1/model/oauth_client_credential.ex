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

defmodule GoogleApi.IAM.V1.Model.OauthClientCredential do
  @moduledoc """
  Represents an OauthClientCredential. Used to authenticate an OauthClient while accessing Google Cloud resources on behalf of a user by using OAuth 2.0 Protocol.

  ## Attributes

  *   `clientSecret` (*type:* `String.t`, *default:* `nil`) - Output only. The system-generated OAuth client secret. The client secret must be stored securely. If the client secret is leaked, you must delete and re-create the client credential. To learn more, see [OAuth client and credential security risks and mitigations](https://cloud.google.com/iam/docs/workforce-oauth-app#security)
  *   `disabled` (*type:* `boolean()`, *default:* `nil`) - Optional. Whether the OauthClientCredential is disabled. You cannot use a disabled OauthClientCredential.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - Optional. A user-specified display name of the OauthClientCredential. Cannot exceed 32 characters.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Immutable. Identifier. The resource name of the OauthClientCredential. Format: `projects/{project}/locations/{location}/oauthClients/{oauth_client}/credentials/{credential}`
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :clientSecret => String.t() | nil,
          :disabled => boolean() | nil,
          :displayName => String.t() | nil,
          :name => String.t() | nil
        }

  field(:clientSecret)
  field(:disabled)
  field(:displayName)
  field(:name)
end

defimpl Poison.Decoder, for: GoogleApi.IAM.V1.Model.OauthClientCredential do
  def decode(value, options) do
    GoogleApi.IAM.V1.Model.OauthClientCredential.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.IAM.V1.Model.OauthClientCredential do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
