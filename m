Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4744634B253
	for <lists+linux-man@lfdr.de>; Fri, 26 Mar 2021 23:54:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230423AbhCZWxj (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 26 Mar 2021 18:53:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47350 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230240AbhCZWxJ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 26 Mar 2021 18:53:09 -0400
Received: from frotz.zork.net (frotz.zork.net [IPv6:2600:3c00:e000:35f::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5AA94C0613AA
        for <linux-man@vger.kernel.org>; Fri, 26 Mar 2021 15:53:09 -0700 (PDT)
Received: by frotz.zork.net (Postfix, from userid 1008)
        id 1A2871198B; Fri, 26 Mar 2021 22:53:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 frotz.zork.net 1A2871198B
Date:   Fri, 26 Mar 2021 15:53:05 -0700
From:   Seth David Schoen <schoen@loyalty.org>
To:     Florian Weimer <fw@deneb.enyo.de>
Cc:     linux-man@vger.kernel.org, gnu@toad.com
Subject: Re: [PATCH 1/1] ip.7: Add "special and reserved addresses" section
Message-ID: <20210326225305.GB10062@frotz.zork.net>
References: <20210320002041.GZ2289@frotz.zork.net>
 <87ft0pzjtk.fsf@mid.deneb.enyo.de>
 <20210322175815.GX10062@frotz.zork.net>
 <87blb9q7ok.fsf@mid.deneb.enyo.de>
 <20210324191858.GP10062@frotz.zork.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210324191858.GP10062@frotz.zork.net>
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Seth David Schoen writes:

> > Are there network devices that are neither point-to-point, nor do they
> > have broadcast support?
> 
> We've talked about this question a bit in our project before.  I don't
> believe so, but I can look into it further.  It's logically conceivable
> that there could be such devices.

I found that there are several address family and/or interface types in the
Linux kernel now that always refuse the SIOCSIFBRDADDR ioctl (with EINVAL).
However, none of them are IPv4 and so they're all outside the scope of the
ip(7) man page.  (They are x25, ax25, rose, netrom, and qrtr, each of
which has its own address family instead of AF_INET, namely AF_X25,
AF_AX25, AF_ROSE, AF_NETROM, and AF_QIPCRTR.)

I haven't found anywhere else in the kernel where setting a broadcast
address will be rejected as inapplicable.  That is, you can always at
least complete the ioctl, so if it doesn't work because it's
inapplicable at a lower layer, that seems like a bug.

The existing man page for ip-link(8) seems to assume that an IP link is
either broadcast-capable or marked point-to-point:

       broadcast LLADDRESS

       brd LLADDRESS

       peer LLADDRESS
              change the link layer broadcast address or the peer address when
              the interface is POINTOPOINT.

(These two cases seem to be taken as exhaustive and mutually exclusive
here.)

The more complete answer that I'm looking into now will depend on
whether you can get an interface that can run IPv4 but that has neither
IFF_BROADCAST nor IFF_POINTOPOINT in its flags.

-- 
Seth David Schoen <schoen@loyalty.org>      |  Qué empresa fácil no pensar
     http://www.loyalty.org/~schoen/        |  en un tigre, reflexioné.
                                            |        -- Borges, "El Zahir"
