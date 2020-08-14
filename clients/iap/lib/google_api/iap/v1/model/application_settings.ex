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

defmodule GoogleApi.IAP.V1.Model.ApplicationSettings do
  @moduledoc """
  Wrapper over application specific settings for IAP.

  ## Attributes

  *   `accessDeniedPageSettings` (*type:* `GoogleApi.IAP.V1.Model.AccessDeniedPageSettings.t`, *default:* `nil`) - Customization for Access Denied page.
  *   `cookieDomain` (*type:* `String.t`, *default:* `nil`) - The Domain value to set for cookies generated by IAP. This value is not validated by the API, but will be ignored at runtime if invalid.
  *   `csmSettings` (*type:* `GoogleApi.IAP.V1.Model.CsmSettings.t`, *default:* `nil`) - Settings to configure IAP's behavior for a CSM mesh.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :accessDeniedPageSettings => GoogleApi.IAP.V1.Model.AccessDeniedPageSettings.t(),
          :cookieDomain => String.t(),
          :csmSettings => GoogleApi.IAP.V1.Model.CsmSettings.t()
        }

  field(:accessDeniedPageSettings, as: GoogleApi.IAP.V1.Model.AccessDeniedPageSettings)
  field(:cookieDomain)
  field(:csmSettings, as: GoogleApi.IAP.V1.Model.CsmSettings)
end

defimpl Poison.Decoder, for: GoogleApi.IAP.V1.Model.ApplicationSettings do
  def decode(value, options) do
    GoogleApi.IAP.V1.Model.ApplicationSettings.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.IAP.V1.Model.ApplicationSettings do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
