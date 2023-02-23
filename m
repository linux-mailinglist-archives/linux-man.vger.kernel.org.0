Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 108B36A1229
	for <lists+linux-man@lfdr.de>; Thu, 23 Feb 2023 22:38:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229608AbjBWViL (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 23 Feb 2023 16:38:11 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50730 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229712AbjBWViL (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 23 Feb 2023 16:38:11 -0500
Received: from smtpout2.mo529.mail-out.ovh.net (smtpout2.mo529.mail-out.ovh.net [79.137.123.220])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 04E1D2CFD1
        for <linux-man@vger.kernel.org>; Thu, 23 Feb 2023 13:38:04 -0800 (PST)
Received: from mxplan6.mail.ovh.net (unknown [10.108.16.220])
        by mo529.mail-out.ovh.net (Postfix) with ESMTPS id 9495A211F1;
        Thu, 23 Feb 2023 21:38:02 +0000 (UTC)
Received: from jwilk.net (37.59.142.97) by DAG4EX1.mxp6.local (172.16.2.31)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.21; Thu, 23 Feb
 2023 22:38:01 +0100
Authentication-Results: garm.ovh; auth=pass (GARM-97G0029d789bea-d666-4596-b890-b5f46d14bb19,
                    AAC3253087D8F9E979B4C1FEAA7584209784588C) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 5.172.255.149
Date:   Thu, 23 Feb 2023 22:37:58 +0100
From:   Jakub Wilk <jwilk@jwilk.net>
To:     enh <enh@google.com>
CC:     <linux-man@vger.kernel.org>,
        Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        Rob Landley <rob@landley.net>
Subject: Re: [PATCH] fseek.3: incorporate fseeko()/ftello().
Message-ID: <20230223213758.pixv4m6uf4gzhxxo@jwilk.net>
References: <CAJgzZoqxNGmDMbp8Dh0n5TQwDu-8POf8=9fyaaRUwLVRw2skZg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <CAJgzZoqxNGmDMbp8Dh0n5TQwDu-8POf8=9fyaaRUwLVRw2skZg@mail.gmail.com>
X-Originating-IP: [37.59.142.97]
X-ClientProxiedBy: DAG1EX1.mxp6.local (172.16.2.1) To DAG4EX1.mxp6.local
 (172.16.2.31)
X-Ovh-Tracer-GUID: 20a8f442-5f4c-48b9-a826-f86d2709f678
X-Ovh-Tracer-Id: 15905025038249416611
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvhedrudekuddgudegkecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecunecujfgurhepfffhvfevuffkfhggtggujghisehttdertddttddvnecuhfhrohhmpeflrghkuhgsucghihhlkhcuoehjfihilhhksehjfihilhhkrdhnvghtqeenucggtffrrghtthgvrhhnpeeutddtteelhfffuddvhefgfedujeeltdekheduveekkeelfeduuedvgeejudffgfenucfkphepuddvjedrtddrtddruddpfeejrdehledrudegvddrleejnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehinhgvthepuddvjedrtddrtddruddpmhgrihhlfhhrohhmpeeojhifihhlkhesjhifihhlkhdrnhgvtheqpdhnsggprhgtphhtthhopedupdhrtghpthhtohepvghnhhesghhoohhglhgvrdgtohhmpdhlihhnuhigqdhmrghnsehvghgvrhdrkhgvrhhnvghlrdhorhhgpdgrlhigrdhmrghnphgrghgvshesghhmrghilhdrtghomhdpmhhtkhdrmhgrnhhprghgvghssehgmhgrihhlrdgtohhmpdhrohgssehlrghnughlvgihrdhnvghtpdfovfetjfhoshhtpehmohehvdelpdhmohguvgepshhmthhpohhuth
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* enh <enh@google.com>, 2023-02-22 12:42:
> The
>+.BR fseeko ()
>+end

s/end/and/

>+.BR ftello ()
>+functions are similar, except that the

"similar, except..." sounds awkward to me. (And it's not the wording 
fseeko.3 used.)

-- 
Jakub Wilk
