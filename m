Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A14EC41FD75
	for <lists+linux-man@lfdr.de>; Sat,  2 Oct 2021 19:32:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233675AbhJBReB (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 2 Oct 2021 13:34:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48486 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233451AbhJBReB (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 2 Oct 2021 13:34:01 -0400
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DD46DC0613EC
        for <linux-man@vger.kernel.org>; Sat,  2 Oct 2021 10:32:14 -0700 (PDT)
Received: by mail-wr1-x430.google.com with SMTP id e12so798599wra.4
        for <linux-man@vger.kernel.org>; Sat, 02 Oct 2021 10:32:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=EnNo7g+QgLYEbrS/Iq9Sv435X9QxT9o2TejFXt9sav8=;
        b=l+P5MIvWtZrnIJftfCuSa5tvaOQXYQ1BqdgQS/ZiJrsfJqOo8TwFKSfjbO/W1yegKA
         BGY1VXMFOsMSOJrd88xPsdsc5YyBStrtpUfSClE2O2w3dgXNxa0R2CEtJHEfGJsMXElW
         ZprPi6p4Lvxy2a1J4HPNV/mOic8W0YadrBDmZHgYDxT51ILcwLLsUQ/kVymT3d0N+svF
         UwRj4rTwQtTZ8sqJH3HEeBVDyP0UPOQtxhYPfMqxZM5EJw+7TKMgB/ZcfvsJYOiviYgF
         zfHNL1uDT/lWlvBIUo2AUbyCdr42qhidFSNLWWWovTkhC3L5t89UDGsiVWY6xW5TiDW2
         5e9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=EnNo7g+QgLYEbrS/Iq9Sv435X9QxT9o2TejFXt9sav8=;
        b=iIopNZ4y8bp5xntxfsoqxpVOTNEp64QfOQvB/7mz78be1j0aNvgbMmjESnWmbcXkM8
         FgLzMNKFqwazQ5YroXmwOcu4VX0+HVj06B5XlllRj15RCXRfZVszroNq9rXavANFBZBp
         mstmTOIp52frMIdmJoQeLSK4V9EcxohBVCSXsBTgPxrMAxSEuwgjKceb8f5qAOgT6Fd1
         tgYC42YPlHUqDJKM2p6Llac0CTlLTCBXMRriD0KElrZeaZ/X0ZTsSLTcPlD8o9+R++8h
         WxbUCvYuXJujjKdsFoAWugBMc08LntbS6eLRBuNfyZFktlYWzZbYi8J3MEglt/lHvodr
         eD6A==
X-Gm-Message-State: AOAM531r8ptvbp35Hb9XMFyg6BcVTCPl9IwRbvVxY8WI1Gjjh2WiLRSC
        Dqz93+SSM0Gl7MMOq/8NCiGRI0FTKvo=
X-Google-Smtp-Source: ABdhPJw4YE59SmrzlZwQSryP18POqUSol+okNw5WvSgXJsGQHFtIJKJwSximv9iPSYPogQY6ufT+gQ==
X-Received: by 2002:a5d:4cca:: with SMTP id c10mr1537237wrt.188.1633195933464;
        Sat, 02 Oct 2021 10:32:13 -0700 (PDT)
Received: from [10.8.0.30] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id z79sm9574373wmc.17.2021.10.02.10.32.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 02 Oct 2021 10:32:12 -0700 (PDT)
Subject: Re: [PATCH v2 1/2] rpmatch.3: clarify first-character-only FUD
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <8f5f9b7d4f067a4a479fe400dee99120bf0a1abd.1632231952.git.nabijaczleweli@nabijaczleweli.xyz>
 <39075e7155b7e992b6af5b548258a46d831e025d.1633177011.git.nabijaczleweli@nabijaczleweli.xyz>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <59ee1f02-8b38-f7f2-1932-e50a412a72f9@gmail.com>
Date:   Sat, 2 Oct 2021 19:32:10 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <39075e7155b7e992b6af5b548258a46d831e025d.1633177011.git.nabijaczleweli@nabijaczleweli.xyz>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi наб!

On 10/2/21 2:18 PM, наб wrote:
> It's plain not true as-written ‒ locales can and do provide longer matches
> (Aramaic has a "አዎን" alternative, for example) ‒ but it's important to
> note that (a) this may be an issue and (b) nonetheless this is the right
> way to process this
> 
> Signed-off-by: Ahelenia Ziemiańska <nabijaczleweli@nabijaczleweli.xyz>
> ---
> This should resolve both the unnecessary FUD and the doubts it would
> raise, while preserving the note. I'm not sure I'd agree with C locale
> being the most important one (I'd put that burden on "the current one"),
> but it's mentioned here because English locales (and most other ones for
> YESEXPR/NOEXPR) derive from it.

Yep!  I applied both v2 patches for rpmatch.3.

Thanks,

Alex

> 
>   man3/rpmatch.3 | 20 ++++++++------------
>   1 file changed, 8 insertions(+), 12 deletions(-)
> 
> diff --git a/man3/rpmatch.3 b/man3/rpmatch.3
> index 846c492b7..1f9732e3f 100644
> --- a/man3/rpmatch.3
> +++ b/man3/rpmatch.3
> @@ -125,19 +125,15 @@ is available on a few other systems.
>   .\" It is available on at least AIX 5.1 and FreeBSD 6.0.
>   .SH BUGS
>   The
> -.BR rpmatch ()
> -implementation looks at only the first character
> -of
> +.BR YESEXPR " and " NOEXPR
> +of some locales (including "C") only inspect the first character of the
>   .IR response .
> -As a consequence, "nyes" returns 0, and
> -"ynever; not in a million years" returns 1.
> -It would be preferable to accept input strings much more
> -strictly, for example (using the extended regular
> -expression notation described in
> -.BR regex (7)):
> -.B \(ha([yY]|yes|YES)$
> -and
> -.BR \(ha([nN]|no|NO)$ .
> +This can mean that "yno" et al. resolve to
> +.BR 1 .
> +This is an unfortunate historical side-effect which should be fixed in time
> +with proper localisation, and should not deter from
> +.BR rpmatch ()
> +being the proper way to distinguish between binary answers.
>   .SH EXAMPLES
>   The following program displays the results when
>   .BR rpmatch ()
> 


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
