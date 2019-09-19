Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id D04A2B721A
	for <lists+linux-man@lfdr.de>; Thu, 19 Sep 2019 06:05:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729160AbfISEFB (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 19 Sep 2019 00:05:01 -0400
Received: from mail-ed1-f66.google.com ([209.85.208.66]:35362 "EHLO
        mail-ed1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727805AbfISEFA (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 19 Sep 2019 00:05:00 -0400
Received: by mail-ed1-f66.google.com with SMTP id v8so1894011eds.2
        for <linux-man@vger.kernel.org>; Wed, 18 Sep 2019 21:04:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=y0TIjeAWoXjJ15xDZGY5GcLQoj62a+KAsP1F4OrD6Ec=;
        b=T/fll5V3/ReYRUxgZ1Gbjtzhk+gBx6hNrByvXISQqpa6pQthAT/PsspgFQpccMIeSA
         wLiBk4dWp8mo1Z0eS9C3AyCMB2+TRHamJYeD+SjpTYQK6GLTScgAjXVxbxnDBPEiAiwE
         IUH4nu8GjmDp4GK8nTNA6G7QS6sX3+s+OSYm8MdjCzfPOoe4MA3gm9SKYv/WYCtQFOu8
         ASZZpEJJ3SPKiGdp99ZFJbBGKhsAPhHE8afSxks9qPebNzMSAhsGkdqj9ua2H6l/4gaG
         e6eet61CbdCmWcVdZq893XvFqnXuRG6CwPplf1CdWmxIwYwxUM9K3RnmwuoyhFzJoWdF
         MKMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=y0TIjeAWoXjJ15xDZGY5GcLQoj62a+KAsP1F4OrD6Ec=;
        b=Adx+UFFyQkezctcQ1o5IRb5h8mMA6wSVavrcBu2MUE7nYv/ZIgU707zdjtrYHJwqaP
         +Gabayee/3scU2dAiGCOoBP+PMoXN0ZKHbM07MsPGKNk/AMHRTJCzv2FP7/1GUcsvtBF
         +m3QLN4FLsKSV/pnJhE/qRQpBdbIvtBTyUscUS/Qfnsz0S+CjxqRVB3aJFjt45GCHdUV
         NdTBl6uP1o1kivFkeh4hyGEiQ7iUfv76EVe/x39F8d5awyh77fV5eb2DMabKLY2e/8ht
         /XaYGao6r4GDuIY09M2bHQyqwcDPHCx3rfrrmoapiT+xKs5/yCrYKrKDSawIW22gzCb6
         d76w==
X-Gm-Message-State: APjAAAVwec9pvYfGXHexKrrqpFemQDTTIuqP+G1apW2Rgcl2ciJZOpdV
        qUbtfbvPi8gXAjsZu6Vml+E=
X-Google-Smtp-Source: APXvYqx3w41bY9wA7oHABkytekVIR4FsZmKeC98tF4tXyDuHyriahNsmQvsmYP1hKJRkqTN6PCwfhQ==
X-Received: by 2002:a05:6402:1855:: with SMTP id v21mr12127095edy.242.1568865899235;
        Wed, 18 Sep 2019 21:04:59 -0700 (PDT)
Received: from [10.59.0.159] (h87-253-79-154.cust.a3fiber.se. [87.253.79.154])
        by smtp.gmail.com with ESMTPSA id gj14sm849155ejb.62.2019.09.18.21.04.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Sep 2019 21:04:58 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        jannh@google.com, oleg@redhat.com
Subject: Re: [PATCH] clone.2: add CLONE_PIDFD entry
To:     Christian Brauner <christian.brauner@ubuntu.com>
References: <20190511064908.21956-1-christian.brauner@ubuntu.com>
 <fdc276ee-cf28-0a3b-3fd3-6f5033dae7d6@gmail.com>
 <20190916074012.dpsfqfwcxh2pyyt7@wittgenstein>
 <7f115550-c7e6-c803-e47b-a37b7cdfb0a9@gmail.com>
 <20190918071415.gmxvovgiwgsi62tn@wittgenstein>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <6a863c6a-3e61-f0b6-963e-a3545d9935d6@gmail.com>
Date:   Thu, 19 Sep 2019 06:04:55 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190918071415.gmxvovgiwgsi62tn@wittgenstein>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Christian,

On 9/18/19 9:14 AM, Christian Brauner wrote:
> On Wed, Sep 18, 2019 at 08:49:59AM +0200, Michael Kerrisk (man-pages) wrote:

>>>> One other piece seems to be missing: the returned file descriptor can
>>>> be fed to poll()/select()/epoll and the FD will test as readable when
>>>> the child terminates. Right? Did that functionality also land in
>>>> kernel 5.2? And did it get implemented as a separate commit, or did
>>>> the behavior just fall naturally out of the implementation of pidfd's?
>>>> Let me know the details, and I will craft a patch.
>>>
>>> It landed in 5.3. The relevant commit is:
>>> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=b53b0b9d9a613c418057f6cb921c2f40a6f78c24
>>> and belongs to the following merge:
>>> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=5450e8a316a64cddcbc15f90733ebc78aa736545
>>
>> Thanks for that info. One other questions springs to mind.
>> I haven't looked at the source or tried testing this,
>> but can anything actually be read() from a PIDFD? Presumably,
> 
> We had discussed this but decided to not implement this right away.
> Mainly, because we did not have a clear picture what the semantics
> should be. But it is something that we will probably want in the
> future...

That makes sense.

A further question... We now have three ways of getting a
process file descriptor [*]:

open() of /proc/PID
pidfd_open()
clone()/clone3() with CLONE_PIDFD

I thought the FD was supposed to be equivalent in all three cases.
However, if I try (on kernel 5.3) poll() an FD returned by opening
/proc/PID, poll() tells me POLLNVAL for the FD. Is that difference
intentional? (I am guessing it is not.)

Thanks,

Michael

[*} By the way, going forward, can we call these things
"process FDs", rather than "PID FDs"? The API names are what
they are, an that's okay, but these just as we have socket
FDs that refer to sockets, directory FDs that refer to 
directories, and timer FDs that refer to timers, and so on,
these are FDs that refer to *processes*, not "process IDs".
It's a little thing, but I think the naming better, and
it's what I propose to use in the manual pages.

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
