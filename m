Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BE5AF5A9B02
	for <lists+linux-man@lfdr.de>; Thu,  1 Sep 2022 16:59:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234477AbiIAO6x (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 1 Sep 2022 10:58:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45046 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234459AbiIAO6v (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 1 Sep 2022 10:58:51 -0400
X-Greylist: delayed 153932 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Thu, 01 Sep 2022 07:58:50 PDT
Received: from 4.mo552.mail-out.ovh.net (4.mo552.mail-out.ovh.net [178.33.43.201])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5CCA882F95
        for <linux-man@vger.kernel.org>; Thu,  1 Sep 2022 07:58:50 -0700 (PDT)
Received: from mxplan6.mail.ovh.net (unknown [10.108.4.35])
        by mo552.mail-out.ovh.net (Postfix) with ESMTPS id 59D4127014;
        Thu,  1 Sep 2022 14:51:50 +0000 (UTC)
Received: from jwilk.net (37.59.142.110) by DAG4EX1.mxp6.local (172.16.2.31)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.12; Thu, 1 Sep
 2022 16:51:48 +0200
Authentication-Results: garm.ovh; auth=pass (GARM-110S004ec23c733-1acb-49c6-92b9-1b330be1569b,
                    08A2FDE8A4EF0199DF453D86D09E70CAC5E25498) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 5.172.255.229
Date:   Thu, 1 Sep 2022 16:51:38 +0200
From:   Jakub Wilk <jwilk@jwilk.net>
To:     =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
CC:     Alejandro Colomar <alx.manpages@gmail.com>,
        <linux-man@vger.kernel.org>
Subject: Re: [PATCH 2/4] ioctl_console.2: use symbolic subcodes
Message-ID: <20220901144621.divjlo6cas65x75e@jwilk.net>
References: <120d03d4df30e5cdd87a850abff5eae116ed8963.1662039344.git.nabijaczleweli@nabijaczleweli.xyz>
 <5850af710e563757039a2a72a4b9219015bd27c6.1662039344.git.nabijaczleweli@nabijaczleweli.xyz>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <5850af710e563757039a2a72a4b9219015bd27c6.1662039344.git.nabijaczleweli@nabijaczleweli.xyz>
X-Originating-IP: [37.59.142.110]
X-ClientProxiedBy: DAG8EX2.mxp6.local (172.16.2.72) To DAG4EX1.mxp6.local
 (172.16.2.31)
X-Ovh-Tracer-GUID: 43852781-3962-4aa3-b2b7-a965720943b4
X-Ovh-Tracer-Id: 14341150063926564829
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 23
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvfedrvdekkedgkeefucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucgfrhhlucfvnfffucdlvdefmdenucfjughrpeffhffvvefukfhfgggtugfgjghisehtkeertddttdejnecuhfhrohhmpeflrghkuhgsucghihhlkhcuoehjfihilhhksehjfihilhhkrdhnvghtqeenucggtffrrghtthgvrhhnpeehteeitdehgeelhfekhfduhfeufeehueffleehteefgeduvdeuleefjefhveeijeenucffohhmrghinhepkhgvrhhnvghlrdhorhhgnecukfhppedtrddtrddtrddtpdefjedrheelrddugedvrdduuddtnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhpohhuthdphhgvlhhopehmgihplhgrnheirdhmrghilhdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomhepjhifihhlkhesjhifihhlkhdrnhgvthdpnhgspghrtghpthhtohepuddprhgtphhtthhopehlihhnuhigqdhmrghnsehvghgvrhdrkhgvrhhnvghlrdhorhhgpdfovfetjfhoshhtpehmohehhedv
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

I was playing with TIOCLINUX just a few days, and found the docs 
unsatisfactory. So this patchset very welcome. :)

* наб <nabijaczleweli@nabijaczleweli.xyz>, 2022-09-01 15:36:
>+Symbolic
>+.IR subcode s
>+are available since
>+Linux 2.5.71.

Indeed:
https://git.kernel.org/pub/scm/linux/kernel/git/history/history.git/commit/?id=6cd8b04781e03b2669c764331181a2d3a8511fe5

It would be helpful to mention the constants are defined in <linux/tiocl.h>.

-- 
Jakub Wilk
