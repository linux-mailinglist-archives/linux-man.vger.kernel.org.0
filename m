Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 603F9407214
	for <lists+linux-man@lfdr.de>; Fri, 10 Sep 2021 21:41:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230513AbhIJTmU (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 10 Sep 2021 15:42:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43392 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229546AbhIJTmT (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 10 Sep 2021 15:42:19 -0400
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E8ACEC061574
        for <linux-man@vger.kernel.org>; Fri, 10 Sep 2021 12:41:07 -0700 (PDT)
Received: by mail-wr1-x42e.google.com with SMTP id q11so4149349wrr.9
        for <linux-man@vger.kernel.org>; Fri, 10 Sep 2021 12:41:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=rvQ6ULChqt45p838D1a+lfsMIpa/8vosGWGbk5qCHuI=;
        b=oYZyARLBJ9KGlD0Vi67gRbj1VSrHm3Be0NZQY7K+WAMdP98ryNVrbMmWfq49rtqvZX
         qJvyCJ0qtzYQNVfBYy80HuLSrMmFBW31jWbI3nXhiZfu8Ys/qehHlzQWJrxjshKMS2tV
         zwrOj/zUTOPvN4MvcstY0ExvrtKPMspgEjQqfOVWUjIpGybdRp3WpI/h6P8s6JkQ6Pm5
         0ytPhfusO8dJEOihmF4dxmoIa0V9of2tUUBno5tQbmITHu1HGNM1feITGl5hYe06MrnG
         l0+SLAo74rBOgGm2uKy91+6TS9Fc3qsgvGodPs0JkiTuWZknN1WKFIUs86ZQzyE72tt3
         SgiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=rvQ6ULChqt45p838D1a+lfsMIpa/8vosGWGbk5qCHuI=;
        b=cFq+TEKHuOClE8qZukVhPOcn6W6humC3FwyZC7ysBWY1jizRhrn9CMZQLnEODt/3WW
         DbDVYPYRHIJNVwRUArjChuAAr4/PjPudqXC/yQ5U1ciGOMlNbaf70nD4mzZ8fn8o/xaU
         +3aE6V+XjHXk2U+pHv6E1+QsaONCOXZRvscHjS8SmFotd1jycug3I6WMCSR+uGqOtyCJ
         EiFJ059/2JTsB1iKA87ZK7Ifrd+R/Ax1egNKMpFce8/YspeWinHIHNBWaGMmfTA5K3ku
         ntV4NWI0Bcx0MKTuIbFQ2zghAV8uThSY3ToBXuJmvW6PzZGI2wX6n2ks+KcTaAJP1RXb
         AFag==
X-Gm-Message-State: AOAM531v5jxtmKfRFsDsdVuPLa+9nhL66nVyEpkUXe8GYHywtCgKs2xb
        TEZl6WW5U3evKwjkHAENiTA=
X-Google-Smtp-Source: ABdhPJzl9uanXMhzGuOfCD04c7nWyi5hrTz0ARjOh/klB1njISu0a5aoxUgY1pzXDQbDjHT8ws0YyQ==
X-Received: by 2002:a5d:53cd:: with SMTP id a13mr8668412wrw.33.1631302866356;
        Fri, 10 Sep 2021 12:41:06 -0700 (PDT)
Received: from [10.168.10.11] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id h15sm5488601wrc.19.2021.09.10.12.41.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Sep 2021 12:41:05 -0700 (PDT)
Subject: Re: [patch] clone.2: Add EACCES with CLONE_INTO_CGROUP + clone3 to
 ERRORS
To:     Christian Brauner <christian.brauner@ubuntu.com>,
        Andrew Wock <ajwock@gmail.com>
Cc:     linux-man@vger.kernel.org, mtk.manpages@gmail.com,
        christian@brauner.io
References: <CAACtx1b_v3nbv8EkAQ1f7ee=yt3ECm_a6kb1KNdBPZ5F20ndFw@mail.gmail.com>
 <20210830073801.tbbxhnw3dg5saxt7@wittgenstein>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <d496ad19-f145-41a4-bf31-60e0864597af@gmail.com>
Date:   Fri, 10 Sep 2021 21:41:04 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210830073801.tbbxhnw3dg5saxt7@wittgenstein>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Andrew and Christian,

On 8/30/21 9:38 AM, Christian Brauner wrote:
> On Sun, Aug 29, 2021 at 03:57:06PM -0400, Andrew Wock wrote:
>> Resending because it's my first time mailing the lkml and I used html.
>> Reattempting w/ gmail's plaintext mode.  I apologise if this is
>> reaching you twice.
>>
>> I noticed that clone3 can send the EACCES errno after I wrote a
>> program that used clone3 with the CLONE_INTO_CGROUP flag.  To me, it's
>> important to know what kind of failure occurred if the clone3 fails,
>> so I was glad that a unique errno is set for this case, but it wasn't
>> documented on the clone man page.
> 
> In essence, any error that could occur during regular fs-based migration
> at write-time can also occur during CLONE_INTO_CGROUP. The clone3()
> manpage just has the inverse of that above statement:
> 
> "Note that all of the usual restrictions (described in cgroups(7)) on
> placing a process into a version 2 cgroup apply."

Thanks for the patch!  Applied.
And I added both of your comments into the git commit.

> 
>>
>> I've attached a patch and a test program.
>>
>> Test program is attached as clone3_doc.c.  Create
>> /sys/fs/cgroup/not-allowed as root, then run the program.  It should
>> set errno to EACCES.
> 
> This is a manpage update, right? In that case it's not necessarily
> needed to Cc lkml aka linux-kernel@... itself.
> 
> For the content:
> Acked-by: Christian Brauner <christian.brauner@ubuntu.com>

Thanks for that!  Tag added.

> 
> (I have no idea what patch format Michael will accept so I can't really
> ack that. :))

We very much prefer inline patches, preferably ones that apply easily 
with git-apply(1). :)

