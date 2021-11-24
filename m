Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B453545B98B
	for <lists+linux-man@lfdr.de>; Wed, 24 Nov 2021 12:59:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241496AbhKXMCb (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 24 Nov 2021 07:02:31 -0500
Received: from mx1.riseup.net ([198.252.153.129]:48148 "EHLO mx1.riseup.net"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S231266AbhKXMCa (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Wed, 24 Nov 2021 07:02:30 -0500
Received: from fews2.riseup.net (fews2-pn.riseup.net [10.0.1.84])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256
         client-signature RSA-PSS (2048 bits) client-digest SHA256)
        (Client CN "mail.riseup.net", Issuer "R3" (not verified))
        by mx1.riseup.net (Postfix) with ESMTPS id 4HzfgY1XfpzDs8b;
        Wed, 24 Nov 2021 03:59:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=riseup.net; s=squak;
        t=1637755161; bh=Pwb3X6P/gQCUC1KDHO0Exj7bKmA9GSVPtEh5E1w2g7w=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=B7S5JFv/+b0VGhv86TpfQPYbEPjlR2iSCDXNN7WaJH+N1+X5ta9nXb0YRKOVHszWy
         1AYuRrDTFoC5QmJIjHbgPl2bMe7HJdcGVsHmOzuJcBCpgamgYnQeB22wdh/HBhuWEy
         CzyOaBgbCPSIoUE0xNjiM4yKVS2wwLfNTWk//KQM=
X-Riseup-User-ID: F922E6BDD557F240CB1D6719E9EFD417D18A3B3DD13F630A8766122314F4EA9F
Received: from [127.0.0.1] (localhost [127.0.0.1])
         by fews2.riseup.net (Postfix) with ESMTPSA id 4HzfgW3m6Rz1xmv;
        Wed, 24 Nov 2021 03:59:19 -0800 (PST)
Date:   Wed, 24 Nov 2021 11:59:27 +0000
From:   Samanta Navarro <ferivoz@riseup.net>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, mtk.manpages@gmail.com,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
Subject: Re: [patch] futex.2, mount_setattr.2, proc.5, netlink.7, tcp.7: tfix
Message-ID: <20211124115927.xiystsyk7epocm4m@localhost>
References: <20211113115808.zzvid3gla4r33kc4@localhost>
 <20211113124154.lazhqkb6qms7mpbo@localhost.localdomain>
 <5f765ff0-59a2-7a54-873c-4632eed575d9@gmail.com>
 <4751a894-0114-f34d-f5fb-69f398a17373@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <4751a894-0114-f34d-f5fb-69f398a17373@gmail.com>
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
2.34.0

