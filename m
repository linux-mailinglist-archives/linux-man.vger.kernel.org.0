Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A04A0357F05
	for <lists+linux-man@lfdr.de>; Thu,  8 Apr 2021 11:21:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229603AbhDHJVu (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 8 Apr 2021 05:21:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40710 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229600AbhDHJVu (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 8 Apr 2021 05:21:50 -0400
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BE87DC061760
        for <linux-man@vger.kernel.org>; Thu,  8 Apr 2021 02:21:37 -0700 (PDT)
Received: by mail-wr1-x435.google.com with SMTP id s7so1203098wru.6
        for <linux-man@vger.kernel.org>; Thu, 08 Apr 2021 02:21:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=48RBpJ2PBd9TTuhH+PfJmRqOc52i+gMehnRhf2AUjqY=;
        b=ACRQdXiZQscPOzNvzm4EK1EulSl5S/kx1JQndX5Z9m6x7QtArbjKo3XLDB4bYfdFQr
         giqe0FrCCp9dfTZj08dNoqXeolKCIuTU8lepqoc6iswb32hVbNJOrfR3FYmtsqf21/+o
         X5TIU9PXtOjLV1fq5+P18KWZcxExl80gAMD/Tz7FLG2X22AiW9yGAnXQ7FC32d1aoz5o
         tJlMN0d7CfTYuU7rxdLkAsX9fGKwBu1xTfQ7IaFx53wN5DkEOwl55aOgVVGtQzt/0zQ4
         n5q26ScuTyOZ0VLVELsd1dDJnoh8nvevtU6vEzNjF1jhCvjokda5lsyxvLE7YAGp6Znv
         AWSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=48RBpJ2PBd9TTuhH+PfJmRqOc52i+gMehnRhf2AUjqY=;
        b=YLsMCPT9SwYtv9C5CEN+FRtehe6kMusCFFdz5GrscyiJFoor+Sj6eGgj2jaBhrrB1s
         LW6QcrDPt4JHVLuBpONhV4vjh6cx8cqTb1pKo7y8CJnuFPT2qrh6p/rXneedhXbW0k6j
         LHtzbXxSu9HhnnTvpYtP56zT14rrbt1tH2ms7tn94Xaf2KVbX2F7RCD5KLUyx13I5s6Z
         huXv30FV1qXXCNf3PGjFGPT/Jc77BGf/Zk4JyYYYfKLh2wX3vEy+/EAWDCN6yYcN68Jk
         eQdYUdIvykY0j1shKrZ3//K4FZT9MEAQl+EgOZbDsuXAuagT2Gn7np2j3709PgB6AR2M
         rN3g==
X-Gm-Message-State: AOAM531B2dY4iFTqZekvlPrQFgb5eKb7QjIfGioDQsiaZUhVjR/2on2J
        Kou2M7ueQA51n4CreWdjPBU=
X-Google-Smtp-Source: ABdhPJwmqrrCpH0ZfYDnCtJ03LMdEonaCtkijrN/V+leIo2IXzo/Q/pIqnAyZNIU1gWH0Qh1SzUudg==
X-Received: by 2002:adf:e64e:: with SMTP id b14mr9536694wrn.226.1617873696530;
        Thu, 08 Apr 2021 02:21:36 -0700 (PDT)
Received: from [10.8.0.194] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id y4sm13597279wmc.2.2021.04.08.02.21.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Apr 2021 02:21:36 -0700 (PDT)
Subject: Re: [PATCH v6 3/3] .gitignore: Add file
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, Jakub Wilk <jwilk@jwilk.net>,
        Debian man-pages <manpages@packages.debian.org>,
        "Dr . Tobias Quathamer" <toddy@debian.org>
References: <20210406111448.20392-1-alx.manpages@gmail.com>
 <20210408085713.7093-4-alx.manpages@gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <cdaac78a-53a8-4f8f-3ecc-6218d56747fb@gmail.com>
Date:   Thu, 8 Apr 2021 11:21:34 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <20210408085713.7093-4-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

Please see a few cosmetic changes below.

Thanks,

Alex

On 4/8/21 10:57 AM, Alejandro Colomar wrote:
> Ignore everything new by default.
> 
> This avoids adding to git unwanted temporary files.
> 
> Cc: Debian man-pages <manpages@packages.debian.org>
> Cc: Dr. Tobias Quathamer <toddy@debian.org>
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
> ---
>   .gitignore | 13 +++++++++++++
>   1 file changed, 13 insertions(+)
>   create mode 100644 .gitignore
> 
> diff --git a/.gitignore b/.gitignore
> new file mode 100644
> index 000000000..866012df4
> --- /dev/null
> +++ b/.gitignore
> @@ -0,0 +1,13 @@
> +# Ignore everything new by default
> +/*
> +
> +# Ignore everything in man?/ that doesn't follow conventions (e.g., tmp files)
> +!/man?

Please add a trailing / here (not needed, but for symmetry).

> +/man?/**
> +!/man?/**.?
> +
> +# These files change name in each release
> +!/man-pages*.Announce
> +!/man-pages*.lsm
> +
> +!/scripts

Please add a trailing / here (not needed, but for symmetry).

> 


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
