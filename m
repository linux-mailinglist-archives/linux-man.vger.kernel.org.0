Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 47021225DED
	for <lists+linux-man@lfdr.de>; Mon, 20 Jul 2020 13:55:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728604AbgGTLzV (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 20 Jul 2020 07:55:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60676 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728449AbgGTLzV (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 20 Jul 2020 07:55:21 -0400
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com [IPv6:2a00:1450:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 07DB8C061794
        for <linux-man@vger.kernel.org>; Mon, 20 Jul 2020 04:55:20 -0700 (PDT)
Received: by mail-wr1-x443.google.com with SMTP id z2so17585964wrp.2
        for <linux-man@vger.kernel.org>; Mon, 20 Jul 2020 04:55:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=ydmhDdGw+sWYWT0rx4PVsJgBwBh4ilFa4HUCz8ZhHuM=;
        b=qS+Wc2TkJ/PHMOPPCwlV1y/EJOmhpCIGa50rDNt+z0jmEFgg6VAVD5JUxgRZ2Gh8lh
         bnwHHJ3CNAWyX2ytSBI3neSxUEUMK7hpj4xCKulUUIPK1yNeKLEGifxa16KrAYBe+IeG
         PtlSW9NheoJ6aIX30/TLJ3/1Id3u7Kol43Z/kERsNwg96AHjvUuoJ6UvQoOd+ruT+94N
         1XA2Z6xRguKfdgxEaFp8lUtErR030jHqLOIXuuX8DarZN+XoV4r9dm2Vq2sUazKYBrah
         oUhfl5H12bI7EydNcN8yOyPt21IyTq6rUZxM14cBs9b3q07By5mNBFEgsITlt2ZfEtm3
         RwBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=ydmhDdGw+sWYWT0rx4PVsJgBwBh4ilFa4HUCz8ZhHuM=;
        b=W6WMQAng4cs6371R2VonTERVETAvbmudzYa0EESdT++dlRlDVUAXv95TwGrMCKOCky
         LgmFObQFc8pg248u3dn6/hssr+PbGXEEBiy5mzjk2UVRl+X6/AF+28XGRbV55/V+DeEp
         BuLCMr4H+UEAWZK7akgEQYOqjhxUnbD8hPcvrVa8JpNyazfJxF3Mk7FAyXx8vwYSCDKM
         rEQeQ9MefijkOyhdR7ofn+c7ApzdaHvmKFrRYXf/LKtKNoOREI8ZPzps6N0TIf7VAwLY
         Xh1psOryz7M8saZeUCRe5KVvYSQjHC3p1a9+kvFbOwU3U/ML3TjLHMOn4kz/Mt2nzHlw
         bS6A==
X-Gm-Message-State: AOAM531iG1MX6ljJy4UfbtCb2EsFO4z6sr116wvSYm8xkxIus+8a/ITv
        Jgz6XOWyFIp7HfLdyAbjr3s=
X-Google-Smtp-Source: ABdhPJyEbAbAKTO/vdyRyr4BvZ4oJWZVMWI6dujhEW7tJbgGGBI2uZbfzSxZpEOlVyJUwAvxCSJDZQ==
X-Received: by 2002:a5d:5151:: with SMTP id u17mr22361985wrt.154.1595246118759;
        Mon, 20 Jul 2020 04:55:18 -0700 (PDT)
Received: from ?IPv6:2001:a61:3adb:8201:9649:88f:51f8:6a21? ([2001:a61:3adb:8201:9649:88f:51f8:6a21])
        by smtp.gmail.com with ESMTPSA id f9sm32793570wru.47.2020.07.20.04.55.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Jul 2020 04:55:17 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, sguelton@redhat.com
Subject: Re: [PATCH] ld.so.8: List more places in which dynamic string tokens
 are expanded
To:     Florian Weimer <fweimer@redhat.com>, linux-man@vger.kernel.org
References: <87zh7uy094.fsf@oldenburg2.str.redhat.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <8bb0f5b8-424c-3255-4c1f-ad4f493b2463@gmail.com>
Date:   Mon, 20 Jul 2020 13:55:14 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <87zh7uy094.fsf@oldenburg2.str.redhat.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Florian,

On 7/20/20 12:00 PM, Florian Weimer wrote:
> This happens for more than just DT_RPATH/DT_RUNPATH.
> 
> Signed-off-by: Florian Weimer <fweimer@redhat.com>

Thanks! Patch applied.

The page already mentioned that these tokens were usable with
LD_LIBRARY_PATH, LD_PRELOAD, and LD_AUDIT, but I was unaware of
the other places where they are applicable.

Cheers,

Michael

> ---
>  man8/ld.so.8 | 42 +++++++++++++++++++++++++++++++++++++-----
>  1 file changed, 37 insertions(+), 5 deletions(-)
> 
> diff --git a/man8/ld.so.8 b/man8/ld.so.8
> index 2e98b7f5a..80f57a541 100644
> --- a/man8/ld.so.8
> +++ b/man8/ld.so.8
> @@ -97,12 +97,41 @@ and then
>  If the binary was linked with the
>  .B \-z nodeflib
>  linker option, this step is skipped.
> -.SS Rpath token expansion
> +.SS Dynamic string tokens
>  .PP
> -The dynamic linker
> -understands certain token strings in an rpath specification
> -(DT_RPATH or DT_RUNPATH).
> -Those strings are substituted as follows:
> +In several places, the dynamic linker expands dynamic string tokens:
> +.IP o 3
> +In the environment variables
> +.BR LD_LIBRARY_PATH ,
> +.BR LD_PRELOAD ,
> +and
> +.BR LD_AUDIT ,
> +.IP o 3
> +inside the values of the dynamic section tags
> +.BR DT_NEEDED ,
> +.BR DT_RPATH ,
> +.BR DT_RUNPATH ,
> +.BR DT_AUDIT ,
> +and
> +.BR DT_DEPAUDIT
> +of ELF binaries,
> +.IP o 3
> +in the arguments to the
> +.B ld.so
> +command line options
> +.BR \-\-audit ,
> +.BR \-\-library-path ,
> +and
> +.B \-\-preload
> +(see below), and
> +.IP o 3
> +in the file name arguments to the
> +.BR dlopen (3)
> +and
> +.BR dlmopen (3)
> +functions.
> +.PP
> +The substituted tokens are as follows.
>  .TP
>  .IR $ORIGIN " (or equivalently " ${ORIGIN} )
>  This expands to
> @@ -156,6 +185,9 @@ value in the auxiliary vector (see
>  .\"
>  .\" ld.so lets names be abbreviated, so $O will work for $ORIGIN;
>  .\" Don't do this!!
> +.PP
> +Note that the dynamic string tokens have to be quoted properly when
> +set from a shell, to prevent their expension as environment variables.
>  .SH OPTIONS
>  .TP
>  .BI \-\-audit " list"
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
