class Company < ApplicationRecord
  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks

  company_es_settings = {
    index: {
      analysis: {
        filter: {
          autocomplete_filter: {
            type: "ngram",
            min_gram: 1,
            max_gram: 5
          }
        },
        analyzer:{
          autocomplete: {
            type: "custom",
            tokenizer: "standard",
            filter: ["lowercase"]
          }
        }
      }
    }
  }

  settings company_es_settings do
    mapping do
      indexes :name, analyzer: 'autocomplete'
    end
  end


end
