Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3BD362A0E7B
	for <lists+linux-man@lfdr.de>; Fri, 30 Oct 2020 20:20:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726607AbgJ3TUR (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 30 Oct 2020 15:20:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52090 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726163AbgJ3TT3 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 30 Oct 2020 15:19:29 -0400
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com [IPv6:2a00:1450:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 09425C0613CF;
        Fri, 30 Oct 2020 12:19:29 -0700 (PDT)
Received: by mail-wm1-x344.google.com with SMTP id k21so3988090wmi.1;
        Fri, 30 Oct 2020 12:19:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=7viWtuYwRniajmZI1ykFCky/KA+cALVRK771wIKkhLo=;
        b=jaqUrcduw6hykc1tMefvpih57LnKDGIE0F+TTCyugOZuGYmsgyhh1uB27g5t3eOncp
         n22HmcvTsmm6gah+u0jBY9I6Uv+jynxF7IC5FjJsKlbR7+NVpHE64I+jgczgy/PkyvDx
         pkGc4jDeuH2q1K/qBaO1PUf6m5svm6UeqFzt1b1wwkE4GWhY2KyUju+/3wBeJtwRE6Oc
         WZSveYq/5efx2GkAIL29DfmRd4os4QdcfRfzbPdOe7lSR+NHCBV9oCANOU5mhLlPP8yr
         XLYxc0poISbqrDa4qJBExOBCL/IfkK3Jq2tPmd0Dzy3s5uncYIe7U0Lpu2vBvcDQckM4
         Al3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=7viWtuYwRniajmZI1ykFCky/KA+cALVRK771wIKkhLo=;
        b=uT71w6XhMqt6e+5jBUGnDskfUEbWo3GjItKSNcIIYfbFDvsYQL5UJFbXIvlS3IZX0j
         gTFsrdU2RKb08cp4mgnmK2ApUPhk0TA19pT35HZrNgzRtdWm62+/Z0c8kkjeApr2lad7
         knFzl+wkmFb5GsZcj/0gPylZxdF0ylieQrdyJKBtCE1GG3P77GqRhnsaa6fpUjOofxRc
         vHxZ1K38RCdP39c3y7jU4GwV7eSuuvmQiIcAemdbH3cGONQcc9c7tTMiA34kUEq7ERBE
         oMB/rdW/ky16gPscZ+TgxflcRyVzwmB08BJ1swkBVlZNuEnfPmc7LNe6gcbMwIgtnxci
         tdMA==
X-Gm-Message-State: AOAM532rTItSls4QnLILbdHrnLMcIObhtdKhZvtw4i7Kqg80yluLzeyw
        DCFdHppZXTyKAQvbZyvfBLFqI1sZXbc=
X-Google-Smtp-Source: ABdhPJxET2qMKA+4Cv28BF5mZrpYa6OI25P7hqJ/cklYPpEkto8dpm7nhMAeE5CUwmY/dK7FZplEAw==
X-Received: by 2002:a1c:9641:: with SMTP id y62mr4508628wmd.145.1604085567489;
        Fri, 30 Oct 2020 12:19:27 -0700 (PDT)
Received: from ?IPv6:2001:a61:245a:d801:2e74:88ad:ef9:5218? ([2001:a61:245a:d801:2e74:88ad:ef9:5218])
        by smtp.gmail.com with ESMTPSA id e2sm12474935wrr.85.2020.10.30.12.19.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Oct 2020 12:19:26 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] futex.2: Use appropriate types
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20201030123956.36169-1-colomar.6.4.3@gmail.com>
 <20201030123956.36169-2-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <f556e3a4-8120-b57c-8da1-7a2273b5fd78@gmail.com>
Date:   Fri, 30 Oct 2020 20:19:26 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.1
MIME-Version: 1.0
In-Reply-To: <20201030123956.36169-2-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 10/30/20 1:39 PM, Alejandro Colomar wrote:
> The Linux kernel uses the following:
> 
> kernel/futex.c:3778:
> SYSCALL_DEFINE6(futex, u32 __user *, uaddr, int, op, u32, val,
> 		struct __kernel_timespec __user *, utime, u32 __user *, uaddr2,
> 		u32, val3)
> 
> Since there is no glibc wrapper, use the same types the kernel uses.

Thanks. Patch applied.

Cheers,

Michael

> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
> ---
>  man2/futex.2 | 27 ++++++++++++++-------------
>  1 file changed, 14 insertions(+), 13 deletions(-)
> 
> diff --git a/man2/futex.2 b/man2/futex.2
> index 837adbd25..73de71623 100644
> --- a/man2/futex.2
> +++ b/man2/futex.2
> @@ -26,12 +26,13 @@ futex \- fast user-space locking
>  .nf
>  .PP
>  .B #include <linux/futex.h>
> +.B #include <stdint.h>
>  .B #include <sys/time.h>
>  .PP
> -.BI "int futex(int *" uaddr ", int " futex_op ", int " val ,
> +.BI "long futex(uint32_t *" uaddr ", int " futex_op ", uint32_t " val ,
>  .BI "          const struct timespec *" timeout , \
>  " \fR  /* or: \fBuint32_t \fIval2\fP */"
> -.BI "          int *" uaddr2 ", int " val3 );
> +.BI "          uint32_t *" uaddr2 ", uint32_t " val3 );
>  .fi
>  .PP
>  .IR Note :
> @@ -581,8 +582,8 @@ any of the two supplied futex words:
>  .IP
>  .in +4n
>  .EX
> -int oldval = *(int *) uaddr2;
> -*(int *) uaddr2 = oldval \fIop\fP \fIoparg\fP;
> +uint32_t oldval = *(uint32_t *) uaddr2;
> +*(uint32_t *) uaddr2 = oldval \fIop\fP \fIoparg\fP;
>  futex(uaddr, FUTEX_WAKE, val, 0, 0, 0);
>  if (oldval \fIcmp\fP \fIcmparg\fP)
>      futex(uaddr2, FUTEX_WAKE, val2, 0, 0, 0);
> @@ -1765,11 +1766,11 @@ Child  (18535) 4
>  #define errExit(msg)    do { perror(msg); exit(EXIT_FAILURE); \e
>                          } while (0)
>  
> -static int *futex1, *futex2, *iaddr;
> +static uint32_t *futex1, *futex2, *iaddr;
>  
>  static int
> -futex(int *uaddr, int futex_op, int val,
> -      const struct timespec *timeout, int *uaddr2, int val3)
> +futex(uint32_t *uaddr, int futex_op, uint32_t val,
> +      const struct timespec *timeout, uint32_t *uaddr2, uint32_t val3)
>  {
>      return syscall(SYS_futex, uaddr, futex_op, val,
>                     timeout, uaddr2, val3);
> @@ -1779,9 +1780,9 @@ futex(int *uaddr, int futex_op, int val,
>     become 1, and then set the value to 0. */
>  
>  static void
> -fwait(int *futexp)
> +fwait(uint32_t *futexp)
>  {
> -    int s;
> +    long s;
>  
>      /* atomic_compare_exchange_strong(ptr, oldval, newval)
>         atomically performs the equivalent of:
> @@ -1794,7 +1795,7 @@ fwait(int *futexp)
>      while (1) {
>  
>          /* Is the futex available? */
> -        const int one = 1;
> +        const uint32_t one = 1;
>          if (atomic_compare_exchange_strong(futexp, &one, 0))
>              break;      /* Yes */
>  
> @@ -1811,13 +1812,13 @@ fwait(int *futexp)
>     so that if the peer is blocked in fpost(), it can proceed. */
>  
>  static void
> -fpost(int *futexp)
> +fpost(uint32_t *futexp)
>  {
> -    int s;
> +    long s;
>  
>      /* atomic_compare_exchange_strong() was described in comments above */
>  
> -    const int zero = 0;
> +    const uint32_t zero = 0;
>      if (atomic_compare_exchange_strong(futexp, &zero, 1)) {
>          s = futex(futexp, FUTEX_WAKE, 1, NULL, NULL, 0);
>          if (s  == \-1)
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
