Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1323448830F
	for <lists+linux-man@lfdr.de>; Sat,  8 Jan 2022 11:37:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233889AbiAHKhl (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 8 Jan 2022 05:37:41 -0500
Received: from smtpout3.mo529.mail-out.ovh.net ([46.105.54.81]:42465 "EHLO
        smtpout3.mo529.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S231232AbiAHKhl (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 8 Jan 2022 05:37:41 -0500
X-Greylist: delayed 417 seconds by postgrey-1.27 at vger.kernel.org; Sat, 08 Jan 2022 05:37:41 EST
Received: from mxplan6.mail.ovh.net (unknown [10.108.4.25])
        by mo529.mail-out.ovh.net (Postfix) with ESMTPS id 5C680D660F9C;
        Sat,  8 Jan 2022 11:30:43 +0100 (CET)
Received: from jwilk.net (37.59.142.102) by DAG4EX2.mxp6.local (172.16.2.32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.17; Sat, 8 Jan
 2022 11:30:42 +0100
Authentication-Results: garm.ovh; auth=pass (GARM-102R004d2590d78-4c28-4c20-9539-7aba2a2342d0,
                    E7C9DD8F7688E169D1A2B9DCE47DE5C662CA2690) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 5.172.255.2
Date:   Sat, 8 Jan 2022 11:30:41 +0100
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Alejandro Colomar <alx.manpages@gmail.com>
CC:     Stephen Kitt <steve@sk2.org>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        <linux-man@vger.kernel.org>
Subject: Re: [PATCH 9/9] malloc_info.3: Use intptr_t to store pointers
Message-ID: <20220108103041.ui4uiqfpdrn5mt33@jwilk.net>
References: <20220107164621.275794-1-steve@sk2.org>
 <20220107164621.275794-9-steve@sk2.org>
 <b4622fe8-ec81-654f-fa32-bf2efa0459ea@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <b4622fe8-ec81-654f-fa32-bf2efa0459ea@gmail.com>
X-Originating-IP: [37.59.142.102]
X-ClientProxiedBy: DAG6EX2.mxp6.local (172.16.2.52) To DAG4EX2.mxp6.local
 (172.16.2.32)
X-Ovh-Tracer-GUID: dd848994-69de-438c-8dbb-436893a45ebd
X-Ovh-Tracer-Id: 7481323406921160672
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvuddrudeggedgudegucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucenucfjughrpeffhffvuffkfhggtggugfgjihesthekredttddtjeenucfhrhhomheplfgrkhhusgcuhghilhhkuceojhifihhlkhesjhifihhlkhdrnhgvtheqnecuggftrfgrthhtvghrnhepledvleekteevfeehtdevffevteeileekfeejheetffdtvefffeejhefhffegkedvnecukfhppedtrddtrddtrddtpdefjedrheelrddugedvrddutddvnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhpohhuthdphhgvlhhopehmgihplhgrnheirdhmrghilhdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomhepjhifihhlkhesjhifihhlkhdrnhgvthdprhgtphhtthhopehlihhnuhigqdhmrghnsehvghgvrhdrkhgvrhhnvghlrdhorhhg
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

For the record, this is what you get when you compile the original code 
on a 64-bit architecture:

    $ gcc -Wall -pthread malloc_info-example.c
    malloc_info-example.c: In function 'thread_func':
    malloc_info-example.c:16:14: warning: cast from pointer to integer of different size [-Wpointer-to-int-cast]
       16 |     int tn = (int) arg;
          |              ^
    malloc_info-example.c: In function 'main':
    malloc_info-example.c:57:32: warning: cast to pointer from integer of different size [-Wint-to-pointer-cast]
       57 |                                (void *) tn);
          |                                ^

* Alejandro Colomar <alx.manpages@gmail.com>, 2022-01-08, 03:25:
>On 1/7/22 17:46, Stephen Kitt wrote:
>>int isn't large enough to store pointers on all platforms, use 
>>intptr_t instead.
>
>Well, since the pointer came from a previous 'int', there should be no 
>problem.  But since the C language (or even POSIX) is very permissive 
>about what a conforming implementation can do with pointers, and it 
>only guarantees conversions to/from [u]intptr_t, I'd take this patch 
>for correctness.  However...

The standards guarantee that void* → intptr_t → void* round-trips, 
but that's not what this code does.

The example converts int → void* → int. Changing int to intptr_t makes 
the compiler warnings go away, but I don't think it improves correctness 
in any way.

-- 
Jakub Wilk
