Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 34DAD3E37F6
	for <lists+linux-man@lfdr.de>; Sun,  8 Aug 2021 04:18:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229951AbhHHCTP (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 7 Aug 2021 22:19:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47844 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229882AbhHHCTP (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 7 Aug 2021 22:19:15 -0400
Received: from mail-pj1-x1032.google.com (mail-pj1-x1032.google.com [IPv6:2607:f8b0:4864:20::1032])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 89A03C061760
        for <linux-man@vger.kernel.org>; Sat,  7 Aug 2021 19:18:53 -0700 (PDT)
Received: by mail-pj1-x1032.google.com with SMTP id j18-20020a17090aeb12b029017737e6c349so16007423pjz.0
        for <linux-man@vger.kernel.org>; Sat, 07 Aug 2021 19:18:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=W7KcCWri0slDtR/RHw5+NeJDgJOvSkdU+oPeTt/JJyE=;
        b=GqmgMEhAiWr4JuNYRsf44C6yWjQqLCUJ/zQjFdz573VGDpCo4+rV0RiBgj3pl23heh
         Bcez8zA580+kMJ7L6k0RijhuM3oUqI8z3xcG8DtZizAexUVTyQRTujtUfNN4zZh24eId
         pMHCH3aWUtQPCiwFJL32tu3oyWoAmAQMPxznGZEKIDZ0jsILGT3OGo/DjYgOfl91Ga5e
         W01iu6QWlu4DM/UjVFMRD4VAEqL7i7t1uRifl/Jvxpzj6Iw/HPw+LpsDJe9bX+viE3/t
         EnRlJ6i7aYMPHO7YZJuOcCdltLCcU0qKBRK1Poe6EuW4cSLAcEacfj22+ZfQ4krCr/1+
         pPPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=W7KcCWri0slDtR/RHw5+NeJDgJOvSkdU+oPeTt/JJyE=;
        b=erDELwEutFomrzlF8Mtze4JxSIWlsXKqaK7XEmQbkJqXhQ3rBjjQGkDussxnLCCLUc
         WYzGjZ1Lsu3Cb2asw6MzTeguc1t1ZS6LwbAmlWRlr0Q3GU1PCQBoCmVHiRIPzX0GS/EU
         HwrO+SuDU2YlSx2NP9tW6gLid0fj+eUg2jOx8EuA3AizrRMqrLInqQfjMgVWo1MrFulp
         QIWazsYV/UVawdKKnchxTl2H4gUP/Ny7pbrsvNIulQp6uMG6F+CRplGtVek9N4sLKuC0
         2BwQ3KAChue05NA7s8pQFUbhMU39Oh5PdUzZunBpP0QIARUlcNTqS+HOM9NygWB5teyp
         3AbA==
X-Gm-Message-State: AOAM53124aGzmsleTlKmHLQqGAc6PMVxSQcuOahW2JncexusvhZwCFpf
        mfIYUVciXL3x7MEjLmYTmx0=
X-Google-Smtp-Source: ABdhPJzZDc7TypffWb4fJvUOF1SlZ2Bo4xZSxxPColxMgpVA0+aNoZHMCNWoqGbK+TV5fmxF89KHuQ==
X-Received: by 2002:a17:90b:4d82:: with SMTP id oj2mr28823737pjb.192.1628389132520;
        Sat, 07 Aug 2021 19:18:52 -0700 (PDT)
Received: from [192.168.1.71] (122-61-176-117-fibre.sparkbb.co.nz. [122.61.176.117])
        by smtp.gmail.com with ESMTPSA id ls16sm13380079pjb.49.2021.08.07.19.18.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 07 Aug 2021 19:18:51 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        Jonny Grant <jg@jguk.org>
Subject: Re: [PATCH 30/32] strlen.3, wcslen.3: Add recommendations for safer
 variants
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
References: <20210728202008.3158-1-alx.manpages@gmail.com>
 <20210728202008.3158-31-alx.manpages@gmail.com>
 <0b8006d4-82d3-3896-5ee9-c1efe04a8583@gmail.com>
 <cd053311-f9f3-d7d2-2f2f-400bc8048f0a@gmail.com>
 <dae44ff3-1f4a-ddfe-819b-d1be9d2cc2e7@gmail.com>
 <16dc1629-f2f7-68c2-8e20-66c2598b7f39@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <81d0ccbf-4c85-118d-97ca-3ca34d05ab57@gmail.com>
Date:   Sun, 8 Aug 2021 04:18:46 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <16dc1629-f2f7-68c2-8e20-66c2598b7f39@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 8/8/21 3:24 AM, Alejandro Colomar (man-pages) wrote:
> Hi Michael,
> 
> On 8/8/21 3:20 AM, Michael Kerrisk (man-pages) wrote:
>>> I have some doubts about this patch, but in a completely different sense:
>>>
>>> I don't know if I'm being a bit paranoid in treating user input.  I've
>>> always been taught that I should program deffensively, but as time
>>> passes by, I realize myself that I was programming too much
>>> deffensively, and even introducing bugs in the error handling code.  And
>>> in many cases, strings will always be NUL-terminated, so maybe I'm just
>>> passing around a wrong recommendation.
>>>
>>> What do you think about this?
>>
>> How about a sentence something like:
>>
>> [[
>> In cases where the input buffer may not contain a terminating null byte,
>> .BR strnlen (3)
>> should be used instead.
>> ]]
>>
>> What do you think?
> 
> Yes, that's much better.  Thanks!

Okay. I applied the patch below.

Thanks,

Michael

diff --git a/man3/strlen.3 b/man3/strlen.3
index dea4c1050..ca7a7d188 100644
--- a/man3/strlen.3
+++ b/man3/strlen.3
@@ -64,6 +64,11 @@ T}   Thread safety   MT-Safe
 .hy
 .ad
 .sp 1
+.SH NOTES
+In cases where the input buffer may not contain
+a terminating null byte,
+.BR strnlen (3)
+should be used instead.
 .SH CONFORMING TO
 POSIX.1-2001, POSIX.1-2008, C89, C99, C11, SVr4, 4.3BSD.
 .SH SEE ALSO
diff --git a/man3/wcslen.3 b/man3/wcslen.3
index af3fcb9ca..24dca8e55 100644
--- a/man3/wcslen.3
+++ b/man3/wcslen.3
@@ -56,6 +56,11 @@ T}   Thread safety   MT-Safe
 .hy
 .ad
 .sp 1
+.SH NOTES
+In cases where the input buffer may not contain
+a terminating null wide character,
+.BR wcsnlen (3)
+should be used instead.
 .SH CONFORMING TO
 POSIX.1-2001, POSIX.1-2008, C99.
 .SH SEE ALSO



-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
