Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DF938624FA4
	for <lists+linux-man@lfdr.de>; Fri, 11 Nov 2022 02:35:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232700AbiKKBf4 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 10 Nov 2022 20:35:56 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52920 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232724AbiKKBfz (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 10 Nov 2022 20:35:55 -0500
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CFC9B627EF
        for <linux-man@vger.kernel.org>; Thu, 10 Nov 2022 17:35:53 -0800 (PST)
Received: by mail-wm1-x332.google.com with SMTP id v124-20020a1cac82000000b003cf7a4ea2caso4667665wme.5
        for <linux-man@vger.kernel.org>; Thu, 10 Nov 2022 17:35:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=gd8H8NM8WDaH/vwH0+5I+R/kNyHnk4bRd/n9bIArgMw=;
        b=guJZxqUp+rYr7KwJzQ4aaje7R5vQX0xy4RLGZ1Sno9BpNi0nVzVz2VfO6MHBdLwPmC
         VOMOZ1JX8KrKBAIQ/lAJ3381iLA25r+3AasiGTpufDCJ+J5ixnj6RYZYgMCNCngfPQUq
         jbVsKM68W1dahMeIH/UDhBTJaeSPjerqVeeouRooH+LdqXIVdN2xfOLFMssO2qXJx4Hd
         x98iPhiBnwAtx7beKG3uhan7gg+8kZmi7le9nYFsy+OZnoI/A09bXmSl8YRK5tuxq45u
         Sfx1oEQ+8xkEnq+rjMhEj3n1TNXhByE2FTQpPkblFhKTUqhya9pVffvMq+26pQRuOmee
         j0gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gd8H8NM8WDaH/vwH0+5I+R/kNyHnk4bRd/n9bIArgMw=;
        b=tByt2ueJuHoYlVAijibQiEOEtcAy+xuJ2MkffHSrnQF75HlBOLyMZdFRiS48TafrBr
         ycqZ5oLBfKJkPI7jcAYnRppF/L3RIovpIvna5FvbRHrwHAJVkbHl/3W/KoRqSBLPA7+/
         Orla1mxyw4e+myDEzF/JWalNrHcwG8Lh+w/fi0hwZICE/48PfiV/jaR0iAK1QEZm/svB
         XnHN3t6af5mawr0g2Xwqnh2pUlbESyc7OY68y0gH2OY1GrqtGaVXGO/RVcA6KyShxI1n
         /V5I5fVBsi6OQ1Xhf+AM7dyckou9Ext9DcHaf6cnwsPAlGlE1FJ+Bwd2GMCIxKXZp+dN
         XpKA==
X-Gm-Message-State: ACrzQf0yjU+kN0DiAX9TzldlSaqRA2oNTopeGwYEk6UtJ1uXdlldRlie
        Q45h6k1lTpcDll9IDjnAKN27pE/tseY=
X-Google-Smtp-Source: AMsMyM5Fkhg1vsHhog4M22bi2h98Or1ZU7s/4FlNqRCmDitSgUSFEi0jKJi0onbcD98qnqlxZylZJw==
X-Received: by 2002:a05:600c:4d05:b0:3b3:3256:647 with SMTP id u5-20020a05600c4d0500b003b332560647mr1194527wmp.197.1668130552336;
        Thu, 10 Nov 2022 17:35:52 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id p9-20020a05600c468900b003cf75213bb9sm7206922wmo.8.2022.11.10.17.35.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Nov 2022 17:35:51 -0800 (PST)
Sender: Alejandro Colomar <alx.mailinglists@gmail.com>
Message-ID: <0ee7cd31-cd44-acfc-8517-0e3df816bef4@gmail.com>
Date:   Fri, 11 Nov 2022 02:35:51 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH v3] memmem.3: Add list of known systems where this is
 available
Content-Language: en-US
To:     Andrew Clayton <andrew@digital-domain.net>,
        Alejandro Colomar <alx@kernel.org>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <20221110001318.10696-1-andrew@digital-domain.net>
 <20221111012724.11558-1-andrew@digital-domain.net>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20221111012724.11558-1-andrew@digital-domain.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Andrew!

On 11/11/22 02:27, Andrew Clayton wrote:
> While looking at which systems provide memmem(3) I have been able to
> discern the following:
> 
>    musl libc since v0.9.7 (2012)
>    bionic since Android 9 (2018)
> 
>    FreeBSD since 6.0 (2005)
>    OpenBSD since 5.4 (2013)
>    NetBSD
>    macOS
>    Illumos
> 
> For macOS and Illumos I checked the memmem(3) man page on those systems.
> For the rest there are links below to on-line man pages or commit logs.
> 
> Where I could determine what version memmem(3) was introduced, I've
> noted that in the man page.
> 
> Link: <http://git.musl-libc.org/cgit/musl/commit/src/string/memmem.c?id=c86f2974e2acd330be2d587173dd4dd56db82e22>
> Link: <https://android.googlesource.com/platform/bionic/+/android-9.0.0_r3/libc/bionic/memmem.cpp>
> Link: <https://www.freebsd.org/cgi/man.cgi?query=memmem&sektion=3&format=html>
> Link: <https://man.openbsd.org/memmem.3>
> Link: <https://anonhg.netbsd.org/src/diff/96a37d536271/common/lib/libc/string/memmem.c>
> Suggested-by: Alejandro Colomar <alx@kernel.org>
> Signed-off-by: Andrew Clayton <andrew@digital-domain.net>

Patch applied.  Thanks!

Cheers,

Alex

> ---
> 
>   v3:
>    - Split the platform list on ':' and ';'
> 
>   v2:
>    - Remove references to bionic and macOS from the man page
>    - Convert & to and
>    - Use Oxford comma
>    - Add dates where known to the commit message
>    - Use present tense for the subject line
> 
>   man3/memmem.3 | 5 ++++-
>   1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/man3/memmem.3 b/man3/memmem.3
> index 134dffab0..4a4a885fc 100644
> --- a/man3/memmem.3
> +++ b/man3/memmem.3
> @@ -58,7 +58,10 @@ T}	Thread safety	MT-Safe
>   .sp 1
>   .SH STANDARDS
>   This function is not specified in POSIX.1,
> -but is present on a number of other systems.
> +but is present on a number of other systems,
> +including:
> +musl libc 0.9.7;
> +FreeBSD 6.0, OpenBSD 5.4, NetBSD, and Illumos.
>   .SH BUGS
>   .\" This function was broken in Linux libraries up to and including libc 5.0.9;
>   .\" there the
