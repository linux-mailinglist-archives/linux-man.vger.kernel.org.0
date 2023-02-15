Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0E94669824A
	for <lists+linux-man@lfdr.de>; Wed, 15 Feb 2023 18:37:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229675AbjBORhq (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 15 Feb 2023 12:37:46 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42864 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229551AbjBORhp (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 15 Feb 2023 12:37:45 -0500
Received: from 8.mo552.mail-out.ovh.net (8.mo552.mail-out.ovh.net [46.105.37.156])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 22ED930DA
        for <linux-man@vger.kernel.org>; Wed, 15 Feb 2023 09:37:43 -0800 (PST)
Received: from mxplan6.mail.ovh.net (unknown [10.108.20.240])
        by mo552.mail-out.ovh.net (Postfix) with ESMTPS id CFAE81FDCB;
        Wed, 15 Feb 2023 17:17:52 +0000 (UTC)
Received: from jwilk.net (37.59.142.98) by DAG4EX2.mxp6.local (172.16.2.32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.17; Wed, 15 Feb
 2023 18:17:51 +0100
Authentication-Results: garm.ovh; auth=pass (GARM-98R0022cfb62dd-d01e-4408-8139-7f157961b847,
                    5A563A1004FA110C734255ED42C51A3830B5054E) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 5.172.255.182
Date:   Wed, 15 Feb 2023 18:17:48 +0100
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Tom Schwindl <schwindl@posteo.de>
CC:     Alejandro Colomar <alx@kernel.org>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        <linux-man@vger.kernel.org>
Subject: Re: [PATCH] memcmp.3: wfix
Message-ID: <20230215171748.mni23y3wumtoe5fy@jwilk.net>
References: <20230215130750.30037-1-schwindl@posteo.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <20230215130750.30037-1-schwindl@posteo.de>
X-Originating-IP: [37.59.142.98]
X-ClientProxiedBy: DAG6EX2.mxp6.local (172.16.2.52) To DAG4EX2.mxp6.local
 (172.16.2.32)
X-Ovh-Tracer-GUID: 9d54d4bf-4b0b-4ee2-83c5-ab14882f3028
X-Ovh-Tracer-Id: 1423137485389289440
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvhedrudeihedgledvucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhepfffhvfevuffkfhggtggujghisehttdertddttddvnecuhfhrohhmpeflrghkuhgsucghihhlkhcuoehjfihilhhksehjfihilhhkrdhnvghtqeenucggtffrrghtthgvrhhnpeeutddtteelhfffuddvhefgfedujeeltdekheduveekkeelfeduuedvgeejudffgfenucfkphepuddvjedrtddrtddruddpfeejrdehledrudegvddrleeknecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehinhgvthepuddvjedrtddrtddruddpmhgrihhlfhhrohhmpeeojhifihhlkhesjhifihhlkhdrnhgvtheqpdhnsggprhgtphhtthhopedupdhrtghpthhtohepshgthhifihhnughlsehpohhsthgvohdruggvpdgrlhigsehkvghrnhgvlhdrohhrghdpghdrsghrrghnuggvnhdrrhhosghinhhsohhnsehgmhgrihhlrdgtohhmpdhlihhnuhigqdhmrghnsehvghgvrhdrkhgvrhhnvghlrdhorhhgpdfovfetjfhoshhtpehmohehhedvpdhmohguvgepshhmthhpohhuth
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* Tom Schwindl <schwindl@posteo.de>, 2023-02-15 13:07:
>-On Linux, it may be necessary to implement such a function oneself.

This sounds awkward to me too.

>+On Linux, it may be necessary to implement such a function yourself.

This is better, but I'd use active voice here:

   On Linux, you may need to implement such a function yourself.

(I'm not a native speaker.)

-- 
Jakub Wilk
