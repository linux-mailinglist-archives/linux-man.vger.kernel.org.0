Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 44FA549BA75
	for <lists+linux-man@lfdr.de>; Tue, 25 Jan 2022 18:36:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1346635AbiAYRfg (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 25 Jan 2022 12:35:36 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52554 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1356230AbiAYRen (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 25 Jan 2022 12:34:43 -0500
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 56312C06173E
        for <linux-man@vger.kernel.org>; Tue, 25 Jan 2022 09:34:39 -0800 (PST)
Received: by mail-wm1-x334.google.com with SMTP id o30-20020a05600c511e00b0034f4c3186f4so2119449wms.3
        for <linux-man@vger.kernel.org>; Tue, 25 Jan 2022 09:34:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=sdVkHQktSgUAcj2RQCzxoJeeacOzIhQBT+EZVi0xObw=;
        b=fi1nay9kzYtmZEBRUPkaDMMM1y95MWLI0FewR5QzYzm7kuhSs5C1JR8Leu7t465Vnr
         Wof05dhXWPQcPY8iiqRVqW1dRxyFjegd0F2c4qOHmJB0Op6apo3iqj0v6ebCbd5LXyy9
         Zah/TLT6g9GlOypMg6QYvYxZkQBIWP5LbxJ5lbDmWcf5wUCJO/4bOD4Cx8lKVCjkNDVD
         udbbupWwQjKqbjYgZmqXY2Z6TplhRQ/m0GcbpMmYs1NqJJU6ds7C76/L/SVR8VIqyrbu
         gbiNpOXg+FDg+6glEkfwsSa3AJPFy+Z5EnWHGVsQU/QBa31b4XrhCL27jFvkhP2ScOwU
         DkEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=sdVkHQktSgUAcj2RQCzxoJeeacOzIhQBT+EZVi0xObw=;
        b=vwOkQOSAo3iqamRXyN5ffC78f5Sn4SKKzyBMjJItIHSRjWIXuNgqbRC9/D0zOUeKNV
         Vb4WfcCKJ60cgKKlyDPebkXTyFComomgHd96XoPgpjaV/DrwT4L9qIDzGJzbHx2DKc/n
         AQ/MdnRvP9ZrzYX5DFO2Key7Q29t81xXTFn6WBrhW3EnqXzkOF6sRhMuK2luccTqoNY/
         dY7Quc+n6L8CJ6RaSuiX1cD6YFWqOkKdZlhGUfX8yMwodqwjZYDXwn89arl/wvjmbEYX
         3NIS5F0eW6V6HzBH01M6vlrUxZfoU8BJaKHOWQLoSFFRnV/Otc43lYq0FpAcbePMMecs
         +bwQ==
X-Gm-Message-State: AOAM530lobGQl79pKLfx5to/yBIovVhreShIXhS1INPSasqjgnqvWVrg
        4+sTov+TE6tX/l8VcPTYickXkqji/4c=
X-Google-Smtp-Source: ABdhPJyp4rg8OzMXO/yKi3TfPXyX14GR6kf2VSnJniwa6swAMzZXvqP86GZpQ0vDks47UGEtnC72rA==
X-Received: by 2002:a7b:c7d2:: with SMTP id z18mr3875788wmk.104.1643132077962;
        Tue, 25 Jan 2022 09:34:37 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id m5sm1003248wms.4.2022.01.25.09.34.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Jan 2022 09:34:37 -0800 (PST)
Message-ID: <40ef673e-66c5-85ce-cc6a-183e3ed7552d@gmail.com>
Date:   Tue, 25 Jan 2022 18:34:36 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH] termios.3: Clarify ONLRET
Content-Language: en-US
To:     Simon Branch <simonmbranch@gmail.com>, linux-man@vger.kernel.org
Cc:     mtk.manpages@gmail.com
References: <20220101225523.11689-1-simonmbranch@gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
In-Reply-To: <20220101225523.11689-1-simonmbranch@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Simon,

On 1/1/22 23:55, Simon Branch wrote:
> While perusing various termios(3) and termios(4) manpages, I noticed the
> following inconsistency for ONLRET.  FreeBSD and NetBSD say this:
> 
>    If ONLRET is set, the NL character is assumed to do the carriage-return
>    function; the column pointer will be set to 0.
> 
> OpenBSD says this:
> 
>    If ONLRET is set, NL also performs CR on output, and reset current column
>    to 0.
> 
> POSIX says this:
> 
>    NL performs CR function.
> 
> The current Linux manpage says this (!):
> 
>    Don't output CR.
> 
> Here's a snippet that demonstrates Linux's behavior (tl;dr it's just like the
> other operating systems):
> 
>    $ stty -icanon -onlcr -icrnl -echo onlret onocr; cat
>    this is some text			(^J pressed)
>                     and some more	(^M pressed before additional text)
> 
> The first flags (-icanon -onlcr -icrnl -echo), combined with cat, ensure that
> our keys are sent directly back to the terminal emulator without any translation
> or buffering.  The last two (ONLRET and ONOCR) are the important ones: ONLRET
> makes Linux think that the cursor is at column 0 after the ^J, and ONOCR makes
> Linux ignore the following ^M.
> 
> ---

Thanks for the patch!
I applied it, and signed it for you.

<http://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/commit/?id=958604aae25a096d2c28410633af04a8bd068a73>

Cheers,

Alex

>  man3/termios.3 | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/man3/termios.3 b/man3/termios.3
> index c11937458..20641f14d 100644
> --- a/man3/termios.3
> +++ b/man3/termios.3
> @@ -203,7 +203,9 @@ Map CR to NL on output.
>  Don't output CR at column 0.
>  .TP
>  .B ONLRET
> -Don't output CR.
> +The NL character is assumed to do the carriage-return function;
> +the kernel's idea of the current column is set to 0
> +after both NL and CR.
>  .TP
>  .B OFILL
>  Send fill characters for a delay, rather than using a timed delay.

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
