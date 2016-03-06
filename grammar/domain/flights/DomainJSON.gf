concrete DomainJSON of Domain = CoreJSON ** {

    lin

        flight  = null;
        airport = null;

        cheap  = set "maxPrice" (quotes "cheap");
        early  = set "permittedDepartureTime" (quotes "early");
        late   = set "permittedDepartureTime" (quotes "late");
        direct = set "maxStops" (quotes "0");

        book   = null;

        travel = null;
        fly    = null;
        shop   = set "activity" (quotes "shopping");

        visit       np = set "destination" np.json;

        source      np = set "origin" np.json;
        destination np = set "destination" np.json;
        location    np = set "destination" np.json;

        near np = set "near" np.json;

}
