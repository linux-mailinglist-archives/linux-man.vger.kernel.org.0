Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 12C711939D2
	for <lists+linux-man@lfdr.de>; Thu, 26 Mar 2020 08:49:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726332AbgCZHtW (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 26 Mar 2020 03:49:22 -0400
Received: from mail-wm1-f65.google.com ([209.85.128.65]:35197 "EHLO
        mail-wm1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726138AbgCZHtW (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 26 Mar 2020 03:49:22 -0400
Received: by mail-wm1-f65.google.com with SMTP id m3so5874780wmi.0
        for <linux-man@vger.kernel.org>; Thu, 26 Mar 2020 00:49:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=cLWIod1orotHBYgBmHOLKmno+lBvYHTmG3ZYn24wLio=;
        b=iTc5ZtIvHFpXlpLPAsGCY0u9DF2Ctp9ZLmE0wF/huecVjIZqS2TwnbwPoLCKBiMAzr
         QXj7kU1PfwCcQ7KYCbpNgQYw/dcOBTxMSXFULsD03IUn0YF6n/JCjKiolHICRsCRvJAh
         pQbCuK3k68CMMhR84+E0GssqVCIazmYUW4+tylPp6Iqe+kdu9RA64/t6RdKvCXBxr/Qf
         /Cr/gbyFd1z99e5kTGrk9yjhp/T2lReKwaidnEpTOSuULMawTIzAmvILPzQuUz8Fk1X4
         r9+1eMIsnQkIx9tB5M687HmvUCxnkmfkNGHqWKd3iKN9LV+gyZQ4d21qhQt7TlK2wgD6
         7NwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=cLWIod1orotHBYgBmHOLKmno+lBvYHTmG3ZYn24wLio=;
        b=Ndn6n08RTQkbK70pVptIIA6UlLoEtHoaYd6XAeTKCOEFzHmGG25FsP59QntWhgQxCO
         k8Cah+IEKZ5SjWQEXU8LEiHqB6sJsfiEnxoyLc98cTlnlcGhT7F6Iu/kb0rNjUvHOMmj
         OgJRiQfwtjzbZqmrpjJXlIsDoAO4/XpsqePViZReV7TFCvx8jwQBoUuDoTwhExqXzsVx
         j9D4ju0RhdrUXzGeKvfxihNy3gpysaYJFcg+tlxrQm6YzVp7jA7symY9jsOygR5dmSZK
         Vfyw/429N8zBD4O8Vi17NOWpkFdOvyjQr+LBJm+eoBIbKAIoG6dLSbRW2T3me2v1iE72
         XCvg==
X-Gm-Message-State: ANhLgQ2+IrDkj5YLFR5NFV9Ce+KtxnRhFcc5OOLo+kqJg4Q1L6D5IIJ1
        UQE/rDfxktqjN5MtTuqHnt9YVag6
X-Google-Smtp-Source: ADFU+vuDHbTq9xRGNX4JlTzGT9XpA48MY9Ikq95bejfqfd1Qxfxv03FdeQRI5E6BTazUECyO2PSg2Q==
X-Received: by 2002:a1c:a4c1:: with SMTP id n184mr1690831wme.174.1585208960825;
        Thu, 26 Mar 2020 00:49:20 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id w3sm2368117wrn.31.2020.03.26.00.49.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Mar 2020 00:49:20 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] printf.3: ffix
To:     Jakub Wilk <jwilk@jwilk.net>
References: <20200323090038.6129-1-jwilk@jwilk.net>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <7c02d36f-08d2-bc8d-d1f6-652242c3b833@gmail.com>
Date:   Thu, 26 Mar 2020 08:49:19 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200323090038.6129-1-jwilk@jwilk.net>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Jakub,

On 3/23/20 10:00 AM, Jakub Wilk wrote:
> Signed-off-by: Jakub Wilk <jwilk@jwilk.net>

Thanks. Patch applied.

Cheers,

Michael

> ---
>  man3/printf.3 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man3/printf.3 b/man3/printf.3
> index c99c796ce..50e136ba6 100644
> --- a/man3/printf.3
> +++ b/man3/printf.3
> @@ -605,7 +605,7 @@ and
>  as synonyms, so that one can, for example, write
>  .BR llg
>  (as a synonym for the standards-compliant
> -.RB Lg )
> +.BR Lg )
>  and
>  .BR Ld
>  (as a synonym for the standards compliant
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
