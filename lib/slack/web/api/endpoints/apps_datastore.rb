# frozen_string_literal: true
# This file was auto-generated by lib/tasks/web.rake

module Slack
  module Web
    module Api
      module Endpoints
        module AppsDatastore
          #
          # Delete an item from a datastore
          #
          # @option options [string] :datastore
          #   name of the datastore.
          # @option options [string] :id
          #   item id.
          # @option options [Object] :app_id
          #   .
          # @see https://api.slack.com/methods/apps.datastore.delete
          # @see https://github.com/slack-ruby/slack-api-ref/blob/master/methods/apps.datastore/apps.datastore.delete.json
          def apps_datastore_delete(options = {})
            raise ArgumentError, 'Required arguments :datastore missing' if options[:datastore].nil?
            raise ArgumentError, 'Required arguments :id missing' if options[:id].nil?
            post('apps.datastore.delete', options)
          end

          #
          # Get an item from a datastore
          #
          # @option options [string] :datastore
          #   name of the datastore.
          # @option options [string] :id
          #   item id.
          # @option options [Object] :app_id
          #   .
          # @see https://api.slack.com/methods/apps.datastore.get
          # @see https://github.com/slack-ruby/slack-api-ref/blob/master/methods/apps.datastore/apps.datastore.get.json
          def apps_datastore_get(options = {})
            raise ArgumentError, 'Required arguments :datastore missing' if options[:datastore].nil?
            raise ArgumentError, 'Required arguments :id missing' if options[:id].nil?
            post('apps.datastore.get', options)
          end

          #
          # Creates a new item, or replaces an old item with a new item.
          #
          # @option options [string] :datastore
          #   name of the datastore.
          # @option options [object] :item
          #   attribute names and values of the item.
          # @option options [Object] :app_id
          #   .
          # @see https://api.slack.com/methods/apps.datastore.put
          # @see https://github.com/slack-ruby/slack-api-ref/blob/master/methods/apps.datastore/apps.datastore.put.json
          def apps_datastore_put(options = {})
            raise ArgumentError, 'Required arguments :datastore missing' if options[:datastore].nil?
            raise ArgumentError, 'Required arguments :item missing' if options[:item].nil?
            post('apps.datastore.put', options)
          end

          #
          # Query a datastore for items
          #
          # @option options [string] :datastore
          #   Name of the datastore.
          # @option options [Object] :app_id
          #   Required if calling with user token.
          # @option options [string] :cursor
          #   Set cursor to next_cursor returned by the previous call to list items in the next page.
          # @option options [string] :expression
          #   A query filter expression https://api.slack.com/future/datastores.
          # @option options [object] :expression_attributes
          #   A map of attributes referenced in expression.
          # @option options [object] :expression_values
          #   A map of values referenced in expression.
          # @option options [integer] :limit
          #   The maximum number of items to evaluate for a given request (not necessarily the number of matching items). If the given request dataset size exceeds 1 MB before reaching the limit, the returned item count will likely be less than the limit. In any case where there are more items available beyond an imposed limit, a next_cursor value will be provided for use in subsequent requests.
          # @see https://api.slack.com/methods/apps.datastore.query
          # @see https://github.com/slack-ruby/slack-api-ref/blob/master/methods/apps.datastore/apps.datastore.query.json
          def apps_datastore_query(options = {})
            raise ArgumentError, 'Required arguments :datastore missing' if options[:datastore].nil?
            if block_given?
              Pagination::Cursor.new(self, :apps_datastore_query, options).each do |page|
                yield page
              end
            else
              post('apps.datastore.query', options)
            end
          end

          #
          # Edits an existing item's attributes, or adds a new item if it does not already exist.
          #
          # @option options [string] :datastore
          #   name of the datastore.
          # @option options [object] :item
          #   attribute names and values to be updated.
          # @option options [Object] :app_id
          #   .
          # @see https://api.slack.com/methods/apps.datastore.update
          # @see https://github.com/slack-ruby/slack-api-ref/blob/master/methods/apps.datastore/apps.datastore.update.json
          def apps_datastore_update(options = {})
            raise ArgumentError, 'Required arguments :datastore missing' if options[:datastore].nil?
            raise ArgumentError, 'Required arguments :item missing' if options[:item].nil?
            post('apps.datastore.update', options)
          end
        end
      end
    end
  end
end