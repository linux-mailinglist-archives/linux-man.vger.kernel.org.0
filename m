Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 59F51354134
	for <lists+linux-man@lfdr.de>; Mon,  5 Apr 2021 12:40:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232562AbhDEKkT (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 5 Apr 2021 06:40:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47324 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232530AbhDEKkT (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 5 Apr 2021 06:40:19 -0400
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7ADC2C061756
        for <linux-man@vger.kernel.org>; Mon,  5 Apr 2021 03:40:13 -0700 (PDT)
Received: by mail-ej1-x62e.google.com with SMTP id ap14so16265554ejc.0
        for <linux-man@vger.kernel.org>; Mon, 05 Apr 2021 03:40:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=aKC7jA1u0T5gAcq5YFXZvNtYboR0Yn9L/y/Sjwv34Nk=;
        b=aAfrafhcUlE6jofcweroFE6KGpjdyX/kgaNIhOIw840aUmHXfO1U+avnrUyaxitHFe
         U8ibo+dEs+JUSHTssb7/xe4Kuwf0GktwHaLW++IDHTE2dTagzNQm7ZkPnxfHoLeBENs/
         uYiYfiDWktZ0nOWBaUGXeAYsaBpRcyrB42xcrRntx6sWK7qg2jNZX7Uz2KyewieP0b+x
         mE3L6rYVBrQ8FU8WCn9qT2xhWPzeDLodwPGzUzF/k1dncVsTShTgJlsWjraavJHume+U
         z4/nAAU+Hw4VpNO9scDZdj+NAJ14/1g7IQqwD3UwjiiW8ktDcVHxwoxsZHp3CzNwo9id
         Priw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=aKC7jA1u0T5gAcq5YFXZvNtYboR0Yn9L/y/Sjwv34Nk=;
        b=lUpPHMBLDjIJQs/xizxTtF+oTdTzoxqDaPI8odkENSUf0dHeaLbuTVWYqQm2cPXIa8
         mWN8tNGB8KFerDcAVDi98LoNfRRG/nwuQXUnVNth+553ERYkF/T03qewKPfvp2GNbkHD
         xiCrjA8RpFzzNDICggatnoOOyJINq+uvKbwqGxeBvBj7zwbMn6gDKJYtpSJun8DVY11A
         v1O5gNiyM5XlzceiZREppDe4Dh3N2ZWzy8vf5hxnGxkg/G3cTkdVpIt4aVoRBR6RekQf
         JkP00vOzCvXCP8yQ/5pFOvsqrujyix4nNOJG61/4AUGQEqKVB1M40YAvKlihY16xPeMT
         Yqcg==
X-Gm-Message-State: AOAM531BX5OXDcpzWb6MVpclGZ+lG0hNkI4Ea/1v3acDpuMCbqQK7CvE
        mxBO5ZrM/MHyc5o+Ia+TQ8DX0bi8R5E=
X-Google-Smtp-Source: ABdhPJwiyqcKwoy1wLQuwfyueQUx1b/6Uf7IoFQtpkz4bXuuABMgp0bc6Q+Dd+vFbmZUxR+PAvBFKg==
X-Received: by 2002:a17:907:367:: with SMTP id rs7mr14846030ejb.192.1617619212095;
        Mon, 05 Apr 2021 03:40:12 -0700 (PDT)
Received: from ?IPv6:2001:a61:2553:a401:cfc6:2039:a9ec:21ff? ([2001:a61:2553:a401:cfc6:2039:a9ec:21ff])
        by smtp.gmail.com with ESMTPSA id ak20sm8491554ejc.72.2021.04.05.03.40.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Apr 2021 03:40:11 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org
Subject: Re: [PATCH v5 01/35] system_data_types.7: Add 'struct sockaddr'
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210403194026.102818-1-alx.manpages@gmail.com>
 <20210404115847.78166-2-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <a1e7513a-a7e2-d316-f433-ac01d3d0fe2e@gmail.com>
Date:   Mon, 5 Apr 2021 12:40:10 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <20210404115847.78166-2-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Alex,

On 4/4/21 1:58 PM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
> ---
>  man7/system_data_types.7 | 25 +++++++++++++++++++++++++
>  1 file changed, 25 insertions(+)

Patch applied!

Thanks,

Michael

> 
> diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
> index 5648ae500..93c723a2f 100644
> --- a/man7/system_data_types.7
> +++ b/man7/system_data_types.7
> @@ -1226,6 +1226,31 @@ and
>  .I ssize_t
>  types in this page.
>  .RE
> +.\"------------------------------------- sockaddr ---------------------/
> +.TP
> +.I sockaddr
> +.RS
> +.IR Include :
> +.IR <sys/socket.h> .
> +.PP
> +.EX
> +struct sockaddr {
> +    sa_family_t sa_family; /* Address family */
> +    char        sa_data[]; /* Socket address */
> +};
> +.EE
> +.PP
> +Describes a socket address.
> +.PP
> +.IR "Conforming to" :
> +POSIX.1-2001 and later.
> +.PP
> +.IR "See also" :
> +.BR accept (2),
> +.BR getpeername (2),
> +.BR getsockname (2),
> +.BR socket (2)
> +.RE
>  .\"------------------------------------- ssize_t ----------------------/
>  .TP
>  .I ssize_t
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
