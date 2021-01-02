Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6D8AF2E878D
	for <lists+linux-man@lfdr.de>; Sat,  2 Jan 2021 15:04:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726603AbhABOED (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 2 Jan 2021 09:04:03 -0500
Received: from mail.kernel.org ([198.145.29.99]:43602 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726575AbhABOED (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Sat, 2 Jan 2021 09:04:03 -0500
Received: by mail.kernel.org (Postfix) with ESMTPSA id 5C04A22482;
        Sat,  2 Jan 2021 14:03:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1609596202;
        bh=FXW78093m+NqPw2kfjO/uQotBcAzpsG2ARVVk0n0lDs=;
        h=From:To:Subject:Date:From;
        b=NqAI3SedwNV35mdF90kaGyXaoc5XyLwDMvzOIrXbiSoBk10Wmfgmb09VzJkm7pg47
         hGpdPurqMbehtThz/IWll1lWfI2OUz2CQQbV0ifYsWPIuwshY6apZrNCewbYBEqIUe
         D3xPxH4VEg9GTZOw54eoZWbTMc26Nmt52atvk1dpXmzT6pgYj+kfPUWi6rZ9UIwkrl
         rlOkXiIfoQwL5sc7gcy0ZJhaf1v8bgFubWXZ8bmuBWy89nY6/j/RkxJxTrIscFXXiL
         TKjWALvUe1Ig5bvkDJ4KpuucAccXsr5OWrwzxCjYnIc0XwWHwDaTAvCi8mA9DYdmQU
         FcVCGmYVF+IwA==
Received: by pali.im (Postfix)
        id 05264A38; Sat,  2 Jan 2021 15:03:19 +0100 (CET)
From:   =?UTF-8?q?Pali=20Roh=C3=A1r?= <pali@kernel.org>
To:     linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Subject: [PATCH] netdevice.7: Update documentation for SIOCGIFADDR SIOCSIFADDR SIOCDIFADDR
Date:   Sat,  2 Jan 2021 15:02:54 +0100
Message-Id: <20210102140254.16714-1-pali@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Also add description for struct in6_ifreq which is used for IPv6 addresses.

SIOCSIFADDR and SIOCDIFADDR can be used to add or delete IPv6 address and
pppd is using these ioctls for a long time. Surprisingly SIOCDIFADDR cannot
be used for deleting IPv4 address but only for IPv6 addresses.

Signed-off-by: Pali Rohár <pali@kernel.org>
---
 man7/netdevice.7 | 36 +++++++++++++++++++++++++++++-------
 1 file changed, 29 insertions(+), 7 deletions(-)

diff --git a/man7/netdevice.7 b/man7/netdevice.7
index 488e83d9a..5b68e4988 100644
--- a/man7/netdevice.7
+++ b/man7/netdevice.7
@@ -55,9 +55,27 @@ struct ifreq {
 .EE
 .in
 .PP
+Exception is
+.B AF_INET6
+socket for which is used
+.I in6_ifreq
+structure:
+.PP
+.in +4n
+.EX
+struct in6_ifreq {
+    struct in6_addr     ifr6_addr;
+    u32                 ifr6_prefixlen;
+    int                 ifr6_ifindex; /* Interface index */
+};
+.EE
+.in
+.PP
 Normally, the user specifies which device to affect by setting
 .I ifr_name
-to the name of the interface.
+to the name of the interface or
+.I ifr6_ifindex
+to the index of the interface.
 All other members of the structure may
 share memory.
 .SS Ioctls
@@ -142,13 +160,17 @@ IFF_ISATAP:Interface is RFC4214 ISATAP interface.
 .PP
 Setting the extended (private) interface flags is a privileged operation.
 .TP
-.BR SIOCGIFADDR ", " SIOCSIFADDR
-Get or set the address of the device using
-.IR ifr_addr .
-Setting the interface address is a privileged operation.
-For compatibility, only
+.BR SIOCGIFADDR ", " SIOCSIFADDR ", " SIOCDIFADDR
+Get, set or delete the address of the device using
+.IR ifr_addr " or " ifr6_addr " with " ifr6_prefixlen .
+Setting or deleting the interface address is a privileged operation.
+For compatibility,
+.BR SIOCGIFADDR " returns only " AF_INET " addresses, "
+.BR SIOCSIFADDR " accepts " AF_INET " and " AF_INET6 " addresses and "
+.BR SIOCDIFADDR " deletes only " AF_INET6 " addresses. "
 .B AF_INET
-addresses are accepted or returned.
+address can be deleted by setting zero address via
+.BR SIOCSIFADDR .
 .TP
 .BR SIOCGIFDSTADDR ", " SIOCSIFDSTADDR
 Get or set the destination address of a point-to-point device using
-- 
2.20.1

