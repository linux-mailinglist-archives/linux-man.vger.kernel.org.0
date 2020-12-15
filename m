Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 215F52DB6A6
	for <lists+linux-man@lfdr.de>; Tue, 15 Dec 2020 23:49:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725272AbgLOWs6 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 15 Dec 2020 17:48:58 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36048 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727068AbgLOWs4 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 15 Dec 2020 17:48:56 -0500
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A1D05C0613D3;
        Tue, 15 Dec 2020 14:48:15 -0800 (PST)
Received: by mail-wm1-x32e.google.com with SMTP id g25so789661wmh.1;
        Tue, 15 Dec 2020 14:48:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:from:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=RWTdo7l7B/SOH7EWwFmGvBqYnRSrVGaVN94yY6EDipE=;
        b=M2hjolxQdQNzwTd38OCRE2DXoCSXTFZ+aZBAesh1bVtg62r7MQw9KErIw8fm0+8aN5
         dcvtsLlB7xoSImuq2yPH6uHKK9Kd1yjAU+/90JAdmjybC2g2rccIZeag4+041RZN2cCG
         uFO72ex3HO5T6HN8auWXlQ/ZK+LvZ8GzaxQWApSFEIDfy7XFSt7yLaotuOZ38tro4T1J
         7ksNvdgd/WEZM1FyC9sSY7Q0TvvnLg6WqDyjXmymifD+L4sWSK/Y0ftVics4ZFwA/jQ6
         ajshzUnmTy4mqzs+3s/FZnwN8dmdKaUchqe1waNlTKe0gCmPs7PzhRboJRHIptDT5Dy4
         6bNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:from:to:cc:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=RWTdo7l7B/SOH7EWwFmGvBqYnRSrVGaVN94yY6EDipE=;
        b=JHxTPG5U4J3Kt8TK/JnsC0lXVgfQwgyNUuUGKBCl89/qXmH4cXHdT4h8Qkmau91xOW
         SY+ijZ66yH7iORaQ/TzPfj6hgEn/PL8c5PUdVY9W+1z0eL01ZAxSnLj8WrLZHgpuZlMJ
         qFtOuPkeJTzl5lYxA0sI+NWZ+4PWqS2XIXE4eB7nk6paKqw8/iO13PQjruRVqbSoay5X
         8l051FRmf6sqlBRh1G09H8fEokkxQ3XIcJHSzy/oGY6ooY7O1xL5B9KHjKd5ZrkCbs1f
         Tpa87JspRFyU36O1jzBZOI3j21wOc0ayY/DhOkgxJtZan7SAoyS6HrtkAh/u8wT132Ja
         8bWw==
X-Gm-Message-State: AOAM530PRYS4SOLve3eaR5hFjIMYnpUFv60p5Poxbt3U+xS0BTmCH2mm
        z8KX/4QEAevckOo9gCAtCPU=
X-Google-Smtp-Source: ABdhPJy/UuePFsjcKAdx4K0/aoI7VhC9302B/Ve9JgzUYrV8vNVofyLWmTZbX4SCSfIy6j/4A7rXzA==
X-Received: by 2002:a1c:6283:: with SMTP id w125mr665100wmb.155.1608072494168;
        Tue, 15 Dec 2020 14:48:14 -0800 (PST)
Received: from [192.168.0.160] ([170.253.49.0])
        by smtp.gmail.com with ESMTPSA id t13sm5739wrs.26.2020.12.15.14.48.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Dec 2020 14:48:13 -0800 (PST)
Subject: Re: [Bug 210655] ptrace.2: documentation is incorrect about access
 checking threads in same thread group
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
To:     Ted Estes <ted@softwarecrafters.com>,
        Pavel Emelyanov <xemul@openvz.org>,
        Oleg Nesterov <oleg@tv-sign.ru>,
        Andrew Morton <akpm@linux-foundation.org>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        Kees Cook <keescook@chromium.org>, Jann Horn <jann@thejh.net>
