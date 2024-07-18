-- NOTE: broken with Win
-- TODO: fix or remove
return {
	{
		"gennaro-tedesco/nvim-jqx",
		event = {"BufReadPost"},
		ft = { "json", "yaml" },
	},
}
