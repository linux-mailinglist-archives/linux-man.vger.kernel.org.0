Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 285ED35BAAD
	for <lists+linux-man@lfdr.de>; Mon, 12 Apr 2021 09:15:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236692AbhDLHQP (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 12 Apr 2021 03:16:15 -0400
Received: from 3.mo51.mail-out.ovh.net ([188.165.32.156]:41715 "EHLO
        3.mo51.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229581AbhDLHQO (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 12 Apr 2021 03:16:14 -0400
Received: from mxplan6.mail.ovh.net (unknown [10.108.4.92])
        by mo51.mail-out.ovh.net (Postfix) with ESMTPS id 8517E280BDD;
        Mon, 12 Apr 2021 08:39:13 +0200 (CEST)
Received: from jwilk.net (37.59.142.106) by DAG4EX2.mxp6.local (172.16.2.32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2; Mon, 12 Apr
 2021 08:39:11 +0200
Authentication-Results: garm.ovh; auth=pass (GARM-106R0068b89e94c-f195-4fac-97b3-f2c61658baa7,
                    18521782582EAEABF162AF4FB3A53674F3987C6F) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 5.173.88.234
Date:   Mon, 12 Apr 2021 08:39:09 +0200
From:   Jakub Wilk <jwilk@jwilk.net>
To:     <linux-man@vger.kernel.org>
CC:     <libc-alpha@sourceware.org>,
        Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Subject: Re: [PATCH v5 00/35] SYNOPSIS: Use syscall(SYS_...); and fix
 '#include's
Message-ID: <20210412063909.lzkwp5jotejbes75@jwilk.net>
References: <20210403194026.102818-1-alx.manpages@gmail.com>
 <20210404115847.78166-1-alx.manpages@gmail.com>
 <4298cc3c-8f24-5a3c-3c54-b24ca804d373@gmail.com>
 <87y2doni1m.fsf@oldenburg.str.redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <87y2doni1m.fsf@oldenburg.str.redhat.com>
User-Agent: NeoMutt/20180716
X-Originating-IP: [37.59.142.106]
X-ClientProxiedBy: DAG8EX2.mxp6.local (172.16.2.72) To DAG4EX2.mxp6.local
 (172.16.2.32)
X-Ovh-Tracer-GUID: dd6ef7d5-1802-4fca-9f8d-af4eaf6b18ba
X-Ovh-Tracer-Id: 16938319676749502432
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduledrudekiedguddtlecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecunecujfgurhepfffhvffukfhfgggtuggjfghisehttdertddtredvnecuhfhrohhmpeflrghkuhgsucghihhlkhcuoehjfihilhhksehjfihilhhkrdhnvghtqeenucggtffrrghtthgvrhhnpefhfedvfeehvefhkeeltdejgeelteefvdefvdduvdefgfduueeitdeitedvtdehgfenucfkpheptddrtddrtddrtddpfeejrdehledrudegvddruddtieenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphdqohhuthdphhgvlhhopehmgihplhgrnheirdhmrghilhdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomhepjhifihhlkhesjhifihhlkhdrnhgvthdprhgtphhtthhopehmthhkrdhmrghnphgrghgvshesghhmrghilhdrtghomh
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* Florian Weimer <fweimer@redhat.com>, 2021-04-12, 08:17:
>>    SYNOPSIS
>>        #include <asm/prctl.h>        /* Definition of ARCH_* constants */
>>        #include <sys/syscall.h>      /* Definition of SYS_* constants */
>>        #include <unistd.h>
>>
>>        int syscall(SYS_arch_prctl, int code, unsigned long addr);
>>        int syscall(SYS_arch_prctl, int code, unsigned long *addr);
>>
>>        Note: glibc provides no wrapper for arch_prctl(), necessitating
>>        the use of syscall(2).
>>
>> Without something like this, the reader may be puzzled at the use of
>> syscall().
>>
>> What do you think?
>
>Would it be possible to use real C syntax?

Seconded.

>  int code;
>  unsigned long addr;
>  int result;
>  result = syscall (SYS_arch_prctl, code, addr);
>  result = syscall (SYS_arch_prctl, code, &addr);
>
>Or perhaps omit the result variable:
>
>  int code;
>  unsigned long addr;
>  syscall (SYS_arch_prctl, code, addr);

Or, more succinctly, put the types in comments:

   syscall(SYS_arch_prctl, /* int */ code, /* unsigned long */ addr);

-- 
Jakub Wilk
