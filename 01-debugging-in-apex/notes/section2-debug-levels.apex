/*
    Each debug level profile includes one of the following log levels for each log category.
    The levels are listed from lowest to highest. 
    Specific events are logged based on the combination of category and levels. 
    Most events start being logged at the INFO level. 
    The level is cumulative, that is, if you select FINE, the log also includes all events logged at the DEBUG, INFO, WARN, and ERROR levels.
*/
System.debug(logginglevel.NONE, 'NONE Test');       //NONE—No logging
System.debug(logginglevel.ERROR, 'ERROR Test');     //ERROR—Error and exception logging.
System.debug(logginglevel.WARN, 'WARN Test');       //WARN—Warning logging.
System.debug(logginglevel.INFO, 'INFO Text');       //INFO—Informational logging
System.debug(logginglevel.DEBUG, 'DEBUG Text');     //DEBUG—User-specified logging.
System.debug(logginglevel.FINE, 'FINE Text');       //FINE—High level of logging
System.debug(logginglevel.FINER, 'FINER Text');     //FINER—Higher level of logging than FINE.
System.debug(logginglevel.FINEST, 'FINEST Text');   //FINEST—Highest level of logging

/*
     Before running a deployment, verify that the Apex Code log level isn’t set to FINEST. Otherwise, the deployment is likely to take longer than expected. 
     If the Developer Console is open, the log levels in the Developer Console affect all logs, including logs created during a deployment.
*/
