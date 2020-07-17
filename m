Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D897822368E
	for <lists+linux-man@lfdr.de>; Fri, 17 Jul 2020 10:05:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728259AbgGQIFo (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 17 Jul 2020 04:05:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41312 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726233AbgGQIFn (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 17 Jul 2020 04:05:43 -0400
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com [IPv6:2a00:1450:4864:20::341])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 84854C061755
        for <linux-man@vger.kernel.org>; Fri, 17 Jul 2020 01:05:43 -0700 (PDT)
Received: by mail-wm1-x341.google.com with SMTP id f139so15901450wmf.5
        for <linux-man@vger.kernel.org>; Fri, 17 Jul 2020 01:05:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=k2Cl1fx9KtNAKzmIiZmRPVG9cb3n3w1L4MK6qa72sMY=;
        b=vf0uPszBYLGWW2+VGTxHxI03WjTh5IvSsgqiQMXcqQUuF/W1z4ZQ1RYXIvfXBEf+O4
         NsDr1DDZaQPSteTxoJhlxQi1QWEtwavNU8eecL5EUAoEWVV3c6tXsaxM2FsBwSYt2eLE
         2YWBVwOqiE1Qa3CGJSr+rQT4nbMBSoE3RSEUGg6hgKHCr9fadSv2tMJvJC+2a42jTeZ1
         aPUFtOyJR7EMZQFBct+1AZZQvCCpQ1X7TXO+e+pg7iJXs0kHoKCJTtsmkVBP8a08spAg
         JT4k0oNtaarMlX0TO+4PFHWb8MtXE58rc0Hj/XcxymxHWRBpGNMJiAKQ+/JfOFwSXgoD
         HYxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=k2Cl1fx9KtNAKzmIiZmRPVG9cb3n3w1L4MK6qa72sMY=;
        b=USfzJKWGd+uyyrWyuUZJQWyR5AHCEaXt8T0+Awg2VJ+t2siuxAwTr3Te2uIX8jW5om
         Xr4+7MH48dJc6ssnydTGA5U6s3aG+Mfp5EtrFAwNUlStvzveB45ebpLCRM8g9FAd9s/P
         lJ3fEf8OBowHoJwVZysWgEskYYkt/jjEXhxk29kQhqGsSh4cZ8qTMnd8WjW+g8UrE9Gq
         TvRSxUBmUs+7I1Iz1Mlgvycu0aEncrUGNiXAnjUDnZaSbGZOjXWbEVztYDPn5wRDdcs7
         FNOWUA3nd6oxvZgAy2Rj337VFe+/ElyL05sb9U0YwAAD8qiYHAx45L5X1zOr9dZ0Rh94
         fSSw==
X-Gm-Message-State: AOAM530TAwvwoe8PTDHvLdHv9ofKSPV943koH5EjPOaZoWmkC1mv/WfL
        R+R+z0J3a8WsZ0O2w/hX37VFeJkD
X-Google-Smtp-Source: ABdhPJwi8C2PDoBGeeW5dkNrFMKzFH2ZaotruOAUDB7B/qLMRruLYmZKEz+0cvBAkp80zxsz4w43Rg==
X-Received: by 2002:a7b:c0da:: with SMTP id s26mr7550287wmh.96.1594973141975;
        Fri, 17 Jul 2020 01:05:41 -0700 (PDT)
Received: from ?IPv6:2001:a61:3adb:8201:9649:88f:51f8:6a21? ([2001:a61:3adb:8201:9649:88f:51f8:6a21])
        by smtp.gmail.com with ESMTPSA id s4sm2564938wre.53.2020.07.17.01.05.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 17 Jul 2020 01:05:41 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man <linux-man@vger.kernel.org>
Subject: Re: [PATCH] pthread_rwlockattr_setkind_np.3:
 PTHREAD_RWLOCK_PREFER_WRITER_NP
To:     Carlos O'Donell <carlos@redhat.com>,
        Kumar Kartikeya Dwivedi <memxor@gmail.com>
References: <CAP01T764kz5T+m+8sV0o30enBL1TagF7RQSjU0XcVJ0PvL0PTg@mail.gmail.com>
 <8d7edc37-6b5f-1dd9-5f7f-b4e15a9ae39a@gmail.com>
 <CAKgNAkhLgzog_DjePBh5mHMfesmc5aWpURPHrCXLJMXQWZFYTg@mail.gmail.com>
 <209e4a6d-285d-7b3b-4acd-340e74da2863@redhat.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <a3b2e2e2-1738-9098-cbf6-872e6d2a2a54@gmail.com>
Date:   Fri, 17 Jul 2020 10:05:38 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <209e4a6d-285d-7b3b-4acd-340e74da2863@redhat.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Carlos, Kumas,

On 7/16/20 9:50 PM, Carlos O'Donell wrote:
> On 7/15/20 3:50 PM, Michael Kerrisk (man-pages) wrote:
>> On Fri, 26 Jun 2020 at 10:54, Michael Kerrisk (man-pages)
>> <mtk.manpages@gmail.com> wrote:
>>>
>>> Hi Carlos,
>>>
>>> Could you comment here, as this was your text in pthread_rwlockattr_setkind_np(3)?
>>>
>>> On 6/25/20 2:32 PM, Kumar Kartikeya Dwivedi wrote:
>>>> Hi,
>>>> In pthread_rwlockattr_setkind_np(3), the explanation for
>>>> PTHREAD_RWLOCK_PREFER_WRITER_NP reads:
>>>>
>>>>> This is ignored by glibc because the POSIX requirement to support
>>>>> recursive writer locks would cause this option to create trivial
>>>>> deadlocks;
>>>>
>>>> I think this should be "reader locks" instead, since it is
>>>> undefined[1] for a thread holding a write lock to call
>>>> pthread_rwlock_wrlock(3) again (glibc returns EDEADLK, musl simply
>>>> deadlocks). There's no such requirement in POSIX either. Please let me
>>>> know if I'm missing something.
>>>>
>>>> [1]: https://pubs.opengroup.org/onlinepubs/007908799/xsh/pthread_rwlock_wrlock.html
> 
> I agree with Kumar, and the comment I provided in commit 0d255e74c0 lines up
> with my intent and Kumar's requested correction (which is why it's always important
> to comment things to provide intent for the implementation!).
> 
> 8< --- 8< --- 8<
> Clarify that it is recursive read locks on the read-write lock that
> make it difficult to implement PTHREAD_RWLOCK_PREFER_WRITER_NP.
> 
> Update the libc-alpha URL and provide the URL to the POSIX wording
> that is quoted in the comment.
> 
> Signed-off-by: Carlos O'Donell <carlos@redhat.com>

