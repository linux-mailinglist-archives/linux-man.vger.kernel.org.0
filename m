Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8F11C2E883D
	for <lists+linux-man@lfdr.de>; Sat,  2 Jan 2021 19:41:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726628AbhABSkv (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 2 Jan 2021 13:40:51 -0500
Received: from mail.kernel.org ([198.145.29.99]:40696 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726627AbhABSkv (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Sat, 2 Jan 2021 13:40:51 -0500
Received: by mail.kernel.org (Postfix) with ESMTPSA id 299B52054F;
        Sat,  2 Jan 2021 18:40:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1609612810;
        bh=gjqg62rvqVpRpygKPvpVuvfZq+FugvdRazzPgkwwZds=;
        h=From:To:Subject:Date:In-Reply-To:References:From;
        b=jV5bAvUP3yPir+NFeneTfSya4YADfnX+MrIOkOUULP+Mw9TKlZ7OLS2IqKK6w/e32
         3GVgT3FJjRdZK7iwN1pXZf3juSMj5OfccJWlLlvnlxwxI/NPEs5P4wXehQUlz0OZkQ
         nBKe8LG7Gruv5+8a12h/vy7RK7SzUxEH+ejke35Epx0bt4l4TJ7QIseCjngNi8DWUS
         xbQ+TGUhwEz/TlayV6t+6XXN/3qrVZFhiDebnvjTSQLleIof9oCMZl5s9fJHIjDeKb
         UFSq4GEDzXkh9hIVw05bbvCm0yL1QeE6LF6xY+Jo41Jcur31tXpsURFjMquGKM+6OQ
         GhijIvOofKRLw==
Received: by pali.im (Postfix)
        id DF140A38; Sat,  2 Jan 2021 19:40:07 +0100 (CET)
From:   =?UTF-8?q?Pali=20Roh=C3=A1r?= <pali@kernel.org>
To:     linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Subject: [PATCH v2] netdevice.7: Update documentation for SIOCGIFADDR SIOCSIFADDR SIOCDIFADDR
Date:   Sat,  2 Jan 2021 19:39:52 +0100
Message-Id: <20210102183952.4155-1-pali@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210102140254.16714-1-pali@kernel.org>
References: <20210102140254.16714-1-pali@kernel.org>
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
 man7/netdevice.7 | 50 +++++++++++++++++++++++++++++++++++++++++-------
 1 file changed, 43 insertions(+), 7 deletions(-)

diff --git a/man7/netdevice.7 b/man7/netdevice.7
index 488e83d9a..12f94bfd7 100644
--- a/man7/netdevice.7
+++ b/man7/netdevice.7
@@ -55,9 +55,26 @@ struct ifreq {
 .EE
 .in
 .PP
+AF_INET6 is an exception.
+It passes an
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
@@ -142,13 +159,32 @@ IFF_ISATAP:Interface is RFC4214 ISATAP interface.
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
+.IR ifr_addr ,
+or
+.I ifr6_addr
+with
+.IR ifr6_prefixlen .
+Setting or deleting the interface address is a privileged operation.
+For compatibility,
+.B SIOCGIFADDR
+returns only
 .B AF_INET
-addresses are accepted or returned.
+addresses,
+.B SIOCSIFADDR
+accepts
+.B AF_INET
+and
+.B AF_INET6
+addresses and
+.B SIOCDIFADDR
+deletes only
+.B AF_INET6
+addresses.
+.B AF_INET
+address can be deleted by setting zero address via
+.BR SIOCSIFADDR .
 .TP
 .BR SIOCGIFDSTADDR ", " SIOCSIFDSTADDR
 Get or set the destination address of a point-to-point device using
-- 
2.20.1

