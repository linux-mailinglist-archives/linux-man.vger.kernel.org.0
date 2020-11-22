Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 83B672BFC8B
	for <lists+linux-man@lfdr.de>; Sun, 22 Nov 2020 23:43:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726802AbgKVWmI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 22 Nov 2020 17:42:08 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41778 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726651AbgKVWmI (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 22 Nov 2020 17:42:08 -0500
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E5EB8C0613CF
        for <linux-man@vger.kernel.org>; Sun, 22 Nov 2020 14:42:07 -0800 (PST)
Received: by mail-wr1-x42c.google.com with SMTP id r17so16860732wrw.1
        for <linux-man@vger.kernel.org>; Sun, 22 Nov 2020 14:42:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=WJogGgxDLNdUg7rV7sIVApNRnhTdxByt8yU2MFK8pCY=;
        b=beeRyEYNHAMVNsqxvVDgK+KNAHYBIkZbSvSi89XJhAZXmZRLib3EmHYOIgRnyQ+Mz2
         l+jkaDoD54xP+TT/7aPYF0IGcC68Unv4Vfxe5P8kllBuwTwbinvGMkSFDFBJRkfLgUNR
         N1Z102PirKkbUi11mmta8OY8GG7e5SGuwBjXLvqw4hERS066RJ0f/6VTtuiUUtg9tdRV
         ePEBwqW5x4mg7GWl9wCnXktiSpWy0TmNf86RApHEw3PtxQwv3WGXyFSOCNdLhOF90qJU
         YKqjvnp+2k9YVUQRzQx12GbEIcMmno/0jkSi0sMlg2EXtLy8mU/8nBabY0uNo9mj1JVG
         0zHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=WJogGgxDLNdUg7rV7sIVApNRnhTdxByt8yU2MFK8pCY=;
        b=msJrAYqispndHkB92C9GOUi5DdtjwvAzTV/hLMO70NF8SsEXbmNsaPbXgRnicAxQE1
         INWM4N/L60uf9kpprnXRLGqRlDuX4juMuQ/c8J00FXpybtWZmZMT+cbeZ7GCn/CDA6zd
         JrhOSh4qKVP/yv92OHV4HBE7mFS9g4R+3sbnEHXVx/YrAMBK77K+5nd63p0afi79pNp5
         9dEVFiHrgJQHFTs4Kxmpgd36+zG+Sfh3wrXu78PJymvnPhW/6Mw6+Cb1kZi+X4mIn1IZ
         XIz1XzjYvLhEw6npqFHC4PIsrI0L0CJXw9eoXrzNEGGoydEMf3oVCOKRokAGdDd4My5l
         HBDg==
X-Gm-Message-State: AOAM531uj6+mxaE640NkptcRfluojb3FUpa58hD6ChOjdd6uePxUVnkB
        N90hnCUc9MqFy0AvOL2jtkvhHn1naxxfkw==
X-Google-Smtp-Source: ABdhPJz9obkMyxdzXWe3/CYDgBnnClshtBjL3pAwUKLqSoFsbV/Gr0moO55jrr9euIUCYd0rAoueBQ==
X-Received: by 2002:adf:d84e:: with SMTP id k14mr27900771wrl.34.1606084926435;
        Sun, 22 Nov 2020 14:42:06 -0800 (PST)
Received: from ?IPv6:2001:a61:24b3:de01:7310:e730:497d:ea6a? ([2001:a61:24b3:de01:7310:e730:497d:ea6a])
        by smtp.gmail.com with ESMTPSA id c17sm15548628wro.19.2020.11.22.14.42.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Nov 2020 14:42:05 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [patch] getnameinfo.3: Fix _POSIX_C_SOURCE value for
 getaddrinfo()
To:     Sebastian Kirmayer <man-pages@kirmayer.eu>
References: <20201122223707.GA7261@kirmayer.de>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <921887e2-61ad-6212-c91b-beab3e4a7ab8@gmail.com>
Date:   Sun, 22 Nov 2020 23:42:02 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <20201122223707.GA7261@kirmayer.de>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Sebastian,

On 11/22/20 11:37 PM, Sebastian Kirmayer wrote:
> The minimum value of _POSIX_C_SOURCE for getnameinfo() was mistyped as 201112L
> (not a real POSIX version), it should be 200112L. This is the same typo that
> was fixed for getaddrinfo.3 in commit 94db8ae1824ada8561c3dbbbed88a8a9175c4886
> 
> According to the current documentation, this file should not compile, but
> it does:
> 
>     #define _POSIX_C_SOURCE 200112L
>     #include <netdb.h>
>     int (*mygetnameinfo)() = getnameinfo;
> 
> (If _POSIX_C_SOURCE is changed to 200111L, the program does no longer compile.)
> 
> man3/getnameinfo.3:
> 
> @@ -27,7 +27,7 @@ Feature Test Macro Requirements for glibc (see
>  .RE
>  .PP
>  .BR getnameinfo ():
> -    Since glibc 2.22: _POSIX_C_SOURCE >= 201112L
> +    Since glibc 2.22: _POSIX_C_SOURCE >= 200112L
>      Glibc 2.21 and earlier: _POSIX_C_SOURCE
>  .ad b
>  .SH DESCRIPTION

Thanks for taking the time to report, but I think you must be looking
at a rather old version of the manual pages. It looks like that typo
was fixed about three years ago in the Git tree!

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
