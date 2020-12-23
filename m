Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3CB5F2E22DD
	for <lists+linux-man@lfdr.de>; Thu, 24 Dec 2020 00:59:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727946AbgLWX7V (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 23 Dec 2020 18:59:21 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37400 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727029AbgLWX7V (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 23 Dec 2020 18:59:21 -0500
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9D8A0C061794
        for <linux-man@vger.kernel.org>; Wed, 23 Dec 2020 15:58:40 -0800 (PST)
Received: by mail-wr1-x42d.google.com with SMTP id d26so698747wrb.12
        for <linux-man@vger.kernel.org>; Wed, 23 Dec 2020 15:58:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=K3F0/7SV4xuUfhrDcgux3iF4Emr4cT8A4f3Srm0ZEtE=;
        b=k9wFXkxUqPGnuz9+/jWNT54DPC2FdRdzIVmewR/m1OEAWjdKyB5gHsMXMuDN727J5p
         X+zqhCnQ603FD6QL80WYoTLzcQE71W5/AlUuNEj/s+EhR2WVsW5m7CP0oRPSKKeqy9ye
         pyRYWuHUoz9wxk1epwOISUanWG6dDmpMOXqaHD+tdMh46mrUzS6o0Fftxg6ZAtajkSlr
         bAoraOmM6ztDVKRokcIH0SR/l87z2UyIiDSZnJL36zzFOuNpN1yDpo6wmBxZXPT5d4zn
         CUEa4VHjFyHQ9NeaG0DEwab3tm9xWlT14bTnJWjDQJ5z50u+a6+CCpfyX8WLP5AJXXnX
         kYQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=K3F0/7SV4xuUfhrDcgux3iF4Emr4cT8A4f3Srm0ZEtE=;
        b=Q49+ajC7W8V7ch2V7N2on0BT/CTBZH/XVXBcguNZw/kOOgdvv7owC09CBSyTd3jcOF
         YMi/FCcG/i1P04lHtiSrgm8dkYrW+3C9ulj4N/STkqcFRdf5BlSqtOUuTJT7JymHlf+8
         sHE1r9brjV7ECBeTW9TOlMUv7yzuaczZs9Dp3u1L/nkgJd+kCPptAco2h3UzNz7DF6uj
         Pcer63m2ZvuL2Qm4cIDCUEmkkgDyJ1Lb/H8hek9tar5DNXGpB0/hjwEtDtlKMc//IEJw
         /l6CJWDFYLr4VfeJ+aHl65cpxDXWCWgP0YO0fZ9FBY0p0bUM4E1tPggEuhPFDbAb8A/N
         5BLA==
X-Gm-Message-State: AOAM530iTs3reIr5sprSWj0Qn/NIkXFWNAYh/9Yx1kYhxUWiRRbzl8ig
        PXgDyC3hJyyAekej5+OnBpWU3l3WfkQ=
X-Google-Smtp-Source: ABdhPJw8V9FTPJrD8DJLJyOBZYJ0jCOu49tPEGZoP/dzNJx6J+yV9nc5gECycBoTI1W3q9o24GDYPw==
X-Received: by 2002:adf:aa83:: with SMTP id h3mr32162772wrc.108.1608767919428;
        Wed, 23 Dec 2020 15:58:39 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id 189sm1449872wma.22.2020.12.23.15.58.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Dec 2020 15:58:38 -0800 (PST)
Subject: Re: [PATCH 4/4] filesystems.5: tfix
To:     Jakub Wilk <jwilk@jwilk.net>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <20201223193033.1012-1-jwilk@jwilk.net>
 <20201223193033.1012-4-jwilk@jwilk.net>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <ea1e1c05-94ee-ffe8-20e5-ec1d76f35d6f@gmail.com>
Date:   Thu, 24 Dec 2020 00:58:37 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.1
MIME-Version: 1.0
In-Reply-To: <20201223193033.1012-4-jwilk@jwilk.net>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


Hi Jakub,

On 12/23/20 8:30 PM, Jakub Wilk wrote:
> Signed-off-by: Jakub Wilk <jwilk@jwilk.net>.

Patch applied.

Thanks,

Alex

> ---
>  man5/filesystems.5 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man5/filesystems.5 b/man5/filesystems.5
> index f3d37d3c7..aa7d74740 100644
> --- a/man5/filesystems.5
> +++ b/man5/filesystems.5
> @@ -154,7 +154,7 @@ optional period and 3 character extension.
>  .B ncpfs
>  is a network filesystem that supports the NCP protocol,
>  used by Novell NetWare.
> -It was was removed from the kernel in 4.17.
> +It was removed from the kernel in 4.17.
>  .IP
>  To use
>  .BR ncpfs ,
> 

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
