Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2FDDC377925
	for <lists+linux-man@lfdr.de>; Mon, 10 May 2021 01:10:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229925AbhEIXLy (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 9 May 2021 19:11:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58316 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229840AbhEIXLy (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 9 May 2021 19:11:54 -0400
Received: from mail-pf1-x42f.google.com (mail-pf1-x42f.google.com [IPv6:2607:f8b0:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8AF0CC061573
        for <linux-man@vger.kernel.org>; Sun,  9 May 2021 16:10:50 -0700 (PDT)
Received: by mail-pf1-x42f.google.com with SMTP id k19so12348894pfu.5
        for <linux-man@vger.kernel.org>; Sun, 09 May 2021 16:10:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=W4poNZ2sRJ9PmKRWGYHJryBL7iBkia3zrcIWo6QAfrU=;
        b=Ldy+P1NRP8eiVotN3xGYzEcLOlhZ20/hmsWQUwl19JjJ9s/tH06d2zx+r9dfrZ5sNx
         A7wYQ/9C2lhufTzSIOJkq7pk+YcOdTCex4uC1CHb2m/49Bxu2PjW0HK84wrBoxF6MOlv
         EVije2eAC+7gHb3iE4AhRKD7uJHANca+kGOa8YQ+QKdcu/tLT7tSk8vLJ5qKlbmkjuDs
         ER3uP6XN9r6+baxD1hTS/t18zCMSTDd112SFqz6O3H1BYA1xIdMqvM2oefiV2igT0NHH
         C2wLRpWjMgtMqNY2pLqeElxtr0VekJuZVrY502JPpV+EtJBlR6GC2Ui9RJNQKYgA3Q/J
         1SkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=W4poNZ2sRJ9PmKRWGYHJryBL7iBkia3zrcIWo6QAfrU=;
        b=fB7i2kSn+DPmrCcE2KoJfIuHzkXfLi97D04BKq2Kx5Wo2BEuRAKSTfKQ6ijkJXh+rr
         o4HRQKEcIrYVobb26Htww+9JNpYIKAlCmXK1kL3fOXTpo3OgcqXJCodmE783PB9YfA5N
         ZgnAuwhciNSFRRlv6spc8qe6p/n0VErsfQKg4Ck8QXT5E+zhTjrLQUZ6SlXc2CUgAj9s
         KJpZyuRsx/N11h883tS1UblKi5OU4poShXafF88kXMUqBC2o1MkQ9in3NdqcWhv4Dh1Q
         0hNS1/4CyLQEkAFAvk+WrdKrbw4LJ4RhUl86/Hlb1451lMEcudlqxyBmRFedA/C+peYV
         5Xog==
X-Gm-Message-State: AOAM531Epdtj/oVeWOVXvUIIifmVDs6vAeI9W8b7uEG9rq2T1q9kOHHM
        xx3GFblsQkr/iV6RLcwjUP9T9uAdT4w=
X-Google-Smtp-Source: ABdhPJwaUNVhVInktawSzaMbVmpvEg3TsgAYY0CUr0+9cu/wS99LveubfKD/8BnNDZcCy/Vtoh7kLw==
X-Received: by 2002:aa7:8588:0:b029:28e:dfa1:e31a with SMTP id w8-20020aa785880000b029028edfa1e31amr22080955pfn.77.1620601849963;
        Sun, 09 May 2021 16:10:49 -0700 (PDT)
Received: from [192.168.192.21] (47-72-82-130.dsl.dyn.ihug.co.nz. [47.72.82.130])
        by smtp.gmail.com with ESMTPSA id f24sm10072011pfk.45.2021.05.09.16.10.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 09 May 2021 16:10:49 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] getutmp.3: ffix
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210509213930.94120-1-alx.manpages@gmail.com>
 <20210509213930.94120-9-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <77f245fb-d09e-0d66-d0fd-d97a791483f1@gmail.com>
Date:   Mon, 10 May 2021 11:10:45 +1200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <20210509213930.94120-9-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 5/10/21 9:39 AM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

Applied.

Thanks,

Michael

> ---
>  man3/getutmp.3 | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/man3/getutmp.3 b/man3/getutmp.3
> index e5e85aced..012cfdf6f 100644
> --- a/man3/getutmp.3
> +++ b/man3/getutmp.3
> @@ -31,8 +31,8 @@ getutmp, getutmpx \- copy utmp structure to utmpx, and vice versa
>  .BR "#define _GNU_SOURCE" "             /* See feature_test_macros(7) */"
>  .B #include <utmpx.h>
>  .PP
> -.BI " void getutmp(const struct utmpx *" ux ", struct utmp *" u );
> -.BI " void getutmpx(const struct utmp *" u ", struct utmpx *" ux );
> +.BI "void getutmp(const struct utmpx *" ux ", struct utmp *" u );
> +.BI "void getutmpx(const struct utmp *" u ", struct utmpx *" ux );
>  .fi
>  .SH DESCRIPTION
>  The
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
