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

defmodule GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta3DocumentSchemaEntityTypeProperty do
  @moduledoc """
  Defines properties that can be part of the entity type.

  ## Attributes

  *   `description` (*type:* `String.t`, *default:* `nil`) - The description of the property. Could be used to provide more information about the property for model calls.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - User defined name for the property.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The name of the property. Follows the same guidelines as the EntityType name.
  *   `occurrenceType` (*type:* `String.t`, *default:* `nil`) - Occurrence type limits the number of instances an entity type appears in the document.
  *   `propertyMetadata` (*type:* `GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta3PropertyMetadata.t`, *default:* `nil`) - Any additional metadata about the property can be added here.
  *   `valueType` (*type:* `String.t`, *default:* `nil`) - A reference to the value type of the property. This type is subject to the same conventions as the `Entity.base_types` field.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :description => String.t() | nil,
          :displayName => String.t() | nil,
          :name => String.t() | nil,
          :occurrenceType => String.t() | nil,
          :propertyMetadata =>
            GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta3PropertyMetadata.t()
            | nil,
          :valueType => String.t() | nil
        }

  field(:description)
  field(:displayName)
  field(:name)
  field(:occurrenceType)

  field(:propertyMetadata,
    as: GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta3PropertyMetadata
  )

  field(:valueType)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta3DocumentSchemaEntityTypeProperty do
  def decode(value, options) do
    GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta3DocumentSchemaEntityTypeProperty.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta3DocumentSchemaEntityTypeProperty do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
