Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5CF8148B611
	for <lists+linux-man@lfdr.de>; Tue, 11 Jan 2022 19:47:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1350153AbiAKSrL (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 11 Jan 2022 13:47:11 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33232 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1350136AbiAKSrJ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 11 Jan 2022 13:47:09 -0500
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 94572C061756
        for <linux-man@vger.kernel.org>; Tue, 11 Jan 2022 10:47:08 -0800 (PST)
Received: by mail-wr1-x42b.google.com with SMTP id s1so34740357wra.6
        for <linux-man@vger.kernel.org>; Tue, 11 Jan 2022 10:47:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=aUBCx2YOeqy7kpTPPUHkX8lonEJVq50AwYHuIG/7kwU=;
        b=nlXQt4mwj5Vap2+4dG2Lx7AxkWDbvu7Q6qF5lNmiGiVAKMEoQmqmm6xNf/PaFeT2mN
         VmjUlP+WaBnxuKy9K+WuEyBj+NipFSOTBXWfSsvhLc3hj7/hLmbKnkfKp3pdrBYa6NmQ
         0MHw0+llxgF5ncrDuZ8j19WeO0pmxEdXzOKGTZ1GJCfXf4V+lUilJaauA1kwEuFVdI5D
         5viRznaBPpZ9YQw8JC5io1Y28awKF6Ko4YSJeqlZNyBLDgPmyMHOW5Bzp4msNYWuwbCN
         0UQVuTBeTqWTuHuqQBLVDc3GvgIP2anKcoa2HTFM9yt3c5hz6iAdEGe/kKoRqcN6+rd2
         mfeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=aUBCx2YOeqy7kpTPPUHkX8lonEJVq50AwYHuIG/7kwU=;
        b=vmnx0DZqbl/PvmV7/V/i8hfJvfr/AlodubHgK9NkVxh/wh2gdkm+TDSEz9bTTNAo5h
         5rGpT3FL3uNGFv/wbmLA99Ps/JJfN5Gf/pryI/nX4ncax5PBLMsJnvbkBgkLkW692kdp
         WfElu6PE0b/IZljf5yInPNSvEVfZ7HdpP2yOT9AcOG0jazUjo9JVr3tqGwIagk6zxfUF
         Alqddh5d3kY+WtgriUZ7KgZQiAP4YmJ1vAHrgqODLBbQ5UImgGlRaB+b0kGHuzD97QBw
         uu7RgffOGMy/IJeQh7Yv46WMOhifhA7fJTi0aDSTqmHYTN/niIczwJImNew/S2R78xSM
         IWMA==
X-Gm-Message-State: AOAM533Up5z6igSrJdKkEGMj4FIrtkMxQdgmQTh6aR9MD9UYDFY4myKL
        ZIcGm8KWPsgAoRkC9FTH6P6Eo7yBGiQ=
X-Google-Smtp-Source: ABdhPJyYG7kG/IQ5Cmwb/LkkJE5SJSGkrHrBJtvIctF/rxHrXFn3Jf5z7FOUYFA7YEDa/WdzV75pPw==
X-Received: by 2002:adf:ebcb:: with SMTP id v11mr5014611wrn.133.1641926827279;
        Tue, 11 Jan 2022 10:47:07 -0800 (PST)
Received: from [10.168.10.170] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id z4sm2295638wmf.44.2022.01.11.10.47.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Jan 2022 10:47:06 -0800 (PST)
Message-ID: <b78cb317-4ef3-4fdf-0bc0-1d55dd8f0ff7@gmail.com>
Date:   Tue, 11 Jan 2022 19:47:06 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.4.1
Subject: Re: [PATCH v2 2/2] glob.3: srcfix
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <3d369402-6b11-9648-8b97-6fb22f92f925@gmail.com>
 <d88ca9bcc8d1b28b33fe7a7ff76ffd64212a405d.1641925582.git.nabijaczleweli@nabijaczleweli.xyz>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
In-Reply-To: <d88ca9bcc8d1b28b33fe7a7ff76ffd64212a405d.1641925582.git.nabijaczleweli@nabijaczleweli.xyz>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi наб,

On 1/11/22 19:28, наб wrote:
> For consistency: this is the only non-false-positive for ", and",
> which now reads:
>    $ git grep '", and"'
>    man2/ioctl_tty.2:.BR "#include <termios.h>" "      /* Definition of " CLOCAL ", and"
> 
> Signed-off-by: Ahelenia Ziemiańska <nabijaczleweli@nabijaczleweli.xyz>

:-)
Applied!

Cheers,

Alex

> ---
>   man3/glob.3 | 3 ++-
>   1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/man3/glob.3 b/man3/glob.3
> index 82fb16948..50516d600 100644
> --- a/man3/glob.3
> +++ b/man3/glob.3
> @@ -147,7 +147,8 @@ Use alternative functions
>   .IR pglob\->gl_closedir ,
>   .IR pglob\->gl_readdir ,
>   .IR pglob\->gl_opendir ,
> -.IR pglob\->gl_lstat ", and"
> +.IR pglob\->gl_lstat ,
> +and
>   .I pglob\->gl_stat
>   for filesystem access instead of the normal library
>   functions.

-- 
Alejandro Colomar
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
