Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 82C706B3743
	for <lists+linux-man@lfdr.de>; Fri, 10 Mar 2023 08:23:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229914AbjCJHXA (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 10 Mar 2023 02:23:00 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34468 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230124AbjCJHW7 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 10 Mar 2023 02:22:59 -0500
Received: from smtp.smtpout.orange.fr (smtp-16.smtpout.orange.fr [80.12.242.16])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 05B3BFFBF0
        for <linux-man@vger.kernel.org>; Thu,  9 Mar 2023 23:22:51 -0800 (PST)
Received: from [192.168.1.28] ([90.112.30.115])
        by smtp.orange.fr with ESMTPA
        id aWyEphE40pT0waWyFpygEa; Fri, 10 Mar 2023 08:15:19 +0100
X-ME-Helo: [192.168.1.28]
X-ME-Auth: cGpmbG95ZEB3YW5hZG9vLmZy
X-ME-Date: Fri, 10 Mar 2023 08:15:19 +0100
X-ME-IP: 90.112.30.115
Message-ID: <36fa486f-1ea4-99f9-0240-4f1691cdbfde@wanadoo.fr>
Date:   Fri, 10 Mar 2023 08:15:18 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: Issues in manpage memalign
To:     Xi Ruoyao <xry111@xry111.site>,
        Alejandro Colomar <alx.manpages@gmail.com>,
        GNU C Library <libc-alpha@sourceware.org>
Cc:     linux-man@vger.kernel.org
References: <d79b505c-5b19-331c-5b25-d40adc9cc843@wanadoo.fr>
 <77cfc3d2-cd41-13a7-bdb9-ced179531f33@gmail.com>
 <99154d24d07cfa550a1ec4f3c5e5f5d222c7fabb.camel@xry111.site>
Content-Language: en-GB
From:   Paul Floyd <pjfloyd@wanadoo.fr>
In-Reply-To: <99154d24d07cfa550a1ec4f3c5e5f5d222c7fabb.camel@xry111.site>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


On 10/03/2023 05:05, Xi Ruoyao wrote:
>
>>> There is a missing EINVAL description. If the alignment is so large that
>>> the allocation will not be possible to satisfy then the call will fail
>>> and set errno to EINVAL.
> POSIX says it should be ENOMEM:
>
> [ENOMEM]
> There is insufficient memory available with the requested alignment.
>
> https://pubs.opengroup.org/onlinepubs/9699919799/functions/posix_memalign.html
>
> And it seems also true with Glibc (at least Glibc-2.37):
>
> $ cat t.c
> #include <stdlib.h>
> #include <stdio.h>
>
> int main()
> {
> 	void *p;
> 	if (posix_memalign(&p, sizeof(void *) << 55, 1) != 0)
> 		perror("posix_memalign");
> }
> $ cc t.c
> $ ./a.out
> posix_memalign: Cannot allocate memory

I was referring to memalign / aligned_alloc. The ERRORS section of the 
manpage doesn't specify which errors apply to which functions.

Here is an example

#include <stdlib.h>
#include <malloc.h>

int main()
{
   void *p;
   if ((p == memalign(0xabcdef0123456789, 1)) == 0)
      perror("memalign");
}

This does satisfy

EINVAL The alignmentargument was not a power of two, or was not a 
multiple of sizeof(void*).

but that is purely a coincidence. The code in gblic that triggers the 
error is

│    3537 /* If the alignment is greater than SIZE_MAX / 2 + 1 it cannot 
be a
│    3538      power of 2 and will cause overflow in the check below.  */
│    3539 if(alignment >SIZE_MAX /2+1)
│    3540 {
│ >  3541       __set_errno (EINVAL);
│    3542 return0;
│    3543 }


If the power-of-two constraint existed this condition would be 
redundant. The next power of two greater than SIZE_MAX / 2 + 1 is 
SIZE_MAX + 1 which cannot be represented in a word.


Regards

Paul

