Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4959768E1F2
	for <lists+linux-man@lfdr.de>; Tue,  7 Feb 2023 21:35:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229457AbjBGUft (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 7 Feb 2023 15:35:49 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34832 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229992AbjBGUfs (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 7 Feb 2023 15:35:48 -0500
Received: from 1.mo552.mail-out.ovh.net (1.mo552.mail-out.ovh.net [178.32.96.117])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7979338019
        for <linux-man@vger.kernel.org>; Tue,  7 Feb 2023 12:35:46 -0800 (PST)
Received: from mxplan6.mail.ovh.net (unknown [10.108.4.132])
        by mo552.mail-out.ovh.net (Postfix) with ESMTPS id F24FF29C54;
        Tue,  7 Feb 2023 20:26:47 +0000 (UTC)
Received: from jwilk.net (37.59.142.99) by DAG4EX1.mxp6.local (172.16.2.31)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.17; Tue, 7 Feb
 2023 21:26:47 +0100
Authentication-Results: garm.ovh; auth=pass (GARM-99G00386a5cb52-ad43-4387-b7c6-b73dd350eff4,
                    4730C7FD3C8BF8B026F70320F7F88D0531F9AA9D) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 5.172.255.70
Date:   Tue, 7 Feb 2023 21:26:46 +0100
From:   Jakub Wilk <jwilk@jwilk.net>
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
CC:     <platform-testers@gnu.org>, <groff@gnu.org>,
        <linux-man@vger.kernel.org>
Subject: Re: verification instructions for groff 1.23.0.rc2
Message-ID: <20230207202646.rrqn2qrlzag4al4k@jwilk.net>
References: <20230204184818.ich3vavrjsdg7hxd@illithid>
 <20230204222031.yp5sxjbtovcrdzi6@illithid>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <20230204222031.yp5sxjbtovcrdzi6@illithid>
X-Originating-IP: [37.59.142.99]
X-ClientProxiedBy: DAG3EX1.mxp6.local (172.16.2.21) To DAG4EX1.mxp6.local
 (172.16.2.31)
X-Ovh-Tracer-GUID: 81daebc3-0adb-4f07-b61d-3f63a9fbe29a
X-Ovh-Tracer-Id: 12972337255869634528
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvhedrudegkedgudefgecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpeffhffvvefukfhfgggtuggjihesthdtredttddtvdenucfhrhhomheplfgrkhhusgcuhghilhhkuceojhifihhlkhesjhifihhlkhdrnhgvtheqnecuggftrfgrthhtvghrnheptddvtddvuefgjeeuveeijeekuddvhfevuedujeevueekffeltdeigfdvkeetveeunecuffhomhgrihhnpeguvggsihgrnhdrohhrghenucfkphepuddvjedrtddrtddruddpfeejrdehledrudegvddrleelnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehinhgvthepuddvjedrtddrtddruddpmhgrihhlfhhrohhmpeeojhifihhlkhesjhifihhlkhdrnhgvtheqpdhnsggprhgtphhtthhopedupdhrtghpthhtohepghdrsghrrghnuggvnhdrrhhosghinhhsohhnsehgmhgrihhlrdgtohhmpdhplhgrthhfohhrmhdqthgvshhtvghrshesghhnuhdrohhrghdpghhrohhffhesghhnuhdrohhrghdplhhinhhugidqmhgrnhesvhhgvghrrdhkvghrnhgvlhdrohhrghdpoffvtefjohhsthepmhhoheehvddpmhhouggvpehsmhhtphhouhht
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* G. Branden Robinson <g.branden.robinson@gmail.com>, 2023-02-04 16:20:
>      gpg --keyserver pgp.mit.edu --recv-keys \
>        2D0C08D2B0AD0D3D8626670272D23FBAC99D4E75

Beware that this may import unrelated keys to your keyring:
https://bugs.debian.org/909755

-- 
Jakub Wilk
