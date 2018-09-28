if [ ! -d $1 ]
then
    echo Path to holomatch_data:
    read data_dir
else
    data_dir=$1
fi

mcs `find ./holo-match-mod-template/Assets/Scripts/ -name *.cs -print | tr '\n' ' '` -out:ExampleMod.dll -target:library -r:$data_dir/Managed/Assembly-CSharp.dll -r:$data_dir/Managed/UnityEngine.dll -r:$data_dir/Managed/UnityEngine.Networking.dll -r:$data_dir/Managed/UnityEngine.CoreModule.dll -r:$data_dir/Managed/UnityEngine.AssetBundleModule.dll
