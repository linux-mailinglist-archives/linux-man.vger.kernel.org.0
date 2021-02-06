Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4EECF311CD0
	for <lists+linux-man@lfdr.de>; Sat,  6 Feb 2021 12:09:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229541AbhBFLJD (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 6 Feb 2021 06:09:03 -0500
Received: from 7.mo51.mail-out.ovh.net ([46.105.33.25]:46362 "EHLO
        7.mo51.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229529AbhBFLJC (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 6 Feb 2021 06:09:02 -0500
X-Greylist: delayed 1523 seconds by postgrey-1.27 at vger.kernel.org; Sat, 06 Feb 2021 06:09:01 EST
Received: from mxplan6.mail.ovh.net (unknown [10.109.138.118])
        by mo51.mail-out.ovh.net (Postfix) with ESMTPS id 20E6B2637E6;
        Sat,  6 Feb 2021 11:42:56 +0100 (CET)
Received: from jwilk.net (37.59.142.106) by DAG4EX2.mxp6.local (172.16.2.32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2; Sat, 6 Feb 2021
 11:42:54 +0100
Authentication-Results: garm.ovh; auth=pass (GARM-106R006a4eaeb10-b875-48f6-bfac-b8ce502f6a7e,
                    BDE223F477C8D6F048CCDACB4016D8D7C5E7A21E) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 5.172.255.84
Date:   Sat, 6 Feb 2021 11:42:47 +0100
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Michael Kerrisk <mtk.manpages@gmail.com>
CC:     Walter Harms <wharms@bfs.de>, <linux-man@vger.kernel.org>
Subject: Re: rfc: free and errno
Message-ID: <20210206104247.w4be4spmmbj7rbey@jwilk.net>
References: <2ea085f2674543b1a1fb41702bc959c7@bfs.de>
 <CAKgNAkh-y9TOWVy9ot25ig_XR4u4VSRz3=qEUezYKc0u0PVyug@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <CAKgNAkh-y9TOWVy9ot25ig_XR4u4VSRz3=qEUezYKc0u0PVyug@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-Originating-IP: [37.59.142.106]
X-ClientProxiedBy: DAG1EX1.mxp6.local (172.16.2.1) To DAG4EX2.mxp6.local
 (172.16.2.32)
X-Ovh-Tracer-GUID: bbb73596-21b3-4333-853f-0e365f05f808
X-Ovh-Tracer-Id: 8263823842340296669
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduledrgeekgddulecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpeffhffvuffkfhggtggujggfihesthdtredttdervdenucfhrhhomheplfgrkhhusgcuhghilhhkuceojhifihhlkhesjhifihhlkhdrnhgvtheqnecuggftrfgrthhtvghrnheptdevffefieekvdekhefhiedutdevvdeffeeuffdvveeljeeghfekheekleeijeeinecuffhomhgrihhnpegsuhhshigsohigrdhnvghtpdhsohhurhgtvgifrghrvgdrohhrghenucfkpheptddrtddrtddrtddpfeejrdehledrudegvddruddtieenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphdqohhuthdphhgvlhhopehmgihplhgrnheirdhmrghilhdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomhepjhifihhlkhesjhifihhlkhdrnhgvthdprhgtphhtthhopehlihhnuhigqdhmrghnsehvghgvrhdrkhgvrhhnvghlrdhorhhg
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* Michael Kerrisk <mtk.manpages@gmail.com>, 2021-02-06, 10:49:
>On Mon, 1 Feb 2021 at 12:19, Walter Harms <wharms@bfs.de> wrote:
>>free() is generaly assumed not to modify errno.
>>
>>Lately there was a bugfix posting on the busybox mailing list, because:
>>
>>"musl libc's mallocing free() may modify errno if kernel does not 
>>support MADV_FREE which causes echo to echo with error when it 
>>shouldn't."
>
>URL please.

http://lists.busybox.net/pipermail/busybox/2021-January/088491.html 
probably.

glibc's free() also can set errno in some circumstances:
https://sourceware.org/bugzilla/show_bug.cgi?id=17924

-- 
Jakub Wilk