Cheers,

Alex

> 
>>
>> Thanks,
>> Andrew Wock
> 
>> #include <stdio.h>
>> #include <errno.h>
>> #include <stdlib.h>
>> #include <string.h>
>> #include <signal.h>
>> #include <fcntl.h>
>>
>> #include <linux/sched.h>    /* Definition of struct clone_args */
>> #include <sched.h>          /* Definition of CLONE_* constants */
>> #include <sys/syscall.h>    /* Definition of SYS_* constants */
>> #include <unistd.h>
>>
>> /*
>>   * Preconditions:
>>   * - /sys/fs/cgroup/not-allowed is a real cgroup.
>>   * - You are not root and do not have write permissions to
>>   *   /sys/fs/cgroup/not-allowed/cgroup.procs
>>   */
>> int main() {
>>    pid_t pid;
>>    int fd;
>>    struct clone_args cl_args = {0};
>>    char *cgPath = "/sys/fs/cgroup/not-allowed";
>>
>>    fd = open(cgPath, O_RDONLY);
>>    if (fd == -1) {
>>      fprintf(stderr, "Could not open cgroup %s: %s\n", cgPath, strerror(errno));
>>      exit(1);
>>    }
>>
>>    cl_args.exit_signal = SIGCHLD;
>>    cl_args.flags = CLONE_INTO_CGROUP;
>>    cl_args.cgroup = fd;
>>    pid = syscall(SYS_clone3, &cl_args, sizeof(cl_args));
>>    if (pid == -1) {
>>      if (errno == EACCES) {
>>        printf("EACCES detected\n");
>>        exit(0);
>>      }
>>      fprintf(stderr, "Could not clone into cgroup: %s\n", strerror(errno));
>>    } else if (pid == 0) {
>>      fprintf(stderr, "Are you root, or do you have write access to %s?\n", cgPath);
>>    }
>>    exit(1);
>> }
> 
> 


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
