if(instance_exists(obj_Cursor)) {
    with(obj_Cursor) {instance_destroy();}
    targetAquired = false;
    targetShipMaxHull = 0;
    targetShipHull = 0;
    targetShipSpeed = 0;
}
