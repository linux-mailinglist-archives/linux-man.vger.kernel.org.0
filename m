Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E968364BE25
	for <lists+linux-man@lfdr.de>; Tue, 13 Dec 2022 21:56:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237176AbiLMU4m (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 13 Dec 2022 15:56:42 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54406 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237173AbiLMU4l (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 13 Dec 2022 15:56:41 -0500
Received: from smtpout2.mo529.mail-out.ovh.net (smtpout2.mo529.mail-out.ovh.net [79.137.123.220])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3153A14D13
        for <linux-man@vger.kernel.org>; Tue, 13 Dec 2022 12:56:39 -0800 (PST)
Received: from mxplan6.mail.ovh.net (unknown [10.109.138.5])
        by mo529.mail-out.ovh.net (Postfix) with ESMTPS id E2B3514B7B25E;
        Tue, 13 Dec 2022 21:56:36 +0100 (CET)
Received: from jwilk.net (37.59.142.101) by DAG4EX1.mxp6.local (172.16.2.31)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.16; Tue, 13 Dec
 2022 21:56:36 +0100
Authentication-Results: garm.ovh; auth=pass (GARM-101G004dd99b0f0-9515-489b-b004-22c151afb46c,
                    6E411EDD72D7122B11108647DE7A805B9E08614F) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 5.172.255.145
Date:   Tue, 13 Dec 2022 21:56:34 +0100
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Alejandro Colomar <alx.manpages@gmail.com>
CC:     <linux-man@vger.kernel.org>, Martin Sebor <msebor@redhat.com>
Subject: Re: [PATCH v2 0/3] Rewrite strcpy(3)
Message-ID: <20221213205634.fvqbvyjxqrnxdatd@jwilk.net>
References: <20221212142418.27615-1-alx@kernel.org>
 <20221212230044.86105-1-alx@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <20221212230044.86105-1-alx@kernel.org>
X-Originating-IP: [37.59.142.101]
X-ClientProxiedBy: DAG9EX2.mxp6.local (172.16.2.82) To DAG4EX1.mxp6.local
 (172.16.2.31)
X-Ovh-Tracer-GUID: c53de27c-bd48-409a-84c9-f7152d8e134f
X-Ovh-Tracer-Id: 16646430124296230877
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvhedrfedugdeilecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpeffhffvvefukfhfgggtuggjihesthdtredttddtvdenucfhrhhomheplfgrkhhusgcuhghilhhkuceojhifihhlkhesjhifihhlkhdrnhgvtheqnecuggftrfgrthhtvghrnhepuedttdetlefhffduvdehgfefudejledtkeehudevkeekleefudeuvdegjedufffgnecukfhppeduvdejrddtrddtrddupdefjedrheelrddugedvrddutddunecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehinhgvthepuddvjedrtddrtddruddpmhgrihhlfhhrohhmpeeojhifihhlkhesjhifihhlkhdrnhgvtheqpdhnsggprhgtphhtthhopedupdhrtghpthhtoheprghlgidrmhgrnhhprghgvghssehgmhgrihhlrdgtohhmpdhlihhnuhigqdhmrghnsehvghgvrhdrkhgvrhhnvghlrdhorhhgpdhmshgvsghorhesrhgvughhrghtrdgtohhmpdfovfetjfhoshhtpehmohehvdelpdhmohguvgepshhmthhpohhuth
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

The sheer size of this page make it almost unusable for me.
Please don't merge it.

* Alejandro Colomar <alx.manpages@gmail.com>, 2022-12-13 00:00:
>       stpecpy(3), stpecpyx(3)
>              Not provided by any library.

Then they don't belong in the man-pages project.

>       strscpy(3)
>              Not provided by any library.  It  is  a  Linux  kernel  internal
>              function.

Ditto.

-- 
Jakub Wilk
