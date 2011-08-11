module NFL
  class Client
    module Schedules
      module Interactive

        def schedule_interactive(options={})
          get schedule_interactive_path(options)
        end

        private

        def schedule_interactive_path(options={})
          year = options['year']
          "/static/content/schedule-release-xml/#{year}/schedule-release.xml"
        end

      end
    end
  end
end
