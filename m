Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3D05A3B6998
	for <lists+linux-man@lfdr.de>; Mon, 28 Jun 2021 22:19:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235013AbhF1UWN (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 28 Jun 2021 16:22:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58538 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233074AbhF1UWM (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 28 Jun 2021 16:22:12 -0400
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3E18FC061574
        for <linux-man@vger.kernel.org>; Mon, 28 Jun 2021 13:19:46 -0700 (PDT)
Received: by mail-wm1-x32d.google.com with SMTP id l18-20020a1ced120000b029014c1adff1edso268888wmh.4
        for <linux-man@vger.kernel.org>; Mon, 28 Jun 2021 13:19:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language:content-transfer-encoding;
        bh=Eh79qRxn+lRqHOHr4I/w9FlYvHx7kubNxIolsruWlE0=;
        b=nTA1j3hamIwObZ4E9i9oDj2KbgR7yht/LsEbp3m6hxCkclrQ0xuTWwrWRRw1+mejGS
         yCiuctWlny2NoqSyNGB4k1D5LWXSdFxluZ6Hxji9z9ghVp330Htcn0wpgfGuHe5DalXP
         E4tdd7XwEQKhbMZeMEVqTFVA4Obe1CHOwrRA6SzSZUT3CP1K8ZOjRhg+oz4dRDqtY+9R
         cOleboOFcZltX3j3QbimpVJyDfUsMpnaSe/ZkiSWwCURDJ8IgXh2AITE0TA1x8A/HEs6
         HFkBcSns6tQeAOFyCsni2aECcqeDLpoZd+hHV42LK052yeA9weOJtd7rfe2FIrlBKeSi
         d/vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Eh79qRxn+lRqHOHr4I/w9FlYvHx7kubNxIolsruWlE0=;
        b=liObxlNfoAcezmnCUnik1XYn9vB0bQtpCA3x9Z2SgoEmFZQ8zYjQL57tW/AqnHcCQI
         fYORQLPzT7AETdSzYmaDCnMEgufk3AUHcrYXoaCWrjZrXpiBh8Uh4zAXVtDIKUUOpWPD
         YE5YGu1drugUTXQ8OxagLSjWvTDdSCXveMiYpM6TiKngMYA/Y9usyGOIxonze9L6WG+n
         QH7T1xMZlj9nW9ySGL+77MfCeETyCPzbEV0WTpqOKebKzALyf0wvqPUfAZAWmQThKnA6
         wVRD75fWas1kXGlxqoxUoLsCOWhN1fUeaIvuFucA2uGZnNptspOidLt6s4lyHvbgdw87
         yTQA==
X-Gm-Message-State: AOAM532UN7xU4lXXqj+VJA7sMz0usLPS15ULi527koULKjCN4CEKJ95s
        QibD41FnTngmb+V2OFpkwGA=
X-Google-Smtp-Source: ABdhPJwUToyAJD+aHyJm1IrpVwYqMTTyL1rUR/FwirY2u/Mak+5itta7Ztn110gKoefNMhh4g1yRfQ==
X-Received: by 2002:a7b:ca4b:: with SMTP id m11mr9378925wml.90.1624911584919;
        Mon, 28 Jun 2021 13:19:44 -0700 (PDT)
Received: from [10.8.0.150] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id y16sm16090326wrp.51.2021.06.28.13.19.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Jun 2021 13:19:44 -0700 (PDT)
Subject: Re: [PATCH] preadv2: Note preadv2(..., RWF_NOWAIT) bug in BUGS
 section
To:     will@williammanley.net, linux-man@vger.kernel.org,
        Michael Kerrisk <mtk.manpages@gmail.com>
References: <3f280647-143d-4c52-822a-79338a1b76f7@www.fastmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <c06bfb13-3e4e-633d-b54f-6b4a46173cc0@gmail.com>
Date:   Mon, 28 Jun 2021 22:19:42 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <3f280647-143d-4c52-822a-79338a1b76f7@www.fastmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Will,

On 6/1/21 4:15 PM, Will Manley wrote:
> To save the next person before they fall foul of it.  See
> https://lore.kernel.org/linux-fsdevel/fea8b16d-5a69-40f9-b123-e84dcd6e8f2e@www.fastmail.com/T/#u
> and https://github.com/tokio-rs/tokio/issues/3803 for more information.

Thanks. Patch applied.
Sorry for the delay!

I applied a few minor tweaks to your patch. See
<https://github.com/alejandro-colomar/man-pages/commits/main>.
I also added a signed-off-by line on your behalf.

Thanks,

Alex

> ---
>   man2/readv.2 | 11 ++++++++++-
>   1 file changed, 10 insertions(+), 1 deletion(-)
> 
> diff --git a/man2/readv.2 b/man2/readv.2
> index df42cf830..3355fa9d7 100644
> --- a/man2/readv.2
> +++ b/man2/readv.2
> @@ -243,7 +243,9 @@ If some data was successfully read, it will return the number of bytes read.
>   If no bytes were read, it will return \-1 and set
>   .IR errno
>   to
> -.BR EAGAIN .
> +.BR EAGAIN
> +(but see
> +.BR BUGS ")."
>   Currently, this flag is meaningful only for
>   .BR preadv2 ().
>   .TP
> @@ -425,6 +427,13 @@ iov[1].iov_len = strlen(str1);
>   nwritten = writev(STDOUT_FILENO, iov, 2);
>   .EE
>   .in
> +.SH BUGS
> +Linux v5.9 and v5.10 have a bug where
> +.BR preadv2()
> +with the
> +.BR RWF_NOWAIT
> +flag may return 0 even when not at end of file.  See
> +https://lore.kernel.org/linux-fsdevel/fea8b16d-5a69-40f9-b123-e84dcd6e8f2e@www.fastmail.com/T/#u
>   .SH SEE ALSO
>   .BR pread (2),
>   .BR read (2),
> 


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
