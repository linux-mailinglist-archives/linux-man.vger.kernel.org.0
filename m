Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9C230489D6C
	for <lists+linux-man@lfdr.de>; Mon, 10 Jan 2022 17:23:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237222AbiAJQXN convert rfc822-to-8bit (ORCPT
        <rfc822;lists+linux-man@lfdr.de>); Mon, 10 Jan 2022 11:23:13 -0500
Received: from 7.mo548.mail-out.ovh.net ([46.105.33.25]:44933 "EHLO
        7.mo548.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237264AbiAJQXN (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 10 Jan 2022 11:23:13 -0500
X-Greylist: delayed 8707 seconds by postgrey-1.27 at vger.kernel.org; Mon, 10 Jan 2022 11:23:13 EST
Received: from mxplan6.mail.ovh.net (unknown [10.109.156.235])
        by mo548.mail-out.ovh.net (Postfix) with ESMTPS id CA69020EF5;
        Mon, 10 Jan 2022 13:58:03 +0000 (UTC)
Received: from jwilk.net (37.59.142.101) by DAG4EX2.mxp6.local (172.16.2.32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.17; Mon, 10 Jan
 2022 14:58:01 +0100
Authentication-Results: garm.ovh; auth=pass (GARM-101G00428a7357b-0d02-4dcf-a4a1-4b53d9a7d13f,
                    DE943CAD4DEBA8806CEBEDCA4376D30DB4AB08BD) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 5.172.255.144
Date:   Mon, 10 Jan 2022 14:57:49 +0100
From:   Jakub Wilk <jwilk@jwilk.net>
To:     =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
CC:     Alejandro Colomar <alx.manpages@gmail.com>,
        <linux-man@vger.kernel.org>
Subject: Re: [PATCH] personality.2: WHOLE_SECONDS never did anything
Message-ID: <20220110135749.y2w6bpryrsk3qsvm@jwilk.net>
References: <20220109155107.uthnq5f4zay5pnq4@tarta.nabijaczleweli.xyz>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8BIT
In-Reply-To: <20220109155107.uthnq5f4zay5pnq4@tarta.nabijaczleweli.xyz>
X-Originating-IP: [37.59.142.101]
X-ClientProxiedBy: DAG3EX2.mxp6.local (172.16.2.22) To DAG4EX2.mxp6.local
 (172.16.2.32)
X-Ovh-Tracer-GUID: 18fd8e1c-5a93-4a61-8a99-6ac134b4f0c4
X-Ovh-Tracer-Id: 4281515871435282397
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 35
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvuddrudehuddgfeefucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucgfrhhlucfvnfffucdlfeehmdenucfjughrpeffhffvuffkfhggtggugfgjihesthhqredttddtjeenucfhrhhomheplfgrkhhusgcuhghilhhkuceojhifihhlkhesjhifihhlkhdrnhgvtheqnecuggftrfgrthhtvghrnhepfedvhfehjeeukeejhfefhfehlefhvdehjeehteejudfhleevgeejkeejtdetveefnecukfhppedtrddtrddtrddtpdefjedrheelrddugedvrddutddunecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhpohhuthdphhgvlhhopehmgihplhgrnheirdhmrghilhdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomhepjhifihhlkhesjhifihhlkhdrnhgvthdprhgtphhtthhopehlihhnuhigqdhmrghnsehvghgvrhdrkhgvrhhnvghlrdhorhhg
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* наб <nabijaczleweli@nabijaczleweli.xyz>, 2022-01-09, 16:51:
>--- a/man2/personality.2
>+++ b/man2/personality.2
>@@ -120,8 +120,8 @@ report a 2.6.40+ version number rather than a 3.x version number.
> Added as a stopgap measure to support broken applications that
> could not handle the kernel version-numbering switch from 2.6.x to 3.x.
> .TP
>-.BR WHOLE_SECONDS " (since Linux 1.2.0)"
>-No effects(?).
>+.BR WHOLE_SECONDS " (since Linux 1.1.14)"
>+No effect.

But in 1.1.14 the syscall in question didn't exist yet, and the constant 
had a different value than currently. (Both things changed in 1.1.20.)

Further down the man page says: "This system call first appeared in 
Linux 1.1.20 (and thus first in a stable kernel release with Linux 
1.2.0)"

So I think it's on purpose that only stable versions are mentioned 
elsewhere. I'd keep the version number as is.

-- 
Jakub Wilk
