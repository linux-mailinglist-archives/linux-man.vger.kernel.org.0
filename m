Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 1DA3F169A53
	for <lists+linux-man@lfdr.de>; Sun, 23 Feb 2020 22:43:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726678AbgBWVnP (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 23 Feb 2020 16:43:15 -0500
Received: from mail-wr1-f65.google.com ([209.85.221.65]:40113 "EHLO
        mail-wr1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726302AbgBWVnP (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 23 Feb 2020 16:43:15 -0500
Received: by mail-wr1-f65.google.com with SMTP id t3so8076251wru.7
        for <linux-man@vger.kernel.org>; Sun, 23 Feb 2020 13:43:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=H5vbtWA9LSZ4K46cNLgBH6K7yfmAtZMw2SBNPVqlsZk=;
        b=bVbVdweZu81VMarLny+o2d9kIygQa12StH9OPJ7Wc9UsMnvzVrV57vTF5XsOumWxLf
         75grLDDhhUOYQHGDy76zeRq206TXC97GQzauC66cI+3uGFnKnCXiFmCwppZjoq5fO1r2
         CyAq33bo1UN9l2EUSKEHK6kOe3E1QaGOBcmxAtSLjZSZvwtxrvnAUrdwWpZkMTJKyBLk
         rTi3zAwWE9g00VwuJQ8CamtgzRC57y+TPSdfnl/JoeB1lwUiQ2QJVgIRnORBXGZWjpFd
         8Px46m7EYXIzqIgEkRinH5XOo0fnY1D9XVH2Tu6DCkI5mieFpQycqiHiIWEwD57JtyV7
         d8Xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=H5vbtWA9LSZ4K46cNLgBH6K7yfmAtZMw2SBNPVqlsZk=;
        b=Yh4kg4p7Zs3pk5u31o93ambZkfNLLlU88yDLjXcDBE55ksL0LuI4xwWR0wEXz7ElK6
         vDTlnpPW+zB4z2yDE3NTmde2f0aqMP2jetouIQ0P7wbj2lA8yp79H379o8WhXtPnuoqd
         JIQ9S5Wg2lAS3B+mMxvW+0dFyawfJPyZZPq5YjUoAHC6J5Rhez0nz17Toz19JlHG8NWY
         eVryxzLq9WPRyAmhBV1x6SF19SjkmYER3MrKj5IoP0O2vJ4N5LuItItwEy6PkY6nTA2G
         7wuKRcc4Ocw882l1F4OtAKNGpjISUD79YXzbo1JJbmNdQkT/drmwLOz3j1NCrExOA0QK
         TzgQ==
X-Gm-Message-State: APjAAAXHx2rBxHYZAsy2PownmoHVhkuHGtJcLQZaDBXdW5RkE7OaaOU2
        CnD4RdiGqTNJsaa4E3GhwGoimAng
X-Google-Smtp-Source: APXvYqwsYJixSU9gMfn0EQi+e+kKjDn9oILCZyJ+FQYqfKkZNTDdBHLoRve94yQRikBErDRqTdD6AA==
X-Received: by 2002:a5d:534b:: with SMTP id t11mr61683596wrv.120.1582494193890;
        Sun, 23 Feb 2020 13:43:13 -0800 (PST)
Received: from ?IPv6:2001:a61:3ab0:601:eabf:519f:11af:545d? ([2001:a61:3ab0:601:eabf:519f:11af:545d])
        by smtp.gmail.com with ESMTPSA id k7sm14980070wmi.19.2020.02.23.13.43.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 23 Feb 2020 13:43:13 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] strftime.3: expand %E and %O description
To:     Eugene Syromyatnikov <evgsyr@gmail.com>
References: <cover.1581693624.git.evgsyr@gmail.com>
 <f33bd2ea6821cdc89d1f6aa798641137d9ce62e0.1581693625.git.evgsyr@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <a5c52866-7169-d52b-21cb-a9236f407410@gmail.com>
Date:   Sun, 23 Feb 2020 22:43:12 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <f33bd2ea6821cdc89d1f6aa798641137d9ce62e0.1581693625.git.evgsyr@gmail.com>
Content-Type: text/plain; charset=windows-1252
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Eugene,

On 2/14/20 4:29 PM, Eugene Syromyatnikov wrote:
> * man3/strftime.3 (%C): Descibe the meaning of %EC conversion
> specification.
> (%E): Mention the concept of "era" in description.
> (%O): Mention that alternative format is related to numeric
> representation.
> (%y): Describe the meaning of %Ey conversion specification.
> (%Y): Describe the meaning of %EY conversion specification.
> (.SH DESCRIPTION): Mention that the behaviour of %E modifier is governed
> by ERA locale element and provide ja_JP locale as an example.
> 
> Signed-off-by: Eugene Syromyatnikov <evgsyr@gmail.com>

Thanks! Patch applied.

Cheers,

Michael

> ---
>  man3/strftime.3 | 29 ++++++++++++++++++++++++++---
>  1 file changed, 26 insertions(+), 3 deletions(-)
> 
> diff --git a/man3/strftime.3 b/man3/strftime.3
> index 20ba057..bdbea68 100644
> --- a/man3/strftime.3
> +++ b/man3/strftime.3
> @@ -143,6 +143,9 @@ conversion specification.)
>  .TP
>  .B %C
>  The century number (year/100) as a 2-digit integer. (SU)
> +(The
> +.B %EC
> +conversion specification corresponds to the name of the era.)
>  (Calculated from
>  .IR tm_year .)
>  .TP
> @@ -170,7 +173,7 @@ zero is replaced by a space. (SU)
>  .IR tm_mday .)
>  .TP
>  .B %E
> -Modifier: use alternative format, see below. (SU)
> +Modifier: use alternative ("era-based") format, see below. (SU)
>  .TP
>  .B %F
>  Equivalent to
> @@ -253,7 +256,7 @@ The minute as a decimal number (range 00 to 59).
>  A newline character. (SU)
>  .TP
>  .B %O
> -Modifier: use alternative format, see below. (SU)
> +Modifier: use alternative numeric symbols, see below. (SU)
>  .TP
>  .B %p
>  Either "AM" or "PM" according to the given time value, or the
> @@ -400,11 +403,20 @@ conversion specification.)
>  .TP
>  .B %y
>  The year as a decimal number without a century (range 00 to 99).
> +(The
> +.B %Ey
> +conversion specification corresponds to the year since the beginning of the era
> +denoted by
> +.B %EC
> +conversion specification.)
>  (Calculated from
>  .IR tm_year )
>  .TP
>  .B %Y
>  The year as a decimal number including the century.
> +(The
> +.B %EY
> +conversion specification corresponds to the full alternative year representation.)
>  (Calculated from
>  .IR tm_year )
>  .TP
> @@ -463,7 +475,18 @@ where the effect of the
>  .B O
>  modifier is to use
>  alternative numeric symbols (say, roman numerals), and that of the
> -E modifier is to use a locale-dependent alternative representation.
> +.B E
> +modifier is to use a locale-dependent alternative representation.
> +The rules governing date representation with the
> +.B E
> +modifier can be obtained by supplying
> +.B ERA
> +as an argument to a
> +.BR nl_langinfo (3)
> +library call.
> +One example of such alternative forms is Japanese era calendar scheme in the
> +.B ja_JP
> +glibc locale.
>  .SH RETURN VALUE
>  Provided that the result string,
>  including the terminating null byte, does not exceed
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
