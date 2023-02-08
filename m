Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 485F668FA32
	for <lists+linux-man@lfdr.de>; Wed,  8 Feb 2023 23:19:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232395AbjBHWTg (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 8 Feb 2023 17:19:36 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43336 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232394AbjBHWTf (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 8 Feb 2023 17:19:35 -0500
X-Greylist: delayed 4648 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Wed, 08 Feb 2023 14:19:33 PST
Received: from 8.mo548.mail-out.ovh.net (8.mo548.mail-out.ovh.net [46.105.45.231])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B0E2C22DD6
        for <linux-man@vger.kernel.org>; Wed,  8 Feb 2023 14:19:33 -0800 (PST)
Received: from mxplan6.mail.ovh.net (unknown [10.108.1.125])
        by mo548.mail-out.ovh.net (Postfix) with ESMTPS id E6A4421AB8;
        Wed,  8 Feb 2023 21:00:49 +0000 (UTC)
Received: from jwilk.net (37.59.142.106) by DAG4EX1.mxp6.local (172.16.2.31)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.17; Wed, 8 Feb
 2023 22:00:49 +0100
Authentication-Results: garm.ovh; auth=pass (GARM-106R0064440b74c-cfb5-4f62-800e-e122532b8ec9,
                    B413E5F6520D8A934FFE2695BEAF4415CF07930B) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 5.172.255.182
Date:   Wed, 8 Feb 2023 22:00:47 +0100
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Tom Schwindl <schwindl@posteo.de>
CC:     Alejandro Colomar <alx.manpages@gmail.com>,
        Brian Inglis <Brian.Inglis@Shaw.ca>,
        <linux-man@vger.kernel.org>
Subject: Re: Using C23 digit separators not locale digit grouping characters
Message-ID: <20230208210047.53poygyjqxffxodn@jwilk.net>
References: <19a71139-7807-2692-3eec-16a0f754911d@Shaw.ca>
 <717e8fb9-9159-65f8-093e-a117c82be704@gmail.com>
 <aebef9ae-1bd0-b0e7-b333-7269dbaf50a2@Shaw.ca>
 <5c2be1e7-4c75-dc20-8d2e-a528edea7e32@gmail.com>
 <f93b5307-4f11-eeeb-3a52-1dc1b4ea0ac8@Shaw.ca>
 <8ecb3f01-2035-9408-9605-1e64e6f25b5a@gmail.com>
 <CQ8YOCHX1IZ1.C1YACUOT0QD3@morphine>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <CQ8YOCHX1IZ1.C1YACUOT0QD3@morphine>
X-Originating-IP: [37.59.142.106]
X-ClientProxiedBy: DAG9EX1.mxp6.local (172.16.2.81) To DAG4EX1.mxp6.local
 (172.16.2.31)
X-Ovh-Tracer-GUID: 95a32c8f-e653-4176-93e5-ed154bc2ba42
X-Ovh-Tracer-Id: 973058995782080480
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvhedrudehuddgkeduucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhepfffhvfevuffkfhggtggujghisehttdertddttddvnecuhfhrohhmpeflrghkuhgsucghihhlkhcuoehjfihilhhksehjfihilhhkrdhnvghtqeenucggtffrrghtthgvrhhnpeeutddtteelhfffuddvhefgfedujeeltdekheduveekkeelfeduuedvgeejudffgfenucfkphepuddvjedrtddrtddruddpfeejrdehledrudegvddruddtieenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepihhnvghtpeduvdejrddtrddtrddupdhmrghilhhfrhhomhepoehjfihilhhksehjfihilhhkrdhnvghtqedpnhgspghrtghpthhtohepuddprhgtphhtthhopehstghhfihinhgulhesphhoshhtvghordguvgdprghlgidrmhgrnhhprghgvghssehgmhgrihhlrdgtohhmpdeurhhirghnrdfknhhglhhishesufhhrgifrdgtrgdplhhinhhugidqmhgrnhesvhhgvghrrdhkvghrnhgvlhdrohhrghdpoffvtefjohhsthepmhhoheegkedpmhhouggvpehsmhhtphhouhht
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* Tom Schwindl <schwindl@posteo.de>, 2023-02-03 13:27:
>I wonder if I'm the only one who thinks that the digit separators look 
>irritating for both, hex and octal.

Not only you.

I think C23's choice of separator is particularly bad. I found underscores 
(used in Perl, Ruby, Python 3, Java, Rust, and likely many others) more 
palatable.

-- 
Jakub Wilk
