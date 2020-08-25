Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4E32425174B
	for <lists+linux-man@lfdr.de>; Tue, 25 Aug 2020 13:19:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728117AbgHYLTa (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 25 Aug 2020 07:19:30 -0400
Received: from smtpout1.mo804.mail-out.ovh.net ([79.137.123.220]:41121 "EHLO
        smtpout1.mo804.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1729906AbgHYLT3 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 25 Aug 2020 07:19:29 -0400
Received: from mxplan6.mail.ovh.net (unknown [10.108.20.195])
        by mo804.mail-out.ovh.net (Postfix) with ESMTPS id 494155A82A9D;
        Tue, 25 Aug 2020 13:19:27 +0200 (CEST)
Received: from jwilk.net (37.59.142.103) by DAG4EX2.mxp6.local (172.16.2.32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1979.3; Tue, 25 Aug
 2020 13:19:26 +0200
Authentication-Results: garm.ovh; auth=pass (GARM-103G0050f91f170-bfb1-4c49-a9e9-fd9f10a72b42,
                    087FA98AF2F14B9995D892140F96BF1CEE39D89D) smtp.auth=jwilk@jwilk.net
Date:   Tue, 25 Aug 2020 13:19:24 +0200
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Michael Kerrisk <mtk.manpages@gmail.com>
CC:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        <linux-man@vger.kernel.org>
Subject: Re: [patch] memusage.1, bind.2, eventfd.2, futex.2,
 open_by_handle_at.2, perf_event_open.2, poll.2, signalfd.2, sysctl.2,
 timerfd_create.2, bsearch.3, cmsg.3, getaddrinfo.3, getaddrinfo_a.3
 getgrouplist.3, insque.3, malloc_info.3, mbsinit.3, mbstowcs.3,
 pthread_create.3, pthread_setaffinity_np.3, queue.3, rtnetlink.3,
 shm_open.3, strptime.3, tsearch.3, aio.7, fanotify.7, inotify.7, unix.7: Use
 sizeof consistently
Message-ID: <20200825111924.gwf3ck4bdq42lrzr@jwilk.net>
References: <cc176298-50e2-7831-f2f7-21be8cae9075@gmail.com>
 <e1b424c2-77c1-e995-a866-67a122d7bb07@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="ifpbiowg46f4zksg"
Content-Disposition: inline
In-Reply-To: <e1b424c2-77c1-e995-a866-67a122d7bb07@gmail.com>
User-Agent: NeoMutt/20180716
X-Originating-IP: [37.59.142.103]
X-ClientProxiedBy: DAG8EX2.mxp6.local (172.16.2.72) To DAG4EX2.mxp6.local
 (172.16.2.32)
X-Ovh-Tracer-GUID: 489ed308-6729-4ece-8c7a-8524cc4fb9bf
X-Ovh-Tracer-Id: 17563757075545708509
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduiedruddvtddggeduucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhepfffhvffukfhfgggtuggjfghisehmtderredtredvnecuhfhrohhmpeflrghkuhgsucghihhlkhcuoehjfihilhhksehjfihilhhkrdhnvghtqeenucggtffrrghtthgvrhhnpeeggfelleevfeeigfdvvdeffffhgedtheeffeduieelfffgueeufeduheehffevveenucfkpheptddrtddrtddrtddpfeejrdehledrudegvddruddtfeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphdqohhuthdphhgvlhhopehmgihplhgrnheirdhmrghilhdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomhepjhifihhlkhesjhifihhlkhdrnhgvthdprhgtphhtthhopehlihhnuhigqdhmrghnsehvghgvrhdrkhgvrhhnvghlrdhorhhg
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

--ifpbiowg46f4zksg
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline

* Michael Kerrisk <mtk.manpages@gmail.com>, 2020-08-25, 12:29:
>> 	``(sizeof(x) * INT_MAX * 2)`` doesn't overflow.
>>
>> 	``(INT_MAX * 2 * sizeof(x))`` overflows, giving incorrect
>> 	results.
>
>(3) Is this true? "gcc -Wall" does not complain about this.

My GCC (10.2.0) does, even without -Wall:

   $ gcc test-overflow.c
   test-overflow.c: In function 'main':
   test-overflow.c:8:52: warning: integer overflow in expression of type 'int' results in '-2' [-Woverflow]
       8 |  printf("INT_MAX * 2 * sizeof(x) = %zu\n", INT_MAX * 2 * sizeof(x));
         |                                                    ^

>sizeof((sizeof(x) * INT_MAX * 2)) == 8
>sizeof(INT_MAX * 2 * sizeof(x)) == 8

Hmm? If there was no overflow, surely you should get a number larger 
than INT_MAX...

-- 
Jakub Wilk

--ifpbiowg46f4zksg
Content-Type: text/x-csrc; charset="us-ascii"
Content-Disposition: attachment; filename="test-overflow.c"

#include <stdio.h>
#include <limits.h>

int main(int arg, char **argv)
{
	typedef int x;
	printf("sizeof(x) * INT_MAX * 2 = %zu\n", sizeof(x) * INT_MAX * 2);
	printf("INT_MAX * 2 * sizeof(x) = %zu\n", INT_MAX * 2 * sizeof(x));
}

--ifpbiowg46f4zksg--
