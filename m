Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 611A32E0F04
	for <lists+linux-man@lfdr.de>; Tue, 22 Dec 2020 20:40:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725850AbgLVTkM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 22 Dec 2020 14:40:12 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59256 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725912AbgLVTkL (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 22 Dec 2020 14:40:11 -0500
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e3e3])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EEA75C0613D6
        for <linux-man@vger.kernel.org>; Tue, 22 Dec 2020 11:39:30 -0800 (PST)
Received: from localhost (unknown [IPv6:2804:431:c7f4:32cf:1de2:6c49:9684:18e0])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: krisman)
        by bhuna.collabora.co.uk (Postfix) with ESMTPSA id BB3F51F452CA;
        Tue, 22 Dec 2020 19:39:28 +0000 (GMT)
From:   Gabriel Krisman Bertazi <krisman@collabora.com>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     alx.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH v3] prctl.2: Document Syscall User Dispatch
Organization: Collabora
References: <20201221200622.3507690-1-krisman@collabora.com>
        <9a2fa87e-2fc3-a8ad-0be6-6ddcfcdea8fa@gmail.com>
Date:   Tue, 22 Dec 2020 16:39:23 -0300
In-Reply-To: <9a2fa87e-2fc3-a8ad-0be6-6ddcfcdea8fa@gmail.com> (Michael
        Kerrisk's message of "Tue, 22 Dec 2020 20:17:40 +0100")
Message-ID: <87blel1vh0.fsf@collabora.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/27.1 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

"Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com> writes:

> On 12/21/20 9:06 PM, Gabriel Krisman Bertazi wrote:
>> Signed-off-by: Gabriel Krisman Bertazi <krisman@collabora.com>
>> 
>> ---
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
>>  man2/prctl.2 | 100 +++++++++++++++++++++++++++++++++++++++++++++++++++
>>  1 file changed, 100 insertions(+)
>> 
>> diff --git a/man2/prctl.2 b/man2/prctl.2
>> index f25f05fdb593..8105c2a0c9de 100644
>> --- a/man2/prctl.2
>> +++ b/man2/prctl.2
>> @@ -1533,6 +1533,78 @@ For more information, see the kernel source file
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
>> +and dispatch them back to user space through
>> +.IR SIGSYS .
>
> s/IR/BR/
>
> I think a bit more explanation would help here. Could you add a
> few sentences to explain what "dispatch back to user space through
> SIGSYS" means?
>
>> +.IP
>> +The current Syscall User Dispatch mode is selected via
>> +.IR arg2 ,
>> +which can either be set to
>> +.B PR_SYS_DISPATCH_ON
>> +to enable the feature,
>> +or to
>> +.B PR_SYS_DISPATCH_OFF
>> +to turn it off.
>
> By the way, why is there no PR_*G*ET_SYSCALL_USER_DISPATCH?

Thanks for the feedback. I will prepare a new version.

Just to clarify this point, there isn't a strict reason why I didn't
implement the PR_GET_* , I just didn't see much value in adding it
because, 1) the same thread that enables the feature is the only
affected by it, as it is reset across fork/clone, and (2) there isn't
the case where a program inherit this setting from the parent, as it
doesn't cross exec*(2).

Therefore, every case where a getter would be used, can just be solved in
userspace quite easily, IMO.

>> +.IP
>> +With
>> +.I arg2
>> +set to
>> +.BR PR_SYS_DISPATCH_ON ,
>> +.I arg3
>> +and
>> +.I arg4
>> +respectively identify the
>> +.I offset
>> +and
>> +.I length
>> +of a memory region in the process map
>> +from where system calls are always allowed to be executed,
>> +regardless of the switch variable.
>
> Can there be more than one of these regions?
> The text should be explicit about this, I think.
>
>> +.I arg5
>> +points to a char-sized variable
>> +that is a fast switch to enable/disable the mechanism
>> +without invoking the kernel.
>> +The variable pointed by
>> +.I arg5
>> +can either be set to
>> +.B PR_SYS_DISPATCH_ON
>> +to enable the mechanism
>> +or to
>> +.B PR_SYS_DISPATCH_OFF
>> +to temporarily disable it.
>> +Any other value will fail the application
>> +with a
>> +.IR SIGSYS .
>
> How/when does that failure occur? At the time of the 
> prctl() call, I presume? What if the caller later sets 
> the variable pointed to by arg5 to another value?

Actually, this happens at syscall-interception time.  So you can have a
bogus value in *arg5, as long as you don't invoke a syscall with a bad
*arg5.  Will properly document it.

Thanks,

-- 
Gabriel Krisman Bertazi
