global with sharing class SiteLoginController {
    global String username {get; set;}
    global String password {get; set;}

    global PageReference login() {
        String startUrl = '/apex/StdSelfServiceHome';
        return Site.login(username, password, startUrl);
    }

    global SiteLoginController () {}    
}