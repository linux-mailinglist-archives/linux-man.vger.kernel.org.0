Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 204B57DE484
	for <lists+linux-man@lfdr.de>; Wed,  1 Nov 2023 17:23:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233394AbjKAQXh (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 1 Nov 2023 12:23:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42816 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232538AbjKAQXh (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 1 Nov 2023 12:23:37 -0400
Received: from 1.mo552.mail-out.ovh.net (1.mo552.mail-out.ovh.net [178.32.96.117])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 392F5FD
        for <linux-man@vger.kernel.org>; Wed,  1 Nov 2023 09:23:34 -0700 (PDT)
Received: from mxplan6.mail.ovh.net (unknown [10.108.20.2])
        by mo552.mail-out.ovh.net (Postfix) with ESMTPS id 9C0EB2D830;
        Wed,  1 Nov 2023 16:15:03 +0000 (UTC)
Received: from jwilk.net (37.59.142.95) by DAG4EX1.mxp6.local (172.16.2.31)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.34; Wed, 1 Nov
 2023 17:15:02 +0100
Authentication-Results: garm.ovh; auth=pass (GARM-95G001b4b19a32-e33a-49b2-a984-a5017a42316f,
                    C3C47EF67A37C87AE86152C9AD52F034635D95B4) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 5.172.255.239
Date:   Wed, 1 Nov 2023 17:15:00 +0100
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Helge Kreutzmann <debian@helgefjell.de>
CC:     Alejandro Colomar <alx.manpages@gmail.com>,
        Mario =?utf-8?Q?Bl=C3=A4ttermann?= <mario.blaettermann@gmail.com>,
        <linux-man@vger.kernel.org>
Subject: Re: Issue in man page clog.3
Message-ID: <20231101161500.ko2nejsen2o3i4pj@jwilk.net>
References: <ZUJaYtPeCL1kXYwl@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZUJaYtPeCL1kXYwl@meinfjell.helgefjelltest.de>
X-Originating-IP: [37.59.142.95]
X-ClientProxiedBy: DAG8EX1.mxp6.local (172.16.2.71) To DAG4EX1.mxp6.local
 (172.16.2.31)
X-Ovh-Tracer-GUID: 2fd713af-09d1-4f83-bcb8-425a7cffb320
X-Ovh-Tracer-Id: 8756968004356069344
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvkedruddtgedgkeeiucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucenucfjughrpeffhffvvefukfhfgggtugfgjghisehtkeertddttdejnecuhfhrohhmpeflrghkuhgsucghihhlkhcuoehjfihilhhksehjfihilhhkrdhnvghtqeenucggtffrrghtthgvrhhnpeetgedvgfduueegffeftdffueeftedvgfdtteekieevhffhuefgheeuieevgfeijeenucfkphepuddvjedrtddrtddruddpfeejrdehledrudegvddrleehpdehrddujedvrddvheehrddvfeelnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehinhgvthepuddvjedrtddrtddruddpmhgrihhlfhhrohhmpeeojhifihhlkhesjhifihhlkhdrnhgvtheqpdhnsggprhgtphhtthhopedupdhrtghpthhtohepuggvsghirghnsehhvghlghgvfhhjvghllhdruggvpdgrlhigrdhmrghnphgrghgvshesghhmrghilhdrtghomhdpmhgrrhhiohdrsghlrggvthhtvghrmhgrnhhnsehgmhgrihhlrdgtohhmpdhlihhnuhigqdhmrghnsehvghgvrhdrkhgvrhhnvghlrdhorhhgpdfovfetjfhoshhtpehmohehhedvpdhmohguvgepshhmthhpohhuth
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* Helge Kreutzmann <debian@helgefjell.de>, 2023-11-01 14:02:
>Issue:    [-pi,pi] means both -pi and pi are included, this does not make sense, either one must be out of the interval?

The man page is consistent with the C standard, which says the return 
value is "in the interval [−iπ, +iπ] along the imaginary axis".

I think they mean π rounded to the nearest representable value.
And indeed, the imaginary part of clog(-1 - DBL_EPSILON * I) is -M_PI, 
and the imaginary part of clog(-1 + DBL_EPSILON * I) is +M_PI.

-- 
Jakub Wilk
