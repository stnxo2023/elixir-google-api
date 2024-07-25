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

defmodule GoogleApi.MerchantAPI.Reports_v1beta.Model.SearchRequest do
  @moduledoc """
  Request message for the `ReportService.Search` method.

  ## Attributes

  *   `pageSize` (*type:* `integer()`, *default:* `nil`) - Optional. Number of `ReportRows` to retrieve in a single page. Defaults to 1000. Values above 5000 are coerced to 5000.
  *   `pageToken` (*type:* `String.t`, *default:* `nil`) - Optional. Token of the page to retrieve. If not specified, the first page of results is returned. In order to request the next page of results, the value obtained from `next_page_token` in the previous response should be used.
  *   `query` (*type:* `String.t`, *default:* `nil`) - Required. Query that defines a report to be retrieved. For details on how to construct your query, see the Query Language guide. For the full list of available tables and fields, see the Available fields.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :pageSize => integer() | nil,
          :pageToken => String.t() | nil,
          :query => String.t() | nil
        }

  field(:pageSize)
  field(:pageToken)
  field(:query)
end

defimpl Poison.Decoder, for: GoogleApi.MerchantAPI.Reports_v1beta.Model.SearchRequest do
  def decode(value, options) do
    GoogleApi.MerchantAPI.Reports_v1beta.Model.SearchRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.MerchantAPI.Reports_v1beta.Model.SearchRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
