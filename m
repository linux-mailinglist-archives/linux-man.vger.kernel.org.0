Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id BE927169A42
	for <lists+linux-man@lfdr.de>; Sun, 23 Feb 2020 22:27:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726534AbgBWV1w (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 23 Feb 2020 16:27:52 -0500
Received: from mail-wr1-f67.google.com ([209.85.221.67]:34694 "EHLO
        mail-wr1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726302AbgBWV1w (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 23 Feb 2020 16:27:52 -0500
Received: by mail-wr1-f67.google.com with SMTP id n10so8101335wrm.1
        for <linux-man@vger.kernel.org>; Sun, 23 Feb 2020 13:27:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=68B0XP8x/UdMiNtmueTVAClQFkYAS3lzmwySHETMJHE=;
        b=Yol3DJwzoViy+S0xQ3zfd58N+2TgC0Vt9lel+mEYji1GYdPvn+iVaw72l6VXMZU721
         yCOjpC2ltE+CWe7pwN2LPlj2FXFK0JEUR9hOthqcV+LGjOjnBbJQbpOqzs/yyEwzLgUo
         waKz+g9SB6PtFm7RrOj7Se7PGbE5UKoBb3XMJMWWKDYDeby0GabZ4ZZ5CWlTYx06tTVP
         y1N4hc/d94bWhwULtjnrYM7JyKNg9xN5z9fMnTmJTmdBQqnvzspoKisqhDlpE5C5SrK9
         KzSdMYPpFeW/mqc6H1b395IUnytvyoV7Q8PKoPU8DPg0WcgKUEOyG505U5Rsws5G66mb
         IPUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=68B0XP8x/UdMiNtmueTVAClQFkYAS3lzmwySHETMJHE=;
        b=mZ2ET+rKEXf8cBOkKvHexGcTIGZEscPSkAfc96lh2ymHFRf/1B7lpRqeb6NeZssTXW
         QMNugImhrkdG2QoEMlPGDTyAGfA0fqhf698RrWUcY8bJYrsbxWIrmdT+cvS1QP6EnHc8
         mXUHPWidcEMsBwxsP4YavIETXMaTvwMSQ6sBn7elMK+z8/9zynRxcrfbKNQxP6PC4THL
         IQr5Ett4V5JAhq+lRJVImPZSIhbo+WZ0nSZne5Mgi2pABWYyGKHZ+EUV8v5lB6PRK85R
         X6EWpRdPfcyq99hI2m7WBG/Oh1h3I980hrXspDCRUUxaQTFzJXqLSDyA7md4KT+mk5S1
         +17A==
X-Gm-Message-State: APjAAAXwj29ws4z0Z+vsAr+0Vb/+zuuvhOh0gxkH5Hby2RHPVEy/IoVG
        3f+mAjc/c8E3K0kRywFnVQbwudb+
X-Google-Smtp-Source: APXvYqzfWoZgzdV0MF/3uJlJL92TJuGVs8Qa05UoZTChoeWD7gd6uZnap0SclmFOAh5909YVeb1TXQ==
X-Received: by 2002:a5d:610c:: with SMTP id v12mr59226113wrt.88.1582493269813;
        Sun, 23 Feb 2020 13:27:49 -0800 (PST)
Received: from ?IPv6:2001:a61:3ab0:601:eabf:519f:11af:545d? ([2001:a61:3ab0:601:eabf:519f:11af:545d])
        by smtp.gmail.com with ESMTPSA id b16sm14338556wmj.39.2020.02.23.13.27.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 23 Feb 2020 13:27:49 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] strftime.3: consistently document fall-back format string
To:     Eugene Syromyatnikov <evgsyr@gmail.com>
References: <cover.1581693624.git.evgsyr@gmail.com>
 <00f5f714c73adf931d1b331a7f3724e4a0683c18.1581693625.git.evgsyr@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <5237b3fd-e5a1-d2d1-8263-920bf11bd88b@gmail.com>
Date:   Sun, 23 Feb 2020 22:27:48 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <00f5f714c73adf931d1b331a7f3724e4a0683c18.1581693625.git.evgsyr@gmail.com>
Content-Type: text/plain; charset=windows-1252
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Eugene,

On 2/14/20 4:28 PM, Eugene Syromyatnikov wrote:
> The information is taken from POSIX[1] and the implementations[2][3][4].

Thanks. Patch applied.

Cheers,

Michael

> [1] https://pubs.opengroup.org/onlinepubs/9699919799/basedefs/V1_chap07.html#tag_07_03_05_03
> [2] https://sourceware.org/git/?p=glibc.git;a=blob;f=time/strftime_l.c
> [3] https://git.musl-libc.org/cgit/musl/tree/src/locale/langinfo.c#n15
> [4] https://git.uclibc.org/uClibc/tree/libc/misc/locale/locale.c#n992
> 
> * man3/strftime.3 (%c, %x, %X): Add information about fall-back format.
> (%r): Move it behind SU comment.
> 
> Signed-off-by: Eugene Syromyatnikov <evgsyr@gmail.com>
> ---
>  man3/strftime.3 | 10 ++++++++--
>  1 file changed, 8 insertions(+), 2 deletions(-)
> 
> diff --git a/man3/strftime.3 b/man3/strftime.3
> index 62b77bf..dd7dec7 100644
> --- a/man3/strftime.3
> +++ b/man3/strftime.3
> @@ -107,6 +107,8 @@ The full month name according to the current locale.
>  .TP
>  .B %c
>  The preferred date and time representation for the current locale.
> +(In the POSIX locale this is equivalent to
> +.BR "%a %b %e %H:%M:%S %Y" .)
>  .TP
>  .B %C
>  The century number (year/100) as a 2-digit integer. (SU)
> @@ -240,9 +242,9 @@ string for the current locale.
>  .TP
>  .B %r
>  The time in a.m. or p.m. notation.
> -In the POSIX locale this is equivalent to
> -.BR "%I:%M:%S %p" .
>  (SU)
> +(In the POSIX locale this is equivalent to
> +.BR "%I:%M:%S %p" .)
>  .TP
>  .B %R
>  The time in 24-hour notation
> @@ -324,9 +326,13 @@ and
>  .TP
>  .B %x
>  The preferred date representation for the current locale without the time.
> +(In the POSIX locale this is equivalent to
> +.BR %m/%d/%y .)
>  .TP
>  .B %X
>  The preferred time representation for the current locale without the date.
> +(In the POSIX locale this is equivalent to
> +.BR %H:%M:%S .)
>  .TP
>  .B %y
>  The year as a decimal number without a century (range 00 to 99).
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
