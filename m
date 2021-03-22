Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3FB7A344DEB
	for <lists+linux-man@lfdr.de>; Mon, 22 Mar 2021 18:59:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230133AbhCVR6s (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 22 Mar 2021 13:58:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38238 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229868AbhCVR6S (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 22 Mar 2021 13:58:18 -0400
Received: from frotz.zork.net (frotz.zork.net [IPv6:2600:3c00:e000:35f::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C72EFC061574
        for <linux-man@vger.kernel.org>; Mon, 22 Mar 2021 10:58:15 -0700 (PDT)
Received: by frotz.zork.net (Postfix, from userid 1008)
        id 1D81F1199E; Mon, 22 Mar 2021 17:58:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 frotz.zork.net 1D81F1199E
Date:   Mon, 22 Mar 2021 10:58:15 -0700
From:   Seth David Schoen <schoen@loyalty.org>
To:     Florian Weimer <fw@deneb.enyo.de>
Cc:     linux-man@vger.kernel.org, gnu@toad.com
Subject: Re: [PATCH 1/1] ip.7: Add "special and reserved addresses" section
Message-ID: <20210322175815.GX10062@frotz.zork.net>
References: <20210320002041.GZ2289@frotz.zork.net>
 <87ft0pzjtk.fsf@mid.deneb.enyo.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87ft0pzjtk.fsf@mid.deneb.enyo.de>
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Florian Weimer writes:

> * Seth David Schoen:
> 
> > +On any locally-attached IP subnet, the lowest-numbered address and
> > +highest-numbered address (e.g., the .0 and .255 addresses on a subnet
> > +with netmask 255.255.255.0) are both designated as broadcast addresses.
> > +These cannot usefully be assigned to an interface, and can only be
> > +addressed with a socket on which the
> > +.B SO_BROADCAST
> > +option has been explicitly enabled.
> 
> I think the broadcast address is actually settable to some degree, and
> /31 subnets do not have them.  I wouldn't be surprised if kernel
> behavior also depended on the network device.

Thanks!  We're somewhat familiar with that because we are currently proposing
to change this behavior. :-)

Both things you noted are true: you can change broadcast addresses with
ifconfig or ip (e.g. ip addr add x/y broadcast z dev d), and /31 subnets
indeed don't have them.  This is defined at

https://github.com/torvalds/linux/blob/master/net/ipv4/fib_frontend.c#L1125

I'm not familiar with a way in which it depends on the network device
other than the /31 issue.  At least, this particular logic isn't
affected by other aspects of the network device type.

Could you suggest a way that these details could usefully be described
here?  The ability to change the broadcast address is very little-used,
so I'm not sure many readers would benefit from details about it here,
but I also wouldn't want to mislead them about that.  Maybe just
changing it to "are both designated, by default, as broadcast
addresses"?

Conceivably it could say something like


On any locally-attached IP subnet that contains more than two IP
addresses, the lowest-numbered address and highest-numbered address
(e.g., the .0 and .255 addresses on a subnet with netmask 255.255.255.0)
are both designated as broadcast addresses by default. These cannot
usefully be assigned to an interface, and can only be addressed with a
socket on which the
.B SO_BROADCAST
option has been explicitly enabled.
