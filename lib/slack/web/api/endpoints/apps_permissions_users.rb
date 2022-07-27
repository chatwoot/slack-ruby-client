# frozen_string_literal: true
# This file was auto-generated by lib/tasks/web.rake

module Slack
  module Web
    module Api
      module Endpoints
        module AppsPermissionsUsers
          #
          # Returns list of user grants and corresponding scopes this app has on a team.
          #
          # @option options [Object] :cursor
          #   Paginate through collections of data by setting the cursor parameter to a next_cursor attribute returned by a previous request's response_metadata. Default value fetches the first "page" of the collection. See pagination for more detail.
          # @option options [Object] :limit
          #   The maximum number of items to return.
          # @see https://api.slack.com/methods/apps.permissions.users.list
          # @see https://github.com/slack-ruby/slack-api-ref/blob/master/methods/apps.permissions.users/apps.permissions.users.list.json
          def apps_permissions_users_list(options = {})
            if block_given?
              Pagination::Cursor.new(self, :apps_permissions_users_list, options).each do |page|
                yield page
              end
            else
              post('apps.permissions.users.list', options)
            end
          end

          #
          # Enables an app to trigger a permissions modal to grant an app access to a user access scope.
          #
          # @option options [Object] :scopes
          #   A comma separated list of user scopes to request for.
          # @option options [Object] :trigger_id
          #   Token used to trigger the request.
          # @option options [user] :user
          #   The user this scope is being requested for.
          # @see https://api.slack.com/methods/apps.permissions.users.request
          # @see https://github.com/slack-ruby/slack-api-ref/blob/master/methods/apps.permissions.users/apps.permissions.users.request.json
          def apps_permissions_users_request(options = {})
            raise ArgumentError, 'Required arguments :scopes missing' if options[:scopes].nil?
            raise ArgumentError, 'Required arguments :trigger_id missing' if options[:trigger_id].nil?
            raise ArgumentError, 'Required arguments :user missing' if options[:user].nil?
            options = options.merge(user: users_id(options)['user']['id']) if options[:user]
            post('apps.permissions.users.request', options)
          end
        end
      end
    end
  end
end
