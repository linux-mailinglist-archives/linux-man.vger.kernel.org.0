Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 63A1134B352
	for <lists+linux-man@lfdr.de>; Sat, 27 Mar 2021 01:22:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231172AbhC0AWK (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 26 Mar 2021 20:22:10 -0400
Received: from frotz.zork.net ([69.164.197.204]:39184 "EHLO frotz.zork.net"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S230236AbhC0AWD (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Fri, 26 Mar 2021 20:22:03 -0400
X-Greylist: delayed 5335 seconds by postgrey-1.27 at vger.kernel.org; Fri, 26 Mar 2021 20:22:03 EDT
Received: by frotz.zork.net (Postfix, from userid 1008)
        id 7289E1198B; Sat, 27 Mar 2021 00:22:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 frotz.zork.net 7289E1198B
Date:   Fri, 26 Mar 2021 17:22:02 -0700
From:   Seth David Schoen <schoen@loyalty.org>
To:     John Gilmore <gnu@toad.com>
Cc:     Florian Weimer <fw@deneb.enyo.de>, linux-man@vger.kernel.org
Subject: Re: [PATCH 1/1] ip.7: Add "special and reserved addresses" section
Message-ID: <20210327002202.GC10062@frotz.zork.net>
References: <20210320002041.GZ2289@frotz.zork.net>
 <87ft0pzjtk.fsf@mid.deneb.enyo.de>
 <20210322175815.GX10062@frotz.zork.net>
 <87blb9q7ok.fsf@mid.deneb.enyo.de>
 <20210324191858.GP10062@frotz.zork.net>
 <20210326225305.GB10062@frotz.zork.net>
 <23508.1616802338@hop.toad.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <23508.1616802338@hop.toad.com>
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

John Gilmore writes:

> > > > Are there network devices that are neither point-to-point, nor do they
> > > > have broadcast support?
> 
> It seems to me that cellular radio systems are neither point-to-point,
> nor do they support broadcast.  And they keep moving further and further
> toward being IP-based (e.g. phone calls on your LTE phone use SIP over
> UDP over IP over cellular!).  But given the proprietary nature of most
> cellphone radio chips and their firmware, it's possible that Linux has
> never built a fully capable network interface to talk to them.  I don't
> think we should attempt to rule it out, though.

I found in include/uapi/linux/if_link.h the following classification
about this:

   IFF_LOOPBACK, IFF_BROADCAST and IFF_POINTOPOINT are
   more not changeable by user. They describe link media
   characteristics and set by device driver.

   Comments:
   - Combination IFF_BROADCAST|IFF_POINTOPOINT is invalid
   - If neither of these three flags are set;
     the interface is NBMA.

https://en.wikipedia.org/wiki/Non-broadcast_multiple-access_network

The likeliest example there in terms of running IP directly over such a
network would presumably be ATM, which had a whole series of RFCs about
how to make this work, and which is supported by the Linux kernel (e.g.
net/atm/clip.c, for "Classical IP over ATM" following RFC 1577).  That
includes, for example, a non-broadcast-based ARP mechanism!

I'll try to figure out what a Linux ATM interface does about IP broadcasts.
It seems like the RFC 1577 instruction is to still allow IP broadcasts
but accept that they won't be mapped onto link-layer broadcasts:

   ATM does not support broadcast addressing, therefore there are no
   mappings available from IP broadcast addresses to ATM broadcast
   services. Note: this lack of mapping does not restrict members from
   transmitting or receiving IP datagrams specifying any of the four
   standard IP broadcast address forms as described in [8].  Members,
   upon receiving an IP broadcast or IP subnet broadcast for their LIS,
   MUST process the packet as if addressed to that station.

In other IP-over-ATM methods it appears that broadcasting is emulated by
a lower layer.

https://www.cse.wustl.edu/~jain/cis788-97/ftp/ip_over_atm/index.html#3
