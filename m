Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 456342D3F77
	for <lists+linux-man@lfdr.de>; Wed,  9 Dec 2020 11:04:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729592AbgLIKDN (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 9 Dec 2020 05:03:13 -0500
Received: from 7.mo173.mail-out.ovh.net ([46.105.44.159]:60537 "EHLO
        7.mo173.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729051AbgLIKDM (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 9 Dec 2020 05:03:12 -0500
X-Greylist: delayed 1142 seconds by postgrey-1.27 at vger.kernel.org; Wed, 09 Dec 2020 05:03:12 EST
Received: from player698.ha.ovh.net (unknown [10.108.57.14])
        by mo173.mail-out.ovh.net (Postfix) with ESMTP id BCBF41569DA
        for <linux-man@vger.kernel.org>; Wed,  9 Dec 2020 10:43:22 +0100 (CET)
Received: from RCM-web5.webmail.mail.ovh.net (82-65-25-201.subs.proxad.net [82.65.25.201])
        (Authenticated sender: steve@sk2.org)
        by player698.ha.ovh.net (Postfix) with ESMTPSA id 1D42F18F600CF;
        Wed,  9 Dec 2020 09:43:17 +0000 (UTC)
MIME-Version: 1.0
Date:   Wed, 09 Dec 2020 10:43:16 +0100
From:   Stephen Kitt <steve@sk2.org>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        Christian Brauner <christian.brauner@ubuntu.com>
Cc:     linux-man <linux-man@vger.kernel.org>,
        Alejandro Colomar <alx.manpages@gmail.com>,
        lkml <linux-kernel@vger.kernel.org>
Subject: Re: [patch] close_range.2: new page documenting close_range(2)
In-Reply-To: <20201209094039.ksqlt7g5mq7mp4mq@wittgenstein>
References: <20201208215133.30575-1-steve@sk2.org>
 <CAKgNAki3jRYmTzCMXgBzXTz9LEmmAfRE5VuMOhnDbVmiJU=asg@mail.gmail.com>
 <20201209094039.ksqlt7g5mq7mp4mq@wittgenstein>
User-Agent: Roundcube Webmail/1.4.3
Message-ID: <9020961b9cb4ebc61d6a07f603a226aa@sk2.org>
X-Sender: steve@sk2.org
X-Originating-IP: 82.65.25.201
X-Webmail-UserID: steve@sk2.org
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: 8bit
X-Ovh-Tracer-Id: 11257310219080977789
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedujedrudejkedgtdekucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhepggffhffvufgjfhgfkfigihgtgfesthekjhdttderjeenucfhrhhomhepufhtvghphhgvnhcumfhithhtuceoshhtvghvvgesshhkvddrohhrgheqnecuggftrfgrthhtvghrnhepheeftedvhfevuedthedthfektdelleegtdevfeetveefhfekgedttdefgfetgfeunecukfhppedtrddtrddtrddtpdekvddrieehrddvhedrvddtudenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphdqohhuthdphhgvlhhopehplhgrhigvrheileekrdhhrgdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomhepshhtvghvvgesshhkvddrohhrghdprhgtphhtthhopehlihhnuhigqdhmrghnsehvghgvrhdrkhgvrhhnvghlrdhorhhg
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Le 09/12/2020 10:40, Christian Brauner a écrit :
> On Wed, Dec 09, 2020 at 09:50:38AM +0100, Michael Kerrisk (man-pages) 
> wrote:
>> > +.PP
>> > +.I flags
>> > +can be set to
>> > +.B CLOSE_RANGE_UNSHARE
>> > +to unshare the range of file descriptors from any other processes,
>> > +.I instead
>> > +of closing them.
>> 
>> Really "instead of closing them"? I had supposed that rather that this
>> should be "before closing them". That's also how the kernel code reads
>> to me, from a quick glance.
> 
> It's also mentioned in the commit message. Basically setting
> CLOSE_RANGE_UNSHARE is equivalent to:
> 
> unshare(CLONE_FILES);
> close_range(<start>, <end>);

Yes, I got that mixed up, thanks for the clarification! I'll send a v2 
addressing the review comments later today.

Regards,

Stephen
