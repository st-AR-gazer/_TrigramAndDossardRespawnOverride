int counter = 0;

void Dossard() {
    CTrackMania@ app = cast<CTrackMania>(GetApp());
    if (app !is null) {
        auto playground = cast<CSmArenaClient>(app.CurrentPlayground);

        if (playground !is null && playground.Arena.Players.Length > 0) {
            auto script = cast<CSmScriptPlayer>(playground.Arena.Players[0].ScriptAPI);

            if (script !is null) {

                if (test) {
                    print(script.CurrentRaceTime);
                }

                
                if (script.CurrentRaceTime <= 0) {
                    counter++;
                    string counterStr = "" + counter;
                    print(counterStr);
                }
            
                

                script.Dossard_Trigram = Trigram;
                
                if (script.Dossard_Trigram != "") {
                    print(script.Dossard_Trigram);
                }
                
            }
        }
    }
}