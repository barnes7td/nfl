module NFL
  class Client
    module Draft
      module AllTimeNo2

        PATH = '/draft/history/alltimeno2'

        def draft_all_time_no_2(options={})
          get PATH, options
        end

      end
    end
  end
end
