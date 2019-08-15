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

defmodule GoogleApi.CustomSearch.V1.Api.Cse do
  @moduledoc """
  API calls for all endpoints tagged `Cse`.
  """

  alias GoogleApi.CustomSearch.V1.Connection
  alias GoogleApi.Gax.{Request, Response}

  @library_version Mix.Project.config() |> Keyword.get(:version, "")

  @doc """
  Returns metadata about the search performed, metadata about the custom search engine used for the search, and the search results.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.CustomSearch.V1.Connection.t`) - Connection to server
  *   `q` (*type:* `String.t`) - Query
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:c2coff` (*type:* `String.t`) - Turns off the translation between zh-CN and zh-TW.
      *   `:cr` (*type:* `String.t`) - Country restrict(s).
      *   `:cx` (*type:* `String.t`) - The custom search engine ID to scope this search query
      *   `:dateRestrict` (*type:* `String.t`) - Specifies all search results are from a time period
      *   `:exactTerms` (*type:* `String.t`) - Identifies a phrase that all documents in the search results must contain
      *   `:excludeTerms` (*type:* `String.t`) - Identifies a word or phrase that should not appear in any documents in the search results
      *   `:fileType` (*type:* `String.t`) - Returns images of a specified type. Some of the allowed values are: bmp, gif, png, jpg, svg, pdf, ...
      *   `:filter` (*type:* `String.t`) - Controls turning on or off the duplicate content filter.
      *   `:gl` (*type:* `String.t`) - Geolocation of end user.
      *   `:googlehost` (*type:* `String.t`) - The local Google domain to use to perform the search.
      *   `:highRange` (*type:* `String.t`) - Creates a range in form as_nlo value..as_nhi value and attempts to append it to query
      *   `:hl` (*type:* `String.t`) - Sets the user interface language.
      *   `:hq` (*type:* `String.t`) - Appends the extra query terms to the query.
      *   `:imgColorType` (*type:* `String.t`) - Returns black and white, grayscale, or color images: mono, gray, and color.
      *   `:imgDominantColor` (*type:* `String.t`) - Returns images of a specific dominant color: red, orange, yellow, green, teal, blue, purple, pink, white, gray, black and brown.
      *   `:imgSize` (*type:* `String.t`) - Returns images of a specified size, where size can be one of: icon, small, medium, large, xlarge, xxlarge, and huge.
      *   `:imgType` (*type:* `String.t`) - Returns images of a type, which can be one of: clipart, face, lineart, news, and photo.
      *   `:linkSite` (*type:* `String.t`) - Specifies that all search results should contain a link to a particular URL
      *   `:lowRange` (*type:* `String.t`) - Creates a range in form as_nlo value..as_nhi value and attempts to append it to query
      *   `:lr` (*type:* `String.t`) - The language restriction for the search results
      *   `:num` (*type:* `integer()`) - Number of search results to return
      *   `:orTerms` (*type:* `String.t`) - Provides additional search terms to check for in a document, where each document in the search results must contain at least one of the additional search terms
      *   `:relatedSite` (*type:* `String.t`) - Specifies that all search results should be pages that are related to the specified URL
      *   `:rights` (*type:* `String.t`) - Filters based on licensing. Supported values include: cc_publicdomain, cc_attribute, cc_sharealike, cc_noncommercial, cc_nonderived and combinations of these.
      *   `:safe` (*type:* `String.t`) - Search safety level
      *   `:searchType` (*type:* `String.t`) - Specifies the search type: image.
      *   `:siteSearch` (*type:* `String.t`) - Specifies all search results should be pages from a given site
      *   `:siteSearchFilter` (*type:* `String.t`) - Controls whether to include or exclude results from the site named in the as_sitesearch parameter
      *   `:sort` (*type:* `String.t`) - The sort expression to apply to the results
      *   `:start` (*type:* `integer()`) - The index of the first result to return
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.CustomSearch.V1.Model.Search{}}` on success
  *   `{:error, info}` on failure
  """
  @spec search_cse_list(Tesla.Env.client(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.CustomSearch.V1.Model.Search.t()} | {:error, Tesla.Env.t()}
  def search_cse_list(connection, q, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :c2coff => :query,
      :cr => :query,
      :cx => :query,
      :dateRestrict => :query,
      :exactTerms => :query,
      :excludeTerms => :query,
      :fileType => :query,
      :filter => :query,
      :gl => :query,
      :googlehost => :query,
      :highRange => :query,
      :hl => :query,
      :hq => :query,
      :imgColorType => :query,
      :imgDominantColor => :query,
      :imgSize => :query,
      :imgType => :query,
      :linkSite => :query,
      :lowRange => :query,
      :lr => :query,
      :num => :query,
      :orTerms => :query,
      :relatedSite => :query,
      :rights => :query,
      :safe => :query,
      :searchType => :query,
      :siteSearch => :query,
      :siteSearchFilter => :query,
      :sort => :query,
      :start => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v1", %{})
      |> Request.add_param(:query, :q, q)
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.CustomSearch.V1.Model.Search{}])
  end

  @doc """
  Returns metadata about the search performed, metadata about the custom search engine used for the search, and the search results. Uses a small set of url patterns.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.CustomSearch.V1.Connection.t`) - Connection to server
  *   `q` (*type:* `String.t`) - Query
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:c2coff` (*type:* `String.t`) - Turns off the translation between zh-CN and zh-TW.
      *   `:cr` (*type:* `String.t`) - Country restrict(s).
      *   `:cx` (*type:* `String.t`) - The custom search engine ID to scope this search query
      *   `:dateRestrict` (*type:* `String.t`) - Specifies all search results are from a time period
      *   `:exactTerms` (*type:* `String.t`) - Identifies a phrase that all documents in the search results must contain
      *   `:excludeTerms` (*type:* `String.t`) - Identifies a word or phrase that should not appear in any documents in the search results
      *   `:fileType` (*type:* `String.t`) - Returns images of a specified type. Some of the allowed values are: bmp, gif, png, jpg, svg, pdf, ...
      *   `:filter` (*type:* `String.t`) - Controls turning on or off the duplicate content filter.
      *   `:gl` (*type:* `String.t`) - Geolocation of end user.
      *   `:googlehost` (*type:* `String.t`) - The local Google domain to use to perform the search.
      *   `:highRange` (*type:* `String.t`) - Creates a range in form as_nlo value..as_nhi value and attempts to append it to query
      *   `:hl` (*type:* `String.t`) - Sets the user interface language.
      *   `:hq` (*type:* `String.t`) - Appends the extra query terms to the query.
      *   `:imgColorType` (*type:* `String.t`) - Returns black and white, grayscale, or color images: mono, gray, and color.
      *   `:imgDominantColor` (*type:* `String.t`) - Returns images of a specific dominant color: red, orange, yellow, green, teal, blue, purple, pink, white, gray, black and brown.
      *   `:imgSize` (*type:* `String.t`) - Returns images of a specified size, where size can be one of: icon, small, medium, large, xlarge, xxlarge, and huge.
      *   `:imgType` (*type:* `String.t`) - Returns images of a type, which can be one of: clipart, face, lineart, news, and photo.
      *   `:linkSite` (*type:* `String.t`) - Specifies that all search results should contain a link to a particular URL
      *   `:lowRange` (*type:* `String.t`) - Creates a range in form as_nlo value..as_nhi value and attempts to append it to query
      *   `:lr` (*type:* `String.t`) - The language restriction for the search results
      *   `:num` (*type:* `integer()`) - Number of search results to return
      *   `:orTerms` (*type:* `String.t`) - Provides additional search terms to check for in a document, where each document in the search results must contain at least one of the additional search terms
      *   `:relatedSite` (*type:* `String.t`) - Specifies that all search results should be pages that are related to the specified URL
      *   `:rights` (*type:* `String.t`) - Filters based on licensing. Supported values include: cc_publicdomain, cc_attribute, cc_sharealike, cc_noncommercial, cc_nonderived and combinations of these.
      *   `:safe` (*type:* `String.t`) - Search safety level
      *   `:searchType` (*type:* `String.t`) - Specifies the search type: image.
      *   `:siteSearch` (*type:* `String.t`) - Specifies all search results should be pages from a given site
      *   `:siteSearchFilter` (*type:* `String.t`) - Controls whether to include or exclude results from the site named in the as_sitesearch parameter
      *   `:sort` (*type:* `String.t`) - The sort expression to apply to the results
      *   `:start` (*type:* `integer()`) - The index of the first result to return
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.CustomSearch.V1.Model.Search{}}` on success
  *   `{:error, info}` on failure
  """
  @spec search_cse_siterestrict_list(Tesla.Env.client(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.CustomSearch.V1.Model.Search.t()} | {:error, Tesla.Env.t()}
  def search_cse_siterestrict_list(connection, q, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :c2coff => :query,
      :cr => :query,
      :cx => :query,
      :dateRestrict => :query,
      :exactTerms => :query,
      :excludeTerms => :query,
      :fileType => :query,
      :filter => :query,
      :gl => :query,
      :googlehost => :query,
      :highRange => :query,
      :hl => :query,
      :hq => :query,
      :imgColorType => :query,
      :imgDominantColor => :query,
      :imgSize => :query,
      :imgType => :query,
      :linkSite => :query,
      :lowRange => :query,
      :lr => :query,
      :num => :query,
      :orTerms => :query,
      :relatedSite => :query,
      :rights => :query,
      :safe => :query,
      :searchType => :query,
      :siteSearch => :query,
      :siteSearchFilter => :query,
      :sort => :query,
      :start => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v1/siterestrict", %{})
      |> Request.add_param(:query, :q, q)
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.CustomSearch.V1.Model.Search{}])
  end
end
