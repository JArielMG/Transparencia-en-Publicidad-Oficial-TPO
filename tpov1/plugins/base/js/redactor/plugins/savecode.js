if (!RedactorPlugins) var RedactorPlugins = {};
 
RedactorPlugins.savecode = function()
{
    return {
        save: function()
        {
            var html = this.code.get();
            console.log(html);
        }
    };
};
