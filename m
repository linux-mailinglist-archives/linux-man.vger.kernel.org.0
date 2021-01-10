Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 672F82F05EC
	for <lists+linux-man@lfdr.de>; Sun, 10 Jan 2021 09:20:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725923AbhAJIT6 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 10 Jan 2021 03:19:58 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47186 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725820AbhAJIT6 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 10 Jan 2021 03:19:58 -0500
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com [IPv6:2a00:1450:4864:20::534])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8BA36C061786
        for <linux-man@vger.kernel.org>; Sun, 10 Jan 2021 00:19:17 -0800 (PST)
Received: by mail-ed1-x534.google.com with SMTP id u19so15645319edx.2
        for <linux-man@vger.kernel.org>; Sun, 10 Jan 2021 00:19:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=TixBGChSba/HSSHbBr4AvaSWEWy1LsD7obi+efVmqT0=;
        b=PBidTFqiJoE+KBaWkRT6zOe9TSVPOrLfpLqY/OxE3PAZufxyJMuaBdkpx0yVR6oAWv
         as5cn4sSocDuCMp8BiuSYouVl4Dj5rnO7m7yme8JqEZ0XPwMkvXwcrOQ449M7G3mbQHA
         eYKEnqfh7mXJ/uGvjULbxtvSePlKJCD+U9VSCq4MSxeuZ6p+ZHg0VX27zt1/+M1pJv7J
         QTMWChrqb+VtF1TVc6UHPBsGAVpqlmMVXpw6QJ9V0jTKWmRCXTmTkSnLP3EpnrUZ3nwE
         PNQ98GW9Erd+1MM9JwOm1hosxiH55EyXu6nYOPOaAFas3VxvdK0baJchn8g3H7Q9WlHm
         6WMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=TixBGChSba/HSSHbBr4AvaSWEWy1LsD7obi+efVmqT0=;
        b=EM9XUQbKLdDt+x0yE3mn9Nm4P0i5rH/R6AtOA4YjwNSsnzqT3QzeCb87wuG7L1YMCE
         XmfLTpADtsE5u7KBJSrAMGUMRqjpG2oPR60eTRtQ3gG9j1diu/SxH9+69zizj/e251c+
         TvWpIDyAzsEwrtSQdI46IOPh6CIS9VRW5y0gyLTgB2/DKwhN/F3ot92xiOWfOe12TzNN
         YLoRp4R/Jb1qZBbLtBsVLdc29TetX4a7l/dhxAXdmeZkaW3iLPpIL1xlVTe0hJm7qjEV
         Fzrc1qCWE+MTkvaGvcbk3Z9ScSa5OuwBdX8vV+LjgTgmZDgN/8gQ9HNvungVggbFZoJg
         cLsA==
X-Gm-Message-State: AOAM530FQYer3bn1Qz/IICAGDJbbZLAjg6Nb/TQdJT7S/rKQLjr9lgfJ
        km2zbQwPzb8TdS4vmBHmSzQ=
X-Google-Smtp-Source: ABdhPJx/gPwhSTzkb8Zv5bJ5tOKNmpi6G9FX/G6xiS4tc0kBWrI3Tw5CcmCoxedm6Ipn3saKnzpm3A==
X-Received: by 2002:aa7:d407:: with SMTP id z7mr11259649edq.234.1610266756192;
        Sun, 10 Jan 2021 00:19:16 -0800 (PST)
Received: from ?IPv6:2001:a61:244d:fe01:9fb1:d962:461a:45e8? ([2001:a61:244d:fe01:9fb1:d962:461a:45e8])
        by smtp.gmail.com with ESMTPSA id rk12sm5453397ejb.75.2021.01.10.00.19.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 10 Jan 2021 00:19:15 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        bugzilla-daemon@bugzilla.kernel.org, libc-alpha@sourceware.org
Subject: Re: [PATCH, BUG 211039] malloc.3: Document that realloc(p, 0) is
 specific to glibc and nonportable
To:     Alejandro Colomar <alx.manpages@gmail.com>,
        Johannes Pfister <johannes.pfister@josttech.ch>
References: <20210109211505.76000-1-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <aba59c14-907a-d681-7ff8-b0b76a08a483@gmail.com>
Date:   Sun, 10 Jan 2021 09:19:14 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <20210109211505.76000-1-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi ALex,

On 1/9/21 10:15 PM, Alejandro Colomar wrote:
> A more detailed notice is on realloc(3p).
> 
> ......
> 
> $ man 3p realloc \
>   |sed -n \
>      -e '/APPLICATION USAGE/,/^$/p' \
>      -e '/FUTURE DIRECTIONS/,/^$/p';
> APPLICATION USAGE
>        The description of realloc() has been modified from  pre‐
>        vious  versions  of  this  standard  to  align  with  the
>        ISO/IEC 9899:1999 standard. Previous versions  explicitly
>        permitted  a  call  to  realloc(p,  0)  to free the space
>        pointed to by p and return a null pointer. While this be‐
>        havior  could be interpreted as permitted by this version
>        of the standard, the C language committee have  indicated
>        that   this  interpretation  is  incorrect.  Applications
>        should assume that if realloc() returns a  null  pointer,
>        the  space pointed to by p has not been freed. Since this
>        could lead to double-frees, implementations  should  also
>        set errno if a null pointer actually indicates a failure,
>        and applications should only free the space if errno  was
>        changed.
> 
> FUTURE DIRECTIONS
>        This  standard  defers  to the ISO C standard. While that
>        standard currently has language that might  permit  real‐
>        loc(p, 0), where p is not a null pointer, to free p while
>        still returning a null pointer, the committee responsible
>        for  that standard is considering clarifying the language
>        to explicitly prohibit that alternative.
> 
> Bug: 211039 <https://bugzilla.kernel.org/show_bug.cgi?id=211039>
> Reported-by: Johannes Pfister <johannes.pfister@josttech.ch>
> Cc: libc-alpha@sourceware.org
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

Thanks. Patch applied.

Cheers,

Michael

> ---
> 
> Hi Johannes, Michael,
> 
> Thanks for the report, Johannes!
> Please review that your name is correct (I guessed it from the email).
> 
> Michael, please review the wording.
> 
> Thanks,
> 
> Alex
> 
>  man3/malloc.3 | 18 +++++++++++++++++-
>  1 file changed, 17 insertions(+), 1 deletion(-)
> 
> diff --git a/man3/malloc.3 b/man3/malloc.3
> index d8b4da62f..467e2438a 100644
> --- a/man3/malloc.3
> +++ b/man3/malloc.3
> @@ -149,7 +149,8 @@ is equal to zero,
>  and
>  .I ptr
>  is not NULL, then the call is equivalent to
> -.IR free(ptr) .
> +.I free(ptr)
> +(this behavior is nonportable; see NOTES).
>  Unless
>  .I ptr
>  is NULL, it must have been returned by an earlier call to
> @@ -375,6 +376,21 @@ The
>  implementation is tunable via environment variables; see
>  .BR mallopt (3)
>  for details.
> +.SS Nonportable behavior
> +The behavior of
> +.BR realloc ()
> +when
> +.I size
> +is equal to zero,
> +and
> +.I ptr
> +is not NULL,
> +is glibc specific;
> +other implementations may return NULL, and set
> +.IR errno .
> +Portable POSIX programs should avoid it.
> +See
> +.BR realloc (3p).
>  .SH SEE ALSO
>  .\" http://g.oswego.edu/dl/html/malloc.html
>  .\" A Memory Allocator - by Doug Lea
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
