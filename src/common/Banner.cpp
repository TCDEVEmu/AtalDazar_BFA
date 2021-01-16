/*
 * This file is part of the TrinityCore Project. See AUTHORS file for Copyright information.
 *
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of the GNU General Public License as published by the
 * Free Software Foundation; either version 2 of the License, or (at your
 * option) any later version.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
 * FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for
 * more details.
 *
 * You should have received a copy of the GNU General Public License along
 * with this program. If not, see <http://www.gnu.org/licenses/>.
 */

#include "Banner.h"
#include "GitRevision.h"
#include "StringFormat.h"

void Trinity::Banner::Show(char const* applicationName, void(*log)(char const* text), void(*logExtraInfo)())
{
    log(" ");
    log(Trinity::StringFormat("%s (%s)", GitRevision::GetFullVersion(), applicationName).c_str());
    log("<Ctrl-C> to stop.\n");
    log("88888888                         88            88                  ");
    log("//////88                         /88           /88                 ");
    log("     88    888888   8888888      /88  888888   /88  888888   888888");
    log("    88    //////88 //88///88  888888 //////88  /88 //////88 //88//8");
    log("   88      8888888  /88  /88 88///88  8888888  /88  8888888  /88 / ");
    log("  88      88////88  /88  /88/88  /88 88////88  /88 88////88  /88   ");
    log(" 88888888//88888888 888  /88//888888//88888888 888//88888888/888   ");
    log("////////  //////// ///   //  //////  //////// ///  //////// ///    ");
    log("                  The Zandalar Project-2020     ");
    log("  Based on Ashamane, with credit to their team and contributions.  ");
    log("        *Discord>>>> https://discord.gg/4cPgKP6Z <<<< Join         ");
    log(" ");
    if (logExtraInfo)
        logExtraInfo();
}
