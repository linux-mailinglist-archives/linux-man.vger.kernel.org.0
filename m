Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 696C21E6203
	for <lists+linux-man@lfdr.de>; Thu, 28 May 2020 15:22:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2390120AbgE1NWF (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 28 May 2020 09:22:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59742 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2390102AbgE1NWF (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 28 May 2020 09:22:05 -0400
Received: from Galois.linutronix.de (Galois.linutronix.de [IPv6:2a0a:51c0:0:12e:550::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2BC82C05BD1E
        for <linux-man@vger.kernel.org>; Thu, 28 May 2020 06:22:05 -0700 (PDT)
Received: from p5de0bf0b.dip0.t-ipconnect.de ([93.224.191.11] helo=nanos.tec.linutronix.de)
        by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
        (Exim 4.80)
        (envelope-from <tglx@linutronix.de>)
        id 1jeITy-0008Vr-MQ; Thu, 28 May 2020 15:22:03 +0200
Received: by nanos.tec.linutronix.de (Postfix, from userid 1000)
        id B7A42100D01; Thu, 28 May 2020 15:22:01 +0200 (CEST)
From:   Thomas Gleixner <tglx@linutronix.de>
To:     mtk.manpages@gmail.com,
        Thomas Piekarski <t.piekarski@deloquencia.de>
Cc:     linux-man <linux-man@vger.kernel.org>, victorm007@yahoo.com
Subject: Re: [PATCH] iopl.2: Changing description of permissions set per-process to per-thread
In-Reply-To: <CAKgNAkhDwbBMx+2A06Y7nUnLB7vgZ42Bnh84TXaqh2dx8nKqgA@mail.gmail.com>
References: <45693d06-c780-890f-8e5a-d22267722b29@deloquencia.de> <CAKgNAkhDwbBMx+2A06Y7nUnLB7vgZ42Bnh84TXaqh2dx8nKqgA@mail.gmail.com>
Date:   Thu, 28 May 2020 15:22:01 +0200
Message-ID: <87zh9snqiu.fsf@nanos.tec.linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain
X-Linutronix-Spam-Score: -1.0
X-Linutronix-Spam-Level: -
X-Linutronix-Spam-Status: No , -1.0 points, 5.0 required,  ALL_TRUSTED=-1,SHORTCIRCUIT=-0.0001
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Michael, Thomas,

"Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com> writes:

> I expect that the small change at Thomas P proposes in this patch is
> correct (i.e., iopl(2) operates per-thread, not per-process). I
> remember that you touch the relevant kernel source file often. Perhaps
> you are able to give a quick Ack?
>>
>>   man2/iopl.2 | 6 +++---
>>   1 file changed, 3 insertions(+), 3 deletions(-)
>>
>> diff --git a/man2/iopl.2 b/man2/iopl.2
>> index e5b216a14..329095808 100644
>> --- a/man2/iopl.2
>> +++ b/man2/iopl.2
>> @@ -39,7 +39,7 @@ iopl \- change I/O privilege level
>>   .BI "int iopl(int " level );
>>   .SH DESCRIPTION
>>   .BR iopl ()
>> -changes the I/O privilege level of the calling process,
>> +changes the I/O privilege level of the calling thread,

I'm fine with the s/process/thread/ changes. The permissions are really
per thread.

Though the manpage should mention that a thread inherits the permissions
from the parent, i.e. clone() vs. fork(), exec().

>>   as specified by the two least significant bits in
>>   .IR level .
>>   .PP
>> @@ -50,7 +50,7 @@ Since these X servers require access to all 65536 I/O
>> ports, the
>>   call is not sufficient.
>>   .PP
>>   In addition to granting unrestricted I/O port access, running at a higher
>> -I/O privilege level also allows the process to disable interrupts.
>> +I/O privilege level also allows the thread to disable interrupts.

This paragraph became outdated as of

   a24ca9976843 ("x86/iopl: Remove legacy IOPL option")

in v5.5. The kernel no longer allows user space to disable
interrupts. It still grants access to _ALL_ 64k ioports.

Also:

> This call is necessary to allow 8514-compatible X servers to run under
> Linux.  Since these X servers require access to all 65536 I/O ports,
> the ioperm(2) call is not sufficient.

is outdated.

ioperm() allows to set all 64k bits, but its significantly slower than
iopl(3) because it needs to copy 8k of data on context switch while
iopl(3) just maps an 'all bits set' static bitmap.

Aside of that only really old x servers rely on iopl(3).

Thanks,

        tglx
