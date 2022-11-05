Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 68CCD61DDD7
	for <lists+linux-man@lfdr.de>; Sat,  5 Nov 2022 20:43:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229603AbiKETnM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 5 Nov 2022 15:43:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37652 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229479AbiKETnM (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 5 Nov 2022 15:43:12 -0400
X-Greylist: delayed 3600 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Sat, 05 Nov 2022 12:43:09 PDT
Received: from 1.mo552.mail-out.ovh.net (1.mo552.mail-out.ovh.net [178.32.96.117])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 50FCDEE2C
        for <linux-man@vger.kernel.org>; Sat,  5 Nov 2022 12:43:09 -0700 (PDT)
Received: from mxplan6.mail.ovh.net (unknown [10.108.16.163])
        by mo552.mail-out.ovh.net (Postfix) with ESMTPS id 5A97C28DBB;
        Sat,  5 Nov 2022 18:26:22 +0000 (UTC)
Received: from jwilk.net (37.59.142.101) by DAG4EX1.mxp6.local (172.16.2.31)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.13; Sat, 5 Nov
 2022 19:26:21 +0100
Authentication-Results: garm.ovh; auth=pass (GARM-101G0043fc0ae3b-8919-4305-a686-1c9923233be1,
                    E7D382CE42B3034463A7DE3E8BEB57FECFD4E050) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 5.172.255.10
Date:   Sat, 5 Nov 2022 19:26:20 +0100
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Alejandro Colomar <alx.manpages@gmail.com>
CC:     Michael Kerrisk <mtk.manpages@gmail.com>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        <linux-man@vger.kernel.org>
Subject: Re: [PATCH] drop spurious t comment header
Message-ID: <20221105182620.wvi25miqwl2m3q72@jwilk.net>
References: <20200723215333.13779-1-vapier@gentoo.org>
 <20200724000315.yx5otylik6oqqy6d@localhost.localdomain>
 <CAKgNAkjwwxrM_ry-b1rtrVc8YjfNE=p4iAht85P+mBs6Eq0U-w@mail.gmail.com>
 <20220819202103.potxyqmj5axhjzye@jwilk.net>
 <f18330a6-cbb1-c7cd-8e30-a79fe9203bcc@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="qgwbiqguzfr5feq3"
Content-Disposition: inline
In-Reply-To: <f18330a6-cbb1-c7cd-8e30-a79fe9203bcc@gmail.com>
X-Originating-IP: [37.59.142.101]
X-ClientProxiedBy: DAG4EX2.mxp6.local (172.16.2.32) To DAG4EX1.mxp6.local
 (172.16.2.31)
X-Ovh-Tracer-GUID: 4bf6eaa2-225b-46eb-bc99-60b3dcef2928
X-Ovh-Tracer-Id: 12307774832148469728
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvgedrvdefgdduuddtucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhepfffhvfevuffkfhggtggujghisehmtderredttddvnecuhfhrohhmpeflrghkuhgsucghihhlkhcuoehjfihilhhksehjfihilhhkrdhnvghtqeenucggtffrrghtthgvrhhnpedthfelvedvvdfhteelgffgheduvdffvdeuheevgffgvdetffdugfehvefgvdelteenucffohhmrghinhepuggvsghirghnrdhorhhgnecukfhppeduvdejrddtrddtrddupdefjedrheelrddugedvrddutddunecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehinhgvthepuddvjedrtddrtddruddpmhgrihhlfhhrohhmpeeojhifihhlkhesjhifihhlkhdrnhgvtheqpdhnsggprhgtphhtthhopedupdhrtghpthhtoheprghlgidrmhgrnhhprghgvghssehgmhgrihhlrdgtohhmpdhmthhkrdhmrghnphgrghgvshesghhmrghilhdrtghomhdpghdrsghrrghnuggvnhdrrhhosghinhhsohhnsehgmhgrihhlrdgtohhmpdhlihhnuhigqdhmrghnsehvghgvrhdrkhgvrhhnvghlrdhorhhgpdfovfetjfhoshhtpehmohehhedvpdhmohguvgepshhmthhpohhuth
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

--qgwbiqguzfr5feq3
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline

* Alejandro Colomar <alx.manpages@gmail.com>, 2022-08-20 01:50:
>>Lintian, the Debian package checker, sets the MANROFFSEQ environment 
>>variable to empty string as a speed optimization. This turns off 
>>loading preprocessors that weren't explicitly declared in the 
>>source. The lack of '\" comments can cause false positives (and 
>>maybe also false negatives?) in Lintian.
>>
>>The use of $MANROFFSEQ for Lintian was proposed here: 
>>https://bugs.debian.org/677874
>>
>>Beware that the man(1) man page does not correctly explain what 
>>$MANROFFSEQ does: https://bugs.debian.org/971009
>
>If we can have a test that makes sure the comment is accurate, I 
>wouldn't mind reintroducing it.  If you would like to add a lint-* 
>target that tests pages to check that they have the comment iff they 
>need it, I'll accept it.
>
>I guess that may be asking too much work.  Maybe showing how to 
>reliably test it for a page would be enough (I could transform it into 
>a Makefile test).  I can think of a small sh(1) script that could do 
>it, but is there any tool that already does it?

I'm not aware of anything like that, so I hacked up a script that runs 
man twice, with and without empty MANROFFSEQ, and compares the results. 
See the attachment.

It looks like in our case all the missing preprocessor declarations can 
be added with this:

     grep -l -x '^[.]TS$' man*/* | sort -u | xargs sed -i -e "1i'\\\\\" t"

-- 
Jakub Wilk

--qgwbiqguzfr5feq3
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: attachment; filename="missing-preprocessors"

#!/bin/sh
set -e -u
if [ $# -eq 0 ]
then
	printf 'Usage: %s FILE [FILE...]\n' "$0" >&2
	exit 1
fi
for file
do
	m1=$(sed -e 's/^[.]so .*//' "$file" | env -u MANROFFSEQ man -l -)
	m2=$(sed -e 's/^[.]so .*//' "$file" | env MANROFFSEQ='' man -l -)
	if [ "$m1" != "$m2" ]
	then
		printf '%s\n' "$file"
	fi
done

--qgwbiqguzfr5feq3--
