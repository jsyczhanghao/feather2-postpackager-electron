var globalRequire$ = require;
{{#featherjs#}}
(function(){
    var async = require.async;
    var oldRequire = require;

    window.require = define.Module.require = function(id){
        var pkg;

        try{
            pkg = globalRequire$(id);
        }catch(e){}

        if(pkg){
            return pkg;
        }

        return oldRequire(id);
    };

    for(var i in oldRequire){
        window.require[i] = oldRequire[i];
    }
})();