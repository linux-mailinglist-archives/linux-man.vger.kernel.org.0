Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4D968734D4F
	for <lists+linux-man@lfdr.de>; Mon, 19 Jun 2023 10:14:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229992AbjFSIOf (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 19 Jun 2023 04:14:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55682 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229618AbjFSIOd (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 19 Jun 2023 04:14:33 -0400
X-Greylist: delayed 3609 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Mon, 19 Jun 2023 01:14:31 PDT
Received: from 5.mo552.mail-out.ovh.net (5.mo552.mail-out.ovh.net [188.165.45.220])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 20A5991
        for <linux-man@vger.kernel.org>; Mon, 19 Jun 2023 01:14:31 -0700 (PDT)
Received: from mxplan6.mail.ovh.net (unknown [10.109.138.7])
        by mo552.mail-out.ovh.net (Postfix) with ESMTPS id 108DA26C5F;
        Mon, 19 Jun 2023 06:54:27 +0000 (UTC)
Received: from jwilk.net (37.59.142.97) by DAG4EX1.mxp6.local (172.16.2.31)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.27; Mon, 19 Jun
 2023 08:54:25 +0200
Authentication-Results: garm.ovh; auth=pass (GARM-97G0028bf8d82e-111b-4f14-ae3a-3b2d8be1e3db,
                    FE9ECF6C01DE41ED1D256B5453FAADAB1C3F4A60) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 5.172.255.226
Date:   Mon, 19 Jun 2023 08:54:17 +0200
From:   Jakub Wilk <jwilk@jwilk.net>
To:     =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
CC:     Alejandro Colomar <alx.manpages@gmail.com>,
        <linux-man@vger.kernel.org>
Subject: Re: [PATCH] grantpt.3: no-op on modern glibc and other UNIXes
Message-ID: <20230619065417.hthe6klymmnszhwj@jwilk.net>
References: <s55h3vx7kapgrkczmyenyijo5munjjpzpmvxmtea5zlamnjqqx@toofqdlalwzl>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <s55h3vx7kapgrkczmyenyijo5munjjpzpmvxmtea5zlamnjqqx@toofqdlalwzl>
X-Originating-IP: [37.59.142.97]
X-ClientProxiedBy: DAG9EX1.mxp6.local (172.16.2.81) To DAG4EX1.mxp6.local
 (172.16.2.31)
X-Ovh-Tracer-GUID: 58d0b9e0-7dd4-47fa-b1e4-64ca3a15f01a
X-Ovh-Tracer-Id: 18132055051989342173
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 35
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvhedrgeefuddgudduvdcutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecufghrlhcuvffnffculdefhedmnecujfgurhepfffhvfevuffkfhggtggugfgjihesthekredttddtjeenucfhrhhomheplfgrkhhusgcuhghilhhkuceojhifihhlkhesjhifihhlkhdrnhgvtheqnecuggftrfgrthhtvghrnhepteegvdfgudeugefffedtffeufeetvdfgtdetkeeivefhhfeugfehueeivefgieejnecukfhppeduvdejrddtrddtrddupdefjedrheelrddugedvrdeljedphedrudejvddrvdehhedrvddvieenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepihhnvghtpeduvdejrddtrddtrddupdhmrghilhhfrhhomhepoehjfihilhhksehjfihilhhkrdhnvghtqedpnhgspghrtghpthhtohepuddprhgtphhtthhopehnrggsihhjrggtiihlvgifvghlihesnhgrsghijhgrtgiilhgvfigvlhhirdighiiipdgrlhigrdhmrghnphgrghgvshesghhmrghilhdrtghomhdplhhinhhugidqmhgrnhesvhhgvghrrdhkvghrnhgvlhdrohhrghdpoffvtefjohhsthepmhhoheehvddpmhhouggvpehsmhhtphhouhht
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* наб <nabijaczleweli@nabijaczleweli.xyz>, 2023-06-19 02:14:
>+as is the case on Linux\[em]or a
>+.BR ioctl (2).

s/ a/ an/

-- 
Jakub Wilk
