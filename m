Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 6251D155ABA
	for <lists+linux-man@lfdr.de>; Fri,  7 Feb 2020 16:30:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726867AbgBGPaI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 7 Feb 2020 10:30:08 -0500
Received: from mail-wm1-f68.google.com ([209.85.128.68]:39940 "EHLO
        mail-wm1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726674AbgBGPaI (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 7 Feb 2020 10:30:08 -0500
Received: by mail-wm1-f68.google.com with SMTP id t14so3195934wmi.5
        for <linux-man@vger.kernel.org>; Fri, 07 Feb 2020 07:30:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=tp8KdnSaEs48cxBM/JosHgau62ciRb6awPQJR8WIPeY=;
        b=keo16fFLA8bdKkvHhDVJtFxLt3RiG97cw2+yt/wGr0IZORY0EkSSC5JNKqDLNiPl1J
         xCUhHYINT6kXoU77QturLLTHnwupYek7GKAckUWdZKXry5aLj4mv5o22qAN8bnBU32Q+
         jlkNvbVXq9uXhVBfWEAfuSsqNfiUurxTcriA94kK6FGOWsgqG2qjOaCtLosXhEeC2mUi
         0eMczkfA8wT+IUkDC5pn5P24dOmkeRuY0d5KHjIzUz4V2+WMCARsaE5XdSnWIxfGpEo4
         lhAsTIcSm/xZalrYy55HFj4JIO/24sDpX4iiGuTKk3MUXT8d23lBFxQCz+rPAbeTONcs
         EFHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=tp8KdnSaEs48cxBM/JosHgau62ciRb6awPQJR8WIPeY=;
        b=AX6mTx//Bx3+u0g9+GvZVPavmCjQGTGWazJ5BiKbTSciphzyqhyWmNVMqrTLrQjohy
         g/vDMig7rfMantrq4dng8LDPl6nP/UzUUK/S7yXKuhrKw6wn3kE7Qa/JvQ0Xl/KYVB0H
         UMZpTIJb21Xm5gPk3B8QvHvL9AjW0Saf9TrWrloG5XQqdrHFO0pNnTn//9HEEpDMPg9H
         Ki1IJ+14MQcrww0FHDWqpy0eSKgY1qzF+uc7XysyzFxXjWW8L/b1Zk/Cmf5sYia5yEiI
         kjhwXFRgymS6zn+Iyx3R7w74u6/+Ihn9fwu8eIJqCFAb+xynuMa4CD+CNuFLI0bRPBkc
         aeew==
X-Gm-Message-State: APjAAAUNabExW9y8ACOCAiTveV4wx4UodOyryRNnhj9oFrM0zBvWQbT1
        +EcovFQxeY3HcW06J1J4P/bCcla+3qg=
X-Google-Smtp-Source: APXvYqwD/8jJ0BnjjuZGvIAheJdFuP2P4Hnmop+RVH9genL4rSDa6NGtSfwEnBR9PYhMNAV2SyIo5w==
X-Received: by 2002:a7b:c392:: with SMTP id s18mr4880337wmj.169.1581089406236;
        Fri, 07 Feb 2020 07:30:06 -0800 (PST)
Received: from ?IPv6:2001:a61:251f:d701:c8c9:6ecf:205c:abb7? ([2001:a61:251f:d701:c8c9:6ecf:205c:abb7])
        by smtp.gmail.com with ESMTPSA id x14sm3634434wmj.42.2020.02.07.07.30.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 Feb 2020 07:30:05 -0800 (PST)
Cc:     mtk.manpages@gmail.com
Subject: Re: [PATCH 1/3] console_codes.4: \e[21m is now underline
To:     Adam Borowski <kilobyte@angband.pl>, linux-man@vger.kernel.org
References: <20190308194059.9560-1-kilobyte@angband.pl>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <d5bdf217-3614-7bf2-afb4-e8b2b400bb51@gmail.com>
Date:   Fri, 7 Feb 2020 16:30:05 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <20190308194059.9560-1-kilobyte@angband.pl>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Adam,

On 3/8/19 8:40 PM, Adam Borowski wrote:
> Since 65d9982d7 (4.17), it follows xterm rather than common sense and
> consistency, being the only command 1..9 where N+20 doesn't undo what
> N did.  As libvte 0.51.90 got changed the same way, this behaviour will
> probably stay.
> 
> Signed-off-by: Adam Borowski <kilobyte@angband.pl>

Thanks. Patch applied.

Cheers,

Michael

> ---
>  man4/console_codes.4 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man4/console_codes.4 b/man4/console_codes.4
> index 35f52fc64..d605b058d 100644
> --- a/man4/console_codes.4
> +++ b/man4/console_codes.4
> @@ -258,7 +258,7 @@ The toggle meta flag
>  causes the high bit of a byte to be toggled
>  before the mapping table translation is done.
>  T}
> -21	set normal intensity (ECMA-48 says "doubly underlined")
> +21	set underline (<4.17 and many other terminals set normal intensity)
>  22	set normal intensity
>  24	underline off
>  25	blink off
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
