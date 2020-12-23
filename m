Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A21612E1FFD
	for <lists+linux-man@lfdr.de>; Wed, 23 Dec 2020 18:31:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726617AbgLWRbA (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 23 Dec 2020 12:31:00 -0500
Received: from bhuna.collabora.co.uk ([46.235.227.227]:40720 "EHLO
        bhuna.collabora.co.uk" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725907AbgLWRa7 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 23 Dec 2020 12:30:59 -0500
Received: from localhost (unknown [IPv6:2804:431:c7f4:32cf:1de2:6c49:9684:18e0])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: krisman)
        by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 15E4B1F45689;
        Wed, 23 Dec 2020 17:30:16 +0000 (GMT)
From:   Gabriel Krisman Bertazi <krisman@collabora.com>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     alx.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH v4] prctl.2: Document Syscall User Dispatch
Organization: Collabora
References: <20201222202535.3863740-1-krisman@collabora.com>
        <41369525-d6f0-0897-123c-fd82cead89ea@gmail.com>
Date:   Wed, 23 Dec 2020 14:30:12 -0300
In-Reply-To: <41369525-d6f0-0897-123c-fd82cead89ea@gmail.com> (Michael
        Kerrisk's message of "Wed, 23 Dec 2020 11:40:18 +0100")
Message-ID: <87r1ngzazf.fsf@collabora.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/27.1 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

"Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com> writes:

> Hello Gabriel,
>
> On 12/22/20 9:25 PM, Gabriel Krisman Bertazi wrote:
>> Signed-off-by: Gabriel Krisman Bertazi <krisman@collabora.com>
>> 
>> ---
>> Changes since v3:
>> (suggested by Michael Kerrisk)
>>   - Explain what dispatch to user space means.
>>   - Document the fact that the memory region is a single consecutive
>>   range.
>>   - Explain failure if *arg5 is set to a bad value.
>>   - fix english typo.
>>   - Define what 'invalid memory region' means.
>> 
>> Changes since v2:
>> (suggested by Alejandro Colomar)
>>   - selective -> selectively
>>   - Add missing oxford comma.
>> 
>> Changes since v1:
>> (suggested by Alejandro Colomar)
>>   - Use semantic lines
>>   - Fix usage of .{B|I}R and .{B|I}
>>   - Don't format literals
>>   - Fix preferred spelling of userspace
>>   - Fix case of word
>> ---
>>  man2/prctl.2 | 122 +++++++++++++++++++++++++++++++++++++++++++++++++++
>>  1 file changed, 122 insertions(+)
>> 
>> diff --git a/man2/prctl.2 b/man2/prctl.2
>> index f25f05fdb593..71261a736964 100644
>> --- a/man2/prctl.2
>> +++ b/man2/prctl.2
>> @@ -1533,6 +1533,98 @@ For more information, see the kernel source file
>>  (or
>>  .I Documentation/arm64/sve.txt
>>  before Linux 5.3).
>> +.TP
>> +.\" prctl PR_SET_SYSCALL_USER_DISPATCH
>> +.\" commit 1446e1df9eb183fdf81c3f0715402f1d7595d4
>> +.BR PR_SET_SYSCALL_USER_DISPATCH " (since Linux 5.11, x86 only)"
>> +.IP
>> +Configure the Syscall User Dispatch mechanism
>> +for the calling thread,
>> +to selectively intercept system calls
>> +and dispatch them back to be instrumented by user space
>> +through
>> +.BR SIGSYS .
>
> I think that "dispatch them back to be instrumented by user space" 
> doesn't really explain anything to someone unfamiliar with SUD.
>
> How about something like this (if it is correct):
>
> [[
> The Syscall User Dispatch mechanism allows an application to
> selectively intercept system calls so that they can be emulated
> within the application itself. Interception takes the form a
> thread-directed SIGSYS signal that is delivered to the thread
> when it makes a system call. Upon rece(The system call is not executed
> by the kernel.)
> ]]
>
>> +This gives user space the opportunity to emulate the system call
>> +and modify its return value.
>
> How is the system call emulated? What I mean is: does one 
> emulate it from the SIGSYS handler? That needs to be more
> clearly stated.

I am rethinking the mention to emulation in the manpage, as that goes
beyond SUD.  In fact, it is one usecase that can be implemented using
SUD and signal handlers, but there are others.

I'm using your suggestion above slightly modified, to avoid the term emulation.

>
>> +.IP
>> +When a system call is dispatched back to user space
>> +by this mechanism,
>> +it is not executed by the kernel.
>> +When the signal handler returns,
>> +the system call completes immediately
>> +with the return value set
>> +by the signal handler.
>> +(See
>> +.BR sigaction (2)
>> +for information on setting the return value).
>
> I can's see anything in sigaction(2) that explains how to set the
> return value. Am I missing something or do you have a patch in
> progress for that page?

the way you modify the syscall return value is not part of SUD, instead
it is generic to how signals are handled.  so I'm dropping this bit.

-- 
Gabriel Krisman Bertazi
