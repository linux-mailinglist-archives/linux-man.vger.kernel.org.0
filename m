Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E478C20BA50
	for <lists+linux-man@lfdr.de>; Fri, 26 Jun 2020 22:29:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725803AbgFZU31 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 26 Jun 2020 16:29:27 -0400
Received: from smtprelay05.ispgateway.de ([80.67.31.97]:6706 "EHLO
        smtprelay05.ispgateway.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725780AbgFZU31 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 26 Jun 2020 16:29:27 -0400
Received: from [37.4.254.179] (helo=[192.168.0.28])
        by smtprelay05.ispgateway.de with esmtpsa (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
        (Exim 4.92.3)
        (envelope-from <t.piekarski@deloquencia.de>)
        id 1jouyR-00013v-So; Fri, 26 Jun 2020 22:29:23 +0200
Subject: Re: [PATCH-v2] iopl.2: Updating description of permissions and
 disabling interrupts
To:     mtk.manpages@gmail.com
Cc:     Thomas Gleixner <tglx@linutronix.de>,
        linux-man <linux-man@vger.kernel.org>, victorm007@yahoo.com
References: <45693d06-c780-890f-8e5a-d22267722b29@deloquencia.de>
 <CAKgNAkhDwbBMx+2A06Y7nUnLB7vgZ42Bnh84TXaqh2dx8nKqgA@mail.gmail.com>
 <87zh9snqiu.fsf@nanos.tec.linutronix.de>
 <2103b6f3-42d1-8f92-0e97-e43ccd12c1b7@deloquencia.de>
 <CAKgNAkiNQw5DE9X5Mw2MMF+=bXHzAz45ym+=s2_C2Nz=p4zfQg@mail.gmail.com>
From:   Thomas Piekarski <t.piekarski@deloquencia.de>
Message-ID: <47c9d9ae-37da-6eec-1040-d1f9b85dc109@deloquencia.de>
Date:   Fri, 26 Jun 2020 22:29:23 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <CAKgNAkiNQw5DE9X5Mw2MMF+=bXHzAz45ym+=s2_C2Nz=p4zfQg@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Df-Sender: dC5waWVrYXJza2lAZGVsb3F1ZW5jaWEuZGU=
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Updating description of permissions for port-mapped I/O set per-thread 
and not per-process. Mentioning iopl can not disable interrupts since 
5.5 anymore and is in general deprecated and only provided for legacy X 
servers.

See https://bugzilla.kernel.org/show_bug.cgi?id=205317

Reported-by: victorm007@yahoo.com
Signed-off-by: Thomas Piekarski <t.piekarski@deloquencia.de>


---
  man2/iopl.2 | 34 ++++++++++++++--------------------
  1 file changed, 14 insertions(+), 20 deletions(-)

diff --git a/man2/iopl.2 b/man2/iopl.2
index e5b216a14..be9acfd1e 100644
--- a/man2/iopl.2
+++ b/man2/iopl.2
@@ -39,29 +39,17 @@ iopl \- change I/O privilege level
  .BI "int iopl(int " level );
  .SH DESCRIPTION
  .BR iopl ()
-changes the I/O privilege level of the calling process,
+changes the I/O privilege level of the calling thread,
  as specified by the two least significant bits in
  .IR level .
  .PP
-This call is necessary to allow 8514-compatible X servers to run under
-Linux.
-Since these X servers require access to all 65536 I/O ports, the
-.BR ioperm (2)
-call is not sufficient.
+The I/O privilege level for a normal thread is 0.
+Permissions are inherited from parents to children.
  .PP
-In addition to granting unrestricted I/O port access, running at a higher
-I/O privilege level also allows the process to disable interrupts.
-This will probably crash the system, and is not recommended.
-.PP
-Permissions are not inherited by the child process created by
-.BR fork (2)
-and are not preserved across
-.BR execve (2)
-(but see NOTES).
-.PP
-The I/O privilege level for a normal process is 0.
-.PP
-This call is mostly for the i386 architecture.
+This call is deprecated, significantly slower than
+.BR ioperm(2)
+and is only provided for older X servers which require
+access to all 65536 I/O ports. It is mostly for the i386 architecture.
  On many other architectures it does not exist or will always
  return an error.
  .SH RETURN VALUE
@@ -79,7 +67,7 @@ is greater than 3.
  This call is unimplemented.
  .TP
  .B EPERM
-The calling process has insufficient privilege to call
+The calling thread has insufficient privilege to call
  .BR iopl ();
  the
  .B CAP_SYS_RAWIO
@@ -99,6 +87,12 @@ and in
  .IR <sys/perm.h> .
  Avoid the latter, it is available on i386 only.
  .PP
+Prior to Linux 5.5
+.BR iopl ()
+allowed the thread to disable interrupts while running
+at a higher I/O privilege level. This will probably crash
+the system, and is not recommended.
+.PP
  Prior to Linux 3.7,
  on some architectures (such as i386), permissions
  .I were
-- 
2.20.1





On 24.06.20 11:53 AM, Michael Kerrisk (man-pages) wrote:
> Hi Thomas P,
> 
> Might you have an update for this patch?
> 
> Thanks,
> 
> Michael
> 
> 
> On Thu, 28 May 2020 at 16:52, Thomas Piekarski
> <t.piekarski@deloquencia.de> wrote:
>> On 28.05.20 3:22 PM, Thomas Gleixner wrote:
>>> "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com> writes:
>>>
>>>> I expect that the small change at Thomas P proposes in this patch is
>>>> correct (i.e., iopl(2) operates per-thread, not per-process). I
>>>> remember that you touch the relevant kernel source file often. Perhaps
>>>> you are able to give a quick Ack?
>>>>>
>>>>>     man2/iopl.2 | 6 +++---
>>>>>     1 file changed, 3 insertions(+), 3 deletions(-)
>>>>>
>>>>> diff --git a/man2/iopl.2 b/man2/iopl.2
>>>>> index e5b216a14..329095808 100644
>>>>> --- a/man2/iopl.2
>>>>> +++ b/man2/iopl.2
>>>>> @@ -39,7 +39,7 @@ iopl \- change I/O privilege level
>>>>>     .BI "int iopl(int " level );
>>>>>     .SH DESCRIPTION
>>>>>     .BR iopl ()
>>>>> -changes the I/O privilege level of the calling process,
>>>>> +changes the I/O privilege level of the calling thread,
>>>
>>> I'm fine with the s/process/thread/ changes. The permissions are really
>>> per thread.
>>>
>>> Though the manpage should mention that a thread inherits the permissions
>>> from the parent, i.e. clone() vs. fork(), exec().
>>>
>>>>>     as specified by the two least significant bits in
>>>>>     .IR level .
>>>>>     .PP
>>>>> @@ -50,7 +50,7 @@ Since these X servers require access to all 65536 I/O
>>>>> ports, the
>>>>>     call is not sufficient.
>>>>>     .PP
>>>>>     In addition to granting unrestricted I/O port access, running at a higher
>>>>> -I/O privilege level also allows the process to disable interrupts.
>>>>> +I/O privilege level also allows the thread to disable interrupts.
>>>
>>> This paragraph became outdated as of
>>>
>>>      a24ca9976843 ("x86/iopl: Remove legacy IOPL option")
>>>
>>> in v5.5. The kernel no longer allows user space to disable
>>> interrupts. It still grants access to _ALL_ 64k ioports.
>>>
>>> Also:
>>>
>>>> This call is necessary to allow 8514-compatible X servers to run under
>>>> Linux.  Since these X servers require access to all 65536 I/O ports,
>>>> the ioperm(2) call is not sufficient.
>>>
>>> is outdated.
>>>
>>> ioperm() allows to set all 64k bits, but its significantly slower than
>>> iopl(3) because it needs to copy 8k of data on context switch while
>>> iopl(3) just maps an 'all bits set' static bitmap.
>>>
>>> Aside of that only really old x servers rely on iopl(3).
>>
>>
>> Thanks for your feedback. I'll update the patch accordingly.
>>
>> 1. Rechecking that it says that permissions are inherited from parents
>> 2. Stating that since Kernel v5.5 it is not possible anymore to
>>      disable interrupts from user space
>> 3. Removing the paragraph "This call is necessary..."
>>
>> Should the man page mention that iopl is deprecated, provided only for
>> compatibility to old X-Servers and significantly slower than ioperm?
