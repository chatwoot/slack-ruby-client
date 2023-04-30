# frozen_string_literal: true
# This file was auto-generated by lib/tasks/web.rake

module Slack
  module Cli
    class App
      desc 'FunctionsWorkflowsSteps methods.'
      command 'functions_workflows_steps' do |g|
        g.desc "List the steps of a specific function of a workflow's versions"
        g.long_desc %( List the steps of a specific function of a workflow's versions )
        g.command 'list' do |c|
          c.flag 'function_id', desc: 'The ID of the function to query.'
          c.flag 'workflow', desc: 'The workflow encoded ID or workflow reference.'
          c.flag 'workflow_app_id', desc: 'The app tied to the workflow reference.'
          c.flag 'workflow_id', desc: 'The workflow ID, starts with Wf*.'
          c.action do |_global_options, options, _args|
            puts JSON.dump(@client.functions_workflows_steps_list(options))
          end
        end
      end
    end
  end
end
