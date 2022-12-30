Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4DEB46598CC
	for <lists+linux-man@lfdr.de>; Fri, 30 Dec 2022 14:39:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230093AbiL3NjS (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 30 Dec 2022 08:39:18 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40634 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229456AbiL3NjR (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 30 Dec 2022 08:39:17 -0500
Received: from smtpout2.mo529.mail-out.ovh.net (smtpout2.mo529.mail-out.ovh.net [79.137.123.220])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 43223DE8D
        for <linux-man@vger.kernel.org>; Fri, 30 Dec 2022 05:39:15 -0800 (PST)
Received: from mxplan6.mail.ovh.net (unknown [10.109.156.26])
        by mo529.mail-out.ovh.net (Postfix) with ESMTPS id D85C614FD2AA4;
        Fri, 30 Dec 2022 14:39:12 +0100 (CET)
Received: from jwilk.net (37.59.142.104) by DAG4EX1.mxp6.local (172.16.2.31)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.16; Fri, 30 Dec
 2022 14:39:11 +0100
Authentication-Results: garm.ovh; auth=pass (GARM-104R005a81af917-beb4-4e0e-9cc7-5ae5e7e277d6,
                    61162F1CAD51C30F4082BD59ECF03BCF2A04D20D) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 5.172.255.131
Date:   Fri, 30 Dec 2022 14:39:11 +0100
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Samanta Navarro <ferivoz@riseup.net>
CC:     <linux-man@vger.kernel.org>,
        Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Subject: Re: [PATCH 1/2] bpf-helpers.7, open_how.2type, string_copying.7: tfix
Message-ID: <20221230133911.nzotjtyne5jkdcnp@jwilk.net>
References: <20221230120302.kzclmkh25r46lh4o@localhost>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <20221230120302.kzclmkh25r46lh4o@localhost>
X-Originating-IP: [37.59.142.104]
X-ClientProxiedBy: DAG2EX2.mxp6.local (172.16.2.12) To DAG4EX1.mxp6.local
 (172.16.2.31)
X-Ovh-Tracer-GUID: 1114a9c0-f487-40f7-95d8-3f863415ec57
X-Ovh-Tracer-Id: 16861477007013435360
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvhedrieeigdehhecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecunecujfgurhepfffhvfevuffkfhggtggujghisehttdertddttddvnecuhfhrohhmpeflrghkuhgsucghihhlkhcuoehjfihilhhksehjfihilhhkrdhnvghtqeenucggtffrrghtthgvrhhnpeeutddtteelhfffuddvhefgfedujeeltdekheduveekkeelfeduuedvgeejudffgfenucfkphepuddvjedrtddrtddruddpfeejrdehledrudegvddruddtgeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepihhnvghtpeduvdejrddtrddtrddupdhmrghilhhfrhhomhepoehjfihilhhksehjfihilhhkrdhnvghtqedpnhgspghrtghpthhtohepuddprhgtphhtthhopehfvghrihhvohiisehrihhsvghuphdrnhgvthdplhhinhhugidqmhgrnhesvhhgvghrrdhkvghrnhgvlhdrohhrghdprghlgidrmhgrnhhprghgvghssehgmhgrihhlrdgtohhmpdhmthhkrdhmrghnphgrghgvshesghhmrghilhdrtghomhdpoffvtefjohhsthepmhhohedvledpmhhouggvpehsmhhtphhouhht
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* Samanta Navarro <ferivoz@riseup.net>, 2022-12-30 12:03:
> man7/bpf-helpers.7      | 6 +++---

This page should not be edited manually, because it was generated from 
the kernel sources.

AFAICS the misspellings in question have been already fixed there, so it 
should be a matter of regenerating the page.

-- 
Jakub Wilk
