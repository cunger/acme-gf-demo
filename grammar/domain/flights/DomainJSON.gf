concrete DomainJSON of Domain = CoreJSON ** {

    lin

        flight  = null;
        airport = null;

        cheap  = set "price"    (quotes "cheap");
        early  = set "time"     (quotes "early");
        late   = set "time"     (quotes "late");
        direct = set "maxStops" (quotes "0");

        book   = null;

        travel = null;
        fly    = null;
        shop   = set "activity" (quotes "shopping");

        visit       np = set "destination" np.json; 

        source      np = set "source" np.json;
        destination np = set "destination" np.json;
        location    np = set "destination" np.json;

        near np = set "near" np.json;

}
