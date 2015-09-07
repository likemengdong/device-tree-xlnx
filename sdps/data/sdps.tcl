#
# (C) Copyright 2014-2015 Xilinx, Inc.
#
# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License as
# published by the Free Software Foundation; either version 2 of
# the License, or (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
# GNU General Public License for more details.
#

proc generate {drv_handle} {
    set ip [get_cells -hier $drv_handle]
    set clk_freq [hsi::utils::get_ip_param_value $ip C_SDIO_CLK_FREQ_HZ]
    set_property CONFIG.clock-frequency "$clk_freq" $drv_handle
}


