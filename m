Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 6697C13C2A
	for <lists+linux-man@lfdr.de>; Sat,  4 May 2019 23:28:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727542AbfEDV2y (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 4 May 2019 17:28:54 -0400
Received: from mail-ua1-f68.google.com ([209.85.222.68]:37874 "EHLO
        mail-ua1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727476AbfEDV2x (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 4 May 2019 17:28:53 -0400
Received: by mail-ua1-f68.google.com with SMTP id l17so3318167uar.4
        for <linux-man@vger.kernel.org>; Sat, 04 May 2019 14:28:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=ayUMJSGKwvEjSfQUU2wP11V1Jd/86NJwFMK66EGsz5w=;
        b=hAx80emS+YPvWGHtJaBAKYIyf0gNA6vph4jz2AMXn8jWY3QzT4k7bJ5noVZQphOLKX
         12IXi4SSl3duRCobEa05hxnpnKBGXXq5kRccgKqIDe2YXCW6ggwlvnu6tVko2kG3UPqx
         RZlyJA9+v+H+YgrU+PUUGYd7DO7zE+roSwi5EzoYqAu3dXv0iRM+l+HOaOeI5MV0+om6
         S1+FA2zfzUH4IEEf5Muxo1Zp6IylkVVSLKdM9oE97XexFk54GU8B7w9x/2BOyjSf48fO
         o+lkGDi35tWhayyUiR75loFjqkOyTCy8EwPpCly9UgrdSJXCb/vkHvEYw5FI5HuS5FAF
         p2Mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=ayUMJSGKwvEjSfQUU2wP11V1Jd/86NJwFMK66EGsz5w=;
        b=bqcnRdkax/GTHcnlZjFFVbaBI2Lb3yTJo+LVZBu3JBIcCv6ng+PkeIWdVp4XstD3xq
         8h1hYXeUT/H3ZYVs+zRzuDBvDXCJFexINbDtGpXZNAvVawWqgca0Y8B7hYV1uHFDO9Zr
         YEwzuvqtMKsaZUZfSq1DYU0SxHrWyHktOf+/OXPVgbxtdHOqcm6qhe5tSXIn/u+Or0+G
         xWrv5y1Yvmd9ZNx3ZUZS5nLWcdUFR4m1wqAn5VS0nssXm2ZkZ8FwB0iYSXrA6FM78sFf
         UhXq+GCNkP9SEXk03m0uCZdLbtXZiexHT+fICa8+A39CwvqPcF18aaO34kEO5YVtpi2I
         LOZw==
X-Gm-Message-State: APjAAAVUVQEbaybRypcWPv1yi0o7yGcA6S8dCX2rmO8Xg60QXAmeCNjG
        l4qOswWoyeQ5JwpEIG88yGTnG3Ch
X-Google-Smtp-Source: APXvYqzhPQAOWg1KWRR1U3stnahsPHpSToXekyC41QXCHeP8teyPt8Or8iP843QJ2l6UPpLuMEoYNg==
X-Received: by 2002:ab0:129:: with SMTP id 38mr2465618uak.27.1557005332345;
        Sat, 04 May 2019 14:28:52 -0700 (PDT)
Received: from [192.168.0.8] (dynamic-190-25-35-141.dynamic.etb.net.co. [190.25.35.141])
        by smtp.gmail.com with ESMTPSA id d133sm2396610vke.19.2019.05.04.14.28.50
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Sat, 04 May 2019 14:28:50 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] hostname.7: HOSTALIASES/search path processing is
 DNS-specific
To:     Florian Weimer <fweimer@redhat.com>
References: <871s1tgk4g.fsf@oldenburg2.str.redhat.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <a38eb666-3f8f-73e0-5019-84b5a1f56c11@gmail.com>
Date:   Sat, 4 May 2019 16:28:48 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <871s1tgk4g.fsf@oldenburg2.str.redhat.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Florian,

On 4/23/19 4:11 AM, Florian Weimer wrote:
> Other NSS modules do not necessarily honor these settings.

Thanks. Patch applied.

Cheers,

Michael

> ---
>   man7/hostname.7 | 13 +++++++++++--
>   1 file changed, 11 insertions(+), 2 deletions(-)
> 
> diff --git a/man7/hostname.7 b/man7/hostname.7
> index 4c07485c7..f8a337c39 100644
> --- a/man7/hostname.7
> +++ b/man7/hostname.7
> @@ -65,8 +65,16 @@ which must generally translate the name to an address for use.
>   .BR getaddrinfo (3)
>   or the obsolete
>   .BR gethostbyname (3).)
> -Hostnames are resolved by the Internet name resolver in the following
> -fashion.
> +.PP
> +Hostnames are resolved by the NSS framework in glibc according
> +to the
> +.B hosts
> +configuration in
> +.BR nsswitch.conf .
> +The DNS-based name resolver
> +(in the
> +.B dns
> +NSS service module) resolves them in the following fashion.
>   .PP
>   If the name consists of a single component, that is, contains no dot,
>   and if the environment variable
> @@ -100,6 +108,7 @@ by a system-wide configuration file (see
>   .SH SEE ALSO
>   .BR getaddrinfo (3),
>   .BR gethostbyname (3),
> +.BR nsswitch.conf (5),
>   .BR resolver (5),
>   .BR mailaddr (7),
>   .BR named (8)
> 
