require('which-key').setup {
    window = {
        border = 'single'
    },
    layout = {
        align = 'center'
    }
}
require('which-key').register({
        f = 'Files',
        b = 'Buffers',
        g = 'Grep',
        t = 'Tree',
        l = {
            name = 'Language',
	    d = 'Definition',
	    D = 'Declaration',
	    i = 'Implementation',
	    t = 'Type',
	    r = 'Rename',
	    R = 'References',
	    a = 'Action',
	    f = 'Formatting',
	    s = {
		name = 'Status',
		s = 'Status',
		i = 'Info',
		x = 'Start',
		k = 'Stop',
		r = 'Restart'
	    }
        },
        p = {
            name = 'Packer',
            s = 'Status',
            S = 'Sync',
            c = 'Clean',
            i = 'Install',
            u = 'Update'
        },
	c = {
	    name = 'Config',
	    i = 'init.vim',
	    l = 'lua/'
	}
    }, { prefix = '<leader>' }
)

