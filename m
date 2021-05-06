Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1BA3E374DA1
	for <lists+linux-man@lfdr.de>; Thu,  6 May 2021 04:38:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231499AbhEFCjg (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 5 May 2021 22:39:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59236 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231473AbhEFCjg (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 5 May 2021 22:39:36 -0400
X-Greylist: delayed 90 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Wed, 05 May 2021 19:38:38 PDT
Received: from frotz.zork.net (frotz.zork.net [IPv6:2600:3c00:e000:35f::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DD647C061574
        for <linux-man@vger.kernel.org>; Wed,  5 May 2021 19:38:38 -0700 (PDT)
Received: by frotz.zork.net (Postfix, from userid 1008)
        id CB4DD1198B; Thu,  6 May 2021 02:37:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 frotz.zork.net CB4DD1198B
Date:   Wed, 5 May 2021 19:37:07 -0700
From:   Seth David Schoen <schoen@loyalty.org>
To:     linux-man@vger.kernel.org
Cc:     Florian Weimer <fw@deneb.enyo.de>, gnu@toad.com
Subject: [RESEND PATCH v2] ip.7: Add "special and reserved addresses" section
Message-ID: <20210506023707.GU2734@frotz.zork.net>
References: <20210320002041.GZ2289@frotz.zork.net>
 <87ft0pzjtk.fsf@mid.deneb.enyo.de>
 <20210322175815.GX10062@frotz.zork.net>
 <87blb9q7ok.fsf@mid.deneb.enyo.de>
 <20210324191858.GP10062@frotz.zork.net>
 <20210326225305.GB10062@frotz.zork.net>
 <20210330032140.GR10062@frotz.zork.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210330032140.GR10062@frotz.zork.net>
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Add a more detailed description of the IP addresses that have
a special meaning in Internet standards, and how these affect
Linux.

This revision notes details that network devices may not support
broadcasting at the link layer (and how to check).

Signed-off-by: Seth David Schoen <schoen@loyalty.org>
---
 man7/ip.7 | 39 +++++++++++++++++++++++++++++++++++++++
 1 file changed, 39 insertions(+)

diff --git a/man7/ip.7 b/man7/ip.7
index 7eee2811e..27df71ba4 100644
--- a/man7/ip.7
+++ b/man7/ip.7
@@ -233,6 +233,7 @@ on the number that is assigned to a port.
 All address/port manipulation
 functions in the standard library work in network byte order.
 .PP
+.SS Special and reserved addresses
 There are several special addresses:
 .B INADDR_LOOPBACK
 (127.0.0.1)
@@ -245,6 +246,44 @@ means any address for binding;
 means any host and has the same effect on bind as
 .B INADDR_ANY
 for historical reasons.
+.PP
+Internet standards have also traditionally reserved various
+addresses for particular uses. The addresses
+in the ranges 0.0.0.0 through 0.255.255.255 and 240.0.0.0 through
+255.255.255.254 (0/8 and 240/4 in CIDR notation) are reserved globally
+(but Linux permits addresses within these ranges, other than 0.0.0.0, to
+be assigned to an interface and used like other unicast addresses).
+All addresses in 127.0.0.0 through 127.255.255.255 ("127/8")
+are treated as loopback addresses akin to the standardized local
+loopback address 127.0.0.1, while addresses in 224.0.0.0 through
+239.255.255.255 ("224/4") are dedicated to multicast use.
+.PP
+On any locally-attached IP subnet that contains more than two IP
+addresses, the lowest-numbered address and highest-numbered address
+(e.g., the .0 and .255 addresses on a subnet with netmask 255.255.255.0)
+are both designated as broadcast addresses by default. These cannot
+usefully be assigned to an interface as its own address, and can only
+be addressed with a socket on which the
+.B SO_BROADCAST
+option has been explicitly enabled. The ability to actually send and
+receive broadcasts at the link layer is available on most transports
+(like Ethernet), but may not be implemented on some non-broadcast
+multiple access (NBMA) networks, such as some methods of sending IP
+over ATM. Individual network interfaces (see
+.BR netdevice (7))
+are designated as
+.BR IFF_LOOPBACK ,
+.BR IFF_BROADCAST ,
+.BR IFF_POINTOPOINT ,
+or, more rarely, none of these three (NBMA); only those designated
+.B IFF_BROADCAST
+possess the ability to send and receive broadcasts at the link
+layer. These flags can be accessed with
+.BR getifaddrs (3)
+or viewed with
+.BR ip-link (8)
+or
+.BR ifconfig (8).
 .SS Socket options
 IP supports some protocol-specific socket options that can be set with
 .BR setsockopt (2)
-- 
2.25.1
