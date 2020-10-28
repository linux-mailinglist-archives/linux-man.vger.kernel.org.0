Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B78E929D3AD
	for <lists+linux-man@lfdr.de>; Wed, 28 Oct 2020 22:46:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727344AbgJ1VqB (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 28 Oct 2020 17:46:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47982 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726459AbgJ1VqB (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 28 Oct 2020 17:46:01 -0400
Received: from mail-lf1-x142.google.com (mail-lf1-x142.google.com [IPv6:2a00:1450:4864:20::142])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 00A72C0613CF
        for <linux-man@vger.kernel.org>; Wed, 28 Oct 2020 14:46:01 -0700 (PDT)
Received: by mail-lf1-x142.google.com with SMTP id l28so670096lfp.10
        for <linux-man@vger.kernel.org>; Wed, 28 Oct 2020 14:46:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=2Dj1PUBs4oiWr8u6ftGF3CYuzNo+hSqcXYHRIW28eo8=;
        b=FWn/CSol+PsYsIDghPrkfYUhlf4xy8a91PoihJce5RJ2e8f2eca3ua5GXb0ZtJA4ig
         QtLiaIFHzSPBVKlymy+D4lkyzOSac5lVxDl7UYmeGF1SInyPI2vHF97+LXQhoadvNkmc
         OHqcz29o0RkGv5+jfMBX9RzUo1i3hQRUTct0htoZJfhv99oblIHsUq14k8E5+AuHxZ3e
         1IRTYRzefQPU7nWKA8h4ql8uTPxllO5KxZwhw4b/cDSQdTB6prPHmWenSAXCkT+/8kQ0
         nX7y8OZthRFmpk8oIKszqXWpJl1LYSZY7+0Am6PK+QtDiY98/MQL1EuRzXlU06aVshPx
         tgqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=2Dj1PUBs4oiWr8u6ftGF3CYuzNo+hSqcXYHRIW28eo8=;
        b=Ncp2tn2FjG65ikomsz2vCKQXwFy/jrYraeJ+xt3JnZIyOLONfKrNY+9Nq5Xfm9AXEN
         xXYc4ntTRw42ouux1p51JI2CQ223kQHw3nQtdGxO7CwPcY2CnKNgZl0ClfWIJNcj8dwF
         lPsH/WNvCmLuxy9SSwexPlrBCzQwWKB8I8vh4TCcs+64E4djDdI+Xx/p3+y2pNztGWZF
         8Ikkxt1ep3BerAErrxl8CLIeoc/rmVkc5fBQSb4N48bxOTVIOYlxK7ofch35fGbaaja0
         Z32AtqHYWBzw+Wt8VoRQU11/NimOyvdBdMQpTColLyXWQa+ZXd2joboLZnKDSnvdeC/J
         GOfQ==
X-Gm-Message-State: AOAM5319stFDOk8KTDpIWaWu/RyIvC+4RNoIQLeah5UbX1VezRd42W4U
        BI0+ES5MSv2BEp7u/sSoJXKVonlKeAM=
X-Google-Smtp-Source: ABdhPJxTmwX2ro2T/maRGN+Q4+YMAC3NWMhKtDVoKvq034/hSsmrUedJcjjfwUUI05pjy57/vefNLw==
X-Received: by 2002:adf:f7c3:: with SMTP id a3mr1597855wrq.254.1603920103848;
        Wed, 28 Oct 2020 14:21:43 -0700 (PDT)
Received: from ?IPv6:2001:a61:245a:d801:2e74:88ad:ef9:5218? ([2001:a61:245a:d801:2e74:88ad:ef9:5218])
        by smtp.gmail.com with ESMTPSA id w1sm1063474wrp.95.2020.10.28.14.21.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Oct 2020 14:21:43 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org
Subject: Re: [PATCH] getdents.2: SYNOPSIS: Add missing header and feature test
 macro
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20201028195123.123843-1-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <fec2b038-4124-5fb7-0aec-b9bd9ce59c3b@gmail.com>
Date:   Wed, 28 Oct 2020 22:21:41 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <20201028195123.123843-1-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Alex,

On 10/28/20 8:51 PM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>

Thanks. Patch applied. But tweaked with a follow-on commit

> ---
>  man2/getdents.2 | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/man2/getdents.2 b/man2/getdents.2
> index 02790b8f7..17904ed66 100644
> --- a/man2/getdents.2
> +++ b/man2/getdents.2
> @@ -35,6 +35,10 @@ getdents, getdents64 \- get directory entries
>  .nf
>  .BI "int getdents(unsigned int " fd ", struct linux_dirent *" dirp ,
>  .BI "             unsigned int " count );
> +.PP
> +.BR "#define _GNU_SOURCE" "        /* See feature_test_macros(7) */"
> +.BR "#include <dirent.h>" "        /* See NOTES */"

I removed the piece "/* See NOTES */", since the NOTES don't
really explain the #include.

> +.PP
>  .BI "int getdents64(unsigned int " fd ", struct linux_dirent64 *" dirp ,
>  .BI "             unsigned int " count );
>  .fi


Cheers,

Michael




-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
