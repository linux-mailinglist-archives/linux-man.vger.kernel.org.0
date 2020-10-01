Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8DDC527FE80
	for <lists+linux-man@lfdr.de>; Thu,  1 Oct 2020 13:35:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731921AbgJALfa (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 1 Oct 2020 07:35:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59392 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731908AbgJALf3 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 1 Oct 2020 07:35:29 -0400
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com [IPv6:2a00:1450:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9C042C0613D0
        for <linux-man@vger.kernel.org>; Thu,  1 Oct 2020 04:35:29 -0700 (PDT)
Received: by mail-wr1-x443.google.com with SMTP id c18so5268665wrm.9
        for <linux-man@vger.kernel.org>; Thu, 01 Oct 2020 04:35:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=a5Bsjj1fPJknXoKQzw/DddFgQ4lsHvYAOYRiaQDE4Nk=;
        b=DzrrfXX8GB7hNJMM/Ff1IuB7r+hGPh0kl7pisEMTbuAAa9Edh93xf+wh8M9aK8PeYq
         FoDw+nicyW8zR6TxJVeWcWNO2/wgpFqJecjAgIpmyZGTZPKQ/MD733reo43hbEhVjq6N
         06e4FpHsIc7fpag6ltEe9IVuTLt7XbxPiGZmTegA4Js3MZZiScH9BXS1pbAkipxeAvEb
         UPwlty1UxtCET90olznTZfo4jk9mVj+zSYD753m2NTYSVSPI0oBwFvxZ/mpNzffYuOIu
         l1YxEblH5cSQFXBO4e/aDcnXZngmMi8mbb1REedSUhuysEXFhhkYUSgKFxi3lQTWfmvh
         SN6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=a5Bsjj1fPJknXoKQzw/DddFgQ4lsHvYAOYRiaQDE4Nk=;
        b=DY30bdhqKWqkhEOILmbGYLOokcCmf4DfsWFamGBOJdUhYme3va6kswI/au/I3b92SM
         VDRXyIAUss6sjCzAzUSeqIGfneBCsjN3j3zM27pzVWnYx00J3lUV7t2obiPcHszq04rS
         mteaFdVPC1FdU50zkyFpUtBGIDG2wsXrg1qqh43g2s3EbBRvMHUWi0Y4lbanhG1Sbx0M
         mOk3bAvxonEsfbaBAVDLy2AOwY0qDZmFfnsGMZDgMbsAR48jB++P64yMPL2Or6z4FTxB
         QSzATI9g7cJSgzOHEx6AZyqKwPdfmFqhHle7XZLwmEpYEml9duR345u9xT8ybmlroeAc
         QcLg==
X-Gm-Message-State: AOAM531DPYVQqS6RnUkWZgpRDE5Mwv4s4dATgG1XxOFGqcR0/z34LbBU
        H9IEO2bVf/WummsbFlxzIjw=
X-Google-Smtp-Source: ABdhPJwy3YwNWlpt0g9cosmtuugo/5ckaR5PGaenfP279IpzncTO3Jupsuxlzpsx9oPEqvzk+vMkOw==
X-Received: by 2002:a5d:55c8:: with SMTP id i8mr8558207wrw.331.1601552128264;
        Thu, 01 Oct 2020 04:35:28 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id i15sm9074850wrb.91.2020.10.01.04.35.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Oct 2020 04:35:27 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org, gcc@gcc.gnu.org
Subject: Re: [PATCH 15/16] system_data_types.7: Add 'uintptr_t'
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20201001101559.77163-1-colomar.6.4.3@gmail.com>
 <20201001101559.77163-16-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <7176f861-bcb2-f9c6-7443-afeb003f1d9f@gmail.com>
Date:   Thu, 1 Oct 2020 13:35:26 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20201001101559.77163-16-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi ALex,

On 10/1/20 12:15 PM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
> ---
>  man7/system_data_types.7 | 68 ++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 68 insertions(+)


Thanks. Patch applied.

Cheers,

Michael


> diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
> index 2632436ed..8884d3e18 100644
> --- a/man7/system_data_types.7
> +++ b/man7/system_data_types.7
> @@ -1714,6 +1714,74 @@ and
>  .I unsigned __int128
>  types in this page.
>  .RE
> +.\"------------------------------------- uintptr_t --------------------/
> +.TP
> +.I uintptr_t
> +.RS
> +Include:
> +.IR <stdint.h> .
> +Alternatively,
> +.IR <inttypes.h> .
> +.PP
> +An unsigned integer type
> +such that any valid
> +.RI ( "void *" )
> +value can be converted to this type and back.
> +According to the C language standard, it shall be
> +capable of storing values in the range [0,
> +.BR UINTPTR_MAX ].
> +.PP
> +The length modifier for
> +.I uintptr_t
> +for the
> +.BR printf (3)
> +family of functions
> +is expanded by the macros
> +.BR PRIuPTR,
> +.BR PRIoPTR,
> +.B PRIxPTR
> +and
> +.B PRIXPTR
> +(defined in
> +.IR <inttypes.h> );
> +resulting commonly in
> +.B %"PRIuPTR"
> +or
> +.B %"PRIxPTR"
> +for printing
> +.I uintptr_t
> +values.
> +The length modifier for
> +.I uintptr_t
> +for the
> +.BR scanf (3)
> +family of functions
> +is expanded by the macros
> +.BR SCNuPTR,
> +.BR SCNoPTR,
> +.B SCNxPTR
> +and
> +.B SCNXPTR
> +(defined in
> +.IR <inttypes.h> );
> +resulting commonly in
> +.B %"SCNuPTR"
> +or
> +.B %"SCNxPTR"
> +for scanning
> +.I uintptr_t
> +values.
> +.PP
> +Conforming to:
> +C99 and later; POSIX.1-2001 and later.
> +.PP
> +See also the
> +.I intptr_t
> +and
> +.I void *
> +.\" TODO: Document void *
> +types in this page.
> +.RE
>  .\"------------------------------------- va_list ----------------------/
>  .TP
>  .I va_list
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
