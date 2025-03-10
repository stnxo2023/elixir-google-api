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

defmodule GoogleApi.Datastream.V1.Model.Oauth2ClientCredentials do
  @moduledoc """
  OAuth2 Client Credentials.

  ## Attributes

  *   `clientId` (*type:* `String.t`, *default:* `nil`) - Required. Client ID for Salesforce OAuth2 Client Credentials.
  *   `clientSecret` (*type:* `String.t`, *default:* `nil`) - Optional. Client secret for Salesforce OAuth2 Client Credentials. Mutually exclusive with the `secret_manager_stored_client_secret` field.
  *   `secretManagerStoredClientSecret` (*type:* `String.t`, *default:* `nil`) - Optional. A reference to a Secret Manager resource name storing the Salesforce OAuth2 client_secret. Mutually exclusive with the `client_secret` field.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :clientId => String.t() | nil,
          :clientSecret => String.t() | nil,
          :secretManagerStoredClientSecret => String.t() | nil
        }

  field(:clientId)
  field(:clientSecret)
  field(:secretManagerStoredClientSecret)
end

defimpl Poison.Decoder, for: GoogleApi.Datastream.V1.Model.Oauth2ClientCredentials do
  def decode(value, options) do
    GoogleApi.Datastream.V1.Model.Oauth2ClientCredentials.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Datastream.V1.Model.Oauth2ClientCredentials do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
