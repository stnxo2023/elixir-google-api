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

defmodule GoogleApi.DFAReporting.V4.Model.TvCampaignSummary do
  @moduledoc """
  TvCampaignSummary contains aggregate data from a TV campaign.

  ## Attributes

  *   `endDate` (*type:* `String.t`, *default:* `nil`) - The end date of the TV campaign, inclusive. A string of the format: "yyyy-MM-dd".
  *   `grp` (*type:* `String.t`, *default:* `nil`) - GRP of this TV campaign.
  *   `id` (*type:* `String.t`, *default:* `nil`) - ID of this TV campaign.
  *   `impressions` (*type:* `String.t`, *default:* `nil`) - Impressions across the entire TV campaign.
  *   `kind` (*type:* `String.t`, *default:* `nil`) - Identifies what kind of resource this is. Value: the fixed string "dfareporting#tvCampaignSummary".
  *   `name` (*type:* `String.t`, *default:* `nil`) - Identifier. Name of this TV campaign.
  *   `spend` (*type:* `float()`, *default:* `nil`) - Spend across the entire TV campaign.
  *   `startDate` (*type:* `String.t`, *default:* `nil`) - The start date of the TV campaign, inclusive. A string of the format: "yyyy-MM-dd".
  *   `type` (*type:* `String.t`, *default:* `nil`) - "CampaignComponentType" of this TV campaign.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :endDate => String.t() | nil,
          :grp => String.t() | nil,
          :id => String.t() | nil,
          :impressions => String.t() | nil,
          :kind => String.t() | nil,
          :name => String.t() | nil,
          :spend => float() | nil,
          :startDate => String.t() | nil,
          :type => String.t() | nil
        }

  field(:endDate)
  field(:grp)
  field(:id)
  field(:impressions)
  field(:kind)
  field(:name)
  field(:spend)
  field(:startDate)
  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.DFAReporting.V4.Model.TvCampaignSummary do
  def decode(value, options) do
    GoogleApi.DFAReporting.V4.Model.TvCampaignSummary.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DFAReporting.V4.Model.TvCampaignSummary do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
