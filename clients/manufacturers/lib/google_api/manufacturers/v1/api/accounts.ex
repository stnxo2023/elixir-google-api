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

defmodule GoogleApi.Manufacturers.V1.Api.Accounts do
  @moduledoc """
  API calls for all endpoints tagged `Accounts`.
  """

  alias GoogleApi.Manufacturers.V1.Connection
  alias GoogleApi.Gax.{Request, Response}

  @library_version Mix.Project.config() |> Keyword.get(:version, "")

  @doc """
  Deletes a product certification by its name. This method can only be called by certification bodies.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Manufacturers.V1.Connection.t`) - Connection to server
  *   `name` (*type:* `String.t`) - Required. The name of the product certification to delete. Format: accounts/{account}/languages/{language_code}/productCertifications/{id}
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:access_token` (*type:* `String.t`) - OAuth access token.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Manufacturers.V1.Model.Empty{}}` on success
  *   `{:error, info}` on failure
  """
  @spec manufacturers_accounts_languages_product_certifications_delete(
          Tesla.Env.client(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.Manufacturers.V1.Model.Empty.t()}
          | {:ok, Tesla.Env.t()}
          | {:ok, list()}
          | {:error, any()}
  def manufacturers_accounts_languages_product_certifications_delete(
        connection,
        name,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :upload_protocol => :query
    }

    request =
      Request.new()
      |> Request.method(:delete)
      |> Request.url("/v1/{+name}", %{
        "name" => URI.encode(name, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Manufacturers.V1.Model.Empty{}])
  end

  @doc """
  Gets a product certification by its name. This method can only be called by certification bodies.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Manufacturers.V1.Connection.t`) - Connection to server
  *   `name` (*type:* `String.t`) - Required. The name of the product certification to get. Format: accounts/{account}/languages/{language_code}/productCertifications/{id}
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:access_token` (*type:* `String.t`) - OAuth access token.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Manufacturers.V1.Model.ProductCertification{}}` on success
  *   `{:error, info}` on failure
  """
  @spec manufacturers_accounts_languages_product_certifications_get(
          Tesla.Env.client(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.Manufacturers.V1.Model.ProductCertification.t()}
          | {:ok, Tesla.Env.t()}
          | {:ok, list()}
          | {:error, any()}
  def manufacturers_accounts_languages_product_certifications_get(
        connection,
        name,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :upload_protocol => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v1/{+name}", %{
        "name" => URI.encode(name, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Manufacturers.V1.Model.ProductCertification{}])
  end

  @doc """
  Lists product certifications from a specified certification body. This method can only be called by certification bodies.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Manufacturers.V1.Connection.t`) - Connection to server
  *   `parent` (*type:* `String.t`) - Required. The parent, which owns this collection of product certifications. Format: accounts/{account}/languages/{language_code}
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:access_token` (*type:* `String.t`) - OAuth access token.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
      *   `:pageSize` (*type:* `integer()`) - Optional. The maximum number of product certifications to return. The service may return fewer than this value. If unspecified, at most 50 product certifications will be returned. The maximum value is 1000; values above 1000 will be coerced to 1000.
      *   `:pageToken` (*type:* `String.t`) - Optional. A page token, received from a previous `ListProductCertifications` call. Provide this to retrieve the subsequent page. When paginating, all other parameters provided to `ListProductCertifications` must match the call that provided the page token. Required if requesting the second or higher page.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Manufacturers.V1.Model.ListProductCertificationsResponse{}}` on success
  *   `{:error, info}` on failure
  """
  @spec manufacturers_accounts_languages_product_certifications_list(
          Tesla.Env.client(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.Manufacturers.V1.Model.ListProductCertificationsResponse.t()}
          | {:ok, Tesla.Env.t()}
          | {:ok, list()}
          | {:error, any()}
  def manufacturers_accounts_languages_product_certifications_list(
        connection,
        parent,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :upload_protocol => :query,
      :pageSize => :query,
      :pageToken => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v1/{+parent}/productCertifications", %{
        "parent" => URI.encode(parent, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.Manufacturers.V1.Model.ListProductCertificationsResponse{}]
    )
  end

  @doc """
  Updates (or creates if allow_missing = true) a product certification which links certifications with products. This method can only be called by certification bodies.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Manufacturers.V1.Connection.t`) - Connection to server
  *   `name` (*type:* `String.t`) - Required. The unique name identifier of a product certification Format: accounts/{account}/languages/{language_code}/productCertifications/{id} Where `id` is a some unique identifier and `language_code` is a 2-letter ISO 639-1 code of a Shopping supported language according to https://support.google.com/merchants/answer/160637.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:access_token` (*type:* `String.t`) - OAuth access token.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
      *   `:updateMask` (*type:* `String.t`) - Optional. The list of fields to update according to aip.dev/134. However, only full update is supported as of right now. Therefore, it can be either ignored or set to "*". Setting any other values will returns UNIMPLEMENTED error.
      *   `:body` (*type:* `GoogleApi.Manufacturers.V1.Model.ProductCertification.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Manufacturers.V1.Model.ProductCertification{}}` on success
  *   `{:error, info}` on failure
  """
  @spec manufacturers_accounts_languages_product_certifications_patch(
          Tesla.Env.client(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.Manufacturers.V1.Model.ProductCertification.t()}
          | {:ok, Tesla.Env.t()}
          | {:ok, list()}
          | {:error, any()}
  def manufacturers_accounts_languages_product_certifications_patch(
        connection,
        name,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :upload_protocol => :query,
      :updateMask => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:patch)
      |> Request.url("/v1/{+name}", %{
        "name" => URI.encode(name, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Manufacturers.V1.Model.ProductCertification{}])
  end

  @doc """
  Deletes the product from a Manufacturer Center account.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Manufacturers.V1.Connection.t`) - Connection to server
  *   `parent` (*type:* `String.t`) - Parent ID in the format `accounts/{account_id}`. `account_id` - The ID of the Manufacturer Center account.
  *   `name` (*type:* `String.t`) - Name in the format `{target_country}:{content_language}:{product_id}`. `target_country` - The target country of the product as a CLDR territory code (for example, US). `content_language` - The content language of the product as a two-letter ISO 639-1 language code (for example, en). `product_id` - The ID of the product. For more information, see https://support.google.com/manufacturers/answer/6124116#id.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:access_token` (*type:* `String.t`) - OAuth access token.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Manufacturers.V1.Model.Empty{}}` on success
  *   `{:error, info}` on failure
  """
  @spec manufacturers_accounts_products_delete(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.Manufacturers.V1.Model.Empty.t()}
          | {:ok, Tesla.Env.t()}
          | {:ok, list()}
          | {:error, any()}
  def manufacturers_accounts_products_delete(
        connection,
        parent,
        name,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :upload_protocol => :query
    }

    request =
      Request.new()
      |> Request.method(:delete)
      |> Request.url("/v1/{+parent}/products/{+name}", %{
        "parent" => URI.encode(parent, &URI.char_unreserved?/1),
        "name" => URI.encode(name, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Manufacturers.V1.Model.Empty{}])
  end

  @doc """
  Gets the product from a Manufacturer Center account, including product issues. A recently updated product takes around 15 minutes to process. Changes are only visible after it has been processed. While some issues may be available once the product has been processed, other issues may take days to appear.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Manufacturers.V1.Connection.t`) - Connection to server
  *   `parent` (*type:* `String.t`) - Parent ID in the format `accounts/{account_id}`. `account_id` - The ID of the Manufacturer Center account.
  *   `name` (*type:* `String.t`) - Name in the format `{target_country}:{content_language}:{product_id}`. `target_country` - The target country of the product as a CLDR territory code (for example, US). `content_language` - The content language of the product as a two-letter ISO 639-1 language code (for example, en). `product_id` - The ID of the product. For more information, see https://support.google.com/manufacturers/answer/6124116#id.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:access_token` (*type:* `String.t`) - OAuth access token.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
      *   `:include` (*type:* `list(String.t)`) - The information to be included in the response. Only sections listed here will be returned.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Manufacturers.V1.Model.Product{}}` on success
  *   `{:error, info}` on failure
  """
  @spec manufacturers_accounts_products_get(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.Manufacturers.V1.Model.Product.t()}
          | {:ok, Tesla.Env.t()}
          | {:ok, list()}
          | {:error, any()}
  def manufacturers_accounts_products_get(
        connection,
        parent,
        name,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :upload_protocol => :query,
      :include => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v1/{+parent}/products/{+name}", %{
        "parent" => URI.encode(parent, &URI.char_unreserved?/1),
        "name" => URI.encode(name, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Manufacturers.V1.Model.Product{}])
  end

  @doc """
  Lists all the products in a Manufacturer Center account.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Manufacturers.V1.Connection.t`) - Connection to server
  *   `parent` (*type:* `String.t`) - Parent ID in the format `accounts/{account_id}`. `account_id` - The ID of the Manufacturer Center account.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:access_token` (*type:* `String.t`) - OAuth access token.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
      *   `:include` (*type:* `list(String.t)`) - The information to be included in the response. Only sections listed here will be returned.
      *   `:pageSize` (*type:* `integer()`) - Maximum number of product statuses to return in the response, used for paging.
      *   `:pageToken` (*type:* `String.t`) - The token returned by the previous request.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Manufacturers.V1.Model.ListProductsResponse{}}` on success
  *   `{:error, info}` on failure
  """
  @spec manufacturers_accounts_products_list(Tesla.Env.client(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.Manufacturers.V1.Model.ListProductsResponse.t()}
          | {:ok, Tesla.Env.t()}
          | {:ok, list()}
          | {:error, any()}
  def manufacturers_accounts_products_list(connection, parent, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :upload_protocol => :query,
      :include => :query,
      :pageSize => :query,
      :pageToken => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v1/{+parent}/products", %{
        "parent" => URI.encode(parent, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Manufacturers.V1.Model.ListProductsResponse{}])
  end

  @doc """
  Inserts or updates the attributes of the product in a Manufacturer Center account. Creates a product with the provided attributes. If the product already exists, then all attributes are replaced with the new ones. The checks at upload time are minimal. All required attributes need to be present for a product to be valid. Issues may show up later after the API has accepted a new upload for a product and it is possible to overwrite an existing valid product with an invalid product. To detect this, you should retrieve the product and check it for issues once the new version is available. Uploaded attributes first need to be processed before they can be retrieved. Until then, new products will be unavailable, and retrieval of previously uploaded products will return the original state of the product.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Manufacturers.V1.Connection.t`) - Connection to server
  *   `parent` (*type:* `String.t`) - Parent ID in the format `accounts/{account_id}`. `account_id` - The ID of the Manufacturer Center account.
  *   `name` (*type:* `String.t`) - Name in the format `{target_country}:{content_language}:{product_id}`. `target_country` - The target country of the product as a CLDR territory code (for example, US). `content_language` - The content language of the product as a two-letter ISO 639-1 language code (for example, en). `product_id` - The ID of the product. For more information, see https://support.google.com/manufacturers/answer/6124116#id.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:access_token` (*type:* `String.t`) - OAuth access token.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
      *   `:body` (*type:* `GoogleApi.Manufacturers.V1.Model.Attributes.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Manufacturers.V1.Model.Empty{}}` on success
  *   `{:error, info}` on failure
  """
  @spec manufacturers_accounts_products_update(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.Manufacturers.V1.Model.Empty.t()}
          | {:ok, Tesla.Env.t()}
          | {:ok, list()}
          | {:error, any()}
  def manufacturers_accounts_products_update(
        connection,
        parent,
        name,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :upload_protocol => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:put)
      |> Request.url("/v1/{+parent}/products/{+name}", %{
        "parent" => URI.encode(parent, &URI.char_unreserved?/1),
        "name" => URI.encode(name, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Manufacturers.V1.Model.Empty{}])
  end
end
