extends MonologueProcessLogic


func process(_ctx: MonologueContext, node: Dictionary) -> MonologueProcessResult:
	# TODO: Play audio
	
	return MonologueProcessResult.continue_process(node.get("NextID"))
