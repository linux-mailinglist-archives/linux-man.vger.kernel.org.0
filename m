Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D751E3481C5
	for <lists+linux-man@lfdr.de>; Wed, 24 Mar 2021 20:19:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237836AbhCXTTZ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 24 Mar 2021 15:19:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56762 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237934AbhCXTTC (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 24 Mar 2021 15:19:02 -0400
Received: from frotz.zork.net (frotz.zork.net [IPv6:2600:3c00:e000:35f::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1393EC061763
        for <linux-man@vger.kernel.org>; Wed, 24 Mar 2021 12:19:00 -0700 (PDT)
Received: by frotz.zork.net (Postfix, from userid 1008)
        id 9E739119A8; Wed, 24 Mar 2021 19:18:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 frotz.zork.net 9E739119A8
Date:   Wed, 24 Mar 2021 12:18:58 -0700
From:   Seth David Schoen <schoen@loyalty.org>
To:     Florian Weimer <fw@deneb.enyo.de>
Cc:     linux-man@vger.kernel.org, gnu@toad.com
Subject: Re: [PATCH 1/1] ip.7: Add "special and reserved addresses" section
Message-ID: <20210324191858.GP10062@frotz.zork.net>
References: <20210320002041.GZ2289@frotz.zork.net>
 <87ft0pzjtk.fsf@mid.deneb.enyo.de>
 <20210322175815.GX10062@frotz.zork.net>
 <87blb9q7ok.fsf@mid.deneb.enyo.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87blb9q7ok.fsf@mid.deneb.enyo.de>
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Florian Weimer writes:

> * Seth David Schoen:
> 
> > Both things you noted are true: you can change broadcast addresses with
> > ifconfig or ip (e.g. ip addr add x/y broadcast z dev d), and /31 subnets
> > indeed don't have them.  This is defined at
> 
> There is also the questions of netmask that aren't in the CIDR style
> (so 255.255.0.255 instead of 255.255.255.0).  Are they still
> supported?

Nope -- I tried setting such a mask with ifconfig and got EINVAL back
from the kernel, while iproute2 doesn't even allow specifying a netmask
as opposed to a prefix length.

This EINVAL comes from here

https://github.com/torvalds/linux/blob/4ee998b0ef8b6d7b1267cd4d953182224929abba/net/ipv4/devinet.c#L1214

where the bad_mask() macro is checked to see if the mask is valid.  (I
haven't reasoned about the way bad_mask() is implemented, but the purpose
of the check seems to be whether the requested mask is CIDR-valid.)

> > I'm not familiar with a way in which it depends on the network device
> > other than the /31 issue.  At least, this particular logic isn't
> > affected by other aspects of the network device type.
> 
> Are there network devices that are neither point-to-point, nor do they
> have broadcast support?

We've talked about this question a bit in our project before.  I don't
believe so, but I can look into it further.  It's logically conceivable
that there could be such devices.

> > Could you suggest a way that these details could usefully be described
> > here?  The ability to change the broadcast address is very little-used,
> > so I'm not sure many readers would benefit from details about it here,
> > but I also wouldn't want to mislead them about that.  Maybe just
> > changing it to "are both designated, by default, as broadcast
> > addresses"?
> 
> My main concern is that the language should not imply that something
> cannot happen if it actually can.  Otherwise programmers will end up
> using this guidance and create software that won't work in such
> configurations.

That makes sense.  Are you OK with the "are both designated, by default,
as broadcast addresses" or similar language?

-- 
Seth David Schoen <schoen@loyalty.org>      |  Qué empresa fácil no pensar
     http://www.loyalty.org/~schoen/        |  en un tigre, reflexioné.
                                            |        -- Borges, "El Zahir"
