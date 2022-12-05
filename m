Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A238B6428D4
	for <lists+linux-man@lfdr.de>; Mon,  5 Dec 2022 13:56:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229917AbiLEM4r (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 5 Dec 2022 07:56:47 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54476 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231997AbiLEM4p (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 5 Dec 2022 07:56:45 -0500
Received: from 9.mo548.mail-out.ovh.net (9.mo548.mail-out.ovh.net [46.105.48.137])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 31A341B9CF
        for <linux-man@vger.kernel.org>; Mon,  5 Dec 2022 04:56:44 -0800 (PST)
Received: from mxplan6.mail.ovh.net (unknown [10.108.16.220])
        by mo548.mail-out.ovh.net (Postfix) with ESMTPS id 2468523C31;
        Mon,  5 Dec 2022 12:38:46 +0000 (UTC)
Received: from jwilk.net (37.59.142.106) by DAG4EX1.mxp6.local (172.16.2.31)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.16; Mon, 5 Dec
 2022 13:38:26 +0100
Authentication-Results: garm.ovh; auth=pass (GARM-106R006b1ebd23d-5cc5-48eb-996c-80ff584541b3,
                    2BD4DE20357223365A5F6F2D36CBE58CF9909313) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 5.172.255.142
Date:   Mon, 5 Dec 2022 13:38:09 +0100
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Alejandro Colomar <alx.manpages@gmail.com>
CC:     Helge Kreutzmann <debian@helgefjell.de>,
        Mario =?utf-8?Q?Bl=C3=A4ttermann?= <mario.blaettermann@gmail.com>,
        <linux-man@vger.kernel.org>
Subject: Re: Issue in man page mount_namespaces.7
Message-ID: <20221205123809.5p66jmpalhd4bhoq@jwilk.net>
References: <20221204090711.GA370@Debian-50-lenny-64-minimal>
 <4ac1d53f-ae77-0bc3-530c-7d1a29af78ff@gmail.com>
 <20221204140009.GD441@Debian-50-lenny-64-minimal>
 <4a2140e0-4589-87f3-e579-5575aab5e284@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <4a2140e0-4589-87f3-e579-5575aab5e284@gmail.com>
X-Originating-IP: [37.59.142.106]
X-ClientProxiedBy: DAG5EX2.mxp6.local (172.16.2.42) To DAG4EX1.mxp6.local
 (172.16.2.31)
X-Ovh-Tracer-GUID: 58b44420-9292-4b0c-a922-1279265c7760
X-Ovh-Tracer-Id: 16595764629205211104
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvhedrudeggdegfecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecunecujfgurhepfffhvfevuffkfhggtggugfgjihesthekredttddtjeenucfhrhhomheplfgrkhhusgcuhghilhhkuceojhifihhlkhesjhifihhlkhdrnhgvtheqnecuggftrfgrthhtvghrnhepteegvdfgudeugefffedtffeufeetvdfgtdetkeeivefhhfeugfehueeivefgieejnecukfhppeduvdejrddtrddtrddupdefjedrheelrddugedvrddutdeinecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehinhgvthepuddvjedrtddrtddruddpmhgrihhlfhhrohhmpeeojhifihhlkhesjhifihhlkhdrnhgvtheqpdhnsggprhgtphhtthhopedupdhrtghpthhtoheprghlgidrmhgrnhhprghgvghssehgmhgrihhlrdgtohhmpdguvggsihgrnheshhgvlhhgvghfjhgvlhhlrdguvgdpmhgrrhhiohdrsghlrggvthhtvghrmhgrnhhnsehgmhgrihhlrdgtohhmpdhlihhnuhigqdhmrghnsehvghgvrhdrkhgvrhhnvghlrdhorhhgpdfovfetjfhoshhtpehmohehgeekpdhmohguvgepshhmthhpohhuth
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* Alejandro Colomar <alx.manpages@gmail.com>, 2022-12-04 15:06:
>>>>Issue:    mount point I<B> → mount I<B>
>>>>
>>>>"Here, I<B> is the destination mount, and I<b> is a subdirectory path under"
>>>>"the mount point I<B>.  The propagation type of the resulting mount, I<B/b>,"
>>>>"follows the same rules as for a bind mount, where the propagation type of"
>>>>"the source mount is considered always to be private."
>>>
>>>I'm not sure about this one.  If we change that wording, I'd like to 
>>>make sure we don't lose any details in the information.  Please CC 
>>>any related kernel developers, and suggest them review the 
>>>documentation for more consistent language.
>>
>>Until recently, there was "mount point" used all over this man pages. 
>>This was changed to "mount" in one of the previous release of man 
>>pages.
>
>I didn't know that; please point to the commit that did that.

Probably this one:

   commit 8c9a82742976dc98578338ef886776f06c0ab3f2
   Author: Michael Kerrisk <mtk.manpages@gmail.com>
   Date:   2021-08-18 01:34:54 +0200
   
       mount_namespaces.7: Terminology clean-up: "mount point" ==> "mount"
   
       Many times, this page use the terminology "mount point", where
       "mount" would be better. A "mount point" is the location at which
       a mount is attached. A "mount" is an association between a
       filesystem and a mount point.
   
       Signed-off-by: Michael Kerrisk <mtk.manpages@gmail.com>

Both terms are valid, but they have different meanings.

(No idea which one is appropriate in the paragraph in question.)

-- 
Jakub Wilk
