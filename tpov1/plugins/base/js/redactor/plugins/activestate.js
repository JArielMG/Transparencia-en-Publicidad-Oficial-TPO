if (!RedactorPlugins) var RedactorPlugins = {};
 
RedactorPlugins.advanced = function()
{
    return {
        init: function ()
        {
            var button = this.button.add('activestate', 'Active State');
            this.button.setAwesome('activestate', 'fa-flag');
 
            this.button.addCallback(button, this.advanced.testButton);
 
            // add active state
            this.observe.addButton('pre', 'activestate');
 
        },
        testButton: function()
        {
            this.block.format('pre');
        }
    };
};
