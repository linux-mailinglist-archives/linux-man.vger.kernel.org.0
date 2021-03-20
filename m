Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0332034296D
	for <lists+linux-man@lfdr.de>; Sat, 20 Mar 2021 01:26:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229618AbhCTA0C (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 19 Mar 2021 20:26:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43080 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229751AbhCTAZw (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 19 Mar 2021 20:25:52 -0400
X-Greylist: delayed 311 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Fri, 19 Mar 2021 17:25:52 PDT
Received: from frotz.zork.net (frotz.zork.net [IPv6:2600:3c00:e000:35f::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B6C6BC061760
        for <linux-man@vger.kernel.org>; Fri, 19 Mar 2021 17:25:52 -0700 (PDT)
Received: by frotz.zork.net (Postfix, from userid 1008)
        id 1A0DE119A8; Sat, 20 Mar 2021 00:20:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 frotz.zork.net 1A0DE119A8
Date:   Fri, 19 Mar 2021 17:20:41 -0700
From:   Seth David Schoen <schoen@loyalty.org>
To:     linux-man@vger.kernel.org
Cc:     gnu@toad.com
Subject: [PATCH 1/1] ip.7: Add "special and reserved addresses" section
Message-ID: <20210320002041.GZ2289@frotz.zork.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Add a more detailed description of the IP addresses that have
a special meaning in Internet standards, and how these affect
Linux.

Signed-off-by: Seth David Schoen <schoen@loyalty.org>
Suggested-by: John Gilmore <gnu@toad.com>
---
 man7/ip.7 | 22 +++++++++++++++++++++-
 1 file changed, 21 insertions(+), 1 deletion(-)

diff --git a/man7/ip.7 b/man7/ip.7
index d9299eb9e..478cda269 100644
--- a/man7/ip.7
+++ b/man7/ip.7
@@ -39,7 +39,7 @@
 .\"	    commit 76e21053b5bf33a07c76f99d27a74238310e3c71
 .\"	    Author: Erich E. Hoover <ehoover@mines.edu>
 .\"
-.TH IP  7 2020-11-01 "Linux" "Linux Programmer's Manual"
+.TH IP  7 2021-03-10 "Linux" "Linux Programmer's Manual"
 .SH NAME
 ip \- Linux IPv4 protocol implementation
 .SH SYNOPSIS
@@ -232,6 +232,7 @@ In particular, this means that you need to call
 on the number that is assigned to a port.
 All address/port manipulation
 functions in the standard library work in network byte order.
+.SS Special and reserved addresses
 .PP
 There are several special addresses:
 .B INADDR_LOOPBACK
@@ -245,6 +246,25 @@ means any address for binding;
 means any host and has the same effect on bind as
 .B INADDR_ANY
 for historical reasons.
+.PP
+Internet standards have also traditionally reserved various
+addresses for particular uses. The addresses
+in the ranges 0.0.0.0 through 0.255.255.255 and 240.0.0.0 through
+255.255.255.254 (0/8 and 240/4 in CIDR notation) are reserved globally
+(but Linux permits addresses within these ranges, other than 0.0.0.0,
+to be assigned to an interface and used like other unicast addresses).
+All addresses in 127.0.0.0 through 127.255.255.255
+("127/8") are treated as loopback addresses akin to the standardized
+local loopback address 127.0.0.1, while addresses in 224.0.0.0 through
+239.255.255.255 ("224/4") are dedicated to multicast use.
+.PP
+On any locally-attached IP subnet, the lowest-numbered address and
+highest-numbered address (e.g., the .0 and .255 addresses on a subnet
+with netmask 255.255.255.0) are both designated as broadcast addresses.
+These cannot usefully be assigned to an interface, and can only be
+addressed with a socket on which the
+.B SO_BROADCAST
+option has been explicitly enabled.
 .SS Socket options
 IP supports some protocol-specific socket options that can be set with
 .BR setsockopt (2)
-- 
2.25.1
