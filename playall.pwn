CMD:playall(playerid, params[])
{
    if (pData[playerid][pAdmin] < 5)
        return PermissionError(playerid);

    if (isnull(params))
        return Usage(playerid, "/playall [Link]");

    new i;
    for (i = 0; i < MAX_PLAYERS; i++)
    {
        if (IsPlayerConnected(i))
            PlayAudioStreamForPlayer(i, params);
    }

    return 1;
}
