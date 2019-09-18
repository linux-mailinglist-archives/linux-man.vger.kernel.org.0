Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id CD9B9B5D97
	for <lists+linux-man@lfdr.de>; Wed, 18 Sep 2019 08:50:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726465AbfIRGuG (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 18 Sep 2019 02:50:06 -0400
Received: from mail-lj1-f193.google.com ([209.85.208.193]:41402 "EHLO
        mail-lj1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725842AbfIRGuF (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 18 Sep 2019 02:50:05 -0400
Received: by mail-lj1-f193.google.com with SMTP id f5so6011423ljg.8
        for <linux-man@vger.kernel.org>; Tue, 17 Sep 2019 23:50:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=E/a6sp0hjtfiU/TtS0UK2JGqBWUfKt4BiUysZ1taoak=;
        b=HvNOS7UdX5/5XlVUvP/Gv1R7XC5HfW5aU8hRomyzpOSBg+93U0zPojeGAHVmb43wsN
         ktXeyDC7fBqFP+dfS9FQ5pcSlBnxT8A+op40Y0tt7vrxLwF7ItUeoxZcYOHrj/OeMcAy
         Izl2UmcE/L8dL60kYuZANegytXrO51/KIEzc/vIXM89iS+h0A56ZN0R9nQcKVP/dmQIH
         f55bR2FKHLSeyESWuTeMnA6AM/JyRsZCphWo+Q1/RfsozPpCSiGHyN0HbN/BF3Pt90+Q
         gFZNG67nT9VBAfF856M7Osak6LvfJjWhoLhYi3Baac/h4twuhA+bdZHr1a6+OLHpT9KP
         vJKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=E/a6sp0hjtfiU/TtS0UK2JGqBWUfKt4BiUysZ1taoak=;
        b=kOFvq30Q4czKCLZwkFJdKCoeu3Q2Qrh7E+zb3/jqUJ8iGTkq3nx4HsArVu4erjhvm8
         kknSPkSI1oQrjyzyx04Qvel+704eVAbrVUo/10c6yMGNd7/MlEIUJVGtkTgR6H4t0JQR
         AHILWRmyhKJr6XElKXpXMmdeFgGQvAFkhzGSC1GyDjAX0FAz8J+GgBVYKGW3VvdIUY/8
         rSp5XvITv2sloL06uVQ+rIzkj38bvlG+bUAC/acHflNOu3yQvykNqr2BYaEjaS6hzYGb
         HR32ILlCmJB1Gacj+A5Q8bGMy7YtIRY9TkEWnc2XARor2suQcy/9CMeg+PgQyYQCANd/
         nSow==
X-Gm-Message-State: APjAAAWWl8UDWqqpGgfS93OJ8eAdjK+m8cLZvRc/n2JoY86iJSk88e+D
        SIZUCQ+shKShcrN9K6OSQwM=
X-Google-Smtp-Source: APXvYqz32PJE2/2rZPTeTTUa4FThwSDnA+7S618JwwXwjuM049+rzWOvqZVvUW2WQZr2eNKfkTXcWA==
X-Received: by 2002:a2e:1415:: with SMTP id u21mr1299016ljd.22.1568789402840;
        Tue, 17 Sep 2019 23:50:02 -0700 (PDT)
Received: from [10.6.5.246] ([85.235.16.11])
        by smtp.gmail.com with ESMTPSA id m10sm843683lfo.69.2019.09.17.23.50.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Sep 2019 23:50:02 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        jannh@google.com, oleg@redhat.com
Subject: Re: [PATCH] clone.2: add CLONE_PIDFD entry
To:     Christian Brauner <christian.brauner@ubuntu.com>
References: <20190511064908.21956-1-christian.brauner@ubuntu.com>
 <fdc276ee-cf28-0a3b-3fd3-6f5033dae7d6@gmail.com>
 <20190916074012.dpsfqfwcxh2pyyt7@wittgenstein>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <7f115550-c7e6-c803-e47b-a37b7cdfb0a9@gmail.com>
Date:   Wed, 18 Sep 2019 08:49:59 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190916074012.dpsfqfwcxh2pyyt7@wittgenstein>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Christian,

On 9/16/19 9:40 AM, Christian Brauner wrote:
> On Wed, Sep 11, 2019 at 10:58:57AM +0200, Michael Kerrisk (man-pages) wrote:
>> Hello Christian,
>>
>> On 5/11/19 8:49 AM, Christian Brauner wrote:
>>> From: Christian Brauner <christian@brauner.io>
>>>
>>> Add an entry for CLONE_PIDFD. This flag is available starting with
>>> kernel 5.2. If specified, a process file descriptor ("pidfd") referring
>>> to the child process will be returned in the ptid argument.
>>
>> I've applied this patch in a local branch, and made some minor edits
> 
> Thank you! :)
> 
>> and added a piece. And I have some questions. See below.
>>
>>> Signed-off-by: Christian Brauner <christian@brauner.io>
>>> ---

[...]

>>> Note, that the kernel verifies that the value for
>>> +.I ptid
>>> +is zero. If it is not an error will be returned. This ensures that
>>> +.I ptid
>>> +can potentially be used to specify additional options for
>>> +.B CLONE_PIDFD
>>> +in the future.
>>
>> This piece is no longer true, right? At least I can't see such 
> 
> Correct.

Thanks. Page amended.

>> a check in the kernel code, and my testing doesn't yield an error
>> when ptid != 0 before the call.(No need to send me a patch; if I'm
>> correct just let me know and I'll edit out this piece.)
>>
>>> +.IP
>>> +Since the
>>> +.I ptid
>>> +argument is used to return the pidfd,
>>> +.B CLONE_PIDFD
>>> +cannot be used with
>>> +.B CLONE_PARENT_SETTID.
>>> +.IP
>>> +It is currently not possible to use this flag together with
>>> +.B CLONE_THREAD.
>>> +This means that the process identified by the pidfd will always be a
>>> +thread-group leader.
>>> +.IP
>>> +For a while there was a
>>> +.B CLONE_DETACHED
>>> +flag. This flag is usually ignored when passed along with other flags.
>>> +However, when passed alongside
>>> +.B CLONE_PIDFD
>>> +an error will be returned. This ensures that this flag can be reused
>>> +for further pidfd features in the future.
>>> +.TP
>>>  .BR CLONE_PTRACE " (since Linux 2.2)"
>>>  If
>>>  .B CLONE_PTRACE
>>> @@ -1122,6 +1158,21 @@ For example, on aarch64,
>>>  .I child_stack
>>>  must be a multiple of 16.
>>>  .TP
>>> +.B EINVAL
>>> +.B CLONE_PIDFD
>>> +was specified together with
>>> +.B CLONE_DETACHED.
>>> +.TP
>>> +.B EINVAL
>>> +.B CLONE_PIDFD
>>> +was specified together with
>>> +.B CLONE_PARENT_SETTID.
>>> +.TP
>>> +.B EINVAL
>>> +.B CLONE_PIDFD
>>> +was specified together with
>>> +.B CLONE_THREAD.
>>> +.TP
>>>  .B ENOMEM
>>>  Cannot allocate sufficient memory to allocate a task structure for the
>>>  child, or to copy those parts of the caller's context that need to be
>>
>> One other piece seems to be missing: the returned file descriptor can
>> be fed to poll()/select()/epoll and the FD will test as readable when
>> the child terminates. Right? Did that functionality also land in
>> kernel 5.2? And did it get implemented as a separate commit, or did
>> the behavior just fall naturally out of the implementation of pidfd's?
>> Let me know the details, and I will craft a patch.
> 
> It landed in 5.3. The relevant commit is:
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=b53b0b9d9a613c418057f6cb921c2f40a6f78c24
> and belongs to the following merge:
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=5450e8a316a64cddcbc15f90733ebc78aa736545

Thanks for that info. One other questions springs to mind.
I haven't looked at the source or tried testing this,
but can anything actually be read() from a PIDFD? Presumably,
it might be useful to have data generated on the FD, since
different values could (ultimately) be used to distinguish
between terminate/stopp/continue transitions.

>> Also, as far as I can see (from testing) the FD only gives pollable
>> events on process termination, not on other process transitions such
>> as stop and continue. Right? (Are there any plans to implement such
> 
> Correct.
> 
>> functionality for stop/contine transitions?
> 
> Yes, at some point we will likely want this.
> 
>>
>> By the way, when do you expect the pidfd-wait functionality to land 
>> in the kernel?
> 
> I've sent a PR for 5.4:
> https://lkml.org/lkml/2019/9/10/682
> which contains the P_PIDFD extension to waitid().

Thanks for that pointer. I see that the code is
now merged.

> Thanks for the work, Michael!

You're welcome!

Cheers,

Michael



-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
