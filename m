Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 31D0310E1D1
	for <lists+linux-man@lfdr.de>; Sun,  1 Dec 2019 13:18:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726418AbfLAMS5 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 1 Dec 2019 07:18:57 -0500
Received: from mail-wr1-f66.google.com ([209.85.221.66]:33744 "EHLO
        mail-wr1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725993AbfLAMS5 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 1 Dec 2019 07:18:57 -0500
Received: by mail-wr1-f66.google.com with SMTP id b6so11021999wrq.0
        for <linux-man@vger.kernel.org>; Sun, 01 Dec 2019 04:18:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=x+YCLUE4Xvuq7VA2XFeBnCxWZxkhBC6u7dxHDf4mXb4=;
        b=uYNf0qdCGe+2fUK9rF+cm4P0cXIHV1Ms950vpi9SbxXf7nsTsh60yC7IEmTiFEW4IM
         20IqBpBUBD3B0Fn5RYq2GSIeGLkaREI8aUxGsWGwAqfpA/VJSE3iYkeUGgA0psjjYyTe
         785eSB7t6UZKVuWl7n2J3xsmmEuqAmh2U6WAkW2YoOtLUluondgHOiMil/F5ugtSfKGW
         pdanRS/drEMT2KRiRI7lSVJmXxPLZCf0LfpMf6ho9c4AiHAMtBHp1LFtHAJCxKvvOEuS
         pvsNMnr6AAGeaGAoysaH/3ySSMujzCySm/waUAmUOsY3W0IEiu3LCuubRl2T8IMfse4j
         qBEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=x+YCLUE4Xvuq7VA2XFeBnCxWZxkhBC6u7dxHDf4mXb4=;
        b=R6eQWnjxj6GJ37pdSZy3oc002cBoj0qAfX5YifepzxKUiYyGm8gU70TMYOIARllOM7
         yM6SVTA/Qv7bc58La4ehRB1PQcp8jB3/xzTt4VK7bWB5EZGT/RHZCZ2cxL8lnkD5VnUp
         u4grlXb4ZtfdHkOYQY3SjRfhNvhTyH1U4MvIiQ241FyRTGQZCMnCsHobq5oNW9LHjMxa
         K/DQwChO+5xY7kdJAxxIMVQ278yc9Jn8Xbfn0DL8v022HMsscCEI/FVZlqrCujAQySLt
         6M05amTrMS47KKxm7R6+IbCIRbUvIIFK7U6A8D/exY8EFn96evnEJ+v//+dAGnsBirHY
         8JNA==
X-Gm-Message-State: APjAAAWOpKGPIWe/XVMISTa7cbUI1xFzynyRQ5hiuEZqKPOAWBfjpAun
        S5UTIXWbnku4d+Tz7XII4TxviRaopzM=
X-Google-Smtp-Source: APXvYqzMYR4OFla+Y+PmMXaRJgXID2+gJiBzcmjbp+0bZgR5ZShwujy+nKaZOqPQvHnT8FgWQ7yguA==
X-Received: by 2002:adf:e40f:: with SMTP id g15mr5425321wrm.223.1575202733064;
        Sun, 01 Dec 2019 04:18:53 -0800 (PST)
Received: from localhost.localdomain (cpc73834-dals21-2-0-cust682.20-2.cable.virginm.net. [82.0.142.171])
        by smtp.gmail.com with ESMTPSA id m3sm37036717wrb.67.2019.12.01.04.18.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 01 Dec 2019 04:18:52 -0800 (PST)
Subject: Re: [PATCH 2/2] clone.2: added clone3() set_tid information
To:     Christian Brauner <christian.brauner@ubuntu.com>,
        Adrian Reber <areber@redhat.com>
Cc:     linux-man@vger.kernel.org
References: <20191128124650.364810-1-areber@redhat.com>
 <20191128124650.364810-2-areber@redhat.com>
 <20191128172404.xan6vzaoofjeysq2@wittgenstein>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <49be41bf-f6e5-c0ea-e6fb-22eeea9656e8@gmail.com>
Date:   Sun, 1 Dec 2019 13:18:52 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20191128172404.xan6vzaoofjeysq2@wittgenstein>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Christian, and Adrian,

Christian, thanks for the review!

On 11/28/19 6:24 PM, Christian Brauner wrote:
> On Thu, Nov 28, 2019 at 01:46:50PM +0100, Adrian Reber wrote:
>> Signed-off-by: Adrian Reber <areber@redhat.com>
>> ---
>>   man2/clone.2 | 90 ++++++++++++++++++++++++++++++++++++++++++++++++++++
>>   1 file changed, 90 insertions(+)
>>
>> diff --git a/man2/clone.2 b/man2/clone.2
>> index 076b9258e..59c13ec35 100644
>> --- a/man2/clone.2
>> +++ b/man2/clone.2
>> @@ -195,6 +195,8 @@ struct clone_args {
>>       u64 stack;        /* Pointer to lowest byte of stack */
>>       u64 stack_size;   /* Size of stack */
>>       u64 tls;          /* Location of new TLS */
>> +    u64 set_tid;      /* Pointer to a \fIpid_t\fP array */
>> +    u64 set_tid_size; /* Number of elements in \fIset_tid\fP */
>>   };
>>   .EE
>>   .in
>> @@ -262,6 +264,8 @@ flags & 0xff	exit_signal
>>   stack	stack
>>   \fP---\fP	stack_size
>>   tls	tls	See CLONE_SETTLS
>> +\fP---\fP	set_tid	See below for details
>> +\fP---\fP	set_tid_size
>>   .TE
>>   .RE
>>   .\"
>> @@ -285,6 +289,74 @@ options when waiting for the child with
>>   If no signal (i.e., zero) is specified, then the parent process is not signaled
>>   when the child terminates.
>>   .\"
>> +.SS The set_tid array
>> +.PP
>> +The
>> +.I set_tid
>> +array is used to select a certain PID for the process to be created by
>> +.BR clone3 ().
>> +If the PID of the newly created process should only be set for the current
>> +PID namespace or in the newly created PID namespace (if
>> +.I flags
>> +contains
>> +.BR CLONE_NEWPID )
>> +then the first element in the
>> +.I set_tid
>> +array has to be the desired PID and
>> +.I set_tid_size
>> +needs to be 1.
>> +.PP
>> +If the PID of the newly created process should have a certain value in
>> +multiple PID namespaces the
>> +.I set_tid
>> +array can have multiple entries. The first entry defines the PID in the most
>> +nested PID namespace and all following entries contain the PID of the
>> +corresponding parent PID namespace. The number of PID namespaces in which a PID
>> +should be set is defined by
>> +.I set_tid_size
>> +which cannot be larger than the number of currently nested PID namespaces.
> 
> "It's upper cap is the kernel-enforced general nesting limit."
> or sm like that

See my comments in a separate mail where Adrian replied to the above.

>> +.PP
>> +To create a process with the following PIDs:
> 
> in a pid namespace hierarchy

(okay)

>> +.RS
>> +.TS
>> +lb lb
>> +l l .
>> +PID NS level	Requested PID
>> +0 (host)	31496
>> +1	42
>> +2	7
>> +.TE
>> +.RE
>> +.PP
> 

Christian, you trim away the piece:

[[
     +The
     +.I set_tid
     +array would need to be filled with:
]]

that you suggest replacing with:

 > Set the array to:

I think the suggested change is fine, but when you trim the text
in this way (as you do a few times below, it makes it overly
difficult to review your suggestions, since I must separately
refer back to Adrian's original mail to see what is being
replaced (which is not comfortable on my 13" laptop
11km above Belgium :-)).

>> +.PP
>> +.EX
>> +	set_tid[0] = 7;
>> +	set_tid[1] = 42;
>> +	set_tid[2] = 31496;
>> +	set_tid_size = 3;
>> +.EE
>> +.PP
>> +If only the PID of the two innermost PID namespaces

s/PID of/PIDs in/

> 
> need to be specified set the array to:

(okay; but see my comment about trimming above.)

>> +.PP
>> +.EX
>> +	set_tid[0] = 7;
>> +	set_tid[1] = 42;
>> +	set_tid_size = 2;
>> +.EE
>> +.PP
>> +The PID in the PID namespaces outside the two innermost PID namespaces
>> +is then selected the same way as any other PID is selected.
> 
> s/is then/will be/

(okay)

>> +.PP
>> +Only a privileged process
>> +.RB ( CAP_SYS_ADMIN )
> 
> Maybe more specific:
> 
> The set_tid feature requires CAP_SYS_ADMIN in all owning user namespaces
> of the target pid namespaces.

Excellent addition.

>> +can set
>> +.I set_tid
>> +to select a PID for the process to be created.
>> +.\"
>>   .SS The flags mask
>>   .PP
>>   Both
>> @@ -1379,6 +1451,16 @@ in the
>>   .I flags
>>   mask.
>>   .TP
>> +.BR EINVAL " (" clone3 "() only)"
>> +.I set_tid_size
>> +larger than current number of nested PID namespaces or maximum number of
>> +nested PID namespaces was specified.

The last piece of that sentence feels redundant to me, and it
could/should  be removed, I think. The current number of nested PID
namespaces can't exceed the maximum number of nested namespaces, so
mentioning the latter as a limit seems unnecessary (and even a little
confusing, since it leaves the reader wondering whether "current"
could exceed "maximum".)

Or have I misunderstood what you intend to convey, Adrian?

>> +.TP
>> +.BR EINVAL " (" clone3 "() only)"
>> +If one of the PIDs specified in
>> +.I set_tid
>> +was an invalid PID.
>> +.TP
>>   .B ENOMEM
>>   Cannot allocate sufficient memory to allocate a task structure for the
>>   child, or to copy those parts of the caller's context that need to be
>> @@ -1450,6 +1532,14 @@ mask and the caller is in a chroot environment
>>   (i.e., the caller's root directory does not match the root directory
>>   of the mount namespace in which it resides).
>>   .TP
>> +.BR EPERM " (" clone3 "() only)"
>> +If
>> +.I set_tid
>> +with
>> +.I set_tid_size
>> +larger than 0 was specified by an unprivileged process (process without
>> +\fBCAP_SYS_ADMIN\fP).
> 
> without CAP_SYS_ADMIN in _one_ of the owning user namespaces of the
> target pid namespace
> 
> maybe?

Adrian, I think there's no need to mention 'set_tid'. That's implied
by 'set_tid_size' being greater than 0.

How about:

[[
.BR EPERM " (" clone3 "() only)"
.I set_tid_size
was greater than zero, and the caller lacks the
.B CAP_SYS_ADMIN
capability in one or more of the user namespaces that own the
corresponding PID namespaces.
]]

?

> Where's EEXIST?

Indeed!

I speculate (without having looked at the kernel code):

[[
.BR EPERM " (" clone3 "() only)"
One or more of the PIDs specified in
.I set_tid
already exists in the corresponding namespace.
]]

Thanks,

Michael
