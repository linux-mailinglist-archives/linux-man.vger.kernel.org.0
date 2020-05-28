Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1ED5B1E64B1
	for <lists+linux-man@lfdr.de>; Thu, 28 May 2020 16:53:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2391348AbgE1OxA (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 28 May 2020 10:53:00 -0400
Received: from smtprelay07.ispgateway.de ([134.119.228.97]:63125 "EHLO
        smtprelay07.ispgateway.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2391338AbgE1Ow7 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 28 May 2020 10:52:59 -0400
Received: from [37.4.254.242] (helo=[192.168.0.28])
        by smtprelay07.ispgateway.de with esmtpsa (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
        (Exim 4.92.3)
        (envelope-from <t.piekarski@deloquencia.de>)
        id 1jeJtu-0004gU-RK; Thu, 28 May 2020 16:52:54 +0200
Subject: Re: [PATCH] iopl.2: Changing description of permissions set
 per-process to per-thread
To:     Thomas Gleixner <tglx@linutronix.de>, mtk.manpages@gmail.com
Cc:     linux-man <linux-man@vger.kernel.org>, victorm007@yahoo.com
References: <45693d06-c780-890f-8e5a-d22267722b29@deloquencia.de>
 <CAKgNAkhDwbBMx+2A06Y7nUnLB7vgZ42Bnh84TXaqh2dx8nKqgA@mail.gmail.com>
 <87zh9snqiu.fsf@nanos.tec.linutronix.de>
From:   Thomas Piekarski <t.piekarski@deloquencia.de>
Message-ID: <2103b6f3-42d1-8f92-0e97-e43ccd12c1b7@deloquencia.de>
Date:   Thu, 28 May 2020 16:52:54 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <87zh9snqiu.fsf@nanos.tec.linutronix.de>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Df-Sender: dC5waWVrYXJza2lAZGVsb3F1ZW5jaWEuZGU=
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Thomas,
Hello Michael,


On 28.05.20 3:22 PM, Thomas Gleixner wrote:
> "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com> writes:
> 
>> I expect that the small change at Thomas P proposes in this patch is
>> correct (i.e., iopl(2) operates per-thread, not per-process). I
>> remember that you touch the relevant kernel source file often. Perhaps
>> you are able to give a quick Ack?
>>>
>>>    man2/iopl.2 | 6 +++---
>>>    1 file changed, 3 insertions(+), 3 deletions(-)
>>>
>>> diff --git a/man2/iopl.2 b/man2/iopl.2
>>> index e5b216a14..329095808 100644
>>> --- a/man2/iopl.2
>>> +++ b/man2/iopl.2
>>> @@ -39,7 +39,7 @@ iopl \- change I/O privilege level
>>>    .BI "int iopl(int " level );
>>>    .SH DESCRIPTION
>>>    .BR iopl ()
>>> -changes the I/O privilege level of the calling process,
>>> +changes the I/O privilege level of the calling thread,
> 
> I'm fine with the s/process/thread/ changes. The permissions are really
> per thread.
> 
> Though the manpage should mention that a thread inherits the permissions
> from the parent, i.e. clone() vs. fork(), exec().
> 
>>>    as specified by the two least significant bits in
>>>    .IR level .
>>>    .PP
>>> @@ -50,7 +50,7 @@ Since these X servers require access to all 65536 I/O
>>> ports, the
>>>    call is not sufficient.
>>>    .PP
>>>    In addition to granting unrestricted I/O port access, running at a higher
>>> -I/O privilege level also allows the process to disable interrupts.
>>> +I/O privilege level also allows the thread to disable interrupts.
> 
> This paragraph became outdated as of
> 
>     a24ca9976843 ("x86/iopl: Remove legacy IOPL option")
> 
> in v5.5. The kernel no longer allows user space to disable
> interrupts. It still grants access to _ALL_ 64k ioports.
> 
> Also:
> 
>> This call is necessary to allow 8514-compatible X servers to run under
>> Linux.  Since these X servers require access to all 65536 I/O ports,
>> the ioperm(2) call is not sufficient.
> 
> is outdated.
> 
> ioperm() allows to set all 64k bits, but its significantly slower than
> iopl(3) because it needs to copy 8k of data on context switch while
> iopl(3) just maps an 'all bits set' static bitmap.
> 
> Aside of that only really old x servers rely on iopl(3).


Thanks for your feedback. I'll update the patch accordingly.

1. Rechecking that it says that permissions are inherited from parents
2. Stating that since Kernel v5.5 it is not possible anymore to
    disable interrupts from user space
3. Removing the paragraph "This call is necessary..."

Should the man page mention that iopl is deprecated, provided only for 
compatibility to old X-Servers and significantly slower than ioperm?
