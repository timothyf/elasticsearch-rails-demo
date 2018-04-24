class CompaniesController < ApplicationController
  def index
    response = Company.search(
      query: {
        bool: {
          must: [
            { match: { name: {query: params[:query], fuzziness: params[:fuzzy]} } },
          ]
        }
      }
    ).results



    render json: {
      results: response.results,
      total: response.total
    }
  end
end
