void Render() {
    CTrackMania@ app = cast<CTrackMania>(GetApp());
    if (app !is null) {
        auto playground = cast<CSmArenaClient>(app.CurrentPlayground);

        if (playground !is null && playground.Arena.Players.Length > 0) {
            auto script = cast<CSmScriptPlayer>(playground.Arena.Players[0].ScriptAPI);

            if (script !is null) {
                
                Dossard();
                
            }
        }
    }
}