Cc:     linux-man <linux-man@vger.kernel.org>,
        linux-kernel <linux-kernel@vger.kernel.org>,
        Linus Torvalds <torvalds@linux-foundation.org>,
        Oleg Nesterov <oleg@redhat.com>,
        Markus Gutschke <markus@google.com>,
        Roland McGrath <roland@redhat.com>,
        Andreas Hobein <ah2@delair.de>
References: <feef4f9a-4ed8-8a2e-d330-88e7f516faae@gmail.com>
 <b416e106-c11d-1471-de3d-fb9d5b1b6747@softwarecrafters.com>
 <223477a0-0b92-3a01-46bb-c06f7d5d5901@gmail.com>
Message-ID: <0df0ac9e-e881-88c7-cea9-5154077c95a9@gmail.com>
Date:   Tue, 15 Dec 2020 23:48:12 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <223477a0-0b92-3a01-46bb-c06f7d5d5901@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

[CC += Andreas, Linus, Roland, Markus; fixed Oleg]

On 12/15/20 7:34 PM, Alejandro Colomar (man-pages) wrote:
> Hi Ted,
>
> On 12/15/20 7:31 PM, Ted Estes wrote:
>> Per my research on the topic, the error is in the manual page.  The
>> behavior of ptrace(2) was intentionally changed to prohibit attaching to
>> a thread in the same group.  Apparently, there were a number of
>> ill-behaved edge cases.
>>
>> I found this email thread on the subject:
>> https://lkml.org/lkml/2006/8/31/241

Okay, after reading the LKML thread,
the old behavior was removed because it was very buggy.

We have two options now:

1) Remove that paragraph, as if that behavior had never existed.

   If we do this, not much is lost:
   Only _very_ old kernels had that behavior,
   and it's not even advisable to make use of it on those, AFAICS.

2) Add a note to that paragraph, saying that since kernel 2.X.Y?
   the calling thread and the target thread can't be in the same group.

   Cons: That info is unlikely to be useful, and will only add
   a few more lines to a page that is already very long.

3) Suggestions?

I prefer option 1.

I'll add a larger screenshot of the manual page below,
so that readers don't need to read 'man 2 ptrace':

[[
	...

       The algorithm employed for ptrace access mode  checking  deter‐
       mines  whether  the  calling  process is allowed to perform the
       corresponding action on the target process.  (In  the  case  of
       opening  /proc/[pid]  files,  the  "calling process" is the one
       opening the file, and the process with the corresponding PID is
       the "target process".)  The algorithm is as follows:

       1. If  the calling thread and the target thread are in the same
          thread group, access is always allowed.

       2. If the access mode specifies PTRACE_MODE_FSCREDS, then,  for
          the  check  in the next step, employ the caller's filesystem
          UID and GID.  (As noted in  credentials(7),  the  filesystem
          UID and GID almost always have the same values as the corre‐
          sponding effective IDs.)

          Otherwise, the access mode specifies  PTRACE_MODE_REALCREDS,
          so  use  the caller's real UID and GID for the checks in the
          next step.  (Most APIs that check the caller's UID  and  GID
          use   the   effective  IDs.   For  historical  reasons,  the
          PTRACE_MODE_REALCREDS check uses the real IDs instead.)

	...
]]

Any thoughts before I write the patch?

Thanks,

Alex

>
> Thank you for all the details and links!
> I'll fix the page.
>
> Thanks,
>
> Alex
>
>>
>> Thank you.
>> --Ted Estes
>>
>> On 12/15/2020 11:01 AM, Alejandro Colomar (man-pages) wrote:
>>> Hi,
>>>
>>> There's a bug report: https://bugzilla.kernel.org/show_bug.cgi?id=210655
>>>
>>> [[
>>> Under "Ptrace access mode checking", the documentation states:
>>>    "1. If the calling thread and the target thread are in the same
thread
>>> group, access is always allowed."
>>>
>>> This is incorrect. A thread may never attach to another in the same
>>> group.
>>>
>>> Reference, ptrace_attach()
>>>
https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/tree/kernel/ptrace.c?h=v5.9.14#n380
>>>
>>> ]]
>>>
>>> I just wanted to make sure that it is a bug in the manual page, and not
>>> in the implementation.
>>>
>>>
>>> Thanks,
>>>
>>> Alex
>>>
>>
>
