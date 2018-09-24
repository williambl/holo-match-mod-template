using UnityEngine;

public class ExampleMod : HoloMod {

    public string name = "ExampleMod";

    public string version = "v0.1";

    public override void RegisterWeapons(WeaponManager manager) {
        Debug.Log(assetBundles[0].LoadAsset<GameObject>("TestAsset").name);
    }

    public override void RegisterMaps(MapManager manager) {
    }
}
