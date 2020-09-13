Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1A316267E13
	for <lists+linux-man@lfdr.de>; Sun, 13 Sep 2020 08:01:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725899AbgIMGBQ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 13 Sep 2020 02:01:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50106 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725894AbgIMGBN (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 13 Sep 2020 02:01:13 -0400
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com [IPv6:2a00:1450:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3218EC061573
        for <linux-man@vger.kernel.org>; Sat, 12 Sep 2020 23:01:12 -0700 (PDT)
Received: by mail-wr1-x443.google.com with SMTP id z4so15256012wrr.4
        for <linux-man@vger.kernel.org>; Sat, 12 Sep 2020 23:01:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=HavE5/oVuV+EWT6XbOH+Uaekq+gMFBCQIWQZUXXY27g=;
        b=iGqoLwgSh5pA3EPG/WC8+nCIEUB+01MJBCBMblhtyItRBJYu0DCDwFXh4E1P+i9EID
         1d8J5RNaPRiHnx40lqA0vv7HLGdvfaEYmsr6XC2Fyv/m6jRnC2DnEJiO0pI/UalxJV9l
         s4pJ3GH1P0QUnKEjD5bqpwygFQ2BT0qIAUb2bDowEb4XTibAbY/lYhQVpB6BQztUKR/T
         wKpm0oil1Jnli+0T/rFFd1HHcwmK2IlaVwOL3R9w0uxW6Fyk33LVddlGYYGe3GfUl58A
         kld+rZLoI4w4UfwXtySn8aHk/mGnD5PRwEu740qlm4BAqvls0Ql981Pua3asR64yBjUK
         NKnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=HavE5/oVuV+EWT6XbOH+Uaekq+gMFBCQIWQZUXXY27g=;
        b=MJ9X82vQapUGVzFHR95FP30d4Nf1uAt6YrEHjC0xuDJh3wzY7D4Lrz3MRFKaB3h/7K
         Qp1F8fD+IYuoF9+sR66/Z/k61pYUzPBtgVPmpC/I9kccc3fJkToz/bQW1xs0iz9UJRQC
         8lcW73NBR4HKdXvW31Zldm2Q34zkRNi98iKJh6r16NV/Is955VAWBZktz+BDjl1KH5YQ
         4fJVBET2Qi/ZhZFYexE5pLPDYQKfaXsJYlI1kZ8FDEmf22FxPQdCdAXDLOoaX9gf+tby
         jc9+TfPb78NbXDS60A0IXK58wj2KF7GVsqJ7GDzLJhpzvgXeKXx5cIQRdy1vsFIIPDcy
         MTcQ==
X-Gm-Message-State: AOAM533WLJX4X6K6MIYE4vHiacPx54z5EkpA2X0tfHLzGYaIi9QWjSuV
        86zy83whd5FvV5TON2WWvrElCAnf1Io=
X-Google-Smtp-Source: ABdhPJze2J1mg3FI23/PaTUaScL0OXYqebdovx9f417RsXztQtw94xgSCqn1qpJS5uIwjAoGl0aHjQ==
X-Received: by 2002:a5d:4603:: with SMTP id t3mr9294726wrq.424.1599976870490;
        Sat, 12 Sep 2020 23:01:10 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id k8sm13597595wrl.42.2020.09.12.23.01.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 12 Sep 2020 23:01:10 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH 05/12] getpwent_r.3: Cast 'uid_t' to 'intmax_t' for
 printf()
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20200911231411.28406-1-colomar.6.4.3@gmail.com>
 <20200911231411.28406-6-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <867a2a99-5d14-6c01-62fc-f4daef538289@gmail.com>
Date:   Sun, 13 Sep 2020 08:01:09 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200911231411.28406-6-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 9/12/20 1:14 AM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
> ---
>  man3/getpwent_r.3 | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/man3/getpwent_r.3 b/man3/getpwent_r.3
> index b6c1c281f..ef4c01c21 100644
> --- a/man3/getpwent_r.3
> +++ b/man3/getpwent_r.3
> @@ -179,6 +179,7 @@ in the stream with all other threads.
>  #define _GNU_SOURCE
>  #include <pwd.h>
>  #include <stdio.h>
> +#include <stdint.h>
>  #define BUFLEN 4096
>  
>  int
> @@ -194,8 +195,8 @@ main(void)
>          i = getpwent_r(&pw, buf, sizeof(buf), &pwp);
>          if (i)
>              break;
> -        printf("%s (%d)\etHOME %s\etSHELL %s\en", pwp\->pw_name,
> -               pwp\->pw_uid, pwp\->pw_dir, pwp\->pw_shell);
> +        printf("%s (%jd)\etHOME %s\etSHELL %s\en", pwp\->pw_name,
> +               (intmax_t) pwp\->pw_uid, pwp\->pw_dir, pwp\->pw_shell);
>      }
>      endpwent();
>      exit(EXIT_SUCCESS);


Casting to long is the historical practice here, and should be sufficient,
don't you think? I realize there's an argument for making all of these 
system data type casts intmax_t / uintmax_t. But the counterarguments
(admittedly not compelling), are:

* Some people might still be confined to a pre C-99 world
* Churn (lots of changes)
* (long) is a sufficient cast for all of these types
  (except off_t).

Your thoughts?

Thanks,

Michael


Thanks,

Michael




-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
