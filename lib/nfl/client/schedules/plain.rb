module NFL
  class Client
    module Schedules
      module Plain

        PATH = '/schedules'

        def schedule_plain(options={})
          get PATH, options
        end

      end
    end
  end
end
