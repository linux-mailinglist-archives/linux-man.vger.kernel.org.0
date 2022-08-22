Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 47D0359C638
	for <lists+linux-man@lfdr.de>; Mon, 22 Aug 2022 20:28:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236290AbiHVS2K (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 22 Aug 2022 14:28:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52826 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237440AbiHVS2D (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 22 Aug 2022 14:28:03 -0400
Received: from smtpout3.mo529.mail-out.ovh.net (smtpout3.mo529.mail-out.ovh.net [46.105.54.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E146F48C9A
        for <linux-man@vger.kernel.org>; Mon, 22 Aug 2022 11:27:50 -0700 (PDT)
Received: from mxplan6.mail.ovh.net (unknown [10.109.143.118])
        by mo529.mail-out.ovh.net (Postfix) with ESMTPS id 95E5211FF031F;
        Mon, 22 Aug 2022 20:21:44 +0200 (CEST)
Received: from jwilk.net (37.59.142.109) by DAG4EX2.mxp6.local (172.16.2.32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.9; Mon, 22 Aug
 2022 20:21:43 +0200
Authentication-Results: garm.ovh; auth=pass (GARM-109S0038155bcc4-1d28-422d-8ee1-87f43f21deb7,
                    E66498A06E5E6C15C7A426D1DA23C33C29D96A09) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 5.172.255.9
Date:   Mon, 22 Aug 2022 20:21:40 +0200
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Alejandro Colomar <alx.manpages@gmail.com>
CC:     Michael Kerrisk <mtk.manpages@gmail.com>,
        <linux-man@vger.kernel.org>
Subject: Re: [PATCH 01/10] fanotify_init.2: tfix
Message-ID: <20220822182140.ttqdmboeuznr6qa6@jwilk.net>
References: <20220819190859.6248-1-jwilk@jwilk.net>
 <a5484dc8-33a7-e10b-2b73-7a44698a529c@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <a5484dc8-33a7-e10b-2b73-7a44698a529c@gmail.com>
X-Originating-IP: [37.59.142.109]
X-ClientProxiedBy: DAG5EX2.mxp6.local (172.16.2.42) To DAG4EX2.mxp6.local
 (172.16.2.32)
X-Ovh-Tracer-GUID: b1f135e9-467a-4bd1-b2be-647aba59ca5d
X-Ovh-Tracer-Id: 14499339002328176605
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvfedrvdeijedguddvhecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecunecujfgurhepfffhvfevuffkfhggtggujghisehttdertddttddvnecuhfhrohhmpeflrghkuhgsucghihhlkhcuoehjfihilhhksehjfihilhhkrdhnvghtqeenucggtffrrghtthgvrhhnpefhteekgffgudeuveelvddtvdelleetffelleduvefggeehuedthffhieduvdevtdenucffohhmrghinhepjhifihhlkhdrnhgvthenucfkpheptddrtddrtddrtddpfeejrdehledrudegvddruddtleenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphhouhhtpdhhvghlohepmhigphhlrghniedrmhgrihhlrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpehjfihilhhksehjfihilhhkrdhnvghtpdhnsggprhgtphhtthhopedupdhrtghpthhtoheplhhinhhugidqmhgrnhesvhhgvghrrdhkvghrnhgvlhdrohhrghdpoffvtefjohhsthepmhhohedvle
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* Alejandro Colomar <alx.manpages@gmail.com>, 2022-08-20 01:28:
>BTW, I noticed you find a lot of typos.  I'm curious: do you find them 
>when reading, or you run a tool that finds them?

I have two unconventional spellcheckers in my toolbox:

https://jwilk.net/software/mwic
https://jwilk.net/software/anorack

I usually run them on diffs, like this:

   $ git pull
   ...
   $ git diff @{1} | grep ^+ | mwic
   [wade through the jungle of false positives]

-- 
Jakub Wilk
