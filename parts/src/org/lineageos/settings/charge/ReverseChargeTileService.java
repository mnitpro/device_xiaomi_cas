/*
* Copyright (C) 2018 The OmniROM Project
*
* This program is free software: you can redistribute it and/or modify
* it under the terms of the GNU General Public License as published by
* the Free Software Foundation, either version 2 of the License, or
* (at your option) any later version.
*
* This program is distributed in the hope that it will be useful,
* but WITHOUT ANY WARRANTY; without even the implied warranty of
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
* GNU General Public License for more details.
*
* You should have received a copy of the GNU General Public License
* along with this program. If not, see <http://www.gnu.org/licenses/>.
*
*/
package org.lineageos.settings.charge;

import android.annotation.TargetApi;
import android.content.Intent;
import android.service.quicksettings.Tile;
import android.service.quicksettings.TileService;

import org.lineageos.settings.utils.FileUtils;

public class ReverseChargeTileService extends TileService {

    private boolean status = false;
    private static final String REVERSE_CHARGE_NODE = "/sys/class/power_supply/wireless/reverse_chg_mode";
    public static ReverseChargeTileService inst;

    private void updateUI(boolean enabled) {
        final Tile tile = getQsTile();
        tile.setState(enabled ? Tile.STATE_ACTIVE : Tile.STATE_INACTIVE);
        tile.updateTile();
    }

    public void updateStatus() {
        try {
            status = Integer.parseInt(FileUtils.readOneLine(REVERSE_CHARGE_NODE)) != 0;
        } catch (Exception e) {
            status = false;
        }
        updateUI(status);
    }

    @Override
    public void onStartListening() {
        super.onStartListening();
        inst = this;
        updateStatus();
    }

    @Override
    public void onStopListening() {
        super.onStopListening();
    }

    @Override
    public void onClick() {
        super.onClick();
        FileUtils.writeLine(REVERSE_CHARGE_NODE, (!status) ? "1" : "0");
        updateStatus();
    }
}
