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

defmodule GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3SearchConfig do
  @moduledoc """
  Search configuration for UCS search queries.

  ## Attributes

  *   `boostSpecs` (*type:* `list(GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3BoostSpecs.t)`, *default:* `nil`) - Optional. Boosting configuration for the datastores. Maps from datastore name to their boost configuration. Do not specify more than one BoostSpecs for each datastore name. If multiple BoostSpecs are provided for the same datastore name, the behavior is undefined.
  *   `filterSpecs` (*type:* `list(GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3FilterSpecs.t)`, *default:* `nil`) - Optional. Filter configuration for the datastores. Maps from datastore name to the filter expression for that datastore. Do not specify more than one FilterSpecs for each datastore name. If multiple FilterSpecs are provided for the same datastore name, the behavior is undefined.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :boostSpecs =>
            list(GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3BoostSpecs.t()) | nil,
          :filterSpecs =>
            list(GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3FilterSpecs.t()) | nil
        }

  field(:boostSpecs,
    as: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3BoostSpecs,
    type: :list
  )

  field(:filterSpecs,
    as: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3FilterSpecs,
    type: :list
  )
end

defimpl Poison.Decoder, for: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3SearchConfig do
  def decode(value, options) do
    GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3SearchConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3SearchConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
