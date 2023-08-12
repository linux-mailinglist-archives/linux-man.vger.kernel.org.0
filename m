Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7FDEC77A1F4
	for <lists+linux-man@lfdr.de>; Sat, 12 Aug 2023 21:20:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229766AbjHLTUr (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 12 Aug 2023 15:20:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37526 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229475AbjHLTUq (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 12 Aug 2023 15:20:46 -0400
X-Greylist: delayed 1001 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Sat, 12 Aug 2023 12:20:47 PDT
Received: from smtpout2.mo529.mail-out.ovh.net (smtpout2.mo529.mail-out.ovh.net [79.137.123.220])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8300F19A4
        for <linux-man@vger.kernel.org>; Sat, 12 Aug 2023 12:20:47 -0700 (PDT)
Received: from mxplan6.mail.ovh.net (unknown [10.108.20.27])
        by mo529.mail-out.ovh.net (Postfix) with ESMTPS id 62E3220D1A;
        Sat, 12 Aug 2023 19:04:04 +0000 (UTC)
Received: from jwilk.net (37.59.142.98) by DAG4EX1.mxp6.local (172.16.2.31)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.31; Sat, 12 Aug
 2023 21:04:03 +0200
Authentication-Results: garm.ovh; auth=pass (GARM-98R0027ed3b39e-2457-45fb-94cd-93eb0d64c377,
                    1D58BEC4FDBFA159762EB1A57AE992C71166E087) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 5.172.255.228
Date:   Sat, 12 Aug 2023 21:04:01 +0200
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Alejandro Colomar <alx@kernel.org>
CC:     =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>,
        <linux-man@vger.kernel.org>
Subject: Re: [PATCH] tmpfs.5: document size/blocks=0 and nr_inodes=0 <=>
 unlimited
Message-ID: <20230812190401.4bf7xay4fws43tza@jwilk.net>
References: <s5j5wmngs2hpb5yx7frmb2uq5hc3clcpyfr65tzwmu3263bvc4@go2wfetupvjj>
 <118e7b3e-9d89-32f0-781f-0e74fc7279fe@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <118e7b3e-9d89-32f0-781f-0e74fc7279fe@gmail.com>
X-Originating-IP: [37.59.142.98]
X-ClientProxiedBy: DAG7EX1.mxp6.local (172.16.2.61) To DAG4EX1.mxp6.local
 (172.16.2.31)
X-Ovh-Tracer-GUID: 1002aa44-ba3e-4703-8a41-a87ca83fe02e
X-Ovh-Tracer-Id: 15538544617716635613
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedviedruddttddgudeftdcutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecunecujfgurhepfffhvfevuffkfhggtggujghisehttdertddttddvnecuhfhrohhmpeflrghkuhgsucghihhlkhcuoehjfihilhhksehjfihilhhkrdhnvghtqeenucggtffrrghtthgvrhhnpeeutddtteelhfffuddvhefgfedujeeltdekheduveekkeelfeduuedvgeejudffgfenucfkphepuddvjedrtddrtddruddpfeejrdehledrudegvddrleekpdehrddujedvrddvheehrddvvdeknecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehinhgvthepuddvjedrtddrtddruddpmhgrihhlfhhrohhmpeeojhifihhlkhesjhifihhlkhdrnhgvtheqpdhnsggprhgtphhtthhopedupdhrtghpthhtoheprghlgieskhgvrhhnvghlrdhorhhgpdhnrggsihhjrggtiihlvgifvghlihesnhgrsghijhgrtgiilhgvfigvlhhirdighiiipdhlihhnuhigqdhmrghnsehvghgvrhdrkhgvrhhnvghlrdhorhhgpdfovfetjfhoshhtpehmohehvdelpdhmohguvgepshhmthhpohhuth
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
        RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* Alejandro Colomar <colomar.6.4.3@gmail.com>, 2023-08-12 20:08:
>>Bitten by this again. Behaviour blames back to at least 2005 (so 
>>probably original to shmem.c), documented upstream in tmpfs.txt.

(I've been bitten by this too!)

>This is a bit unclear to me.  I guess you refer to the Linux kernel as 
>"upstream", but the Linux kernel repository doesn't have a tmpfs.txt 
>file.  I recall that they moved their .txt docs to .rst, so would you 
>please share the full link to the .txt file that you refer?  That way 
>you can ask git(1) to show the history of that file even if it doesn't 
>exist now.

You can ask git for history of tmpfs.txt even if you don't know the 
exact location, although admittedly it's pretty slow:

    $ git log --oneline -1 '**/tmpfs.txt'
    7e7cd458b810 docs: filesystems: convert tmpfs.txt to ReST

    $ git show --oneline --stat 7e7cd458b810
    7e7cd458b810 docs: filesystems: convert tmpfs.txt to ReST
     Documentation/filesystems/index.rst                |  1 +
     Documentation/filesystems/{tmpfs.txt => tmpfs.rst} | 44 +++++++++++++++++++++++++++++---------------
     2 files changed, 30 insertions(+), 15 deletions(-)

-- 
Jakub Wilk
