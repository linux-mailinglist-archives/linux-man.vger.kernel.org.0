Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id DFC71169A45
	for <lists+linux-man@lfdr.de>; Sun, 23 Feb 2020 22:32:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726740AbgBWVcY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 23 Feb 2020 16:32:24 -0500
Received: from mail-wr1-f67.google.com ([209.85.221.67]:33123 "EHLO
        mail-wr1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726534AbgBWVcY (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 23 Feb 2020 16:32:24 -0500
Received: by mail-wr1-f67.google.com with SMTP id u6so8102418wrt.0
        for <linux-man@vger.kernel.org>; Sun, 23 Feb 2020 13:32:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=MnZv2VcgOMz8VVUmpdTkapIzpby/n9lDthSRYOYu73M=;
        b=Dj3K6aNVLkyM6BBBCZlPcLUny6m5qJefKBsuMWyrTqpOXJJ8sO68YUpbTFN3wqzggk
         bqqxyQV2s8bSOgy3gu2TxkNlnw95Wl0c3vhvJ0HNHF++ZUiGAVFxYA83gHfL22va6G56
         vC3jF879JZ6zmrg/oPxlbkefi5Ep4qJS7f4Scn42oGV/j2rQCIm/loV1GNkk2ot2gMZB
         vCBwdgioe0NFNFaOF+BU0ScGrkfyK9V2mE/DiYX4trUCBVW2+lSuk/gg/h/2QDwBjsml
         cVKRX73+gJBhDTLgYKFcXakOpWjLq0+nvRCL+jonpU8MP9gnlehdXIQE5A5geu5pt7O0
         v9dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=MnZv2VcgOMz8VVUmpdTkapIzpby/n9lDthSRYOYu73M=;
        b=jQ7HmmRqAjsCxssfQZ/qySkxz1bvqcs0fvnFf9B3r7heXXoIzIKd17BrCf9owl6bjJ
         xFqVjUa+IUHTMhbICOqBV97saaXi4XAQQQTDASg8u7bSjnYlzfINr22SKAFmj/aD+21T
         BKfTFI+LZupFIizxmj3s0+c8NCUxKByB3pEw8WYpe6XlbEkXH+JBgxTwf79MmIjoz56E
         rOCyM0V+tQFoXJKOelvxKJHkTW/Rar53kVbKdy8tB9+CyEMnBpCJBk94TaCzHgV+wrTZ
         EDCuzlcHgvFH9iHUIjM2DuZx+tHFmjDqVqT2x8sv0hALamjtcCwpTrr2BeSitYuSVv1w
         HxwQ==
X-Gm-Message-State: APjAAAX7LcCPChjiP2imP68/q/269AtLA7STNpHEj0Oxh5IwUtVA6CgJ
        SkJK+JKJINWq3d9Dr9uhQzSAGgue
X-Google-Smtp-Source: APXvYqwCmY5XMpCyk3xSzqkgpCaVtWSwI9ox/g/P9aiPDhiAPNpi+opv0WPpffIpSRvU8eftarL97Q==
X-Received: by 2002:adf:ec0d:: with SMTP id x13mr61976469wrn.400.1582493541132;
        Sun, 23 Feb 2020 13:32:21 -0800 (PST)
Received: from ?IPv6:2001:a61:3ab0:601:eabf:519f:11af:545d? ([2001:a61:3ab0:601:eabf:519f:11af:545d])
        by smtp.gmail.com with ESMTPSA id a13sm5221091wrv.62.2020.02.23.13.32.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 23 Feb 2020 13:32:20 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] strftime.3: refer to the relevant nl_langinfo items
To:     Eugene Syromyatnikov <evgsyr@gmail.com>
References: <cover.1581693624.git.evgsyr@gmail.com>
 <564214d230e0b42e93d938560ff61bb74c2c44b2.1581693625.git.evgsyr@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <3714573f-8133-b066-260d-f32e9da73740@gmail.com>
Date:   Sun, 23 Feb 2020 22:32:20 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <564214d230e0b42e93d938560ff61bb74c2c44b2.1581693625.git.evgsyr@gmail.com>
Content-Type: text/plain; charset=windows-1252
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Eugene,

On 2/14/20 4:29 PM, Eugene Syromyatnikov wrote:
> As it wasn't clear before where this kind of information can be
> obtained from.
> 
> * man3/strftime.3 (%a, %A, %b, %B, %c, %p, %r, %x, %X): Add information
> about the locale elements that can be used to retrieve the relevant
> information using nl_langinfo() library call.

Thanks. Patch applied.

Cheers,

Michael

> Signed-off-by: Eugene Syromyatnikov <evgsyr@gmail.com>
> ---
>  man3/strftime.3 | 65 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 65 insertions(+)
> 
> diff --git a/man3/strftime.3 b/man3/strftime.3
> index dd7dec7..20ba057 100644
> --- a/man3/strftime.3
> +++ b/man3/strftime.3
> @@ -89,24 +89,55 @@ structure are also shown.
>  The abbreviated name of the day of the week according to the current locale.
>  (Calculated from
>  .IR tm_wday .)
> +(The specific names used in the current locale can be obtained by calling
> +.BR nl_langinfo (3)
> +library call with
> +.BR ABDAY_ { 1 \(en 7 }
> +as an argument.)
>  .TP
>  .B %A
>  The full name of the day of the week according to the current locale.
>  (Calculated from
>  .IR tm_wday .)
> +(The specific names used in the current locale can be obtained by calling
> +.BR nl_langinfo (3)
> +library call with
> +.BR DAY_ { 1 \(en 7 }
> +as an argument.)
>  .TP
>  .B %b
>  The abbreviated month name according to the current locale.
>  (Calculated from
>  .IR tm_mon .)
> +(The specific names used in the current locale can be obtained by calling
> +.BR nl_langinfo (3)
> +library call with
> +.BR ABMON_ { 1 \(en 12 }
> +as an argument.)
>  .TP
>  .B %B
>  The full month name according to the current locale.
>  (Calculated from
>  .IR tm_mon .)
> +(The specific names used in the current locale can be obtained by calling
> +.BR nl_langinfo (3)
> +library call with
> +.BR MON_ { 1 \(en 12 }
> +as an argument.)
>  .TP
>  .B %c
>  The preferred date and time representation for the current locale.
> +(The specific format used in the current locale can be obtained by calling
> +.BR nl_langinfo (3)
> +library call with
> +.B D_T_FMT
> +as an argument for the
> +.B %c
> +conversion specification, and with
> +.B ERA_D_T_FMT
> +for the
> +.B %Ec
> +conversion specification.)
>  (In the POSIX locale this is equivalent to
>  .BR "%a %b %e %H:%M:%S %Y" .)
>  .TP
> @@ -230,6 +261,12 @@ corresponding strings for the current locale.
>  Noon is treated as "PM" and midnight as "AM".
>  (Calculated from
>  .IR tm_hour .)
> +(The specific string representations used for "AM" and "PM"
> +in the current locale can be obtained by calling
> +.BR nl_langinfo (3)
> +library call with
> +.BR AM_STR " and " PM_STR ,
> +respectively.)
>  .TP
>  .B %P
>  Like
> @@ -243,6 +280,11 @@ string for the current locale.
>  .B %r
>  The time in a.m. or p.m. notation.
>  (SU)
> +(The specific format used in the current locale can be obtained by calling
> +.BR nl_langinfo (3)
> +library call with
> +.B T_FMT_AMPM
> +as an argument.)
>  (In the POSIX locale this is equivalent to
>  .BR "%I:%M:%S %p" .)
>  .TP
> @@ -326,11 +368,33 @@ and
>  .TP
>  .B %x
>  The preferred date representation for the current locale without the time.
> +(The specific format used in the current locale can be obtained by calling
> +.BR nl_langinfo (3)
> +library call with
> +.B D_FMT
> +as an argument for the
> +.B %x
> +conversion specification, and with
> +.B ERA_D_FMT
> +for the
> +.B %Ex
> +conversion specification.)
>  (In the POSIX locale this is equivalent to
>  .BR %m/%d/%y .)
>  .TP
>  .B %X
>  The preferred time representation for the current locale without the date.
> +(The specific format used in the current locale can be obtained by calling
> +.BR nl_langinfo (3)
> +library call with
> +.B T_FMT
> +as an argument for the
> +.B %X
> +conversion specification, and with
> +.B ERA_T_FMT
> +for the
> +.B %EX
> +conversion specification.)
>  (In the POSIX locale this is equivalent to
>  .BR %H:%M:%S .)
>  .TP
> @@ -657,6 +721,7 @@ main(int argc, char *argv[])
>  .BR date (1),
>  .BR time (2),
>  .BR ctime (3),
> +.BR nl_langinfo (3),
>  .BR setlocale (3),
>  .BR sprintf (3),
>  .BR strptime (3)
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
