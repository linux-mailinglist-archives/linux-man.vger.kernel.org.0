Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D722B642E5E
	for <lists+linux-man@lfdr.de>; Mon,  5 Dec 2022 18:09:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230154AbiLERJb (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 5 Dec 2022 12:09:31 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37488 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230090AbiLERJa (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 5 Dec 2022 12:09:30 -0500
Received: from 5.mo548.mail-out.ovh.net (5.mo548.mail-out.ovh.net [188.165.49.213])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A877CDFEA
        for <linux-man@vger.kernel.org>; Mon,  5 Dec 2022 09:09:28 -0800 (PST)
Received: from mxplan6.mail.ovh.net (unknown [10.108.4.253])
        by mo548.mail-out.ovh.net (Postfix) with ESMTPS id 25E5E20079;
        Mon,  5 Dec 2022 17:09:27 +0000 (UTC)
Received: from jwilk.net (37.59.142.105) by DAG4EX1.mxp6.local (172.16.2.31)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.16; Mon, 5 Dec
 2022 18:09:26 +0100
Authentication-Results: garm.ovh; auth=pass (GARM-105G006d5dffd4f-c5f0-40f6-bd67-6d1c9403adfa,
                    2BD4DE20357223365A5F6F2D36CBE58CF9909313) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 5.172.255.170
Date:   Mon, 5 Dec 2022 18:09:25 +0100
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Helge Kreutzmann <debian@helgefjell.de>
CC:     Alejandro Colomar <alx.manpages@gmail.com>,
        Mario =?utf-8?Q?Bl=C3=A4ttermann?= <mario.blaettermann@gmail.com>,
        <linux-man@vger.kernel.org>
Subject: Re: Issue in man page uri.7
Message-ID: <20221205170925.meppalvtfqsoe4vj@jwilk.net>
References: <20221204090719.GA902@Debian-50-lenny-64-minimal>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20221204090719.GA902@Debian-50-lenny-64-minimal>
X-Originating-IP: [37.59.142.105]
X-ClientProxiedBy: DAG6EX2.mxp6.local (172.16.2.52) To DAG4EX1.mxp6.local
 (172.16.2.31)
X-Ovh-Tracer-GUID: 9d4fb567-b3b2-4a24-8072-dcb2ad9b483c
X-Ovh-Tracer-Id: 2722144502789298144
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvhedrudeggdeljecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecunecujfgurhepfffhvfevuffkfhggtggugfgjihesthekredttddtjeenucfhrhhomheplfgrkhhusgcuhghilhhkuceojhifihhlkhesjhifihhlkhdrnhgvtheqnecuggftrfgrthhtvghrnhepteegvdfgudeugefffedtffeufeetvdfgtdetkeeivefhhfeugfehueeivefgieejnecukfhppeduvdejrddtrddtrddupdefjedrheelrddugedvrddutdehnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehinhgvthepuddvjedrtddrtddruddpmhgrihhlfhhrohhmpeeojhifihhlkhesjhifihhlkhdrnhgvtheqpdhnsggprhgtphhtthhopedupdhrtghpthhtohepuggvsghirghnsehhvghlghgvfhhjvghllhdruggvpdgrlhigrdhmrghnphgrghgvshesghhmrghilhdrtghomhdpmhgrrhhiohdrsghlrggvthhtvghrmhgrnhhnsehgmhgrihhlrdgtohhmpdhlihhnuhigqdhmrghnsehvghgvrhdrkhgvrhhnvghlrdhorhhgpdfovfetjfhoshhtpehmohehgeekpdhmohguvgepshhmthhpohhuth
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* Helge Kreutzmann <debian@helgefjell.de>, 2022-12-04 10:07:
>Issue:    Gopher selector string → Gopher type selector string?

No, it's just "selector", not "type selector".
See RFC 4266, section 2.1.

(Can we add that RFC reference to the man page, so that's it's easier to 
find?)

-- 
Jakub Wilk
