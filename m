Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7994034739A
	for <lists+linux-man@lfdr.de>; Wed, 24 Mar 2021 09:27:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233464AbhCXI0g (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 24 Mar 2021 04:26:36 -0400
Received: from albireo.enyo.de ([37.24.231.21]:54744 "EHLO albireo.enyo.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S233469AbhCXI0L (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Wed, 24 Mar 2021 04:26:11 -0400
Received: from [172.17.203.2] (port=44687 helo=deneb.enyo.de)
        by albireo.enyo.de ([172.17.140.2]) with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        id 1lOyq3-0006lb-IF; Wed, 24 Mar 2021 08:26:03 +0000
Received: from fw by deneb.enyo.de with local (Exim 4.92)
        (envelope-from <fw@deneb.enyo.de>)
        id 1lOyq3-0006MN-Dp; Wed, 24 Mar 2021 09:26:03 +0100
From:   Florian Weimer <fw@deneb.enyo.de>
To:     Seth David Schoen <schoen@loyalty.org>
Cc:     linux-man@vger.kernel.org, gnu@toad.com
Subject: Re: [PATCH 1/1] ip.7: Add "special and reserved addresses" section
References: <20210320002041.GZ2289@frotz.zork.net>
        <87ft0pzjtk.fsf@mid.deneb.enyo.de>
        <20210322175815.GX10062@frotz.zork.net>
Date:   Wed, 24 Mar 2021 09:26:03 +0100
In-Reply-To: <20210322175815.GX10062@frotz.zork.net> (Seth David Schoen's
        message of "Mon, 22 Mar 2021 10:58:15 -0700")
Message-ID: <87blb9q7ok.fsf@mid.deneb.enyo.de>
MIME-Version: 1.0
Content-Type: text/plain
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* Seth David Schoen:

> Both things you noted are true: you can change broadcast addresses with
> ifconfig or ip (e.g. ip addr add x/y broadcast z dev d), and /31 subnets
> indeed don't have them.  This is defined at

There is also the questions of netmask that aren't in the CIDR style
(so 255.255.0.255 instead of 255.255.255.0).  Are they still
supported?

> I'm not familiar with a way in which it depends on the network device
> other than the /31 issue.  At least, this particular logic isn't
> affected by other aspects of the network device type.

Are there network devices that are neither point-to-point, nor do they
have broadcast support?

> Could you suggest a way that these details could usefully be described
> here?  The ability to change the broadcast address is very little-used,
> so I'm not sure many readers would benefit from details about it here,
> but I also wouldn't want to mislead them about that.  Maybe just
> changing it to "are both designated, by default, as broadcast
> addresses"?

My main concern is that the language should not imply that something
cannot happen if it actually can.  Otherwise programmers will end up
using this guidance and create software that won't work in such
configurations.
