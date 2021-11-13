Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C21D444F2FC
	for <lists+linux-man@lfdr.de>; Sat, 13 Nov 2021 13:05:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234466AbhKMMIB (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 13 Nov 2021 07:08:01 -0500
Received: from mx1.riseup.net ([198.252.153.129]:56578 "EHLO mx1.riseup.net"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S232651AbhKMMIA (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Sat, 13 Nov 2021 07:08:00 -0500
X-Greylist: delayed 500 seconds by postgrey-1.27 at vger.kernel.org; Sat, 13 Nov 2021 07:08:00 EST
Received: from fews2.riseup.net (fews2-pn.riseup.net [10.0.1.84])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256
         client-signature RSA-PSS (2048 bits) client-digest SHA256)
        (Client CN "mail.riseup.net", Issuer "R3" (not verified))
        by mx1.riseup.net (Postfix) with ESMTPS id 4Hrv943t9ZzDqB1;
        Sat, 13 Nov 2021 03:58:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=riseup.net; s=squak;
        t=1636804680; bh=iGq9121v4R8BAEk0FauWHHXB8XTjk5dZJsMk4CIHjxs=;
        h=Date:From:To:Cc:Subject:From;
        b=Qtf1vOe03744BNnHRmcSanM3nXfC9RSRtqN8wdvZGqLejTirjcI9EdkeEwiIzJOFO
         ab2OulwpxptrSlwA5W75s1bZ0zPM2ljhfcOwwkI5sXwkuZNgvAnW27U1gmx3EWIoAH
         5KLzYjVpedDSRdZxXtps3qHXLRaVH1rROfiwFOtQ=
X-Riseup-User-ID: 0E5279618675BF02E89BB5CA046D36246908B21BEC846C1AD39CBF8C7C93EAE3
Received: from [127.0.0.1] (localhost [127.0.0.1])
         by fews2.riseup.net (Postfix) with ESMTPSA id 4Hrv922l09z1yW3;
        Sat, 13 Nov 2021 03:57:57 -0800 (PST)
Date:   Sat, 13 Nov 2021 11:58:08 +0000
From:   Samanta Navarro <ferivoz@riseup.net>
To:     linux-man@vger.kernel.org
Cc:     alx.manpages@gmail.com, mtk.manpages@gmail.com
Subject: [patch] futex.2, mount_setattr.2, proc.5, netlink.7, tcp.7: tfix
Message-ID: <20211113115808.zzvid3gla4r33kc4@localhost>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Typos found with codespell.

Signed-off-by: Samanta Navarro <ferivoz@riseup.net>
---
 man2/futex.2         | 2 +-
 man2/mount_setattr.2 | 2 +-
 man5/proc.5          | 4 ++--
 man7/netlink.7       | 2 +-
 man7/tcp.7           | 2 +-
 5 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/man2/futex.2 b/man2/futex.2
index 1dd77ac..7210030 100644
--- a/man2/futex.2
+++ b/man2/futex.2
@@ -1137,7 +1137,7 @@ except that the clock against which
 is measured is selectable.
 By default, the (absolute) timeout specified in
 .I timeout
-is measured againt the
+is measured against the
 .B CLOCK_MONOTONIC
 clock, but if the
 .B FUTEX_CLOCK_REALTIME
diff --git a/man2/mount_setattr.2 b/man2/mount_setattr.2
index 77233f5..ca56256 100644
--- a/man2/mount_setattr.2
+++ b/man2/mount_setattr.2
@@ -986,7 +986,7 @@ main(int argc, char *argv[])
 .\"     because. Because making assumptions about the current working directory
 .\"     of the calling process is just too easy to get wrong; especially when
 .\"     pivot_root() or chroot() are in play.
-.\"     My absolut preference (joke intended) is to open a well-known starting
+.\"     My absolute preference (joke intended) is to open a well-known starting
 .\"     point with an absolute path to get a dirfd and then scope all future
 .\"     operations beneath that dirfd. This already works with old-style
 .\"     openat() and _very_ cautious programming but openat2() and its
diff --git a/man5/proc.5 b/man5/proc.5
index c668462..3f16dcd 100644
--- a/man5/proc.5
+++ b/man5/proc.5
@@ -3068,7 +3068,7 @@ Further information about the zones can be found in
 .IR /proc/zoneinfo .
 .TP
 .I /proc/bus
-Contains subdirectories for installed busses.
+Contains subdirectories for installed buses.
 .TP
 .I /proc/bus/pccard
 Subdirectory for PCMCIA devices when
@@ -3079,7 +3079,7 @@ is set at kernel compilation time.
 .TP
 .I /proc/bus/pci
 Contains various bus subdirectories and pseudo-files containing
-information about PCI busses, installed devices, and device
+information about PCI buses, installed devices, and device
 drivers.
 Some of these files are not ASCII.
 .TP
diff --git a/man7/netlink.7 b/man7/netlink.7
index 6b04fea..2991ec7 100644
--- a/man7/netlink.7
+++ b/man7/netlink.7
@@ -191,7 +191,7 @@ structure,
 .B NLMSG_DONE
 message terminates a multipart message.
 Error messages get the
-original request appened, unless the user requests to cap the
+original request appended, unless the user requests to cap the
 error message, and get extra error data if requested.
 .PP
 .in +4n
diff --git a/man7/tcp.7 b/man7/tcp.7
index 0a7c61a..8a871fc 100644
--- a/man7/tcp.7
+++ b/man7/tcp.7
@@ -1161,7 +1161,7 @@ This option takes an
 as an argument.
 When the value is greater than 0,
 it specifies the maximum amount of time in milliseconds that transmitted
-data may remain unacknowledged, or bufferred data may remain untransmitted
+data may remain unacknowledged, or buffered data may remain untransmitted
 (due to zero window size) before TCP will forcibly close the
 corresponding connection and return
 .B ETIMEDOUT
-- 
2.33.1

