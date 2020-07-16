Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1B091222C52
	for <lists+linux-man@lfdr.de>; Thu, 16 Jul 2020 21:53:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729100AbgGPTvn (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 16 Jul 2020 15:51:43 -0400
Received: from us-smtp-2.mimecast.com ([205.139.110.61]:53781 "EHLO
        us-smtp-delivery-1.mimecast.com" rhost-flags-OK-OK-OK-FAIL)
        by vger.kernel.org with ESMTP id S1729656AbgGPTut (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 16 Jul 2020 15:50:49 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1594929047;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=LnMLL4viZavMtw478CSIQWmDg+X9DyS+E8nzOh+kHok=;
        b=cdT7G9n7YpWmkLr1qzXtqZhuOhT4BxaVhVlts1K6PjA6paDBTsYmdESM8dDbl7XTpM08rt
        4NcQxfXoHVwJG/in2xD9NAWXnQn8Vr2r6uIbd2iqK/jksE5929uXdD4lzbm1ahFi+KTKjZ
        oAZ/mqbtjSOeqfCUJJD1k6b7t3SY/UA=
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com
 [209.85.160.197]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-492-ZrLPFcd9O1iLuah63Nye7g-1; Thu, 16 Jul 2020 15:50:31 -0400
X-MC-Unique: ZrLPFcd9O1iLuah63Nye7g-1
Received: by mail-qt1-f197.google.com with SMTP id m25so4613975qtk.1
        for <linux-man@vger.kernel.org>; Thu, 16 Jul 2020 12:50:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=LnMLL4viZavMtw478CSIQWmDg+X9DyS+E8nzOh+kHok=;
        b=tIVrG7qvbUysVdAvoFSChmE+SNwY3tATpmm6kFIPDKsjhFKYN/7KzlIHlMOHcroIon
         nVxVI54qnw6DC+pZn85hQmt7rs34pm5o26kkuYMBDTSxINq8o4s8B/gD8+Vu/iH+tqBR
         +7GDrlcTYOYyjEf5uboXuKrfDz5a4uf6DgW7m5u+gSgylGLSWdiVeAk2Oq6rwoRuEVrF
         au+Y1aX3j68xNQswdSv5GY6av0luPUw4en3eD3SbTjF3VCQeqXYN/wP+7Rw+jRWU38hy
         OpRtKb2FIfM72uICO4eHmJhQBOVFlsx2az+Daq/1sxTZHYlB7tA8hZgwNZ/iNLtdbiLB
         7syA==
X-Gm-Message-State: AOAM532xprBvSLbT8587BRRYCFYQddIlfo6NydO6mEg4GSwceFlM0AC2
        CuKD6+Ke7hggQHFa8iXvmvg/Gm4bSxgzDhqtyanJdwi/fN/CBPCH8Qu9x958tczXth1KiFSeKOH
        uh64/BYrVOjN6Do14vNBN
X-Received: by 2002:a05:620a:4ca:: with SMTP id 10mr5741806qks.2.1594929030361;
        Thu, 16 Jul 2020 12:50:30 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyvcRYhJQr/cGabV6pSeKyqf09JxugUy/vrWqhWReR0WABa0qE7i6t18obLxymItuLINIdR/Q==
X-Received: by 2002:a05:620a:4ca:: with SMTP id 10mr5741788qks.2.1594929030065;
        Thu, 16 Jul 2020 12:50:30 -0700 (PDT)
Received: from [192.168.1.4] (198-84-170-103.cpe.teksavvy.com. [198.84.170.103])
        by smtp.gmail.com with ESMTPSA id k197sm8281647qke.133.2020.07.16.12.50.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Jul 2020 12:50:29 -0700 (PDT)
Subject: [PATCH] pthread_rwlockattr_setkind_np.3:
 PTHREAD_RWLOCK_PREFER_WRITER_NP
To:     mtk.manpages@gmail.com, Kumar Kartikeya Dwivedi <memxor@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>
References: <CAP01T764kz5T+m+8sV0o30enBL1TagF7RQSjU0XcVJ0PvL0PTg@mail.gmail.com>
 <8d7edc37-6b5f-1dd9-5f7f-b4e15a9ae39a@gmail.com>
 <CAKgNAkhLgzog_DjePBh5mHMfesmc5aWpURPHrCXLJMXQWZFYTg@mail.gmail.com>
From:   Carlos O'Donell <carlos@redhat.com>
Organization: Red Hat
Message-ID: <209e4a6d-285d-7b3b-4acd-340e74da2863@redhat.com>
Date:   Thu, 16 Jul 2020 15:50:28 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <CAKgNAkhLgzog_DjePBh5mHMfesmc5aWpURPHrCXLJMXQWZFYTg@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 7/15/20 3:50 PM, Michael Kerrisk (man-pages) wrote:
> On Fri, 26 Jun 2020 at 10:54, Michael Kerrisk (man-pages)
> <mtk.manpages@gmail.com> wrote:
>>
>> Hi Carlos,
>>
>> Could you comment here, as this was your text in pthread_rwlockattr_setkind_np(3)?
>>
>> On 6/25/20 2:32 PM, Kumar Kartikeya Dwivedi wrote:
>>> Hi,
>>> In pthread_rwlockattr_setkind_np(3), the explanation for
>>> PTHREAD_RWLOCK_PREFER_WRITER_NP reads:
>>>
>>>> This is ignored by glibc because the POSIX requirement to support
>>>> recursive writer locks would cause this option to create trivial
>>>> deadlocks;
>>>
>>> I think this should be "reader locks" instead, since it is
>>> undefined[1] for a thread holding a write lock to call
>>> pthread_rwlock_wrlock(3) again (glibc returns EDEADLK, musl simply
>>> deadlocks). There's no such requirement in POSIX either. Please let me
>>> know if I'm missing something.
>>>
>>> [1]: https://pubs.opengroup.org/onlinepubs/007908799/xsh/pthread_rwlock_wrlock.html

I agree with Kumar, and the comment I provided in commit 0d255e74c0 lines up
with my intent and Kumar's requested correction (which is why it's always important
to comment things to provide intent for the implementation!).

8< --- 8< --- 8<
Clarify that it is recursive read locks on the read-write lock that
make it difficult to implement PTHREAD_RWLOCK_PREFER_WRITER_NP.

Update the libc-alpha URL and provide the URL to the POSIX wording
that is quoted in the comment.

Signed-off-by: Carlos O'Donell <carlos@redhat.com>

diff --git a/man3/pthread_rwlockattr_setkind_np.3 b/man3/pthread_rwlockattr_setkind_np.3
index b381972dc..a91c43552 100644
--- a/man3/pthread_rwlockattr_setkind_np.3
+++ b/man3/pthread_rwlockattr_setkind_np.3
@@ -80,7 +80,7 @@ starved.
 This is intended as the write lock analog of
 .BR PTHREAD_RWLOCK_PREFER_READER_NP .
 This is ignored by glibc because the POSIX requirement to support
-recursive writer locks would cause this option to create trivial
+recursive read locks would cause this option to create trivial
 deadlocks; instead use
 .B PTHREAD_RWLOCK_PREFER_WRITER_NONRECURSIVE_NP
 which ensures the application developer will not take recursive
@@ -102,7 +102,8 @@ read locks thus avoiding deadlocks.
 .\" the writers to acquire and release the lock, and the writers will be
 .\" suspended waiting for every existing read lock to be released.
 .\" ---
-.\" http://sources.redhat.com/ml/libc-alpha/2000-01/msg00055.html
+.\" https://pubs.opengroup.org/onlinepubs/9699919799/functions/pthread_rwlock_rdlock.html
+.\" https://sourceware.org/legacy-ml/libc-alpha/2000-01/msg00055.html
 .\" https://sourceware.org/bugzilla/show_bug.cgi?id=7057
 .TP
 .B PTHREAD_RWLOCK_PREFER_WRITER_NONRECURSIVE_NP
-- 
2.26.2

