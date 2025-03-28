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

defmodule GoogleApi.Dataform.V1beta1.Model.ScheduledExecutionRecord do
  @moduledoc """
  A record of an attempt to create a workflow invocation for this workflow config.

  ## Attributes

  *   `errorStatus` (*type:* `GoogleApi.Dataform.V1beta1.Model.Status.t`, *default:* `nil`) - The error status encountered upon this attempt to create the workflow invocation, if the attempt was unsuccessful.
  *   `executionTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The timestamp of this execution attempt.
  *   `workflowInvocation` (*type:* `String.t`, *default:* `nil`) - The name of the created workflow invocation, if one was successfully created. Must be in the format `projects/*/locations/*/repositories/*/workflowInvocations/*`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :errorStatus => GoogleApi.Dataform.V1beta1.Model.Status.t() | nil,
          :executionTime => DateTime.t() | nil,
          :workflowInvocation => String.t() | nil
        }

  field(:errorStatus, as: GoogleApi.Dataform.V1beta1.Model.Status)
  field(:executionTime, as: DateTime)
  field(:workflowInvocation)
end

defimpl Poison.Decoder, for: GoogleApi.Dataform.V1beta1.Model.ScheduledExecutionRecord do
  def decode(value, options) do
    GoogleApi.Dataform.V1beta1.Model.ScheduledExecutionRecord.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataform.V1beta1.Model.ScheduledExecutionRecord do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
