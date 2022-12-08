Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1FF98647488
	for <lists+linux-man@lfdr.de>; Thu,  8 Dec 2022 17:44:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229743AbiLHQom (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 8 Dec 2022 11:44:42 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51698 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229586AbiLHQol (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 8 Dec 2022 11:44:41 -0500
Received: from 6.mo552.mail-out.ovh.net (6.mo552.mail-out.ovh.net [188.165.49.222])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D0196AD98B
        for <linux-man@vger.kernel.org>; Thu,  8 Dec 2022 08:44:39 -0800 (PST)
Received: from mxplan6.mail.ovh.net (unknown [10.109.143.134])
        by mo552.mail-out.ovh.net (Postfix) with ESMTPS id 1398F30C07;
        Thu,  8 Dec 2022 16:36:14 +0000 (UTC)
Received: from jwilk.net (37.59.142.99) by DAG4EX1.mxp6.local (172.16.2.31)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.16; Thu, 8 Dec
 2022 17:36:14 +0100
Authentication-Results: garm.ovh; auth=pass (GARM-99G003b370004a-aaad-447c-9ee4-76900992c749,
                    0299285C5895A5D340988CB47486A9EBEB5DF79A) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 5.172.255.221
Date:   Thu, 8 Dec 2022 17:36:05 +0100
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Mike Frysinger <vapier@gentoo.org>
CC:     Michael Kerrisk <mtk.manpages@gmail.com>,
        Alejandro Colomar <alx.manpages@gmail.com>,
        <linux-man@vger.kernel.org>
Subject: Re: [PATCH/RFC] popen.3: change wait4(2) references to wait(2) family
Message-ID: <20221208163605.w7hmtcuwwma5tgfz@jwilk.net>
References: <20221208091442.10595-1-vapier@gentoo.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <20221208091442.10595-1-vapier@gentoo.org>
X-Originating-IP: [37.59.142.99]
X-ClientProxiedBy: DAG5EX2.mxp6.local (172.16.2.42) To DAG4EX1.mxp6.local
 (172.16.2.31)
X-Ovh-Tracer-GUID: 2eccb750-063e-4b15-8068-5eba57be2ccf
X-Ovh-Tracer-Id: 1332502544013252576
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvhedrvddtgdeludcutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecunecujfgurhepfffhvfevuffkfhggtggujghisehttdertddttddvnecuhfhrohhmpeflrghkuhgsucghihhlkhcuoehjfihilhhksehjfihilhhkrdhnvghtqeenucggtffrrghtthgvrhhnpeeutddtteelhfffuddvhefgfedujeeltdekheduveekkeelfeduuedvgeejudffgfenucfkphepuddvjedrtddrtddruddpfeejrdehledrudegvddrleelnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehinhgvthepuddvjedrtddrtddruddpmhgrihhlfhhrohhmpeeojhifihhlkhesjhifihhlkhdrnhgvtheqpdhnsggprhgtphhtthhopedupdhrtghpthhtohepvhgrphhivghrsehgvghnthhoohdrohhrghdpmhhtkhdrmhgrnhhprghgvghssehgmhgrihhlrdgtohhmpdgrlhigrdhmrghnphgrghgvshesghhmrghilhdrtghomhdplhhinhhugidqmhgrnhesvhhgvghrrdhkvghrnhgvlhdrohhrghdpoffvtefjohhsthepmhhoheehvddpmhhouggvpehsmhhtphhouhht
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* Mike Frysinger <vapier@gentoo.org>, 2022-12-08 04:14:
>Since wait4(2) is deprecated and people should use waitpid(2) instead,

For simplicity I'd just do s/wait4/waitpid/, because AFAICS that's what 
glibc uses.

>and the specific wait function used is largely an internal detail,
>update the references to talk about the wait "family" of functions.

But if we chose to talk about families, then...

>+status of the command as returned by one of the
>+.BR wait (2)
>+family of calls.

... maybe s/calls/functions/?

"family of functions" seems to be the most widely used term:

$ grep -rhoP 'family of (functions|(sys(tem )?)?calls)' man* | sort | uniq -c | sort
       1 family of calls
       1 family of system calls
       2 family of syscalls
      20 family of functions

-- 
Jakub Wilk
