Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 2F1D914456C
	for <lists+linux-man@lfdr.de>; Tue, 21 Jan 2020 20:53:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727360AbgAUTxO (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 21 Jan 2020 14:53:14 -0500
Received: from mail-pj1-f67.google.com ([209.85.216.67]:36906 "EHLO
        mail-pj1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726926AbgAUTxO (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 21 Jan 2020 14:53:14 -0500
Received: by mail-pj1-f67.google.com with SMTP id m13so2111170pjb.2
        for <linux-man@vger.kernel.org>; Tue, 21 Jan 2020 11:53:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=cXz2QIL84r3HcqI3qIYvsBa0Y4bvm3sCeXQzVJZcRrw=;
        b=ngvqpJ+GKqgIDEFQFhZagTkw7DDUd/8wn3DWpdmsOGHiplyTHRy+t3+TyL9YO+5571
         jjTHY/P1WsYklKbP9NrTY7Q3stjUxPa3FNMaNIqFNvqfcK6SpvCCIlaJXa/Dpr4P8LeV
         O6vHN+j5Jk1W2YoNY5uQ/l58lxHAu009Ng6si7M5D9cZbA3XdhMh3fYvQNJBzqfEqg8k
         PRLHHxS2TgvgJog1C/XTCqVbGVqgvG49uRzeeBZFFkyt93NhRcKRrt+wA90MgFrdJBnb
         bkbiavDopR8KKh+bMg7MFWA8GTbs4D+bxCjaJyZ7EvIkk1vcm5JSO0RLH6h/l3L8k/QZ
         9QKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=cXz2QIL84r3HcqI3qIYvsBa0Y4bvm3sCeXQzVJZcRrw=;
        b=Bef2rzdhBWITVTFTBR06e+Xr972qvTuTGOUG/xLY6XumCpJKA+B0tPqG8oMsShWjIJ
         wkMN3qkEpmdghTO8qnf/ainNFqLNVWxtpFPGEDUP9DUbUc/e+Gp3qxyj1d49+W0ezqIB
         OvnxlInSciEsqfmOE+COageFwiODeQtRq/ele28hn+fnBuZC7crYYRFqpwNYiilFyCmP
         Y5ycMQdVebFKM8I8xLc+zGHT+0CD9cjkLqmNq+uStikoWu2bM1H0LY1LtYPLQMupa8Nl
         XJbSNqlZmBlbwZMcRzCYOwn0yFTXuy8U4BnnGFGMN+6jONwj6nXCJEF7kv/fiS4kJhbi
         5xNQ==
X-Gm-Message-State: APjAAAUNwe5esEyd/DaHvpuWm8osqRsO6f2ox9neBOkI3vZIafU4wXRf
        QZezuITVsd+e/sW2quRbq6FMMYIJ
X-Google-Smtp-Source: APXvYqzIHxzpHHUqDkPNWDrmGjlCINdRIGDB6sJBjmmyR3gCS6wMCenk5UmH/E15r7j5bCngWLAEqw==
X-Received: by 2002:a17:90a:cb96:: with SMTP id a22mr90731pju.96.1579636393538;
        Tue, 21 Jan 2020 11:53:13 -0800 (PST)
Received: from [192.168.1.72] (122-58-99-230-adsl.sparkbb.co.nz. [122.58.99.230])
        by smtp.gmail.com with ESMTPSA id e2sm44415543pfh.84.2020.01.21.11.53.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Jan 2020 11:53:12 -0800 (PST)
Cc:     mtk.manpages@gmail.com
Subject: Re: [PATCH] memcmp.3: note about optimization to bcmp in LLVM 9
To:     Shawn Landden <shawn@git.icu>, linux-man@vger.kernel.org
References: <20200111150216.5956-1-shawn@git.icu>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <59bec979-87f1-2184-2b48-42c2a5046e87@gmail.com>
Date:   Tue, 21 Jan 2020 20:53:09 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <20200111150216.5956-1-shawn@git.icu>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 1/11/20 4:02 PM, Shawn Landden wrote:
> ---
>  man3/memcmp.3 | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/man3/memcmp.3 b/man3/memcmp.3
> index 247eed223..6afca5ea4 100644
> --- a/man3/memcmp.3
> +++ b/man3/memcmp.3
> @@ -84,10 +84,17 @@ because the required CPU time depends on the number of equal bytes.
>  Instead, a function that performs comparisons in constant time is required.
>  Some operating systems provide such a function (e.g., NetBSD's
>  .BR consttime_memequal ()),
>  but no such function is specified in POSIX.
>  On Linux, it may be necessary to implement such a function oneself.
> +.PP
> +LLVM 9, released in 2019, and later will optimize a call
> +.BR memcmp ()
> +to a call to
> +.BR bcmp (3)
> +if the return value is only checked for equilivence to zero.
> +.\" http://releases.llvm.org/9.0.0/docs/ReleaseNotes.html#noteworthy-optimizations

See my othermail. Wht is it relevant to document this 
compiler-specific detail?

Thanks,

Michael

>  .SH SEE ALSO
>  .BR bcmp (3),
>  .BR bstring (3),
>  .BR strcasecmp (3),
>  .BR strcmp (3),
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