Thanks for the patch, Carlos. Applied.

Thanks for the report, Kumar!

Cheers,

Michael
> 
> diff --git a/man3/pthread_rwlockattr_setkind_np.3 b/man3/pthread_rwlockattr_setkind_np.3
> index b381972dc..a91c43552 100644
> --- a/man3/pthread_rwlockattr_setkind_np.3
> +++ b/man3/pthread_rwlockattr_setkind_np.3
> @@ -80,7 +80,7 @@ starved.
>  This is intended as the write lock analog of
>  .BR PTHREAD_RWLOCK_PREFER_READER_NP .
>  This is ignored by glibc because the POSIX requirement to support
> -recursive writer locks would cause this option to create trivial
> +recursive read locks would cause this option to create trivial
>  deadlocks; instead use
>  .B PTHREAD_RWLOCK_PREFER_WRITER_NONRECURSIVE_NP
>  which ensures the application developer will not take recursive
> @@ -102,7 +102,8 @@ read locks thus avoiding deadlocks.
>  .\" the writers to acquire and release the lock, and the writers will be
>  .\" suspended waiting for every existing read lock to be released.
>  .\" ---
> -.\" http://sources.redhat.com/ml/libc-alpha/2000-01/msg00055.html
> +.\" https://pubs.opengroup.org/onlinepubs/9699919799/functions/pthread_rwlock_rdlock.html
> +.\" https://sourceware.org/legacy-ml/libc-alpha/2000-01/msg00055.html
>  .\" https://sourceware.org/bugzilla/show_bug.cgi?id=7057
>  .TP
>  .B PTHREAD_RWLOCK_PREFER_WRITER_NONRECURSIVE_NP
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
