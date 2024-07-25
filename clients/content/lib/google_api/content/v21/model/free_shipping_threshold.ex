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

defmodule GoogleApi.Content.V21.Model.FreeShippingThreshold do
  @moduledoc """
  Conditions to be met for a product to have free shipping.

  ## Attributes

  *   `country` (*type:* `String.t`, *default:* `nil`) - Required. The [CLDR territory code](http://www.unicode.org/repos/cldr/tags/latest/common/main/en.xml) of the country to which an item will ship.
  *   `priceThreshold` (*type:* `GoogleApi.Content.V21.Model.Price.t`, *default:* `nil`) - Required. The minimum product price for the shipping cost to become free. Represented as a number.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :country => String.t() | nil,
          :priceThreshold => GoogleApi.Content.V21.Model.Price.t() | nil
        }

  field(:country)
  field(:priceThreshold, as: GoogleApi.Content.V21.Model.Price)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V21.Model.FreeShippingThreshold do
  def decode(value, options) do
    GoogleApi.Content.V21.Model.FreeShippingThreshold.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V21.Model.FreeShippingThreshold do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
