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

defmodule GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowV2SummarySuggestion do
  @moduledoc """
  Suggested summary of the conversation.

  ## Attributes

  *   `summarySections` (*type:* `list(GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowV2SummarySuggestionSummarySection.t)`, *default:* `nil`) - Required. All the parts of generated summary.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :summarySections =>
            list(
              GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowV2SummarySuggestionSummarySection.t()
            )
            | nil
        }

  field(:summarySections,
    as: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowV2SummarySuggestionSummarySection,
    type: :list
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowV2SummarySuggestion do
  def decode(value, options) do
    GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowV2SummarySuggestion.decode(value, options)
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowV2SummarySuggestion do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
