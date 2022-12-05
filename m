Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7DA9764298A
	for <lists+linux-man@lfdr.de>; Mon,  5 Dec 2022 14:39:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231920AbiLENjQ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 5 Dec 2022 08:39:16 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33202 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229954AbiLENjP (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 5 Dec 2022 08:39:15 -0500
X-Greylist: delayed 1486 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Mon, 05 Dec 2022 05:39:14 PST
Received: from smtpout2.mo529.mail-out.ovh.net (smtpout2.mo529.mail-out.ovh.net [79.137.123.220])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4D660D2F2
        for <linux-man@vger.kernel.org>; Mon,  5 Dec 2022 05:39:14 -0800 (PST)
Received: from mxplan6.mail.ovh.net (unknown [10.109.156.216])
        by mo529.mail-out.ovh.net (Postfix) with ESMTPS id 8235214819264;
        Mon,  5 Dec 2022 14:14:26 +0100 (CET)
Received: from jwilk.net (37.59.142.104) by DAG4EX1.mxp6.local (172.16.2.31)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.16; Mon, 5 Dec
 2022 14:14:15 +0100
Authentication-Results: garm.ovh; auth=pass (GARM-104R005ef01e24b-0940-4b4b-9210-e75f32e53334,
                    2BD4DE20357223365A5F6F2D36CBE58CF9909313) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 5.172.255.81
Date:   Mon, 5 Dec 2022 14:14:00 +0100
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Alejandro Colomar <alx.manpages@gmail.com>
CC:     Helge Kreutzmann <debian@helgefjell.de>,
        Mario =?utf-8?Q?Bl=C3=A4ttermann?= <mario.blaettermann@gmail.com>,
        <linux-man@vger.kernel.org>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
Subject: Re: Issue in man page cgroup_namespaces.7
Message-ID: <20221205131400.awzkminqq5surp4u@jwilk.net>
References: <20221204090718.GA877@Debian-50-lenny-64-minimal>
 <08577b8c-950d-d090-4efb-7ebbd4114f11@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <08577b8c-950d-d090-4efb-7ebbd4114f11@gmail.com>
X-Originating-IP: [37.59.142.104]
X-ClientProxiedBy: DAG6EX1.mxp6.local (172.16.2.51) To DAG4EX1.mxp6.local
 (172.16.2.31)
X-Ovh-Tracer-GUID: fa60f24e-c365-410b-a07b-10d56ca0ae1c
X-Ovh-Tracer-Id: 17199809928036472739
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvhedrudeggdehtdcutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpeffhffvvefukfhfgggtugfgjghisehtkeertddttdejnecuhfhrohhmpeflrghkuhgsucghihhlkhcuoehjfihilhhksehjfihilhhkrdhnvghtqeenucggtffrrghtthgvrhhnpeetgedvgfduueegffeftdffueeftedvgfdtteekieevhffhuefgheeuieevgfeijeenucfkphepuddvjedrtddrtddruddpfeejrdehledrudegvddruddtgeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepihhnvghtpeduvdejrddtrddtrddupdhmrghilhhfrhhomhepoehjfihilhhksehjfihilhhkrdhnvghtqedpnhgspghrtghpthhtohepuddprhgtphhtthhopegrlhigrdhmrghnphgrghgvshesghhmrghilhdrtghomhdpuggvsghirghnsehhvghlghgvfhhjvghllhdruggvpdhmrghrihhordgslhgrvghtthgvrhhmrghnnhesghhmrghilhdrtghomhdplhhinhhugidqmhgrnhesvhhgvghrrdhkvghrnhgvlhdrohhrghdpghdrsghrrghnuggvnhdrrhhosghinhhsohhnsehgmhgrihhlrdgtohhmpdfovfetjfhoshhtpehmohehvdelpdhmohguvgepshhmthhpohhuth
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* Alejandro Colomar <alx.manpages@gmail.com>, 2022-12-04 21:07:
>>Issue:    user ID → UID
>
>IMO, (and I believe Branden will agree), user ID is more informative 
>than UID.

FWIW, "user ID" is already documented[*] to be preferred in compounds: 
set-user-ID, set-group-ID (rather than set-UID, set-GID).

>(don't know how much inconsistent the pages are regarding 
>that): UID -> user ID.

AFAICS both terms are widely used.


[*] See man-pages(7), subsection "Preferred terms". 

-- 
Jakub Wilk
