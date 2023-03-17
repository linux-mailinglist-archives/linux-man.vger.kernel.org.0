Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DBAA06BF4E7
	for <lists+linux-man@lfdr.de>; Fri, 17 Mar 2023 23:10:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229533AbjCQWKG (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 17 Mar 2023 18:10:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55312 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229799AbjCQWKF (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 17 Mar 2023 18:10:05 -0400
X-Greylist: delayed 1147 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Fri, 17 Mar 2023 15:10:00 PDT
Received: from 2.mo552.mail-out.ovh.net (2.mo552.mail-out.ovh.net [178.33.105.233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 87C5439CE4
        for <linux-man@vger.kernel.org>; Fri, 17 Mar 2023 15:09:59 -0700 (PDT)
Received: from mxplan6.mail.ovh.net (unknown [10.109.138.233])
        by mo552.mail-out.ovh.net (Postfix) with ESMTPS id E4F082B22B;
        Fri, 17 Mar 2023 21:31:51 +0000 (UTC)
Received: from jwilk.net (37.59.142.106) by DAG4EX1.mxp6.local (172.16.2.31)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.23; Fri, 17 Mar
 2023 22:31:51 +0100
Authentication-Results: garm.ovh; auth=pass (GARM-106R006101b1cbb-c81c-44d0-a630-6bd7db8aaf6f,
                    7BE97D1000CF9539D0ABE71C84E8B582AAA28F94) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 5.172.255.170
Date:   Fri, 17 Mar 2023 22:31:49 +0100
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Alejandro Colomar <alx.manpages@gmail.com>
CC:     <linux-man@vger.kernel.org>, Alejandro Colomar <alx@kernel.org>,
        <libc-alpha@sourceware.org>, "Jason A. Donenfeld" <Jason@zx2c4.com>
Subject: Re: [PATCH] arc4random.3: New page documenting the arc4random(3)
 family of functions
Message-ID: <20230317213149.cp6nx6fhrmq56msv@jwilk.net>
References: <20230101162627.28031-1-alx@kernel.org>
 <fd5ee7bd-f4a6-52a6-2f69-7c3547e549c6@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <fd5ee7bd-f4a6-52a6-2f69-7c3547e549c6@gmail.com>
X-Originating-IP: [37.59.142.106]
X-ClientProxiedBy: DAG6EX1.mxp6.local (172.16.2.51) To DAG4EX1.mxp6.local
 (172.16.2.31)
X-Ovh-Tracer-GUID: 26735445-ff63-437f-933d-1f3f96ec61e2
X-Ovh-Tracer-Id: 15872655414283982755
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvhedrvdefvddgudeglecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpeffhffvvefukfhfgggtugfgjghisehtkeertddttdejnecuhfhrohhmpeflrghkuhgsucghihhlkhcuoehjfihilhhksehjfihilhhkrdhnvghtqeenucggtffrrghtthgvrhhnpeetgedvgfduueegffeftdffueeftedvgfdtteekieevhffhuefgheeuieevgfeijeenucfkphepuddvjedrtddrtddruddpfeejrdehledrudegvddruddtieenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepihhnvghtpeduvdejrddtrddtrddupdhmrghilhhfrhhomhepoehjfihilhhksehjfihilhhkrdhnvghtqedpnhgspghrtghpthhtohepuddprhgtphhtthhopegrlhigrdhmrghnphgrghgvshesghhmrghilhdrtghomhdplhhinhhugidqmhgrnhesvhhgvghrrdhkvghrnhgvlhdrohhrghdprghlgieskhgvrhhnvghlrdhorhhgpdhlihgstgdqrghlphhhrgesshhouhhrtggvfigrrhgvrdhorhhgpdflrghsohhnseiigidvtgegrdgtohhmpdfovfetjfhoshhtpehmohehhedvpdhmohguvgepshhmthhpohhuth
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* Alejandro Colomar <alx.manpages@gmail.com>, 2023-01-01 17:27:
>arc4random_uniform() returns a random number less than upper_bound for 
>valid input, or 0 when upper_bound is invalid.

Is the "or 0 ..." thing part of the API? I could find anything like that 
in glibc docs or BSD man pages.

>STANDARDS
>       These nonstandard functions are present in several Unix systems.

That's not really helpful. Also, the VERSIONS section is missing ("every 
new interface should include a VERSIONS section").

In contrast, the libbsd man page is much more informative:

>These functions first appeared in OpenBSD 2.1, FreeBSD 3.0, NetBSD 
>1.6, and DragonFly 1.0.  The functions arc4random(), arc4random_buf() 
>and arc4random_uniform() appeared in glibc 2.36.
>
>The original version of this random number generator used the RC4 (also 
>known as ARC4) algorithm.  In OpenBSD 5.5 it was replaced with the 
>ChaCha20 cipher, and it may be replaced again in the future as 
>cryptographic techniques advance.  A good mnemonic is “A Replacement 
>Call for Random”.

-- 
Jakub Wilk
