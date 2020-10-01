Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1F860280269
	for <lists+linux-man@lfdr.de>; Thu,  1 Oct 2020 17:19:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732339AbgJAPTE (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 1 Oct 2020 11:19:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37356 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732104AbgJAPTE (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 1 Oct 2020 11:19:04 -0400
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com [IPv6:2a00:1450:4864:20::342])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 378FBC0613D0
        for <linux-man@vger.kernel.org>; Thu,  1 Oct 2020 08:19:04 -0700 (PDT)
Received: by mail-wm1-x342.google.com with SMTP id j136so2252734wmj.2
        for <linux-man@vger.kernel.org>; Thu, 01 Oct 2020 08:19:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=N6fJm+V/WD1diHskXeRITsgiss/vE36Skgh57+MKhi4=;
        b=Q+I9OWE1Xu7BmMtk0YRKu6PATErfuQPWi6nGvx0uH3vLlei72aYA0PSW0zajaq1uaD
         mrlFU7BiBysSwsztIVM+tNQI6+Yg896exeN9XIm8YAjgt/xavTw+VAFjos2Bt4yoZeKh
         JxrCvN4JM28hXVUlJGr41d8tweBkljt4xh+ZvysW2HgvCGdNt1NCmFh4tb+FHEBeq6aQ
         K6tUxsYSEIoa6LAoqfRs19W0UsHlq/h3KbeWWVBQFYx1mETuTXuGx/xb+05nlmIGFaey
         BXcwLAoipcks+x1Vv7iD43bS9WcqmUjak/8BUzfWxun6G5/18ifpCMVeLejS0Byg1QSE
         09TQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=N6fJm+V/WD1diHskXeRITsgiss/vE36Skgh57+MKhi4=;
        b=NNnGx8ZO51Q+H5qpjsGe5PEPsfVjgui6wCWlvTPlJj2LH9dBVPMuFSuAJYxuITverl
         2RgCh4w7t8n1IcEppj8x6s1BA6ojy1pkqtJnCa9ArxuVGCpyCoD5UkqbIaDhDZOeAR5s
         N4GRs3bq2cCYmleOx2Mu4uqG3/tZRIriBSJwcTmW82QVS7/nrc0Sji6HcZ1kOVzaXFsv
         Mi8dwxUDfvF3+PS8uAOB8+z8j1+8ozyyFLhwJQ7/bRLT2HWMnX7c0sEYnwmrFNuQU94L
         tJuTcZSDvGmWW7z1XVUKXUuRemsCQtV4o5o/BGywbNWOCPJf6UtGUEYPp0amBVzLbIv/
         gvNA==
X-Gm-Message-State: AOAM530CPNMdLlE0ZuKLqjAHzEuCXh3oKhPV9JAc0gmNhcCwtT+Z4ZjF
        LRby4W2yGBozPALUMFdk18fWS0mG77s=
X-Google-Smtp-Source: ABdhPJykoTMwgFPcxSdn9CWqMkyuDB83VhG7AviewTy26PwFYZJ5XORyyZ+Jv5m5Yz0kz61fU5YyDA==
X-Received: by 2002:a1c:28a:: with SMTP id 132mr512612wmc.9.1601565539622;
        Thu, 01 Oct 2020 08:18:59 -0700 (PDT)
Received: from [192.168.178.63] (dynamic-077-009-049-048.77.9.pool.telefonica.de. [77.9.49.48])
        by smtp.gmail.com with ESMTPSA id t202sm464227wmt.14.2020.10.01.08.18.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Oct 2020 08:18:58 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH v2] system_data_types.7: Move "Bugs" after "Notes", as
 man-pages(7) specifies
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20201001132904.93549-1-colomar.6.4.3@gmail.com>
 <20201001142355.98424-1-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <a25e7070-d985-4a6e-3403-b161ba954e18@gmail.com>
Date:   Thu, 1 Oct 2020 17:18:55 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20201001142355.98424-1-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 10/1/20 4:23 PM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
> ---
> 
> Hi,
> 
> I guess the patch before applies,
> but just in case, I rebased against what I think is your HEAD right now.
> You didn't upload it yet AFAICS, so I rebased my commits in the order
> you applied them.  I hope it works :)

Thanks! It does. And now I've just pushed.

Thanks,

Michael

>  man7/system_data_types.7 | 16 ++++++++--------
>  1 file changed, 8 insertions(+), 8 deletions(-)
> 
> diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
> index abaf9e3cc..4645ed5f4 100644
> --- a/man7/system_data_types.7
> +++ b/man7/system_data_types.7
> @@ -40,13 +40,13 @@ system_data_types \- overview of system data types
>  .\"		* Description (no "Description" header)
>  .\"			A few lines describing the type.
>  .\"
> -.\"		* Bugs (if any)
> -.\"
>  .\"		* Conforming to (see NOTES)
>  .\"			Format: CXY and later; POSIX.1-XXXX and later.
>  .\"
>  .\"		* Notes (optional)
>  .\"
> +.\"		* Bugs (if any)
> +.\"
>  .\"		* See also
>  .\"------------------------------------- aiocb ------------------------/
>  .TP
> @@ -368,6 +368,9 @@ for printing
>  .I intmax_t
>  values.
>  .PP
> +Conforming to:
> +C99 and later; POSIX.1-2001 and later.
> +.PP
>  Bugs:
>  .I intmax_t
>  is not large enough to represent values of type
> @@ -378,9 +381,6 @@ is defined and
>  .I long long
>  is less than 128 bits wide.
>  .PP
> -Conforming to:
> -C99 and later; POSIX.1-2001 and later.
> -.PP
>  See also the
>  .I uintmax_t
>  type in this page.
> @@ -1309,6 +1309,9 @@ for printing
>  .I uintmax_t
>  values.
>  .PP
> +Conforming to:
> +C99 and later; POSIX.1-2001 and later.
> +.PP
>  Bugs:
>  .I uintmax_t
>  is not large enough to represent values of type
> @@ -1319,9 +1322,6 @@ is defined and
>  .I unsigned long long
>  is less than 128 bits wide.
>  .PP
> -Conforming to:
> -C99 and later; POSIX.1-2001 and later.
> -.PP
>  See also the
>  .I intmax_t
>  type in this page.
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
