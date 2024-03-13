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

defmodule GoogleApi.Connectors.V2.Model.JsonSchema do
  @moduledoc """
  JsonSchema representation of schema metadata

  ## Attributes

  *   `additionalDetails` (*type:* `map()`, *default:* `nil`) - Additional details apart from standard json schema fields, this gives flexibility to store metadata about the schema
  *   `default` (*type:* `any()`, *default:* `nil`) - The default value of the field or object described by this schema.
  *   `description` (*type:* `String.t`, *default:* `nil`) - A description of this schema.
  *   `enum` (*type:* `list(any())`, *default:* `nil`) - Possible values for an enumeration. This works in conjunction with `type` to represent types with a fixed set of legal values
  *   `format` (*type:* `String.t`, *default:* `nil`) - Format of the value as per https://json-schema.org/understanding-json-schema/reference/string.html#format
  *   `items` (*type:* `GoogleApi.Connectors.V2.Model.JsonSchema.t`, *default:* `nil`) - Schema that applies to array values, applicable only if this is of type `array`.
  *   `jdbcType` (*type:* `String.t`, *default:* `nil`) - JDBC datatype of the field.
  *   `properties` (*type:* `%{optional(String.t) => GoogleApi.Connectors.V2.Model.JsonSchema.t}`, *default:* `nil`) - The child schemas, applicable only if this is of type `object`. The key is the name of the property and the value is the json schema that describes that property
  *   `required` (*type:* `list(String.t)`, *default:* `nil`) - Whether this property is required.
  *   `type` (*type:* `list(String.t)`, *default:* `nil`) - JSON Schema Validation: A Vocabulary for Structural Validation of JSON
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :additionalDetails => map() | nil,
          :default => any() | nil,
          :description => String.t() | nil,
          :enum => list(any()) | nil,
          :format => String.t() | nil,
          :items => GoogleApi.Connectors.V2.Model.JsonSchema.t() | nil,
          :jdbcType => String.t() | nil,
          :properties =>
            %{optional(String.t()) => GoogleApi.Connectors.V2.Model.JsonSchema.t()} | nil,
          :required => list(String.t()) | nil,
          :type => list(String.t()) | nil
        }

  field(:additionalDetails, type: :map)
  field(:default)
  field(:description)
  field(:enum, type: :list)
  field(:format)
  field(:items, as: GoogleApi.Connectors.V2.Model.JsonSchema)
  field(:jdbcType)
  field(:properties, as: GoogleApi.Connectors.V2.Model.JsonSchema, type: :map)
  field(:required, type: :list)
  field(:type, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Connectors.V2.Model.JsonSchema do
  def decode(value, options) do
    GoogleApi.Connectors.V2.Model.JsonSchema.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Connectors.V2.Model.JsonSchema do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
