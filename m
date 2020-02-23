Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 4EC1D169A2D
	for <lists+linux-man@lfdr.de>; Sun, 23 Feb 2020 22:14:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726302AbgBWVOq (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 23 Feb 2020 16:14:46 -0500
Received: from mail-wr1-f68.google.com ([209.85.221.68]:35964 "EHLO
        mail-wr1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727064AbgBWVOq (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 23 Feb 2020 16:14:46 -0500
Received: by mail-wr1-f68.google.com with SMTP id z3so8049043wru.3
        for <linux-man@vger.kernel.org>; Sun, 23 Feb 2020 13:14:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=ZtTN1OcMUH/se9k+rqlzV8bAq9OQRfGm//usQPN0SkY=;
        b=drFMSQyEZMfXHbf0R/OS3MJpUdbmx5SAuR0L/68Jx/Lmv4p7x8WI1iqppIg6oyi9lx
         gXV+Yw7bDSV8xgvBpgezlzRCs13DADK8foRqORh8zFpeTpLSv1/wVJZjKZCqt/+VSaGU
         7MgnCgCmEiFXYyoRnzTyLd6f0EbklbHlR9KJ12QVodl1YEI+O8oOKhe/Oe0byZFIWH4u
         7+8pSXD+b4PvYRUcqB3YQCSnkSj6XeEkzaof1BhyQOziBTGyl2hO3t4yarjCo54e+eJb
         czZ8BrIGD5uiwPVOWd3czksz6BKOUy04x50D0Qf4cl9unqVTJDYt0o2dYkMPw/e1eDUg
         4PwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=ZtTN1OcMUH/se9k+rqlzV8bAq9OQRfGm//usQPN0SkY=;
        b=W1iS+5oSwQ+ccyvvDjIMxJTZ/x6va5bPSsShNqi5i4iV7eq5/wRejO5AhFEf9fJQNQ
         VMpBVssgQzS74c/t6mHZeOI1L3ulWVd85tY3UxBeHrEkbzUZJWUc03PCAYL5cbWfexc+
         dTKVT13vKoEUtjEOvrfex8crJ4/GOt9IxxJS5gnuw5Z/7nMFvlTM84Nb9RCuoDZLdaqM
         8OuetIjH3qwe65GblvjLHu8YD2Ul7D6tTIHzNHpuojBSdLmJ7ZimSbBS+KTuKf4hH+DW
         WtrJAgt0b0n7Zl5GP8sWJX8RLiaPDDdeuAgaLsfs+8fWS63iNXDr5VUdUSi0nKsIDsUI
         pP7Q==
X-Gm-Message-State: APjAAAWiDVWeYQCkb0PCQJoHe2acp5YRJcDyosuQ+qJ00OE8OWkQ9tZS
        HT2wGKUtojynH3ZpBQo0I/cRj8ZL
X-Google-Smtp-Source: APXvYqxbuJUOv0jVbSQkiyqnc45MgHhL+zroTk9tsa+egTkMDyCYjETPi0XfNr4/8LMCEztGMTBRtg==
X-Received: by 2002:a5d:5347:: with SMTP id t7mr61835719wrv.401.1582492484798;
        Sun, 23 Feb 2020 13:14:44 -0800 (PST)
Received: from ?IPv6:2001:a61:3ab0:601:eabf:519f:11af:545d? ([2001:a61:3ab0:601:eabf:519f:11af:545d])
        by smtp.gmail.com with ESMTPSA id q14sm15849891wrj.81.2020.02.23.13.14.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 23 Feb 2020 13:14:44 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] nl_langinfo.3: mention the respective strftime conversion
 specifications
To:     Eugene Syromyatnikov <evgsyr@gmail.com>
References: <cover.1581693624.git.evgsyr@gmail.com>
 <d36e8402f69fc6d8b58d5441cc767a168bb3a155.1581693625.git.evgsyr@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <88f3432f-9cc5-a66b-bbda-b66ed423235e@gmail.com>
Date:   Sun, 23 Feb 2020 22:14:41 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <d36e8402f69fc6d8b58d5441cc767a168bb3a155.1581693625.git.evgsyr@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Eugene,

On 2/14/20 4:28 PM, Eugene Syromyatnikov wrote:
> * man3/nl_langinfo.3 (D_T_FMT, D_FMT, T_FMT, DAY_{1–7}, ABDAY_{1–7},
> MON_{1–12}, ABMON_{1–12}): Mention the respective strftime(3) conversion
> specifications.

Thanks,

Patch applied.

Cheers,

Michael

> Signed-off-by: Eugene Syromyatnikov <evgsyr@gmail.com>
> ---
>  man3/nl_langinfo.3 | 28 +++++++++++++++++++++++++---
>  1 file changed, 25 insertions(+), 3 deletions(-)
> 
> diff --git a/man3/nl_langinfo.3 b/man3/nl_langinfo.3
> index 8c0742f..ecc1954 100644
> --- a/man3/nl_langinfo.3
> +++ b/man3/nl_langinfo.3
> @@ -78,31 +78,53 @@ try "locale \-m" (see
>  .BR D_T_FMT \ (LC_TIME)
>  Return a string that can be used as a format string for
>  .BR strftime (3)
> -to represent time and date in a locale-specific way.
> +to represent time and date in a locale-specific way
> +.RB ( %c
> +conversion specification).
>  .TP
>  .BR D_FMT \ (LC_TIME)
>  Return a string that can be used as a format string for
>  .BR strftime (3)
> -to represent a date in a locale-specific way.
> +to represent a date in a locale-specific way
> +.RB ( %x
> +conversion specification).
>  .TP
>  .BR T_FMT \ (LC_TIME)
>  Return a string that can be used as a format string for
>  .BR strftime (3)
> -to represent a time in a locale-specific way.
> +to represent a time in a locale-specific way
> +.RB ( %X
> +conversion specification).
>  .TP
>  .BR DAY_ "{1\(en7} (LC_TIME)"
>  Return name of the \fIn\fP-th day of the week. [Warning: this follows
>  the US convention DAY_1 = Sunday, not the international convention
>  (ISO 8601) that Monday is the first day of the week.]
> +(Used in
> +.B %A
> +.BR strftime (3)
> +conversion specification.)
>  .TP
>  .BR ABDAY_ "{1\(en7} (LC_TIME)"
>  Return abbreviated name of the \fIn\fP-th day of the week.
> +(Used in
> +.B %a
> +.BR strftime (3)
> +conversion specification.)
>  .TP
>  .BR MON_ "{1\(en12} (LC_TIME)"
>  Return name of the \fIn\fP-th month.
> +(Used in
> +.B %B
> +.BR strftime (3)
> +conversion specification.)
>  .TP
>  .BR ABMON_ "{1\(en12} (LC_TIME)"
>  Return abbreviated name of the \fIn\fP-th month.
> +(Used in
> +.B %b
> +.BR strftime (3)
> +conversion specification.)
>  .TP
>  .BR RADIXCHAR \ (LC_NUMERIC)
>  Return radix character (decimal dot, decimal comma, etc.).
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
