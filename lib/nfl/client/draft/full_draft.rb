module NFL
  class Client
    module Draft
      module FullDraft

        PATH = '/draft/history/fulldraft'

        def draft_full_draft(options={})
          get PATH, options
        end

      end
    end
  end
end
