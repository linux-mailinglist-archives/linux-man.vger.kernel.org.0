Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2A9FF3539AF
	for <lists+linux-man@lfdr.de>; Sun,  4 Apr 2021 22:16:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231445AbhDDUQL (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 4 Apr 2021 16:16:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59508 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231327AbhDDUQK (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 4 Apr 2021 16:16:10 -0400
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com [IPv6:2a00:1450:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3522EC061756
        for <linux-man@vger.kernel.org>; Sun,  4 Apr 2021 13:16:05 -0700 (PDT)
Received: by mail-ej1-x62f.google.com with SMTP id l4so14289897ejc.10
        for <linux-man@vger.kernel.org>; Sun, 04 Apr 2021 13:16:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=wk/W9JAtuld2vI+sQvZmmcr4BZD5TabzhdFC4o3DBUI=;
        b=GLPgyW2MUtWF94chjMrKYpmcjJXPMp7VPsLv7vhnQG+LBbKmzxANpiMzuOOGmz6TDW
         O9SnZchJ8TDMQXcWSQlzuFDYeP6EztD1/d8GmU3QaLYTW8Vnw7mW8leTzqKRQJMzLpkC
         oqXBakw8D1IEf0aviraWjJkgf3YFs+nVp9XNVEWI5B3kzYElHDylk9cnfnz9npKtwwSl
         esm20HyA6FMw6Wwj3EP94lB4jtrvLiYZ7yZfm/Id4LVNYtkteEkV51flzrBXuNACrh9G
         jA+thw1+6fN1ryQetBheKWrbexwIbE34AdIwzm7zTysnzrXwwOsYzsdUFitcu7G74KoI
         mI0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=wk/W9JAtuld2vI+sQvZmmcr4BZD5TabzhdFC4o3DBUI=;
        b=jj+kwnWBXXmhHlidlVBKKuOshqXMu+hi3emTL1TctH3ObBGMQYq5nt+gd7GTCxed/1
         49d/ti/ph/aANAcotIsfp42s5932W5w5BfgZl+5secV55VAgThg08deeZhgR+jOYt/2i
         sJ3GcNta+7yBpGh0GCLYIqC8QwXqqy3V3TEa679j4QJv1PR/nl2D76zZTtxi4CnmkvDW
         ZOrPD7fOD/NL1wbhIBASPC0ByexzPxN6dlXmwmh4wmgbpJBPofVMl73qHcrE6PVML0nk
         CEH3OWyoi1jhGwMTOfy5Ds0piWTDQb0s4f0CTCEFFx3zeqc3ruk2iX/ePZmVPa1HCvsX
         8g+w==
X-Gm-Message-State: AOAM533teL7wgXMv/nPaBXy5ae37O8WYMR0ogZ7iF5MI4WSLY7sL4rv4
        zkU5FZaIP8Nmzt7hy8BxPx8f0zSAeTM=
X-Google-Smtp-Source: ABdhPJwUbLqI10UfQH/wTzve5lU+bHpxXDAIltsd/zEY2sYBI2LK7No+n+F9N444CnL3PEg9OfoBSw==
X-Received: by 2002:a17:906:5855:: with SMTP id h21mr10571634ejs.522.1617567363828;
        Sun, 04 Apr 2021 13:16:03 -0700 (PDT)
Received: from ?IPv6:2001:a61:2553:a401:cfc6:2039:a9ec:21ff? ([2001:a61:2553:a401:cfc6:2039:a9ec:21ff])
        by smtp.gmail.com with ESMTPSA id x4sm8780651edd.58.2021.04.04.13.16.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 04 Apr 2021 13:16:03 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        Mark Kettenis <kettenis@openbsd.org>,
        Florian Weimer <fw@deneb.enyo.de>
Subject: Re: [PATCH v3] errno.3: Fix ENODATA text
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <87k0q1zk7a.fsf@mid.deneb.enyo.de>
 <20210320200115.95489-1-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <e8721099-3180-6745-3f9b-9c823f5f7d0f@gmail.com>
Date:   Sun, 4 Apr 2021 22:16:00 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <20210320200115.95489-1-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 3/20/21 9:01 PM, Alejandro Colomar wrote:
> ENODATA is an XSI STREAMS extension (not base POSIX).
> 
> Linux reused the name for extended attributes.
> The current manual pages don't use ENODATA with its POSIX
> meaning, so use the xattr(7) specific text, and leave the POSIX
> meaning for a secondary paragraph.

Thanks. Nice work on improving the patch!

Cheers,

Michael

> 
> Reported-by: Mark Kettenis <kettenis@openbsd.org>
> Reported-by: Florian Weimer <fw@deneb.enyo.de>
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
> ---
>  man3/errno.3 | 8 +++++++-
>  1 file changed, 7 insertions(+), 1 deletion(-)
> 
> diff --git a/man3/errno.3 b/man3/errno.3
> index fe9b7f715..eeb885823 100644
> --- a/man3/errno.3
> +++ b/man3/errno.3
> @@ -403,7 +403,13 @@ No buffer space available (POSIX.1 (XSI STREAMS option)).
>  .\" ENOCSI is defined but appears to be unused.
>  .TP
>  .B ENODATA
> -No message is available on the STREAM head read queue (POSIX.1-2001).
> +The named attribute does not exist,
> +or the process has no access to this attribute; see
> +.BR xattr (7).
> +.IP
> +In POSIX.1-2001 (XSI STREAMS option),
> +this error was described as
> +"No message is available on the STREAM head read queue".
>  .TP
>  .B ENODEV
>  No such device (POSIX.1-2001).
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
