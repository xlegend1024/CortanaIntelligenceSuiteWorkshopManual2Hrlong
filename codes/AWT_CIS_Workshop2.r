ds.theresults <- maml.mapInputPort(1)

# remove a couple columns
ds.theresults$AIRPORT_ID <- NULL
ds.theresults$DISPLAY_AIRPORT_NAME <- NULL

# rename a couple columns
colnames(ds.theresults)[colnames(ds.theresults) == 'LATITUDE'] <- 'OriginLatitude'
colnames(ds.theresults)[colnames(ds.theresults) == 'LONGITUDE'] <- 'OriginLongitude'

maml.mapOutputPort("ds.theresults");