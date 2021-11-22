Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C2771459334
	for <lists+linux-man@lfdr.de>; Mon, 22 Nov 2021 17:37:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240276AbhKVQke (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 22 Nov 2021 11:40:34 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47270 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232071AbhKVQke (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 22 Nov 2021 11:40:34 -0500
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 50E3BC061574
        for <linux-man@vger.kernel.org>; Mon, 22 Nov 2021 08:37:27 -0800 (PST)
Received: by mail-wm1-x330.google.com with SMTP id o29so16018240wms.2
        for <linux-man@vger.kernel.org>; Mon, 22 Nov 2021 08:37:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=kMpaRt68LG4M7aee3kzWRwVd2iiz+R28H/6WeOqPKRc=;
        b=LbaHHpUxkAtgiAJuI1Jb3/9DzivKUA0sTgex9lZBlcrtO00NXXrw86j1JzO4/x2Yz+
         ebNTi0uvwMdLAnWbtOQosCRUxHUbM9isFbKwebamBgfr+R3ayYVfRHHb3ZX51vaCQD+P
         WI9tT8hXoBAoofUwTL5nPBTrMoKhzhXk72l2bbg7bmBDUoCnxlMGGQUZowfaGzB/TYWx
         chMx6h3gmtxMu0gHMe45LiPDnkjqitIrWwrqcXjy04NGEkoyzd1qiEk0PeBKu53xrCSD
         EgwfH3VP26X+AZDQvF/K8SNgUWE1NsGlfyBZ0jromyfw5NF5d6h/LWiO3ky8oQ2PS70J
         zi9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=kMpaRt68LG4M7aee3kzWRwVd2iiz+R28H/6WeOqPKRc=;
        b=C+4MNOV/1lPQQtBL4Fv4qnfUkolRblRsBmxPm8Zq7lwhppxU1qfXL/ZqESZokAnE8w
         5kDVT93ds+D3Cl3iPqtMNn5nl4u9YeY7+k7J5O7GjCpK9awFzwLe3Gp1b8r8TpXEzkaF
         akmlKiAx1mjOJuD4NyE6o1ueyQhO9xO/MKaft3F3yt+F6zM8GD/7lduoYQyuuSr3XcP5
         4rWSpVIE8L4jIIvC8BAmUkcgi4cEfJJOeZJHPpBJmwL/Tz0F3jzEsBlZglnyWFe9EEwp
         TbE0NfTyQYQec341b+KnB8FkbMUrca5+Xb5dVzugb+F6U20fO0r5z2QwEHnK9je0rIF3
         kd5A==
X-Gm-Message-State: AOAM53302yF8msUxZiF3+V5LJChh6ZwlZCQEsyPrMeuSWvoWvsQcjnGb
        SVHgIxZW3hiIIaoNKKxleASrMiumUbDuQw==
X-Google-Smtp-Source: ABdhPJxbF1b+m1Wp3rjZyeGFo6KaYsx7T/K0GHjldGc+0GnI8BrmJ/sJpQTxvL+xl6UcOcuSQDpQOg==
X-Received: by 2002:a7b:c08a:: with SMTP id r10mr30860897wmh.184.1637599045910;
        Mon, 22 Nov 2021 08:37:25 -0800 (PST)
Received: from [10.168.10.170] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id z7sm21397177wmi.33.2021.11.22.08.37.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Nov 2021 08:37:25 -0800 (PST)
Message-ID: <4a08d1e1-4bed-2428-e29f-8b7cb37294b4@gmail.com>
Date:   Mon, 22 Nov 2021 17:37:24 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.0
Subject: Re: [PATCH] init_module.2: Add ETXTBSY error for finit_module
Content-Language: en-US
To:     Yang Xu <xuyang2018.jy@fujitsu.com>
Cc:     linux-man@vger.kernel.org, mtk.manpages@gmail.com
References: <1637136967-13028-1-git-send-email-xuyang2018.jy@fujitsu.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
In-Reply-To: <1637136967-13028-1-git-send-email-xuyang2018.jy@fujitsu.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Yang,

On 11/17/21 09:16, Yang Xu wrote:
> Since kernel commit[1], finit_module fails with ETXTBSY error if fd has write permission.
> Since kernel commit[2], finit_module fails with EBADF error if fd doesn't have read permission.
> 
> So we can use read-write permission to trigger ETXTBSY error all the time since linux 4.7.
> 
> [1]https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=39d637af
> [2]https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=032146cd
> 
> Signed-off-by: Yang Xu <xuyang2018.jy@fujitsu.com>
> ---
>   man2/init_module.2 | 7 +++++++
>   1 file changed, 7 insertions(+)
> 
> diff --git a/man2/init_module.2 b/man2/init_module.2
> index aac0c6631..2bcbaf4c3 100644
> --- a/man2/init_module.2
> +++ b/man2/init_module.2
> @@ -242,6 +242,13 @@ is invalid.
>   .B ENOEXEC
>   .I fd
>   does not refer to an open file.
> +.TP
> +.BR ETXTBSY " (since Linux 4.7)"
> +.\" commit 39d637af5aa7577f655c58b9e55587566c63a0af
> +The file referred to by
> +.I fd
> +is opened for read-write.
> +.

Please, remove that trailing '.'

Thanks,
Alex

>   .PP
>   In addition to the above errors, if the module's
>   .I init
> 

-- 
Alejandro Colomar
Linux man-pages comaintainer; http://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
