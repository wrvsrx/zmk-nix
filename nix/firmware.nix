{ lib
, buildSplitKeyboard
, self
}:

buildSplitKeyboard {
  name = "sofle-firmware";

  src = lib.sourceFilesBySuffices self [ ".board" ".cmake" ".conf" ".defconfig" ".dts" ".dtsi" ".json" ".keymap" ".overlay" ".shield" ".yml" "_defconfig" ];

  board = "sofle_%PART%";
  
  shield = "nice_view_adapter nice_view";
  
  zephyrDepsHash = "sha256-AEB4VXd2Q+XWXxVN0753VXoqc0c4Irgcy8A4dpksZ8o=";
}
