Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8AE19278687
	for <lists+linux-man@lfdr.de>; Fri, 25 Sep 2020 14:01:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728056AbgIYMB1 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 25 Sep 2020 08:01:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59132 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727290AbgIYMB1 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 25 Sep 2020 08:01:27 -0400
Received: from mail-ed1-x542.google.com (mail-ed1-x542.google.com [IPv6:2a00:1450:4864:20::542])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 128F7C0613CE
        for <linux-man@vger.kernel.org>; Fri, 25 Sep 2020 05:01:27 -0700 (PDT)
Received: by mail-ed1-x542.google.com with SMTP id k14so2233640edo.1
        for <linux-man@vger.kernel.org>; Fri, 25 Sep 2020 05:01:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=mSDaHY0Eww4j7ztCmj0v8JLSjWgMgis3u1pFFFPuiww=;
        b=o6rRzQbpZT+IBkAv63AGXPBxQCGeUik/0LiByjrO/rgYPM3z3RMl9zfHdNulaM+NHB
         R1WWSxdMl2F2DcxjLdLwNzfAepDpIyVMvyajnqh1jy+02kI8Q77VQcfC/veqHLDH5zuv
         SvDa9dd/zDsRQaUVTD/7gb/43cLemd2tI89hFP/T6XVrKWM+fT4jyrPg3efIQHyRq5Vb
         wrFwE0BpaLyPYhquzrDqw1G+n0tYP9zjxzy0lZy9OMNB52xsrYG58A3GF+n1JWcvvJf9
         TePTjVo4U9oVEF4IG3PN3VlE8wykrJhvnpt1xvgNb8OPz/XxwVqZz7Km8IyAJ91HdhoF
         z7mA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=mSDaHY0Eww4j7ztCmj0v8JLSjWgMgis3u1pFFFPuiww=;
        b=M3/h75AWHPKKmR2urUq93Dv1VioS4er3AzeLIRzY+h3Qx+KMcjnLeMAQR91q6ALerj
         mq6+J72bAZSW/VpGSnSuz368fVZ1shZVetaLFQ/D3k4bO/iMzlGI4W6i6krlCwj0kq1V
         oyjf3bMmya25A/nRfQggbq4r2dxh4CEDuZ2FimaQ/xnygauGOGzwQgyyiTjq/SqhlFCy
         uy7GdQY9EIe2et2Atw861myxVNVk9m9ngR3n+um2GDeg8Ev8DYUQocY6RQ23hpj86YZB
         q2bUJJWD0JNE4ZfHzHAz3jq27k96p9BqKiL0SwX5JUvvu9wdtOznwV4srX8L3kWHBAzR
         ZvQw==
X-Gm-Message-State: AOAM532BOiXDoY6cglMRqax319SlHphbCVWmR1FCwAH5jmBAsn9wVcaB
        ANEpz04fFD1gRfBgt+6qPdM=
X-Google-Smtp-Source: ABdhPJzhjhMPDj9yqSI8zwhpN0/ihk4eIuoPW5X9/RyZFdv/6y9AiKp4iZ3MDM7A6ovla1XjnAw32A==
X-Received: by 2002:a50:f1cf:: with SMTP id y15mr933508edl.204.1601035285668;
        Fri, 25 Sep 2020 05:01:25 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id o15sm1728917ejr.1.2020.09.25.05.01.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Sep 2020 05:01:24 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org
Subject: Re: [PATCH v2 04/10] system_data_types.7: Add float_t
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <94936b66-4d20-1168-546f-64ac63018845@gmail.com>
 <20200925111922.222149-1-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <19cc7c28-7cca-7197-aecd-a4d529f3df6d@gmail.com>
Date:   Fri, 25 Sep 2020 14:01:23 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200925111922.222149-1-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 9/25/20 1:19 PM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
> ---
> 
> Hi Michael,
> 
> On 2020-09-25 11:30, Michael Kerrisk (man-pages) wrote:
>>> I removed the "intended" part to simplify it a bit. Do you prefer to
>>> keep it?
>> Well, as long as you are going to lift the detail about "most
>> efficient" from the C standard, I'd be inclined to keep
>> the word "intended" from the standard as well. But I do not feel
>> strongly about it.
>>
> 
> Fair enough.
> 
> 
> On 2020-09-25 11:30, Michael Kerrisk (man-pages) wrote:
>>> BTW, I'll also add a note that FLT_EVAL_METHOD is defined in <float.h>
>>> Would you add that to "Notes", or as part of the description?
>> As part of the description I think. (And I don't mind if it's
>> repeated in the double_t description.)
> 
> I think there was a misunderstanding; maybe I should have been clearer:
> 
> I meant to write about <float.h> in the "Notes" of the type,
> and not in the "NOTES" of the entire page.

Okay -- got it now.

> 
> However, I decided to do it in the description of the type as you said,
> because it was a bit simpler.
> 
> The other version would have resulted in this code, just for you to see:

I think the path you took was better. I've applied the patch and 
done some very light editing.

Thanks,

Michael


> 
> [[
> .TP
> .I double_t
> .RS
> .PP
> Include:
> .IR <math.h> .
> .PP
> The implementation's most efficient floating type at least as wide as
> .IR double .
> Its type depends on the value of the macro
> .BR FLT_EVAL_METHOD :
> .TP
> 0
> .I double_t
> is
> .IR double .
> .TP
> 1
> .I double_t
> is
> .IR double .
> .TP
> 2
> .I double_t
> is
> .IR "long double" .
> .IP
> For other values of
> .BR FLT_EVAL_METHOD ,
> the type of
> .I double_t
> is implementation-defined.
> .PP
> Conforming to: C99 and later; POSIX.1-2001 and later.
> .PP
> Notes: The macro
> .B FLT_EVAL_METHOD
> is defined in
> .IR <float.h> .
> .PP
> See also the
> .I float_t
> type in this page.
> .RE
> ]]
> 
> 
> Cheers,
> 
> Alex
> 
>  man7/system_data_types.7 | 42 ++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 42 insertions(+)
> 
> diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
> index b04457bbf..aa5ab95e9 100644
> --- a/man7/system_data_types.7
> +++ b/man7/system_data_types.7
> @@ -147,6 +147,48 @@ Conforming to: C99 and later; POSIX.1-2001 and later.
>  .IP
>  See also:
>  .BR fenv (3)
> +.\"------------------------------------- float_t ----------------------/
> +.TP
> +.I float_t
> +.IP
> +Include:
> +.IR <math.h> .
> +.IP
> +The implementation's most efficient floating type at least as wide as
> +.IR float .
> +Its type depends on the value of the macro
> +.BR FLT_EVAL_METHOD ,
> +defined in
> +.IR <float.h> :
> +.RS
> +.TP
> +0
> +.I float_t
> +is
> +.IR float .
> +.TP
> +1
> +.I float_t
> +is
> +.IR double .
> +.TP
> +2
> +.I float_t
> +is
> +.IR "long double" .
> +.IP
> +For other values of
> +.BR FLT_EVAL_METHOD ,
> +the type of
> +.I float_t
> +is implementation-defined.
> +.RE
> +.IP
> +Conforming to: C99 and later; POSIX.1-2001 and later.
> +.IP
> +See also the
> +.I double_t
> +type in this page.
>  .\"------------------------------------- gid_t ------------------------/
>  .TP
>  .I gid_t
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
