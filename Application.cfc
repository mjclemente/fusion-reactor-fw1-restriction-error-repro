component extends="framework.one" output="false" {
	this.applicationTimeout = createTimeSpan(0, 2, 0, 0);
	this.setClientCookies = true;
	this.sessionManagement = true;
	this.sessionTimeout = createTimeSpan(0, 0, 30, 0);

	// FW/1 settings
	variables.framework = {
		action = 'action',
		defaultSection = 'main',
		defaultItem = 'default',
        subsystemsFolder: "subsystems",
		error = 'main.error',
		diEngine = 'di1',
		diComponent = 'framework.ioc',
		diLocations = 'model, controllers',
        diConfig = { },
        routes = [
          {
            "$GET/api/ai/parse_legacy" = "/api:ai/parse_legacy",
            pathRoot = '/api'
          },

          {
            "/api/*" = "/api:main/missing",
            pathRoot = '/api'
          }
        ],
        subsystems = {
        	api = { }
        }
	};

	public void function setupSession() { }

	public void function setupRequest() { }

	public void function setupView() { }

	public void function setupSubsystem() { }

	public void function setupResponse() { }

	public string function onMissingView(struct rc = {}) {
		return "Error 404 - Page not found. #getSubsystemSectionAndItem()#";
	}
}
