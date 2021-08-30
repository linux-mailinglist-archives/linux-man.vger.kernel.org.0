Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BB3CB3FB4B8
	for <lists+linux-man@lfdr.de>; Mon, 30 Aug 2021 13:45:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236430AbhH3LqJ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 30 Aug 2021 07:46:09 -0400
Received: from smtpout3.3005.mail-out.ovh.net ([217.182.185.173]:41801 "EHLO
        smtpout3.3005.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S232579AbhH3LqI (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 30 Aug 2021 07:46:08 -0400
X-Greylist: delayed 337 seconds by postgrey-1.27 at vger.kernel.org; Mon, 30 Aug 2021 07:46:08 EDT
Received: from mxplan6.mail.ovh.net (unknown [10.108.16.193])
        by mo3005.mail-out.ovh.net (Postfix) with ESMTPS id 2AD2213D962;
        Mon, 30 Aug 2021 11:39:36 +0000 (UTC)
Received: from jwilk.net (37.59.142.100) by DAG4EX2.mxp6.local (172.16.2.32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2308.14; Mon, 30 Aug
 2021 13:39:35 +0200
Authentication-Results: garm.ovh; auth=pass (GARM-100R003d9fa24ac-896e-4efb-a589-1f99647cc97f,
                    4B5A455AAF38AFF8B6079C5B004C246F56887262) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 5.173.65.119
Date:   Mon, 30 Aug 2021 13:39:34 +0200
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Alejandro Colomar <alx.manpages@gmail.com>
CC:     Dave Chupreev <cdn.dev@yandex.ru>, <linux-man@vger.kernel.org>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Subject: Re: exit: Bug reporting
Message-ID: <20210830113934.h3bu6oemxhun2jwc@jwilk.net>
References: <268231613796665@mail.yandex.ru>
 <4c169a8f-4368-3423-1af1-e7f6ba7df8b9@gmail.com>
 <90ba66dc-8c1e-fea9-20f5-16ed65535d00@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <90ba66dc-8c1e-fea9-20f5-16ed65535d00@gmail.com>
User-Agent: NeoMutt/20180716
X-Originating-IP: [37.59.142.100]
X-ClientProxiedBy: DAG1EX2.mxp6.local (172.16.2.2) To DAG4EX2.mxp6.local
 (172.16.2.32)
X-Ovh-Tracer-GUID: 880dcd25-ea31-4078-bc3f-6adb1ff85f6f
X-Ovh-Tracer-Id: 14085007838449752032
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvtddrudduledggeefucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucenucfjughrpeffhffvuffkfhggtggugfgjfghisehtkeertddtreejnecuhfhrohhmpeflrghkuhgsucghihhlkhcuoehjfihilhhksehjfihilhhkrdhnvghtqeenucggtffrrghtthgvrhhnpefhffdtueelvedvffefgfejveehudejgfeikeetudejieeuvdfghfduudegffeujeenucfkpheptddrtddrtddrtddpfeejrdehledrudegvddruddttdenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphdqohhuthdphhgvlhhopehmgihplhgrnheirdhmrghilhdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomhepjhifihhlkhesjhifihhlkhdrnhgvthdprhgtphhtthhopehmthhkrdhmrghnphgrghgvshesghhmrghilhdrtghomh
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* Alejandro Colomar <alx.manpages@gmail.com>, 2021-02-20, 11:05:
>In the Linux kernel, there's only one system call, and it's called 
>exit (its entry point is sys_exit(), and can be called using 
>syscall(SYS_exit, ...) *but don't*), BUT it implements the 
>functionality of _exit() (as the standards call it; see above).

To clarify, that's how it used to be, but since 2002ish there's also 
sys_exit_group, and glibc's _exit() uses that.

BTW, the exit_group.2 man page could use an update (possibly by merging 
it into exit.2): it says that the "system call is is equivalent to 
_exit(2) except that it terminates not only the calling thread, but all 
threads in the calling process’s thread group", which isn't helpful 
these days.

-- 
Jakub Wilk
