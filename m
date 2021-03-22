Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 586B53451CB
	for <lists+linux-man@lfdr.de>; Mon, 22 Mar 2021 22:30:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229591AbhCVV3x (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 22 Mar 2021 17:29:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55472 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229764AbhCVV3p (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 22 Mar 2021 17:29:45 -0400
Received: from frotz.zork.net (frotz.zork.net [IPv6:2600:3c00:e000:35f::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7FB56C061574
        for <linux-man@vger.kernel.org>; Mon, 22 Mar 2021 14:29:45 -0700 (PDT)
Received: by frotz.zork.net (Postfix, from userid 1008)
        id D1E981199E; Mon, 22 Mar 2021 21:29:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 frotz.zork.net D1E981199E
Date:   Mon, 22 Mar 2021 14:29:44 -0700
From:   Seth David Schoen <schoen@loyalty.org>
To:     Florian Weimer <fw@deneb.enyo.de>
Cc:     linux-man@vger.kernel.org, gnu@toad.com
Subject: Re: [PATCH 1/1] ip.7: Add "special and reserved addresses" section
Message-ID: <20210322212944.GB10062@frotz.zork.net>
References: <20210320002041.GZ2289@frotz.zork.net>
 <87ft0pzjtk.fsf@mid.deneb.enyo.de>
 <20210322175815.GX10062@frotz.zork.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210322175815.GX10062@frotz.zork.net>
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Seth David Schoen writes:

> Both things you noted are true: you can change broadcast addresses with
> ifconfig or ip (e.g. ip addr add x/y broadcast z dev d), and /31 subnets
> indeed don't have them.  This is defined at
> 
> https://github.com/torvalds/linux/blob/master/net/ipv4/fib_frontend.c#L1125

I would like to add to this by noting that the automatic definition
of the lowest and highest addresses as broadcast is run here
_unconditionally_, whether or not the user specifies an explicit
broadcast address.

So, if you run something like

ip link set eno1 up
ip addr add 192.168.17.17/24 broadcast 192.168.17.23 dev eno1

then "ifconfig eno1" will show

[...]
inet 192.168.17.17  netmask 255.255.255.0  broadcast 192.168.17.23
[...]

and "ip addr show eno1" will show

[...]
inet 192.168.17.17/24 brd 192.168.17.23 scope global eno1
[...]

However, even though 192.168.17.23 is indicated as "the" broadcast
address, both 192.168.17.0 and 192.168.17.255 are still designated as
broadcast addresses on this link by the kernel!

$ ping 192.168.17.0
ping: Do you want to ping broadcast? Then -b. If not, check your local firewall rules
$ ping 192.168.17.23
ping: Do you want to ping broadcast? Then -b. If not, check your local firewall rules
$ ping 192.168.17.255
ping: Do you want to ping broadcast? Then -b. If not, check your local firewall rules
$ ping 192.168.17.17
PING 192.168.17.17 (192.168.17.17) 56(84) bytes of data.
64 bytes from 192.168.17.17: icmp_seq=1 ttl=64 time=0.065 ms
[...]

I'm unaware that there's even any way to _remove_ that designation via
existing userspace interfaces.  If not, we can't, in fact, "change" a
broadcast address so much as designate an additional one.  You can
attempt to retroactively mark a broadcast-capable interface as
non-broadcast capable with "ifconfig eno1 -broadcast", but it appears to
me that the kernel refuses to accept this (maybe this behavior does
depend on the interface type).

$ sudo ifconfig eno1 -broadcast
Warning: Interface eno1 still in BROADCAST mode.

One might argue that setting the default broadcast addresses in addition
to the broadcast address requested by the user is a kernel bug.  I think
this is a somewhat complicated question, but it doesn't necessarily need
to be resolved, in part because there are almost no practical applications
for setting an additional non-default broadcast address manually.  (You
could conceivably use it to simulate the behavior of IPv4 or IPv6 multicast
groups on a local network segment, in an awkward way where you would
probably be better off using actual multicast instead.)

I think a slight change to the language in my previous message would
capture this, like

On any locally-attached IP subnet that contains more than two IP
addresses, the lowest-numbered address and highest-numbered address
(e.g., the .0 and .255 addresses on a subnet with netmask 255.255.255.0)
are both automatically designated as broadcast addresses by the kernel.
These cannot usefully be assigned to an interface, and can only be addressed
with a socket on which the
.B SO_BROADCAST
option has been explicitly enabled.

-- and of course I'm happy for any corrections if I've missed or
misdescribed any subtleties here.
