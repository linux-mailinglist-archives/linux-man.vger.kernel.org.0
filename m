Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 92D8959A701
	for <lists+linux-man@lfdr.de>; Fri, 19 Aug 2022 22:23:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1350622AbiHSUVI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 19 Aug 2022 16:21:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44112 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1350392AbiHSUVI (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 19 Aug 2022 16:21:08 -0400
X-Greylist: delayed 3833 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Fri, 19 Aug 2022 13:21:06 PDT
Received: from 3.mo548.mail-out.ovh.net (3.mo548.mail-out.ovh.net [188.165.32.156])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 46CF2107F3E
        for <linux-man@vger.kernel.org>; Fri, 19 Aug 2022 13:21:06 -0700 (PDT)
Received: from mxplan6.mail.ovh.net (unknown [10.109.138.188])
        by mo548.mail-out.ovh.net (Postfix) with ESMTPS id BAB5720836;
        Fri, 19 Aug 2022 20:21:04 +0000 (UTC)
Received: from jwilk.net (37.59.142.100) by DAG4EX1.mxp6.local (172.16.2.31)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.9; Fri, 19 Aug
 2022 22:21:04 +0200
Authentication-Results: garm.ovh; auth=pass (GARM-100R003e5d68281-36b6-476f-ae55-25359a310148,
                    504186192CBDCCB46C37AA7B8534EBBC1F215137) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 5.172.255.225
Date:   Fri, 19 Aug 2022 22:21:03 +0200
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Michael Kerrisk <mtk.manpages@gmail.com>
CC:     "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        linux-man <linux-man@vger.kernel.org>
Subject: Re: [PATCH] drop spurious t comment header
Message-ID: <20220819202103.potxyqmj5axhjzye@jwilk.net>
References: <20200723215333.13779-1-vapier@gentoo.org>
 <20200724000315.yx5otylik6oqqy6d@localhost.localdomain>
 <CAKgNAkjwwxrM_ry-b1rtrVc8YjfNE=p4iAht85P+mBs6Eq0U-w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <CAKgNAkjwwxrM_ry-b1rtrVc8YjfNE=p4iAht85P+mBs6Eq0U-w@mail.gmail.com>
X-Originating-IP: [37.59.142.100]
X-ClientProxiedBy: DAG3EX2.mxp6.local (172.16.2.22) To DAG4EX1.mxp6.local
 (172.16.2.31)
X-Ovh-Tracer-GUID: 910a2e26-833c-4fd7-9d55-10b99f837ecd
X-Ovh-Tracer-Id: 17343362167622260701
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvfedrvdeiuddgudehudcutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpeffhffvvefukfhfgggtuggjihesthdtredttddtvdenucfhrhhomheplfgrkhhusgcuhghilhhkuceojhifihhlkhesjhifihhlkhdrnhgvtheqnecuggftrfgrthhtvghrnheptddvtddvuefgjeeuveeijeekuddvhfevuedujeevueekffeltdeigfdvkeetveeunecuffhomhgrihhnpeguvggsihgrnhdrohhrghenucfkpheptddrtddrtddrtddpfeejrdehledrudegvddruddttdenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphhouhhtpdhhvghlohepmhigphhlrghniedrmhgrihhlrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpehjfihilhhksehjfihilhhkrdhnvghtpdhnsggprhgtphhtthhopedupdhrtghpthhtoheplhhinhhugidqmhgrnhesvhhgvghrrdhkvghrnhgvlhdrohhrghdpoffvtefjohhsthepmhhoheegke
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* Michael Kerrisk <mtk.manpages@gmail.com>, 2020-07-24 12:13:
>For 15 years or at least, I've not paid any attention to adding the 't' 
>comments when I added tables to pages, and I do recall anyone reporting 
>ill effects. So, I'm inclined to apply Mike's patch, but will hold off 
>a moment, in case there's other feedback.

I'm a bit late, but...

Lintian, the Debian package checker, sets the MANROFFSEQ environment 
variable to empty string as a speed optimization. This turns off loading 
preprocessors that weren't explicitly declared in the source. The lack 
of '\" comments can cause false positives (and maybe also false 
negatives?) in Lintian.

The use of $MANROFFSEQ for Lintian was proposed here: 
https://bugs.debian.org/677874

Beware that the man(1) man page does not correctly explain what 
$MANROFFSEQ does: https://bugs.debian.org/971009

-- 
Jakub Wilk
