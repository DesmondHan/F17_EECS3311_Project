note
	description: ""
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	ETF_GREATER_THAN
inherit 
	ETF_GREATER_THAN_INTERFACE
		redefine greater_than end
create
	make
feature -- command 
	greater_than
    	do
			-- perform some update on the model state
			model.default_update
			etf_cmd_container.on_change.notify ([Current])
    	end

end
