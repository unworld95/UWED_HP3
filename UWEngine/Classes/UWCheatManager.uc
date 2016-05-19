class UWCheatManager extends CheatManager;

var string ProjectSpecificPackage;

exec function FocusOn(optional class < actor > aClass, optional bool bQuiet) {
    local HUD H;
    foreach allactors(class 'HUD', H)
    {
        H.bShowDebugInfo = true;
        H.bPortalDebugView = true;
    }
    if (aClass != None) 
        ViewClass(aClass, bQuiet);
}
exec function FocusOff() {
    local HUD H;
    foreach allactors(class 'HUD', H)
    H.bPortalDebugView = false;
}

exec function ViewTag(name TagName) {
    local Actor A;
    foreach allactors(class 'Actor', A, TagName)
    {
        SetViewTarget(A);
        bBehindView = true;
        HandleViewTargetCam(ViewTarget);
        return;
    }
}

function HandleViewTargetCam(actor ViewTarget);