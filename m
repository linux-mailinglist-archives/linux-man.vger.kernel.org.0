Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4B2382A06B7
	for <lists+linux-man@lfdr.de>; Fri, 30 Oct 2020 14:47:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726402AbgJ3NrB (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 30 Oct 2020 09:47:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56054 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726355AbgJ3NrA (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 30 Oct 2020 09:47:00 -0400
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BBD98C0613CF;
        Fri, 30 Oct 2020 06:46:43 -0700 (PDT)
Received: by mail-wr1-x444.google.com with SMTP id m13so6527896wrj.7;
        Fri, 30 Oct 2020 06:46:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=Owd0qoYBufmq+xllY0pSMQ4gfvrN825l8lyPXrl0zs0=;
        b=R1XRzj4P8ek0aFADwp7Vc0A7LqLOWY+++Ya1NE/rjs3BFAAC1ooS15c4BkzXYu6kj4
         C6q9XtNsK8zyqsyTQ3WnIdi/W62n/osDlPEhheJ+S9Q8q7KghOOpI5QSH62m4smfan2f
         DCajcHPos+a/yooB/B4TFXQlPeS4mVEHb5PrIAZVkRziR3CPXU8EMFgySQ4CG8jekSOL
         v6ar3jq1hM+OOIgV2Krc3v2syVWeSeRAAq89br3rnHrzD+hKu4RIdKVatXFgMF3ZulO9
         +4TOlnd/DPiDbohR2O8AqJNsCWgoJoSpUUJOOPNTS0Ydl/sUSRtnmuJvpGFUP55uQIAf
         Da8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Owd0qoYBufmq+xllY0pSMQ4gfvrN825l8lyPXrl0zs0=;
        b=snKfgug9jA5jHPmnyFiPsCXK4332GeeKVuZAS1OIFpKzOmEocdpKJpe7mYXq98bzSo
         w4xtK8N3VgJV9oTK/r9/LZNCkQY/RhFwtbP2zBEyHmj+mk4odZwETXGwPlEXclnGIQLY
         2zRt0cmLW6JNW22w1TAUZpwZbvox8idXvdpocemBFdxe9Gse0LtNnTdn6/yOUy6HlQWz
         D5JXRDDixfX3kRwwKnLrVf7B/OnVMo5HDCYklYcsEjidB0MR6WmlEblyZYFkjGhAIF9K
         QdBEB/7NyfsjGkejzvLpSoy29fY5UZJ2rAn0D76+S+rsLOPP4Qpw5WIB+JuiAI0y4XKE
         UZAg==
X-Gm-Message-State: AOAM532s2Jgz5e76sqp37Tb2wIkMaW4QUfASfsd7I7sa1Q72bK5BB6Xy
        yuwCZ4l5f2uV7OHGlTuHQM8gGq6U9J8=
X-Google-Smtp-Source: ABdhPJwAqxmqstQn8ed2p0UAfgOlqVs/TLJPaEUEd0CPk/6lQa1o1lFXtNxwV7Xp7BP5we+pAI/7YQ==
X-Received: by 2002:adf:ef92:: with SMTP id d18mr3255762wro.420.1604065601978;
        Fri, 30 Oct 2020 06:46:41 -0700 (PDT)
Received: from [192.168.1.143] ([170.253.60.68])
        by smtp.gmail.com with ESMTPSA id w7sm11116103wre.9.2020.10.30.06.46.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Oct 2020 06:46:41 -0700 (PDT)
Subject: Re: [PATCH 2/2] futex.2: Use appropriate types
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20201030123956.36169-1-colomar.6.4.3@gmail.com>
 <20201030123956.36169-2-colomar.6.4.3@gmail.com>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <bfffdeae-26e6-0469-f9af-f48b3b60a363@gmail.com>
Date:   Fri, 30 Oct 2020 14:46:39 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20201030123956.36169-2-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

BTW, apparently the kernel doesn't use 'const' for 'utime'
('timeout' in the manual page),
but effectively, it doesn't modify it, AFAICS.

Should the kernel use 'const'?
Is there a reason for the kernel not using 'const'?
Should we do anything about it in the manual page?

Thanks,

Alex

On 2020-10-30 13:39, Alejandro Colomar wrote:
> The Linux kernel uses the following:
> 
> kernel/futex.c:3778:
> SYSCALL_DEFINE6(futex, u32 __user *, uaddr, int, op, u32, val,
> 		struct __kernel_timespec __user *, utime, u32 __user *, uaddr2,
> 		u32, val3)
> 
> Since there is no glibc wrapper, use the same types the kernel uses.
> 
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
> ---
>   man2/futex.2 | 27 ++++++++++++++-------------
>   1 file changed, 14 insertions(+), 13 deletions(-)
> 
> diff --git a/man2/futex.2 b/man2/futex.2
> index 837adbd25..73de71623 100644
> --- a/man2/futex.2
> +++ b/man2/futex.2
> @@ -26,12 +26,13 @@ futex \- fast user-space locking
>   .nf
>   .PP
>   .B #include <linux/futex.h>
> +.B #include <stdint.h>
>   .B #include <sys/time.h>
>   .PP
> -.BI "int futex(int *" uaddr ", int " futex_op ", int " val ,
> +.BI "long futex(uint32_t *" uaddr ", int " futex_op ", uint32_t " val ,
>   .BI "          const struct timespec *" timeout , \
>   " \fR  /* or: \fBuint32_t \fIval2\fP */"
> -.BI "          int *" uaddr2 ", int " val3 );
> +.BI "          uint32_t *" uaddr2 ", uint32_t " val3 );
>   .fi
>   .PP
>   .IR Note :
> @@ -581,8 +582,8 @@ any of the two supplied futex words:
>   .IP
>   .in +4n
>   .EX
> -int oldval = *(int *) uaddr2;
> -*(int *) uaddr2 = oldval \fIop\fP \fIoparg\fP;
> +uint32_t oldval = *(uint32_t *) uaddr2;
> +*(uint32_t *) uaddr2 = oldval \fIop\fP \fIoparg\fP;
>   futex(uaddr, FUTEX_WAKE, val, 0, 0, 0);
>   if (oldval \fIcmp\fP \fIcmparg\fP)
>       futex(uaddr2, FUTEX_WAKE, val2, 0, 0, 0);
> @@ -1765,11 +1766,11 @@ Child  (18535) 4
>   #define errExit(msg)    do { perror(msg); exit(EXIT_FAILURE); \e
>                           } while (0)
>   
> -static int *futex1, *futex2, *iaddr;
> +static uint32_t *futex1, *futex2, *iaddr;
>   
>   static int
> -futex(int *uaddr, int futex_op, int val,
> -      const struct timespec *timeout, int *uaddr2, int val3)
> +futex(uint32_t *uaddr, int futex_op, uint32_t val,
> +      const struct timespec *timeout, uint32_t *uaddr2, uint32_t val3)
>   {
>       return syscall(SYS_futex, uaddr, futex_op, val,
>                      timeout, uaddr2, val3);
> @@ -1779,9 +1780,9 @@ futex(int *uaddr, int futex_op, int val,
>      become 1, and then set the value to 0. */
>   
>   static void
> -fwait(int *futexp)
> +fwait(uint32_t *futexp)
>   {
> -    int s;
> +    long s;
>   
>       /* atomic_compare_exchange_strong(ptr, oldval, newval)
>          atomically performs the equivalent of:
> @@ -1794,7 +1795,7 @@ fwait(int *futexp)
>       while (1) {
>   
>           /* Is the futex available? */
> -        const int one = 1;
> +        const uint32_t one = 1;
>           if (atomic_compare_exchange_strong(futexp, &one, 0))
>               break;      /* Yes */
>   
> @@ -1811,13 +1812,13 @@ fwait(int *futexp)
>      so that if the peer is blocked in fpost(), it can proceed. */
>   
>   static void
> -fpost(int *futexp)
> +fpost(uint32_t *futexp)
>   {
> -    int s;
> +    long s;
>   
>       /* atomic_compare_exchange_strong() was described in comments above */
>   
> -    const int zero = 0;
> +    const uint32_t zero = 0;
>       if (atomic_compare_exchange_strong(futexp, &zero, 1)) {
>           s = futex(futexp, FUTEX_WAKE, 1, NULL, NULL, 0);
>           if (s  == \-1)
> 
