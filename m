Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 572CF680664
	for <lists+linux-man@lfdr.de>; Mon, 30 Jan 2023 08:18:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231377AbjA3HSQ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 30 Jan 2023 02:18:16 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41436 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229578AbjA3HSP (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 30 Jan 2023 02:18:15 -0500
X-Greylist: delayed 570 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Sun, 29 Jan 2023 23:18:13 PST
Received: from 8.mo552.mail-out.ovh.net (8.mo552.mail-out.ovh.net [46.105.37.156])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 20B95AD1E
        for <linux-man@vger.kernel.org>; Sun, 29 Jan 2023 23:18:13 -0800 (PST)
Received: from mxplan6.mail.ovh.net (unknown [10.109.138.5])
        by mo552.mail-out.ovh.net (Postfix) with ESMTPS id 18E0727DA2;
        Mon, 30 Jan 2023 07:08:41 +0000 (UTC)
Received: from jwilk.net (37.59.142.99) by DAG4EX1.mxp6.local (172.16.2.31)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.17; Mon, 30 Jan
 2023 08:08:40 +0100
Authentication-Results: garm.ovh; auth=pass (GARM-99G003fe9cdbe8-dcee-4d79-a24d-f6949fb6582e,
                    E811F33AA4688CD78D2BF524CCE38CE1DF5DAA0E) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 5.172.255.242
Date:   Mon, 30 Jan 2023 08:08:38 +0100
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Alejandro Colomar <alx.manpages@gmail.com>
CC:     =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>,
        <linux-man@vger.kernel.org>
Subject: Re: [PATCH 1/3] timespec.3type: tv_nsec is impl-def-type, glibc
 llong not a bug
Message-ID: <20230130070838.5mgjdbrfhtlww5t7@jwilk.net>
References: <4a67167df30db6019a6320dc92a953f9df3f4db2.1674915219.git.nabijaczleweli@nabijaczleweli.xyz>
 <cfda064c-b3f0-d541-bbee-e3a72c0b3cf3@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <cfda064c-b3f0-d541-bbee-e3a72c0b3cf3@gmail.com>
X-Originating-IP: [37.59.142.99]
X-ClientProxiedBy: DAG9EX1.mxp6.local (172.16.2.81) To DAG4EX1.mxp6.local
 (172.16.2.31)
X-Ovh-Tracer-GUID: e2c2a0ad-5551-401a-839c-a3c54db943a0
X-Ovh-Tracer-Id: 7852307428956297181
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvhedrudefuddguddtiecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecunecujfgurhepfffhvfevuffkfhggtggugfgjihesthekredttddtjeenucfhrhhomheplfgrkhhusgcuhghilhhkuceojhifihhlkhesjhifihhlkhdrnhgvtheqnecuggftrfgrthhtvghrnhepheekkeehveekkeefheegffelhedttdefkedujefgteevveehhfdtjeekleeuveeunecuffhomhgrihhnpeegkedrsghrnecukfhppeduvdejrddtrddtrddupdefjedrheelrddugedvrdelleenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepihhnvghtpeduvdejrddtrddtrddupdhmrghilhhfrhhomhepoehjfihilhhksehjfihilhhkrdhnvghtqedpnhgspghrtghpthhtohepuddprhgtphhtthhopegrlhigrdhmrghnphgrghgvshesghhmrghilhdrtghomhdpnhgrsghijhgrtgiilhgvfigvlhhisehnrggsihhjrggtiihlvgifvghlihdrgiihiidplhhinhhugidqmhgrnhesvhhgvghrrdhkvghrnhgvlhdrohhrghdpoffvtefjohhsthepmhhoheehvddpmhhouggvpehsmhhtphhouhht
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* Alejandro Colomar <alx.manpages@gmail.com>, 2023-01-29 16:48:
>>+.BR "    /*\(da*/   tv_nsec;" "  /* Nanoseconds [" 0 ", " 999999999 "] */"
>
>I'm tempted to merge this patch.  It's sooo qute /*↓*/

I want man pages legible, not cute. Please make it

   /* see below */ tv_nsec

or maybe

   long /* but see below */ tv_nsec

(given that C23 is not a thing yet).

-- 
Jakub Wilk
