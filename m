Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B406028A3DE
	for <lists+linux-man@lfdr.de>; Sun, 11 Oct 2020 01:12:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2389532AbgJJWzr (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 10 Oct 2020 18:55:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41584 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730960AbgJJTuC (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 10 Oct 2020 15:50:02 -0400
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com [IPv6:2a00:1450:4864:20::342])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EECBBC0613D5
        for <linux-man@vger.kernel.org>; Sat, 10 Oct 2020 02:08:31 -0700 (PDT)
Received: by mail-wm1-x342.google.com with SMTP id e2so12019661wme.1
        for <linux-man@vger.kernel.org>; Sat, 10 Oct 2020 02:08:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=3Iz52XB4+G94horzQbWkEFmym9IHrZwlZvLSxhrr7cI=;
        b=QASdun8i1fMyKEU+I96UnYu/P1j0dgQW2p6swIM3OY8dlK4VSmBFNLgJ7wWNzFCpbl
         ZNbJcmOEduft3nudiElhi7o6w9p1Iwk8EU0QribUHtsVe+2Tia8R8IxwKayFnRpEDqNC
         HphctDjLCbb+NEKCnZHjG8r53u1sppmdFSNY3Tqt8IBFHsRT0MemYm6GBG857qMJm+SG
         ipYZ/VsMPgJT+0yg+0r/FiF7TDNs16h7UcbdZSrc8t7o9mCItuk6O0biUPP74o98pFnk
         hJK6HZRR0AJ4FK7HdObg6qc7FVmvVwkzHxOWbU/yd73jrGI5eRVKMtp/FxS8Q2nFJWRY
         XwMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=3Iz52XB4+G94horzQbWkEFmym9IHrZwlZvLSxhrr7cI=;
        b=W4VaqJSA0bHJoP8ncHeAnKgiinlxleWIzTjRcBXAxYR8RSiUAPCaQHvvHDVI/AeIfY
         YuiJ7depxLVs/hfGlkumdHg+3rr/G3cX2N9P6nZ0nxdf1Z2IkUWj0tbdqoAYGU+iGLN7
         FO1wcWCYacE9BT/DC0ZYLlf+1ILuReDa1MBSC5//Qs3VQrSSTPBmxgH0D7Iu4cLAfnz5
         b4QzdBslT6m3vHFqf2fbyYBJPkHlCZyHmWnhu82lyBInbzk8EUnhI6fx2PpnJlmmdAIO
         yDGfbIwpqBe875sVchb9200kPd14PBCjr10NosHYbrk3brFLs4zV4o8DNY7CyElRCEKh
         N/Ow==
X-Gm-Message-State: AOAM532iHanhRRn8BoufVcBZEkEBdgwzyrsJCSNQnjY6AVhntlS+HLhb
        Qquf8jWy/aR2sRse61j+jZA=
X-Google-Smtp-Source: ABdhPJwQ+sXg13S2wGW/mHHO7vQXxCEo6UCWNDlzlapxPHuz9ua4fbHXmqlYfv1zf7xlZfkGDoTO3w==
X-Received: by 2002:a1c:960a:: with SMTP id y10mr1904532wmd.128.1602320910522;
        Sat, 10 Oct 2020 02:08:30 -0700 (PDT)
Received: from [192.168.1.10] (static-176-175-73-29.ftth.abo.bbox.fr. [176.175.73.29])
        by smtp.gmail.com with ESMTPSA id g5sm2440840wmi.4.2020.10.10.02.08.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 10 Oct 2020 02:08:29 -0700 (PDT)
Cc:     mtk.manpages@gmail.com
Subject: Re: [PATCH] locale.5: Decimal points, thousands separators must be
 one character
To:     Florian Weimer <fweimer@redhat.com>, linux-man@vger.kernel.org
References: <87zh4vdc7d.fsf@oldenburg2.str.redhat.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <96c8e122-cdfd-3849-1ad8-0f8b70b23988@gmail.com>
Date:   Sat, 10 Oct 2020 11:08:27 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <87zh4vdc7d.fsf@oldenburg2.str.redhat.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 10/9/20 10:40 AM, Florian Weimer wrote:
> This is implied by POSIX because it requires that these strings in the
> locale definition file contain one symbol.  Currently, locale.5 does
> not document the concept of symbols, this change glosses over that and
> just uses the term "single-character string".
> 
> Signed-off-by: Florian Weimer <fweimer@redhat.com>

Thanks, Florian. Patch applied.

Cheers,

Michael

> ---
>  man5/locale.5 | 16 ++++++++--------
>  1 file changed, 8 insertions(+), 8 deletions(-)
> 
> diff --git a/man5/locale.5 b/man5/locale.5
> index f6b63da9d..9789e0bb0 100644
> --- a/man5/locale.5
> +++ b/man5/locale.5
> @@ -693,12 +693,12 @@ separator.
>  followed by the local currency symbol.
>  .TP
>  .I mon_decimal_point
> -followed by the string that will be used as the decimal delimiter
> -when formatting monetary quantities.
> +followed by the single-character string that will be used as the
> +decimal delimiter when formatting monetary quantities.
>  .TP
>  .I mon_thousands_sep
> -followed by the string that will be used as a group separator
> -when formatting monetary quantities.
> +followed by the single-character string that will be used as a group
> +separator when formatting monetary quantities.
>  .TP
>  .I mon_grouping
>  followed by a sequence of integers separated by semicolons that
> @@ -962,12 +962,12 @@ in the first column.
>  The following keywords are allowed:
>  .TP
>  .I decimal_point
> -followed by the string that will be used as the decimal delimiter
> -when formatting numeric quantities.
> +followed by the single-character string that will be used as the
> +decimal delimiter when formatting numeric quantities.
>  .TP
>  .I thousands_sep
> -followed by the string that will be used as a group separator
> -when formatting numeric quantities.
> +followed by the single-character string that will be used as a group
> +separator when formatting numeric quantities.
>  .TP
>  .I grouping
>  followed by a sequence of integers separated by semicolons
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
