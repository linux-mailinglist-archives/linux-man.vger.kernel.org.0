Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 838912802AC
	for <lists+linux-man@lfdr.de>; Thu,  1 Oct 2020 17:24:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732744AbgJAPYU (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 1 Oct 2020 11:24:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38164 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732691AbgJAPYU (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 1 Oct 2020 11:24:20 -0400
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C820FC0613D0
        for <linux-man@vger.kernel.org>; Thu,  1 Oct 2020 08:24:19 -0700 (PDT)
Received: by mail-wr1-x444.google.com with SMTP id w5so6270091wrp.8
        for <linux-man@vger.kernel.org>; Thu, 01 Oct 2020 08:24:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=2VSnEj0qwGXcX171dcQKXfuZDpPjn1X/weo8jJWu2uY=;
        b=G87M1MGBZjrjBiV2cXwbEhwb8Z2alVchFmfVqOoPHIXtp3XtL5dXzSDNRfn9vxmoTp
         oSMhFOasje4tcC/acvJglnvMtwGePfc+9dK93x2zrR+p8EdGWRrLJPY/CJvEUQZ5onCs
         ZZIDfEDEEZlGYuCw3laoRJQfdp9ZnIE/aLiz+Q7W5xhnkJsCRfO4CtB2m/R+Otuka2xs
         CjRAbioCyq5vdr7xPxyynDTgHghgMERE7NA5qCIChO6BSbyFPnxTBgr+7waXuJwmenDx
         Hy+5v2XI7+z+/NcnlWcDwcHsDExRHqtNTxSDycNIRlBwgflGXiNuJCKpUD8oeMyxNS7p
         MB2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=2VSnEj0qwGXcX171dcQKXfuZDpPjn1X/weo8jJWu2uY=;
        b=Pb/Sv7lFb9EO6ba3V3k5z7aFbyZdqK0UyHuKCJv5iFQI1EBCpxtSOl6nEA/TdLAwM5
         44ydgceanO+xPPX1SfFger+2vA5EM2ZCsQFymzN4UuSt8hrAuUoDHLOQwBAaht4c5N/i
         /JRIzO+IsP/3mGjTuVEwH/icngcB2Au8TuB8lJ/rVMyDF3lliCmVAIu8oOUmCGdTryXR
         a+GUV+ePBjCcuFqFN7B9XUDlB6KQRhXV39GvH3R3wCV9IqunEkW9Ma1Gdvx9F/QcYqqr
         xu4GGOBFgQUu+ixeYv03eM2G8nve+BOZAbLqpXIPotqfN7q8mvivhqDLRuKw6NkrXZy7
         b9EA==
X-Gm-Message-State: AOAM531Gb7AB4FHRU1ncmMJ5HBPLSIueabpvFAfMKRVhCTe/nwWWGXbI
        gWFK2V0OPNrwToxj9eXaH4Q=
X-Google-Smtp-Source: ABdhPJywaW6ZfG4xJ/l+eaDcctbW7j0ImRmiE1yAq6mdeUdB/eFtjcxYIU8mgf3/U5e2Rq9XQZ2rRw==
X-Received: by 2002:a5d:494b:: with SMTP id r11mr9603009wrs.227.1601565858501;
        Thu, 01 Oct 2020 08:24:18 -0700 (PDT)
Received: from [192.168.178.63] (dynamic-077-009-049-048.77.9.pool.telefonica.de. [77.9.49.48])
        by smtp.gmail.com with ESMTPSA id d23sm423620wmb.6.2020.10.01.08.24.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Oct 2020 08:24:17 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org, gcc@gcc.gnu.org,
        libc-alpha@sourceware.org
Subject: Re: [PATCH v2 1/4] system_data_types.7: Add int_fastN_t family of
 types
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20201001143203.98803-1-colomar.6.4.3@gmail.com>
 <20201001143203.98803-2-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <4db17ab7-ec2d-e898-c10d-935c56038ed8@gmail.com>
Date:   Thu, 1 Oct 2020 17:24:16 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20201001143203.98803-2-colomar.6.4.3@gmail.com>
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
>  man7/system_data_types.7 | 77 ++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 77 insertions(+)
> 
> diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
> index 4645ed5f4..c5d0b700d 100644
> --- a/man7/system_data_types.7
> +++ b/man7/system_data_types.7
> @@ -329,6 +329,83 @@ C99 and later; POSIX.1-2001 and later.
>  See also:
>  .BR imaxdiv (3)
>  .RE
> +.\"------------------------------------- int_fastN_t ------------------/
> +.TP
> +.IR int_fast N _t
> +.RS
> +Include:
> +.IR <stdint.h> .
> +Alternatively,
> +.IR <inttypes.h> .
> +.PP
> +.IR int_fast8_t ,
> +.IR int_fast16_t ,
> +.IR int_fast32_t ,
> +.I int_fast64_t
> +.PP
> +Usually the fastest (see Notes) signed integer type
> +of a width of at least N bits,
> +N being the value specified in its type name.
> +According to the C language standard, they shall be
> +capable of storing values in the range
> +.RB [ INT_FAST N _MIN ,
> +.BR INT_FAST N _MAX ],
> +substituting N by the appropriate number.
> +.PP
> +The length modifiers for the
> +.IR int_fast N _t
> +types for the
> +.BR printf (3)
> +family of functions
> +are expanded by macros of the forms
> +.BR PRIdFAST N
> +and
> +.BR PRIiFAST N
> +(defined in
> +.IR <inttypes.h> );
> +resulting for example in
> +.B %"PRIdFAST64"
> +or
> +.B %"PRIiFAST64"
> +for printing
> +.I int_fast64_t
> +values.
> +The length modifiers for the
> +.IR int_fast N _t
> +types for the
> +.BR scanf (3)
> +family of functions
> +are expanded by macros of the forms
> +.BR SCNdFAST N
> +and
> +.BR SCNiFAST N,
> +(defined in
> +.IR <inttypes.h> );
> +resulting for example in
> +.B %"SCNdFAST8"
> +or
> +.B %"SCNiFAST8"
> +for scanning
> +.I int_fast8_t
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
> +.IR int_least N _t ,
> +.IR int N _t ,
> +.IR uint_fast N _t ,
> +.IR uint_least N _t
> +and
> +.IR uint N _t
> +types in this page.
> +.RE
>  .\"------------------------------------- intmax_t ---------------------/
>  .TP
>  .I intmax_t
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
