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

defmodule GoogleApi.AccessContextManager.V1.Model.IngressFrom do
  @moduledoc """
  Defines the conditions under which an IngressPolicy matches a request. Conditions are based on information about the source of the request. The request must satisfy what is defined in `sources` AND identity related fields in order to match.

  ## Attributes

  *   `identities` (*type:* `list(String.t)`, *default:* `nil`) - A list of identities that are allowed access through [IngressPolicy]. Identities can be an individual user, service account, Google group, or third-party identity. For third-party identity, only single identities are supported and other identity types are not supported. The `v1` identities that have the prefix `user`, `group`, `serviceAccount`, and `principal` in https://cloud.google.com/iam/docs/principal-identifiers#v1 are supported.
  *   `identityType` (*type:* `String.t`, *default:* `nil`) - Specifies the type of identities that are allowed access from outside the perimeter. If left unspecified, then members of `identities` field will be allowed access.
  *   `sources` (*type:* `list(GoogleApi.AccessContextManager.V1.Model.IngressSource.t)`, *default:* `nil`) - Sources that this IngressPolicy authorizes access from.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :identities => list(String.t()) | nil,
          :identityType => String.t() | nil,
          :sources => list(GoogleApi.AccessContextManager.V1.Model.IngressSource.t()) | nil
        }

  field(:identities, type: :list)
  field(:identityType)
  field(:sources, as: GoogleApi.AccessContextManager.V1.Model.IngressSource, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.AccessContextManager.V1.Model.IngressFrom do
  def decode(value, options) do
    GoogleApi.AccessContextManager.V1.Model.IngressFrom.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AccessContextManager.V1.Model.IngressFrom do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
