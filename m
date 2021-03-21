Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5890134332C
	for <lists+linux-man@lfdr.de>; Sun, 21 Mar 2021 16:33:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230274AbhCUPca (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 21 Mar 2021 11:32:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34162 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230273AbhCUPcF (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 21 Mar 2021 11:32:05 -0400
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9E9EEC061574;
        Sun, 21 Mar 2021 08:32:04 -0700 (PDT)
Received: by mail-wm1-x32b.google.com with SMTP id d8-20020a1c1d080000b029010f15546281so7645714wmd.4;
        Sun, 21 Mar 2021 08:32:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=4UPKjaEvrpSria2zj/MSglJfRqbtMM82kspeNc68FA8=;
        b=d1rY1snf/S2121UpX8UUm299LhC9oNqFJDi2kTzgMLLm4Nb05F7qhFlS8bRdFa4orb
         cvu32FFaFySxrd+moVuCTG1NQgkM69P/AsxLm3rgVebc2vjOD4Gy5MDnX5Nyzx9WArdf
         HrCn/+Eob+68YsWdryq4tuiU44Nc6kkfChQGX7pIi3111sf8xjdPZngxx5qKaGLQAKTp
         IrPfZY6ecR0nVX0Ht7uf7j+G//J3FmNT5sxIhhaJQq7eeRda3y0mdUvzLPz2Z3O0WlbI
         YZAdtUuoqN/FwNLxQXYU4kQsClJQn+6Grg5CBaPW5W712DBtnVlm8fGhM40Jd0sXXwJl
         goqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=4UPKjaEvrpSria2zj/MSglJfRqbtMM82kspeNc68FA8=;
        b=BH2B06eK64MvFQgDa9T2vK+J06OWEqViVVgO57slj1rkJypf5hMpGmTvthAl7q/eoG
         wMRGZpsRNuWaCIWAvqYyF87QDYX20NP1PqWhSQw4BF6KG+812VIqMptS5A7vhzpzPnHe
         O73pFR+Y+rSPx3K/WaA0BmVty0KBgpjV86b41Ik9A/UxIelQXCWH/NmmnjXAxknMLkFk
         Dk4Yk1KEedeoCCZZdDTH/f5uTzzRvuUZD++EtPjTB+ggUkdyejBG0/e+e0q7cOh8Vlc9
         ionrLwy2acBKXcydD9SmcGBW0YuPZFa1MJ5+sFthT+JRmKYJsT0ysiQY96qPH/i5+9er
         nv6w==
X-Gm-Message-State: AOAM530VpC3ffNop2dw9IbntXW+YlJYhbA9u4b/8vYCQVC+92uKQ6uU+
        N+kdRHNh59/tJyxJJBz8yaycsOkJiD4=
X-Google-Smtp-Source: ABdhPJzL6T+axjuQiZw5R84FFzj2NGdE8Semy3hzgwWEPEnH8nfgObndLgQU9pmKz9euLc/o+i/qUA==
X-Received: by 2002:a05:600c:2102:: with SMTP id u2mr12372092wml.22.1616340722860;
        Sun, 21 Mar 2021 08:32:02 -0700 (PDT)
Received: from ?IPv6:2001:a61:2553:a401:cfc6:2039:a9ec:21ff? ([2001:a61:2553:a401:cfc6:2039:a9ec:21ff])
        by smtp.gmail.com with ESMTPSA id z82sm14096667wmg.19.2021.03.21.08.32.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 21 Mar 2021 08:32:02 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>,
        Giuseppe Scrivano <gscrivan@redhat.com>,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v6] close_range.2: new page documenting close_range(2)
To:     Christian Brauner <christian.brauner@ubuntu.com>,
        Stephen Kitt <steve@sk2.org>
References: <20210123161154.29332-1-steve@sk2.org>
 <e761f00d-751f-f782-9af1-c5f868d52df0@gmail.com>
 <20210128231040.6c85915f@heffalump.sk2.org>
 <20210129100024.m4bil5mz5prry4iq@wittgenstein>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <41461336-2ba0-3f7a-7d37-d4a51bad57ff@gmail.com>
Date:   Sun, 21 Mar 2021 16:31:59 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <20210129100024.m4bil5mz5prry4iq@wittgenstein>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Stephen and Christian,

Late follow-up, I'm afraid...

On 1/29/21 11:00 AM, Christian Brauner wrote:
> On Thu, Jan 28, 2021 at 11:10:40PM +0100, Stephen Kitt wrote:
>> Hello Michael,
>>
>> On Thu, 28 Jan 2021 21:50:23 +0100, "Michael Kerrisk (man-pages)"
>> <mtk.manpages@gmail.com> wrote:
>>> Thanks for your patch revision. I've merged it, and have
>>> done some light editing, but I still have a question:
>>>
>>> On 1/23/21 5:11 PM, Stephen Kitt wrote:
>>>
>>> [...]
>>>
>>>> +.SH ERRORS  
>>>
>>>> +.TP
>>>> +.B EMFILE
>>>> +The per-process limit on the number of open file descriptors has been
>>>> reached +(see the description of
>>>> +.B RLIMIT_NOFILE
>>>> +in
>>>> +.BR getrlimit (2)).  
>>>
>>> I think there was already a question about this error, but
>>> I still have a doubt.
>>>
>>> A glance at the code tells me that indeed EMFILE can occur.
>>> But how can the reason be because the limit on the number
>>> of open file descriptors has been reached? I mean: no new
>>> FDs are being opened, so how can we go over the limit. I think
>>> the cause of this error is something else, but what is it?
>>
>> Here’s how I understand the code that can lead to EMFILE:
>>
>> * in __close_range(), if CLOSE_RANGE_UNSHARE is set, call unshare_fd() with
>>   CLONE_FILES to clone the fd table
>> * unshare_fd() calls dup_fd()
>> * dup_fd() allocates a new fdtable, and if the resulting fdtable ends up
>>   being too small to hold the number of fds calculated by
>>   sane_fdtable_size(), fails with EMFILE
>>
>> I suspect that, given that we’re starting with a valid fdtable, the only way
>> this can happen is if there’s a race with sysctl_nr_open being reduced.
> 
> Yes, and sysctls are racy by nature.

Got it, I think. I changed the error text here to:

       EMFILE The number of open file descriptors exceeds the limit spec‐
              ified in /proc/sys/fs/nr_open (see  proc(5)).   This  error
              can occur in situations where that limit was lowered before
              a call to close_range() where the CLOSE_RANGE_UNSHARE  flag
              is specified.

Thanks,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
