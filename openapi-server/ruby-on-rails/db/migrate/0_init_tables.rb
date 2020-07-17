=begin
An example of generating swagger via gRPC ecosystem.

No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 1.0
Contact: none@example.com
Generated by: https://github.com/openapitools/openapi-generator.git

=end

class InitTables < ActiveRecord::Migration
  def change
    create_table "protov1_response".pluralize.to_sym, id: false do |t|
      t.string :code
      t.string :message

      t.timestamps
    end

    create_table "rpc_code".pluralize.to_sym, id: false do |t|

      t.timestamps
    end

    create_table "v1_example_service_query_request".pluralize.to_sym, id: false do |t|
      t.string :id

      t.timestamps
    end

    create_table "v1_example_service_query_response".pluralize.to_sym, id: false do |t|
      t.string :value

      t.timestamps
    end

    create_table "v1_health_check_service_health_check_response".pluralize.to_sym, id: false do |t|
      t.string :value

      t.timestamps
    end

  end
end
