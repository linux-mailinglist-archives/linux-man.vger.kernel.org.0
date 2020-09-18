Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8BAC52706DC
	for <lists+linux-man@lfdr.de>; Fri, 18 Sep 2020 22:19:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726247AbgIRUTg (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 18 Sep 2020 16:19:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53646 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726118AbgIRUTf (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 18 Sep 2020 16:19:35 -0400
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com [IPv6:2a00:1450:4864:20::341])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 36665C0613CE
        for <linux-man@vger.kernel.org>; Fri, 18 Sep 2020 13:19:35 -0700 (PDT)
Received: by mail-wm1-x341.google.com with SMTP id l9so6765262wme.3
        for <linux-man@vger.kernel.org>; Fri, 18 Sep 2020 13:19:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=11oZNYPkdZquJ5A/m1Mk1BUgTcqK96BopNweQPNQnh0=;
        b=i8HNRky6w9X89G7B4Wf4tQ8AWxjPRm4RJRIBT8lNXDsnt7sQbccnp3I460IHC00cuW
         nvEAzj5g9B8nLrSmHpnWmRbHZLhQeDUG9/Dc4SN54SbyIcZAqq1Jaa8ujlN46EtTdScx
         W3xOsdOSy0IIjylIGuyIDYcib7Ad9wduYtG8hk3xmHKTePuqI3TSx1Vs+WBS1wMGFa+6
         7L2SvGIg20C6ddWE3P5mhVQ2vS5DrdFr9SDZHyVSvMIBafgmNKDdX+B4oEh8BYLh11Pp
         VAF2K5b4K/tPgZxU0+rx+30XeEi1vhBi/18rYXlvRezkNL41n8K8D/ERDzxQZBS5oWj+
         LQGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=11oZNYPkdZquJ5A/m1Mk1BUgTcqK96BopNweQPNQnh0=;
        b=Y7E+28uPvDiiZNoIFMohedARPSrWa5GTXPvE5/CmxocntvhJm9rEE/u07DuFGEDxzp
         PWyIAibr7GehNgk1oqRSa5dWbxZ6/ozs9PxdNCNNlXGx60xp1J7LZgpKZNpaH8pvFf6e
         b+WXKF03rDfNn/1JH2MNZRe7cctAYqx6UX24nlPF3tvPa7wTDjKMBvYvlDDynacskHJD
         19kmmAuG1EExupLLfFHZmD29O6LFXO1K4FcndEEAGb9kuagrSIeG73ogmjbloz9g8KbX
         8W0mA6Obglqig5k/wNmSnXxepIf0LzDzUh9Q2toZwB9mqc/rr3YZzFvm7iF6l1iDoTLF
         rwnQ==
X-Gm-Message-State: AOAM532aKU4HOywYnoWAEo0mg71ZCl3Ly3hitOlB45Kc9KaBGkH+FPoz
        D3sHLw8yDzvfbWircVxsdoE=
X-Google-Smtp-Source: ABdhPJzhNY0dxCGWC/sYeVWhdqdyO85PlWIz1En+YOGem2l/wVU5aTI0ibLWUK5jr0N+SI1ZHmn5/g==
X-Received: by 2002:a1c:4e16:: with SMTP id g22mr16360085wmh.99.1600460373903;
        Fri, 18 Sep 2020 13:19:33 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id f1sm6617877wrx.75.2020.09.18.13.19.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Sep 2020 13:19:33 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org
Subject: Re: [PATCH 3/4] system_data_types.7: Document ptrdiff_t
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20200918120440.30281-1-colomar.6.4.3@gmail.com>
 <20200918120440.30281-4-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <f518711a-5402-3be4-35a6-232fef344900@gmail.com>
Date:   Fri, 18 Sep 2020 22:19:30 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200918120440.30281-4-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Alex,

On 9/18/20 2:04 PM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>

Patch applied.

Thanks,

Michael

> ---
>  man7/system_data_types.7 | 25 ++++++++++++++++++++++++-
>  1 file changed, 24 insertions(+), 1 deletion(-)
> 
> diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
> index 5ef470386..8969ee966 100644
> --- a/man7/system_data_types.7
> +++ b/man7/system_data_types.7
> @@ -62,6 +62,27 @@ system_data_types \- overview of system data types
>  .\"
>  .\"		* See also
>  .TP
> +.I ptrdiff_t
> +.IP
> +Include:
> +.I <stddef.h>.
> +.IP
> +Used for a count of elements, and array indices.
> +It is the result of subtracting two pointers.
> +According to the C language standard, it shall be a signed integer type
> +capable of storing values in the range
> +.BR "" [ PTRDIFF_MIN ,
> +.BR PTRDIFF_MAX ].
> +.IP
> +Conforming to: C99 and later; POSIX.1-2001 and later.
> +.IP
> +See also the
> +.\".I regoff_t ,	FIXME: uncomment when regoff_t is documented.
> +.I size_t
> +and
> +.I ssize_t
> +types in this page.
> +.TP
>  .I sigval
>  .IP
>  Include:
> @@ -221,8 +242,10 @@ See also:
>  .BR write (2)
>  .IP
>  See also the
> +.I ptrdiff_t
> +and
>  .I size_t
> -type in this page.
> +types in this page.
>  .TP
>  .I suseconds_t
>  .IP
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
