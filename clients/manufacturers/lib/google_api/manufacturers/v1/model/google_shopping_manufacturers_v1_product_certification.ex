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

defmodule GoogleApi.Manufacturers.V1.Model.GoogleShoppingManufacturersV1ProductCertification do
  @moduledoc """
  Description of a certification.

  ## Attributes

  *   `authority` (*type:* `String.t`, *default:* `nil`) - Required. Name of the certification body.
  *   `code` (*type:* `String.t`, *default:* `nil`) - Required. A unique code to identify the certification.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Required. Name of the certification.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :authority => String.t() | nil,
          :code => String.t() | nil,
          :name => String.t() | nil
        }

  field(:authority)
  field(:code)
  field(:name)
end

defimpl Poison.Decoder,
  for: GoogleApi.Manufacturers.V1.Model.GoogleShoppingManufacturersV1ProductCertification do
  def decode(value, options) do
    GoogleApi.Manufacturers.V1.Model.GoogleShoppingManufacturersV1ProductCertification.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Manufacturers.V1.Model.GoogleShoppingManufacturersV1ProductCertification do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
