# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.SearchConsole.V1.Model.RunMobileFriendlyTestResponse do
  @moduledoc """
  Mobile-friendly test response, including mobile-friendly issues and resource
  issues.

  ## Attributes

  *   `mobileFriendliness` (*type:* `String.t`, *default:* `nil`) - Test verdict, whether the page is mobile friendly or not.
  *   `mobileFriendlyIssues` (*type:* `list(GoogleApi.SearchConsole.V1.Model.MobileFriendlyIssue.t)`, *default:* `nil`) - List of mobile-usability issues.
  *   `resourceIssues` (*type:* `list(GoogleApi.SearchConsole.V1.Model.ResourceIssue.t)`, *default:* `nil`) - Information about embedded resources issues.
  *   `screenshot` (*type:* `GoogleApi.SearchConsole.V1.Model.Image.t`, *default:* `nil`) - Screenshot of the requested URL.
  *   `testStatus` (*type:* `GoogleApi.SearchConsole.V1.Model.TestStatus.t`, *default:* `nil`) - Final state of the test, can be either complete or an error.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :mobileFriendliness => String.t(),
          :mobileFriendlyIssues => list(GoogleApi.SearchConsole.V1.Model.MobileFriendlyIssue.t()),
          :resourceIssues => list(GoogleApi.SearchConsole.V1.Model.ResourceIssue.t()),
          :screenshot => GoogleApi.SearchConsole.V1.Model.Image.t(),
          :testStatus => GoogleApi.SearchConsole.V1.Model.TestStatus.t()
        }

  field(:mobileFriendliness)

  field(
    :mobileFriendlyIssues,
    as: GoogleApi.SearchConsole.V1.Model.MobileFriendlyIssue,
    type: :list
  )

  field(:resourceIssues, as: GoogleApi.SearchConsole.V1.Model.ResourceIssue, type: :list)
  field(:screenshot, as: GoogleApi.SearchConsole.V1.Model.Image)
  field(:testStatus, as: GoogleApi.SearchConsole.V1.Model.TestStatus)
end

defimpl Poison.Decoder, for: GoogleApi.SearchConsole.V1.Model.RunMobileFriendlyTestResponse do
  def decode(value, options) do
    GoogleApi.SearchConsole.V1.Model.RunMobileFriendlyTestResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.SearchConsole.V1.Model.RunMobileFriendlyTestResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
