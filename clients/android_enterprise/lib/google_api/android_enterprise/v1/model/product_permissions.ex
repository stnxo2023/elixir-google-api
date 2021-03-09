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

defmodule GoogleApi.AndroidEnterprise.V1.Model.ProductPermissions do
  @moduledoc """
  Information about the permissions required by a specific app and whether they have been accepted by the enterprise.

  ## Attributes

  *   `permission` (*type:* `list(GoogleApi.AndroidEnterprise.V1.Model.ProductPermission.t)`, *default:* `nil`) - The permissions required by the app.
  *   `productId` (*type:* `String.t`, *default:* `nil`) - The ID of the app that the permissions relate to, e.g. "app:com.google.android.gm".
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :permission => list(GoogleApi.AndroidEnterprise.V1.Model.ProductPermission.t()) | nil,
          :productId => String.t() | nil
        }

  field(:permission, as: GoogleApi.AndroidEnterprise.V1.Model.ProductPermission, type: :list)
  field(:productId)
end

defimpl Poison.Decoder, for: GoogleApi.AndroidEnterprise.V1.Model.ProductPermissions do
  def decode(value, options) do
    GoogleApi.AndroidEnterprise.V1.Model.ProductPermissions.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidEnterprise.V1.Model.ProductPermissions do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
