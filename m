Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C8E4234722B
	for <lists+linux-man@lfdr.de>; Wed, 24 Mar 2021 08:14:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231976AbhCXHNo (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 24 Mar 2021 03:13:44 -0400
Received: from 75-101-100-43.dsl.static.fusionbroadband.com ([75.101.100.43]:56058
        "EHLO hop.toad.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235784AbhCXHNa (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 24 Mar 2021 03:13:30 -0400
X-Greylist: delayed 320 seconds by postgrey-1.27 at vger.kernel.org; Wed, 24 Mar 2021 03:13:30 EDT
Received: from hop.toad.com (localhost [127.0.0.1])
        by hop.toad.com (8.12.9/8.12.9) with ESMTP id 12O77bRl024496;
        Wed, 24 Mar 2021 00:07:37 -0700
To:     Seth David Schoen <schoen@loyalty.org>
cc:     Florian Weimer <fw@deneb.enyo.de>, linux-man@vger.kernel.org,
        gnu@toad.com
Subject: Re: [PATCH 1/1] ip.7: Add "special and reserved addresses" section 
In-reply-to: <20210322212944.GB10062@frotz.zork.net> 
References: <20210320002041.GZ2289@frotz.zork.net> <87ft0pzjtk.fsf@mid.deneb.enyo.de> <20210322175815.GX10062@frotz.zork.net> <20210322212944.GB10062@frotz.zork.net>
Comments: In-reply-to Seth David Schoen <schoen@loyalty.org>
   message dated "Mon, 22 Mar 2021 14:29:44 -0700."
Date:   Wed, 24 Mar 2021 00:07:37 -0700
Message-ID: <24495.1616569657@hop.toad.com>
From:   John Gilmore <gnu@toad.com>
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Perhaps the reason there is an interface for setting the broadcast
address is so that it can be explicitly set to the lowest address (e.g.
for compatability with 4.2BSD)?  The ability to set an arbitrary
broadcast address does seem rather useless otherwise.

Sounds like a good email discussion to pull some historical info out of
netdev participants and/or the Internet-History mailing list.

Hmm -- after our patch, when the lowest address is no longer reserved
for broadcast, you can still make the lowest address into a second
broadcast address by setting it with ifconfig!  That actually argues
that our patch is even more innocuous; if anybody in the world actually
needs the lowest address to be broadcast, they already have a userspace
way to specify that.

(By the way, the kernel code looks to me that if the interface broadcast
address is set to 255.255.255.255 then it is NOT enabled, so only the
default broadcast addresses are enabled.  That doesn't seem to be
documented either.)

I don't know that the documentation that we added about how Linux
support for reserved addresses varies from the RFCs needs to wait for
these broadcast-related questions to be resolved.  We can further
improve that documentation once we know if and when "setting the
broadcast address on an interface" has or used to have any usefulness.

	John
