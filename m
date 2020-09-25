Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A58DE27825B
	for <lists+linux-man@lfdr.de>; Fri, 25 Sep 2020 10:13:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727164AbgIYINb (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 25 Sep 2020 04:13:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52180 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727063AbgIYINb (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 25 Sep 2020 04:13:31 -0400
Received: from mail-ed1-x542.google.com (mail-ed1-x542.google.com [IPv6:2a00:1450:4864:20::542])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4DF82C0613CE
        for <linux-man@vger.kernel.org>; Fri, 25 Sep 2020 01:13:31 -0700 (PDT)
Received: by mail-ed1-x542.google.com with SMTP id g4so1618513edk.0
        for <linux-man@vger.kernel.org>; Fri, 25 Sep 2020 01:13:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=I1EFdegNmyn4gbqFQ91ci+a2f67I3aFX4uK20wlXyiM=;
        b=fGHjbPrtuyx1pSkVGVLsE7cThEp0noYNBEEr2lLKPLMSEkJDObBhLiaP10xC/lwNh8
         VZpGI84tEb4b8Vs5i3iNu7N3S34IiBdvBbBR4tgIOrKdEUv7nFyFjJ8Zf5ZrX1YsDF13
         HWPJHP0tgE4OMD5FwMh7rlV8s1y3pORwBt4/62fZDkY4BZbqa69oidXEgZlT4I2jEI4p
         dzrZueNcxIcUCdufK2VaCA/oD03XA6fmdqrdHNXy69/wS2jCMtdrVjjIvVII/H3IL/FA
         f1D/kKoQPnvJDopB3Xbs48tM+IWEYzBbz5k1CGTmmq7JCaHOeHh8QDcMfyd8LUHOBsFU
         Z+lQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=I1EFdegNmyn4gbqFQ91ci+a2f67I3aFX4uK20wlXyiM=;
        b=TL+pYjr7VeD9W0dxoe2qWwZc+u0T2BP7eS7iHVq28NQwkldEC0/y/hsMV4VcmRG3VS
         er1OOrPfgn/Cvc3PEyl4AjEgyy4PlGg6MbG0Bu9dHWgi5iX5PlX3ZokzgG8EM7Xg1V4d
         7d/eZ6q1I/DKLxyh1IsyUItI6qBSul2K4l0bvm+FvrXnOH36MgELWrLp0uTyjzVnCbdS
         Z46z8zlg6r8whmWQDuDNQuKLNAeVUSHmrVGsxbLsQC1KgmGx+ZdruCQd7Fyj7FUDG1kW
         /zL2S1aasDwHuMdMYAPz7nyZTONEVzaHCqafgB/e9vIWozuwzo9JdcJh+jW36O659Am/
         MygA==
X-Gm-Message-State: AOAM532Pw4M5UuTTsxnLq+eu7rKgcualrc4mnXvPqtYUn17zvS+wQ0Oz
        r0z4Q4xOGOUwgb5bzFCH4EI=
X-Google-Smtp-Source: ABdhPJzweOkHPdoJYhsQEW/BDLCgITBvHzbse3d3fbNkz6OdA4i5GLJnOr9i2hzVX6+0XOLnJxRj0g==
X-Received: by 2002:a50:fe07:: with SMTP id f7mr23947edt.173.1601021609934;
        Fri, 25 Sep 2020 01:13:29 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id v25sm1264604edr.29.2020.09.25.01.13.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Sep 2020 01:13:29 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org
Subject: Re: [PATCH 04/10] system_data_types.7: Add float_t
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20200925073140.173394-1-colomar.6.4.3@gmail.com>
 <20200925073140.173394-5-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <5090c977-c75f-66a4-848f-e7ed94510d16@gmail.com>
Date:   Fri, 25 Sep 2020 10:13:28 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200925073140.173394-5-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

A few comments here that also apply for the double_t patch. 
Could you revise please?

On 9/25/20 9:31 AM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
> ---
>  man7/system_data_types.7 | 36 ++++++++++++++++++++++++++++++++++++
>  1 file changed, 36 insertions(+)
> 
> diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
> index b04457bbf..238b9593b 100644
> --- a/man7/system_data_types.7
> +++ b/man7/system_data_types.7
> @@ -147,6 +147,42 @@ Conforming to: C99 and later; POSIX.1-2001 and later.
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

The C standard is rather terse here. Perhaps we could make the 
reader's life a little easier. How about something like:

[[
This a type that is intended to be the implementation's
most efficient floating type that is at least as wide as
.IR float .
]]

> +Its type depends on the value of the macro
> +.BR FLT_EVAL_METHOD :
> +.RS
> +.IP *
> +0;
> +.I float_t
> +is
> +.IR float .
> +.IP *
> +1;
> +.I float_t
> +is
> +.IR double .
> +.IP *
> +2;
> +.I float_t
> +is
> +.IR "long double" .
> +.IP *
> +Other implementation-defined values.
> +.RE

I think we can format this better as a hanging list.
Something like this:

[[
.TP
0
.I float_t
is
.IR float .
.TP
1
.I float_t
is
.IR double .
.TP
2
.I float_t
is
.IR "long double" .
.IP
For other values of
.BR FLT_EVAL_METHOD ,
the type of
.I float_t
is implementation-defined.
]]

> +.IP
> +Conforming to: C99 and later; POSIX.1-2001 and later.
> +.IP
> +See also the
> +.I double_t
> +type in this page.
>  .\"------------------------------------- gid_t ------------------------/
>  .TP
>  .I gid_t

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
