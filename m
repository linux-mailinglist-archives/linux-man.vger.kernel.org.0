Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 816AC63496B
	for <lists+linux-man@lfdr.de>; Tue, 22 Nov 2022 22:36:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235110AbiKVVgE (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 22 Nov 2022 16:36:04 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59804 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235100AbiKVVgB (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 22 Nov 2022 16:36:01 -0500
X-Greylist: delayed 1197 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Tue, 22 Nov 2022 13:35:58 PST
Received: from 9.mo548.mail-out.ovh.net (9.mo548.mail-out.ovh.net [46.105.48.137])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AF6A2C2872
        for <linux-man@vger.kernel.org>; Tue, 22 Nov 2022 13:35:58 -0800 (PST)
Received: from mxplan6.mail.ovh.net (unknown [10.108.4.12])
        by mo548.mail-out.ovh.net (Postfix) with ESMTPS id C34FE23387;
        Tue, 22 Nov 2022 21:00:49 +0000 (UTC)
Received: from jwilk.net (37.59.142.97) by DAG4EX1.mxp6.local (172.16.2.31)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.16; Tue, 22 Nov
 2022 22:00:48 +0100
Authentication-Results: garm.ovh; auth=pass (GARM-97G002b1afcb66-21bf-4809-a79c-759d1f58a862,
                    17F9EC3F61C1F9B3F8D9366ECD8592C04629BAB4) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 5.172.255.63
Date:   Tue, 22 Nov 2022 22:00:46 +0100
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Alejandro Colomar <alx.manpages@gmail.com>
CC:     Jonathan Wakely <jwakely@redhat.com>,
        Paul Eggert <eggert@cs.ucla.edu>, <linux-man@vger.kernel.org>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Subject: Re: Garbled text in zic(8) man page
Message-ID: <20221122210046.ve2rugkz7pkicjta@jwilk.net>
References: <CACb0b4=Qs4oQ6LWxOveU2cc=eNzrqT7dg=cQsg41vGF84=9LiA@mail.gmail.com>
 <CACb0b4nsGQzyQ+rQf_SMMdyN1R3WSsc6grfgGUhT+fjgM2QFOg@mail.gmail.com>
 <CACb0b4=LO+jcwwrirp3iVdu2k0Y8H0PEWwdzs+Jch+D4gJxiog@mail.gmail.com>
 <dfb539ad-4a72-00a0-c75d-ead317b9ed46@gmail.com>
 <CACb0b4kD50c35XYZVX9OKgJ6n6-fPk2_Jo+-yvOOeiE1XVpVBQ@mail.gmail.com>
 <9bd0af40-a7b3-cb16-27e8-c39c620acda3@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <9bd0af40-a7b3-cb16-27e8-c39c620acda3@gmail.com>
X-Originating-IP: [37.59.142.97]
X-ClientProxiedBy: DAG9EX1.mxp6.local (172.16.2.81) To DAG4EX1.mxp6.local
 (172.16.2.31)
X-Ovh-Tracer-GUID: cb49a096-1f4f-41ca-aef4-778f8747f762
X-Ovh-Tracer-Id: 4071535541509019555
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvgedrheelgdduudegucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhepfffhvfevuffkfhggtggujghisehttdertddttddvnecuhfhrohhmpeflrghkuhgsucghihhlkhcuoehjfihilhhksehjfihilhhkrdhnvghtqeenucggtffrrghtthgvrhhnpeetgfehveekgfefjeetieevgffhjeevvddvhfeikeehvdffheeujeeujedtheehteenucffohhmrghinhepihgrnhgrrdhorhhgpdhgihhthhhusgdrtghomhenucfkphepuddvjedrtddrtddruddpfeejrdehledrudegvddrleejnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehinhgvthepuddvjedrtddrtddruddpmhgrihhlfhhrohhmpeeojhifihhlkhesjhifihhlkhdrnhgvtheqpdhnsggprhgtphhtthhopedupdhrtghpthhtoheprghlgidrmhgrnhhprghgvghssehgmhgrihhlrdgtohhmpdhjfigrkhgvlhihsehrvgguhhgrthdrtghomhdpvghgghgvrhhtsegtshdruhgtlhgrrdgvughupdhlihhnuhigqdhmrghnsehvghgvrhdrkhgvrhhnvghlrdhorhhgpdhmthhkrdhmrghnphgrghgvshesghhmrghilhdrtghomhdpoffvtefjohhsthepmhhoheegkedpmhhouggvpehsmhhtphhouhht
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* Alejandro Colomar <alx.manpages@gmail.com>, 2022-11-22 21:37:
>>Upstream is https://www.iana.org/time-zones
>
>Ahh, I remember last time I wanted to check the source code I desisted 
>because there's no git repository, and I didn't want to be messing with 
>tarballs.  But getting the pages from the tarball seems easy, so I'll 
>do that.
>
>Paul, do you have a public git (or whatever) repository that I can 
>check out?

The home page points to <https://data.iana.org/time-zones/tz-link.html>, 
which says:

     git clone https://github.com/eggert/tz

-- 
Jakub Wilk
