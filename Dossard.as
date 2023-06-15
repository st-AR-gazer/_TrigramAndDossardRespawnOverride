int lastRunTime = 0;
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

                int currentTime = script.StartTime;
                
                if (currentTime - lastRunTime >= 500) {
                    if (script.CurrentRaceTime <= 0) {
                        counter++;
                        string counterStr = "" + counter;
                        print(counterStr);
                        lastRunTime = currentTime;
                    }
                }

                string Trigram = "" + counter;

                script.Dossard_Trigram = Trigram;

                

            }
        }
    }
}