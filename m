Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1A1C02C60DC
	for <lists+linux-man@lfdr.de>; Fri, 27 Nov 2020 09:30:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726985AbgK0Ias (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 27 Nov 2020 03:30:48 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34276 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727486AbgK0Iar (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 27 Nov 2020 03:30:47 -0500
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B77B4C0613D1
        for <linux-man@vger.kernel.org>; Fri, 27 Nov 2020 00:30:45 -0800 (PST)
Received: by mail-wm1-x329.google.com with SMTP id z5so234029wmf.1
        for <linux-man@vger.kernel.org>; Fri, 27 Nov 2020 00:30:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=jb1HDUtb7riow+A5qSJafyLZ+0uXmiWWDOYCglGGHn8=;
        b=K9UAAFMtkBW7//j+mR0tCgI/3+W49Pw3xo8Jj7/wEmypkpNYN/QT7h9C3UC5DKVp88
         Bo2LIpQ80SnCwIDUssfbSCI/ak1qriYLCUzwZisGk02Aw5SJFUSX+tYxOIEEqYFU8luZ
         Jcqv5V9DOMNOaL8Emjfl2BiiaZD9ClqyhQZgST96ZQEQ6Xc08WmOzd+GJ8h9q9RllJeP
         iop2Qzpd2KlyiJ3q/ZiphE2f7L7LdpnIitKIVF3qVSkkHU4HTLZq2K3fjeJpSnUnxRpq
         mEPdl7XzPhnyvD94GqtMuzTCRniw0rDza+uSquFF3zyTxFVc0KNOxi0g69BkD4/e410Q
         ggJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=jb1HDUtb7riow+A5qSJafyLZ+0uXmiWWDOYCglGGHn8=;
        b=egtiKUpjy0cjmKQfjX0770L+Xe9cQJCynp733CVltHwl3KJ6seGQ4PaMAObLwUMZbd
         EEzqec3PFhCbacrRIJ47cp6g64mNJkwUoQ3xVUgO5VFljoMq6OCSAz4+AXbC1g+7DkLB
         0CqTk6cRjMo5WH63Co83/EYxfUpNZutbq64XXesdc3WL39Z3GTVqGRodTmHBdpmZY9NF
         MfcorSIpcB99DomlFgqZh/DGgmhkYEprrKWGoUdd8+n23W/9hqaN+skwM1dB0Ji39ETn
         SSGditPx5mqGPYJpxbX9tBYgkTedpXkhl/jVqLiiLGx5o76VKln0kzF3hwXb8mit+w8D
         hkLQ==
X-Gm-Message-State: AOAM533QtdHS5gRnWqak3qSf95QT0HjT9SsYfI0rt/LPsDhY5vJc/YD8
        ktlL94e4mWl8QTDisAi6kBeGG5uQsBSm0Q==
X-Google-Smtp-Source: ABdhPJxX+qvIfl0Bf7YxfwPUsrdgXGk3VrYS/TrxE0C/ThE+f/yKeLr5H4MCDVhKlteC5pbrd2/xug==
X-Received: by 2002:a05:600c:211:: with SMTP id 17mr7649901wmi.84.1606465844076;
        Fri, 27 Nov 2020 00:30:44 -0800 (PST)
Received: from ?IPv6:2001:a61:24b3:de01:7310:e730:497d:ea6a? ([2001:a61:24b3:de01:7310:e730:497d:ea6a])
        by smtp.gmail.com with ESMTPSA id c2sm14048845wrf.68.2020.11.27.00.30.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Nov 2020 00:30:43 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man <linux-man@vger.kernel.org>
Subject: Re: pivot_root - wrong check on mount(2)
To:     "Alejandro Colomar (mailing lists, readonly)" 
        <alx.mailinglists@gmail.com>,
        Davide Giorgio <davide@giorgiodavide.it>
References: <dafbcfa6-666e-d596-6481-f35802dc56f1@giorgiodavide.it>
 <CAKgNAkhqn+NRbrmnaTpjMuj96eC6M94vxm8X4w9-F=_cqZi8gg@mail.gmail.com>
 <fd7fea8a-b6ea-353d-522b-493782929237@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <b5ecab54-f558-079a-9a4b-b2d6b500d54c@gmail.com>
Date:   Fri, 27 Nov 2020 09:30:40 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <fd7fea8a-b6ea-353d-522b-493782929237@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 11/26/20 1:28 PM, Alejandro Colomar (mailing lists; readonly) wrote:
> 
> 
> On 11/26/20 10:31 AM, Michael Kerrisk (man-pages) wrote:
>> Hello Davide,
>>
>> On Thu, 26 Nov 2020 at 01:01, Davide Giorgio <davide@giorgiodavide.it> wrote:
>>>
>>> Good morning,
>>>
>>> reading the pivot_root man page
>>> (https://man7.org/linux/man-pages/man2/pivot_root.2.html)
>>> there seems to be an error in the example source program
>>> "pivot_root_demo.c".
>>> In particular, there is a wrong check on the return value of mount(2).
>>> https://man7.org/linux/man-pages/man2/mount.2.html#RETURN_VALUE
>>>
>>> The error is in this line
>>> if (mount(NULL, "/", NULL, MS_REC | MS_PRIVATE, NULL) == 1)
>>>
>>> that should be
>>> if (mount(NULL, "/", NULL, MS_REC | MS_PRIVATE, NULL) == -1)
>>>
>>>
>>> Thank you for your work, kind regards
>>
>> Thanks! Fixed!
> 
> Hi Michael,
> 
> What about fixing this from a different approach:
> 
> instead of comparing against -1
> for functions that either return either 0 or -1,
> we can include those functions in the greater family of
> functions that return either 0 or non-zero (error code).
> I propose comparing against 0:
> 
> - if (mount(NULL, "/", NULL, MS_REC | MS_PRIVATE, NULL) == 1)
> + if (mount(NULL, "/", NULL, MS_REC | MS_PRIVATE, NULL) != 0)
> 
> I consider this to be safer, simpler,
> and although negligible, also faster.
> 
> What are your thoughts?

History and the standards say -1. (Okay, mount(2) is not in 
POSIX, but the statement is true for syscalls generally.) So, I
prefer to use -1 (and always do so in my own code.)

The check "ret != 0" does not work for system calls that 
return  a nonnegative value on success (e.g., open()).

The check "ret < 0" does not work for system calls that
can legitimately return a value less than zero on success.
(getpriority() is the most notable example, but there
are one or two other cases also.)

The check "ret == -1" is clear, and--in a standards
sense--precise. Though one must still be careful, since, 
for example, getpriority() can return -1 on success.
(See the manual page for info on how to fdeal with this.)

Thanks,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
