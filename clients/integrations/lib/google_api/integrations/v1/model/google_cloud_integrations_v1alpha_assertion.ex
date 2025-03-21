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

defmodule GoogleApi.Integrations.V1.Model.GoogleCloudIntegrationsV1alphaAssertion do
  @moduledoc """
  An assertion which will check for a condition over task execution status or an expression for task output variables

  ## Attributes

  *   `assertionStrategy` (*type:* `String.t`, *default:* `nil`) - Optional. The type of assertion to perform.
  *   `condition` (*type:* `String.t`, *default:* `nil`) - Optional. Standard filter expression for ASSERT_CONDITION to succeed
  *   `parameter` (*type:* `GoogleApi.Integrations.V1.Model.GoogleCloudIntegrationsV1alphaEventParameter.t`, *default:* `nil`) - Optional. Key-value pair for ASSERT_EQUALS, ASSERT_NOT_EQUALS, ASSERT_CONTAINS to succeed
  *   `retryCount` (*type:* `integer()`, *default:* `nil`) - Number of times given task should be retried in case of ASSERT_FAILED_EXECUTION
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :assertionStrategy => String.t() | nil,
          :condition => String.t() | nil,
          :parameter =>
            GoogleApi.Integrations.V1.Model.GoogleCloudIntegrationsV1alphaEventParameter.t() | nil,
          :retryCount => integer() | nil
        }

  field(:assertionStrategy)
  field(:condition)

  field(:parameter,
    as: GoogleApi.Integrations.V1.Model.GoogleCloudIntegrationsV1alphaEventParameter
  )

  field(:retryCount)
end

defimpl Poison.Decoder,
  for: GoogleApi.Integrations.V1.Model.GoogleCloudIntegrationsV1alphaAssertion do
  def decode(value, options) do
    GoogleApi.Integrations.V1.Model.GoogleCloudIntegrationsV1alphaAssertion.decode(value, options)
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Integrations.V1.Model.GoogleCloudIntegrationsV1alphaAssertion do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
