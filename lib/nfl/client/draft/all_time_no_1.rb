module NFL
  class Client
    module Draft
      module AllTimeNo1

        PATH = '/draft/history/alltimeno1'

        def draft_all_time_no_1(options={})
          get PATH, options
        end

      end
    end
  end
end
