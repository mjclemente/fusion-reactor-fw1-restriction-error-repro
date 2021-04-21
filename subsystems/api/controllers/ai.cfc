component accessors="true" {

  property fw;

  function parse_legacy( rc, headers ) {
    sleep(32*1000);

    variables.fw.renderData().data( { "message": "Did you get the timeout alert email?" } ).type( "json" ).statusCode( 200 );
    return;
  }

}
