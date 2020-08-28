Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4D091256064
	for <lists+linux-man@lfdr.de>; Fri, 28 Aug 2020 20:24:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728039AbgH1SYP (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 28 Aug 2020 14:24:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35896 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728040AbgH1SYM (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 28 Aug 2020 14:24:12 -0400
Received: from mail-io1-xd41.google.com (mail-io1-xd41.google.com [IPv6:2607:f8b0:4864:20::d41])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E79A0C061232
        for <linux-man@vger.kernel.org>; Fri, 28 Aug 2020 11:24:11 -0700 (PDT)
Received: by mail-io1-xd41.google.com with SMTP id j2so2342960ioj.7
        for <linux-man@vger.kernel.org>; Fri, 28 Aug 2020 11:24:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kernel-dk.20150623.gappssmtp.com; s=20150623;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=ZM5mfU0mJWLmXTIkhtggdad2TvAnKJMT9PhjMvl0vFM=;
        b=iAZqOWHafDQ0/xgiCmVLbfj7ZoImaMO14djUfGGO9kW3ciKL2lpsPJdi3xphkD6r4i
         yprM9qrpdTeIAcAkl5x7AARstyczAuaaLjFfMxxtXYzMKOeLKCzB2V/pziUpJO2LY7gr
         VIbSQ/czRXqRm0D9lHwEV5EvzX/n/8ops2mwCQwr+3n7EInyGINfuUC3S8qviQ/YmUes
         YLuPAYQXdlZq2e/WhT4XMUhQkv4vxoCK7YC+ImIJE7igTsLY4u6MNAt3JgQiNM8/Mv8k
         soKvfMahIZvIZmL4t6elibt7CuQioMN0sAJFSuHlBL/gvS7Ii+DIByXfGr+aCVX3m9eK
         WJZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=ZM5mfU0mJWLmXTIkhtggdad2TvAnKJMT9PhjMvl0vFM=;
        b=GOGe7qaBUqu/zwPTt/2deZaxhzrUtUuZTJFD4dnOXrul4SZpiMoAjz+RnXj5hDw5et
         MHcjjzH8vtXrGNRCXddpN+KA3dalLUV4G3ORJdZ4DczUJJ2Q2INLr4Lnb88g+kQCY9fG
         rZpNi5wcBpTkrMOyL0VyXgVCfzuEx4V2NzoOFc6ojjQhzisDp4NNK+KtcW3IJvMiREsX
         MB1b/rqoqFNxrhUuN/jzsz7BKGFhJwyRDpjdxU4MwGzeeZQ3oiZ9WHHjjod4Gi+gEy4m
         smNM2hWYtsN7M87C5tFDa80JOcOZ2m5iE0556rYdEBUFdAt0xErpmnqdNU5u8NGZ/Lr2
         jeYA==
X-Gm-Message-State: AOAM532h7dlYaRe/XZn50JvLZuE15O/1WqzjJ1jBiF5NWf2yBTefhReX
        r9UKqkFxy3MdJBsO9KsoLcSXdD+Z+GnrMb/1
X-Google-Smtp-Source: ABdhPJwgd/WMTv7qcfgWBRRgARSe0GutcufYk/oyDu/iTiFlUkbewv6BRWnL3NOHNbqbsjnF4Y3KdA==
X-Received: by 2002:a6b:bc82:: with SMTP id m124mr16222iof.172.1598639050796;
        Fri, 28 Aug 2020 11:24:10 -0700 (PDT)
Received: from [192.168.1.58] ([65.144.74.34])
        by smtp.gmail.com with ESMTPSA id c16sm75221ila.29.2020.08.28.11.24.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 Aug 2020 11:24:10 -0700 (PDT)
Subject: Re: [PATCH v8 3/4] mm/madvise: introduce process_madvise() syscall:
 an external memory hinting API
To:     Arnd Bergmann <arnd@arndb.de>, Minchan Kim <minchan@kernel.org>
Cc:     Andrew Morton <akpm@linux-foundation.org>,
        LKML <linux-kernel@vger.kernel.org>,
        Christian Brauner <christian.brauner@ubuntu.com>,
        linux-mm <linux-mm@kvack.org>,
        Linux API <linux-api@vger.kernel.org>,
        Oleksandr Natalenko <oleksandr@redhat.com>,
        Suren Baghdasaryan <surenb@google.com>,
        Tim Murray <timmurray@google.com>,
        Sandeep Patil <sspatil@google.com>,
        Sonny Rao <sonnyrao@google.com>,
        Brian Geffon <bgeffon@google.com>,
        Michal Hocko <mhocko@suse.com>,
        Johannes Weiner <hannes@cmpxchg.org>,
        Shakeel Butt <shakeelb@google.com>,
        John Dias <joaodias@google.com>,
        Joel Fernandes <joel@joelfernandes.org>,
        Jann Horn <jannh@google.com>,
        alexander.h.duyck@linux.intel.com,
        SeongJae Park <sj38.park@gmail.com>,
        David Rientjes <rientjes@google.com>,
        Arjun Roy <arjunroy@google.com>,
        Vlastimil Babka <vbabka@suse.cz>,
        Christian Brauner <christian@brauner.io>,
        Daniel Colascione <dancol@google.com>,
        Kirill Tkhai <ktkhai@virtuozzo.com>,
        SeongJae Park <sjpark@amazon.de>,
        linux-man <linux-man@vger.kernel.org>
References: <20200622192900.22757-1-minchan@kernel.org>
 <20200622192900.22757-4-minchan@kernel.org>
 <CAK8P3a0Mnp2ekmX-BX9yr+N8fy2=gBtASELLXoa9uGSpSS9aOA@mail.gmail.com>
From:   Jens Axboe <axboe@kernel.dk>
Message-ID: <9c339413-68c7-344e-dd01-327cb988d385@kernel.dk>
Date:   Fri, 28 Aug 2020 12:24:08 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <CAK8P3a0Mnp2ekmX-BX9yr+N8fy2=gBtASELLXoa9uGSpSS9aOA@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 8/28/20 11:40 AM, Arnd Bergmann wrote:
> On Mon, Jun 22, 2020 at 9:29 PM Minchan Kim <minchan@kernel.org> wrote:
>> So finally, the API is as follows,
>>
>>      ssize_t process_madvise(int pidfd, const struct iovec *iovec,
>>                unsigned long vlen, int advice, unsigned int flags);
> 
> I had not followed the discussion earlier and only now came across
> the syscall in linux-next, sorry for stirring things up this late.
> 
>> diff --git a/arch/x86/entry/syscalls/syscall_64.tbl b/arch/x86/entry/syscalls/syscall_64.tbl
>> index 94bf4958d114..8f959d90338a 100644
>> --- a/arch/x86/entry/syscalls/syscall_64.tbl
>> +++ b/arch/x86/entry/syscalls/syscall_64.tbl
>> @@ -364,6 +364,7 @@
>>  440    common  watch_mount             sys_watch_mount
>>  441    common  watch_sb                sys_watch_sb
>>  442    common  fsinfo                  sys_fsinfo
>> +443    64      process_madvise         sys_process_madvise
>>
>>  #
>>  # x32-specific system call numbers start at 512 to avoid cache impact
>> @@ -407,3 +408,4 @@
>>  545    x32     execveat                compat_sys_execveat
>>  546    x32     preadv2                 compat_sys_preadv64v2
>>  547    x32     pwritev2                compat_sys_pwritev64v2
>> +548    x32     process_madvise         compat_sys_process_madvise
> 
> I think we should not add any new x32-specific syscalls. Instead I think
> the compat_sys_process_madvise/sys_process_madvise can be
> merged into one.
> 
>> +       mm = mm_access(task, PTRACE_MODE_ATTACH_FSCREDS);
>> +       if (IS_ERR_OR_NULL(mm)) {
>> +               ret = IS_ERR(mm) ? PTR_ERR(mm) : -ESRCH;
>> +               goto release_task;
>> +       }
> 
> Minor point: Having to use IS_ERR_OR_NULL() tends to be fragile,
> and I would try to avoid that. Can mm_access() be changed to
> itself return PTR_ERR(-ESRCH) instead of NULL to improve its
> calling conventions? I see there are only three other callers.
> 
> 
>> +       ret = import_iovec(READ, vec, vlen, ARRAY_SIZE(iovstack), &iov, &iter);
>> +       if (ret >= 0) {
>> +               ret = do_process_madvise(pidfd, &iter, behavior, flags);
>> +               kfree(iov);
>> +       }
>> +       return ret;
>> +}
>> +
>> +#ifdef CONFIG_COMPAT
> ...
>> +
>> +       ret = compat_import_iovec(READ, vec, vlen, ARRAY_SIZE(iovstack),
>> +                               &iov, &iter);
>> +       if (ret >= 0) {
>> +               ret = do_process_madvise(pidfd, &iter, behavior, flags);
>> +               kfree(iov);
>> +       }
> 
> Every syscall that passes an iovec seems to do this. If we make import_iovec()
> handle both cases directly, this syscall and a number of others can
> be simplified, and you avoid the x32 entry point I mentioned above
> 
> Something like (untested)
> 
> index dad8d0cfaaf7..0de4ddff24c1 100644
> --- a/lib/iov_iter.c
> +++ b/lib/iov_iter.c
> @@ -1683,8 +1683,13 @@ ssize_t import_iovec(int type, const struct
> iovec __user * uvector,
>  {
>         ssize_t n;
>         struct iovec *p;
> -       n = rw_copy_check_uvector(type, uvector, nr_segs, fast_segs,
> -                                 *iov, &p);
> +
> +       if (in_compat_syscall())
> +               n = compat_rw_copy_check_uvector(type, uvector, nr_segs,
> +                                                fast_segs, *iov, &p);
> +       else
> +               n = rw_copy_check_uvector(type, uvector, nr_segs,
> +                                         fast_segs, *iov, &p);
>         if (n < 0) {
>                 if (p != *iov)
>                         kfree(p);

Doesn't work for the async case, where you want to be holding on to the
allocated iovec. But in general I think it's a good helper for the sync
case, which is by far the majority.

-- 
Jens Axboe

