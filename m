Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8145931E739
	for <lists+linux-man@lfdr.de>; Thu, 18 Feb 2021 09:04:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230368AbhBRIBC (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 18 Feb 2021 03:01:02 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47088 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231216AbhBRH6b (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 18 Feb 2021 02:58:31 -0500
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2FC1DC061574
        for <linux-man@vger.kernel.org>; Wed, 17 Feb 2021 23:57:50 -0800 (PST)
Received: by mail-wm1-x330.google.com with SMTP id i7so2239153wmb.0
        for <linux-man@vger.kernel.org>; Wed, 17 Feb 2021 23:57:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=i8ThkJdeSKmpDWcmfUgk6Mc4RQnBYkmAhr+2t8l6Oh0=;
        b=lynopRs3X8VURwgYE3+dn5o0vk05F7RbFg7mJ2/+V/h/178fE3P7o6L8xjy0LggTxx
         4Z1RENaWJ2KnDfVLYHRbx3flLvQ1kxlx/TyLApb77eH7R+XwvibXgON1SyJsYKCVLTrv
         8FJb851CkOW+renfe4CSgBXlIOFoxK36tyWSqrbYh79Y7t7GSTmkcsArJX2Z0+P1W2EO
         xtjw5TFw87V7Art2JpE4a6ZbdCedhnmQxsBPFj7UGe3zZ3C34h0j2JYXd3gtkmCDG6DV
         fbvqOH9H4MtgNBQWU7GZ+731f6TQiLzw922J0E8I+8SqfF6bVx1rPygIOztLSEN6wTaR
         w/Aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=i8ThkJdeSKmpDWcmfUgk6Mc4RQnBYkmAhr+2t8l6Oh0=;
        b=tIeu09NneGErYP6MLi951mB6RKZdAwNfzUTIyNACtHy1u/ishvCDlBtuZ6M1iXZa5D
         m1vcKK3qarr68K4gcThIUMSp9Bfh2viknl0t8QZAwcQZIh1BFqoS4trK5GCQcjvrbWii
         DbI9Rf/jNIiucaw9ziq6+gHgK6xFeSBnWNvnssbkO86rIQfhMaDjAtm98Y3CO6MUTsMr
         wlc/QnPR+pNgUApPUnNJ7+3VdbB15A0SpbpPEpYlSSyPMJkzxaarLG7Bm/3oCce9rLD1
         ZKTish3xrt4C5DLtGYMCABhU3mUvYK4OHkufiqU3vwyyR9/QaDzHDOdkk6suRUyGqTJZ
         H8SA==
X-Gm-Message-State: AOAM531LASeyBbqkVYJiANkN6+aZlUYCIwGrIdM4Vqmh1l39w5n3g8x4
        DCNUW997nglqU9N3ROcp7lQ=
X-Google-Smtp-Source: ABdhPJxoz3f+jFoWOp3BG9YBOU2nbT5XgJ7JaRZ9q8eQyA8hfgoAav7EnsB67jvI4pF5fV9HVcSAYg==
X-Received: by 2002:a05:600c:354f:: with SMTP id i15mr2503288wmq.28.1613635068964;
        Wed, 17 Feb 2021 23:57:48 -0800 (PST)
Received: from ?IPv6:2001:a61:3a2d:1d01:99ab:4f20:ed7f:402b? ([2001:a61:3a2d:1d01:99ab:4f20:ed7f:402b])
        by smtp.gmail.com with ESMTPSA id w13sm6524208wrt.49.2021.02.17.23.57.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Feb 2021 23:57:48 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org
Subject: Re: [PATCH v2] strerror.3: VERSIONS: Document that strerrorname_np()
 and strerrordesc_np() functions first appeared on glibc 2.32
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210217095231.27727-1-alx.manpages@gmail.com>
 <20210217122310.107318-1-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <4af8b445-2d65-fbd2-7e15-eda8fd8bd0cc@gmail.com>
Date:   Thu, 18 Feb 2021 08:57:47 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <20210217122310.107318-1-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 2/17/21 1:23 PM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

Thanks. Patch applied.

Cheers,

Michael

> ---
>  man3/strerror.3 | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/man3/strerror.3 b/man3/strerror.3
> index 5dfe76f69..e1724a102 100644
> --- a/man3/strerror.3
> +++ b/man3/strerror.3
> @@ -235,6 +235,12 @@ Insufficient storage was supplied to contain the error description string.
>  The
>  .BR strerror_l ()
>  function first appeared in glibc 2.6.
> +.PP
> +The
> +.BR strerrorname_np ()
> +and
> +.BR strerrordesc_np ()
> +functions first appeared in glibc 2.32.
>  .SH ATTRIBUTES
>  For an explanation of the terms used in this section, see
>  .BR attributes (7).
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
