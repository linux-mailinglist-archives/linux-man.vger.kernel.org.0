Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 59A572802AE
	for <lists+linux-man@lfdr.de>; Thu,  1 Oct 2020 17:25:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730534AbgJAPZF (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 1 Oct 2020 11:25:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38280 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732346AbgJAPZE (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 1 Oct 2020 11:25:04 -0400
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 81329C0613D0
        for <linux-man@vger.kernel.org>; Thu,  1 Oct 2020 08:25:04 -0700 (PDT)
Received: by mail-wr1-x444.google.com with SMTP id x14so6266899wrl.12
        for <linux-man@vger.kernel.org>; Thu, 01 Oct 2020 08:25:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=FMSh0Mcln2UHRHtQYp4EkZIoC23BI/spVomT7YlgCHs=;
        b=TsFH1bnScN1Cu6YWT5fiGyjYTO6hcR3AhX2kQNAs3sFnphjN2Rg2iGabImY91qldKx
         eBIZDFoUM0pXeECPX1k0AA6KWXdi44b8cj6TEc4hV2v+Leq0ZZht9ZC/PTZMOJ4cgqEB
         UjDpxRIOpUwroVol2yltXqdb0+LX/laMc8wJww/5roztGBbylnIamSeooZA4BB+RAw0N
         SaSag0EPNDLo+hEu5uQBwTQTMoe6gKErIIyP+GF/oUBp00HKV05RQmbIHjWRZfnKxh7s
         Tlpj9/frOyMheGYMcFHMQu3M5EfPdZMAtstlfo1rfTRbKMvWIx9c7ftfL9xEtoOWxj1b
         sXPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=FMSh0Mcln2UHRHtQYp4EkZIoC23BI/spVomT7YlgCHs=;
        b=VAryzpBdx9P6W9mBSMefgHccrTgMgZNomoJ/r85D395UsNK7dQNXk3iPGDi2LMK+3M
         NE0DKE0xCE7d6PbdearkuVcsp8LA0VDSOcYr6J4m6xuWFjEuniiSxo1Wiw836rcheoXU
         1rbjbZxZiRDFkU2hf9yQBp/LidOctWBxapl0Uh0Xh7EjQQ43iOohaoUkETO40Gz3rls+
         CSNWU+vvCCmuxLJiLo8XAXgprUj55R8zaYrSCeuXxD8dcdl7hVcayBLrfJTCfP8hj8D6
         RXyMhzboLWhq2ssEKW42eOkeSgZmPQXYJkqwUamVlaF5io+/zM9M5gV/CNhLmvMUA/vM
         vhvw==
X-Gm-Message-State: AOAM533RkhklNUJt30RnFQ3c1QkjODZwL3+xKJiBaWJ5Wr76w0+V9ucY
        3DJYwUtpjxIonWqj/lrqF8tBk5p2ujU=
X-Google-Smtp-Source: ABdhPJxzTEyX9DxYFVyKD/WW2u/U+i2/F3MW9nge8tHtK5z8+RK3eZLcxhW3pd/O/wxebfDKDDJ6Xw==
X-Received: by 2002:a5d:460c:: with SMTP id t12mr9733449wrq.225.1601565903221;
        Thu, 01 Oct 2020 08:25:03 -0700 (PDT)
Received: from [192.168.178.63] (dynamic-077-009-049-048.77.9.pool.telefonica.de. [77.9.49.48])
        by smtp.gmail.com with ESMTPSA id b8sm467278wmb.4.2020.10.01.08.25.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Oct 2020 08:25:02 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org, gcc@gcc.gnu.org,
        libc-alpha@sourceware.org
Subject: Re: [PATCH v2 3/4] system_data_types.7: Add uint_fastN_t family of
 types
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20201001143203.98803-1-colomar.6.4.3@gmail.com>
 <20201001143203.98803-4-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <ef23986d-d372-54f2-f23c-8af17cbcd667@gmail.com>
Date:   Thu, 1 Oct 2020 17:25:01 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20201001143203.98803-4-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Thanks, Alex. Applied.

On 10/1/20 4:32 PM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
> ---
>  man7/system_data_types.7 | 80 ++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 80 insertions(+)
> 
> diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
> index c5d0b700d..c130b7256 100644
> --- a/man7/system_data_types.7
> +++ b/man7/system_data_types.7
> @@ -1348,6 +1348,86 @@ See also:
>  .BR getpwnam (2),
>  .BR credentials (7)
>  .RE
> +.\"------------------------------------- uint_fastN_t -----------------/
> +.TP
> +.IR uint_fast N _t
> +.RS
> +Include:
> +.IR <stdint.h> .
> +Alternatively,
> +.IR <inttypes.h> .
> +.PP
> +.IR uint_fast8_t ,
> +.IR uint_fast16_t ,
> +.IR uint_fast32_t ,
> +.I uint_fast64_t
> +.PP
> +Usually the fastest (see Notes) unsigned integer type
> +of a width of at least N bits,
> +N being the value specified in its type name.
> +According to the C language standard, they shall be
> +capable of storing values in the range [0,
> +.BR UINT_FAST N _MAX ],
> +substituting N by the appropriate number.
> +.PP
> +The length modifiers for the
> +.IR uint_fast N _t
> +types for the
> +.BR printf (3)
> +family of functions
> +are expanded by macros of the forms
> +.BR PRIuFAST N,
> +.BR PRIoFAST N,
> +.BR PRIxFAST N
> +and
> +.BR PRIXFAST N
> +(defined in
> +.IR <inttypes.h> );
> +resulting for example in
> +.B %"PRIuFAST32"
> +or
> +.B %"PRIxFAST32"
> +for printing
> +.I uint_fast32_t
> +values.
> +The length modifiers for the
> +.IR uint_fast N _t
> +types for the
> +.BR scanf (3)
> +family of functions
> +are expanded by macros of the forms
> +.BR SCNuFAST N,
> +.BR SCNoFAST N,
> +.BR SCNxFAST N
> +and
> +.BR SCNXFAST N
> +(defined in
> +.IR <inttypes.h> );
> +resulting for example in
> +.B %"SCNuFAST16"
> +or
> +.B %"SCNxFAST16"
> +for scanning
> +.I uint_fast16_t
> +values.
> +.PP
> +Conforming to:
> +C99 and later; POSIX.1-2001 and later.
> +.PP
> +Notes:
> +Where there is no single type that is fastest for all purposes,
> +the implementation may choose any type
> +with the required signedness and at least the minimum width.
> +.PP
> +See also the
> +.IR int_fast N _t ,
> +.IR int_least N _t ,
> +.IR int N _t ,
> +.IR uint_least N _t
> +and
> +.IR uint N _t
> +types in this page.
> +.RE
>  .\"------------------------------------- uintmax_t --------------------/
>  .TP
>  .I uintmax_t
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
