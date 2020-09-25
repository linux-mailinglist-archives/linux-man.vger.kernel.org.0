Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AA74527855B
	for <lists+linux-man@lfdr.de>; Fri, 25 Sep 2020 12:47:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728069AbgIYKrJ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 25 Sep 2020 06:47:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47692 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727896AbgIYKrJ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 25 Sep 2020 06:47:09 -0400
Received: from mail-ej1-x642.google.com (mail-ej1-x642.google.com [IPv6:2a00:1450:4864:20::642])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E34B2C0613CE
        for <linux-man@vger.kernel.org>; Fri, 25 Sep 2020 03:47:08 -0700 (PDT)
Received: by mail-ej1-x642.google.com with SMTP id gx22so3003247ejb.5
        for <linux-man@vger.kernel.org>; Fri, 25 Sep 2020 03:47:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=yvy7nUnY4PloW3Tt0vYsYJwNnJhFsxSf82OyVchcG/4=;
        b=MogjJJot8bX6TE01pxqnrV+5q7PhNGpniHqHLoEZfnkQN9BDpbi53yKV1ImHZbpqz2
         TUumMVN99ixXmrB0ia5jcpf6t0rXvKWiEj8KwoBHtHQ2jOknm+SS2FT62UOA+CTl1ZV0
         l3PziwkdRluERxxDu0lP1B5lP2MM7YJ8G2ougGrB2e1rtvrq8ykg1EezYzF0zCh7WBcx
         if5fg3WPPkAeeKrllKsRPz3SB3mRXru5WPChzJRSj6Pd7MEvdO/zwzyON7QGOzVrCJLE
         hxf3DIv3ouIRgaIdeONFdb5rvJwgd4hCNiX81WiZD2AMciCcFmXclmInKj5Hg1dcHEGK
         zwig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=yvy7nUnY4PloW3Tt0vYsYJwNnJhFsxSf82OyVchcG/4=;
        b=LzpxkGEiTVNN8kTNzyIWV/hE0rRcsqvGXp0XjjSoPJ9zIkHKdNw1uHFvmSdlWP8+tb
         tpyU26xQLeSxjdwiddBvae0cLjaAwjJPWeFVNlg14AfqPIXECA7RV4WDAYGav3ALwlUp
         IyMbVYaN2+V3okKryZFkhW7THMbEu8mHGd04aq2mTC+AjNrk4t6UlNvesOsbDUo4rKr6
         Z7suklKA/vtnC7ojvJ6L+BWR/FMN7oyD61+/wX2N17eIKamGf407gDAbHcIaKFrFwSOh
         DmuMmppvAHlbjotFehH0EFtRIIysg7ffIIHL91L+UjFUij3na1erEw/D1QfPgGIgPpvs
         E71A==
X-Gm-Message-State: AOAM531HpRIqEtLbnT1ieFFYlxrvLJTmIBOgDi+CHVskUR9VFGw1cMbH
        YiO7ycAOBAmst96KVXTdRjw=
X-Google-Smtp-Source: ABdhPJxc737wZHjoAPTx1S3MYM1W6Oh1CWEI2lnz5mKT5Prno3BUGz1dSIeNEYPhENv1I07CWTH9VA==
X-Received: by 2002:a17:906:f897:: with SMTP id lg23mr2225835ejb.89.1601030827562;
        Fri, 25 Sep 2020 03:47:07 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id p20sm1595858eja.18.2020.09.25.03.47.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Sep 2020 03:47:06 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, libc-alpha@sourceware.org,
        Carlos O'Donell <carlos@redhat.com>
Subject: Re: [PATCH] rtld-audit.7: Clarify la_version handshake
To:     Florian Weimer <fweimer@redhat.com>, linux-man@vger.kernel.org
References: <87k0wifdi2.fsf@oldenburg2.str.redhat.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <299e6651-fa82-8350-f36f-e578e8180859@gmail.com>
Date:   Fri, 25 Sep 2020 12:47:06 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <87k0wifdi2.fsf@oldenburg2.str.redhat.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 9/25/20 10:48 AM, Florian Weimer wrote:
> Returning its argument without further checks is almost always
> wrong for la_version.
> 
> Signed-off-by: Florian Weimer <fweimer@redhat.com>

Hello Florian,

I've applied this patch locally. I'll merge into master
in a few hours. Perhaps in the meantime there are acks/reviews
that come in.

Cheers,

Michael

> ---
>  man7/rtld-audit.7 | 36 +++++++++++++++++++++++++-----------
>  1 file changed, 25 insertions(+), 11 deletions(-)
> 
> diff --git a/man7/rtld-audit.7 b/man7/rtld-audit.7
> index b1b7dfebc..21cc339d0 100644
> --- a/man7/rtld-audit.7
> +++ b/man7/rtld-audit.7
> @@ -70,17 +70,30 @@ the auditing library.
>  When invoking this function, the dynamic linker passes, in
>  .IR version ,
>  the highest version of the auditing interface that the linker supports.
> -If necessary, the auditing library can check that this version
> -is sufficient for its requirements.
>  .PP
> -As its function result,
> -this function should return the version of the auditing interface
> -that this auditing library expects to use (returning
> +A typical implementation of this function simply returns the constant
> +.BR LAV_CURRENT ,
> +which indicates the version of
> +.I <link.h>
> +that was used to build the audit module.  If the dynamic linker does
> +not support this version of the audit interface, it will refuse to
> +activate this audit module.  If the function returns zero, the dynamic
> +linker also does not activate this audit module.
> +.PP
> +In order to enable backwards compatibility with older dynamic linkers,
> +an audit module can examine the
> +.I version
> +argument and return an earlier version than
> +.BR LAV_CURRENT ,
> +assuming the module can adjust its implementation to match the
> +requirements of the previous version of the audit interface.  The
> +.B la_version
> +function should not return the value of
>  .I version
> -is acceptable).
> -If the returned value is 0,
> -or a version that is greater than that supported by the dynamic linker,
> -then the audit library is ignored.
> +without further checks because it could correspond to an interface
> +that does not match the
> +.I <link.h>
> +definitions used to build the audit module.
>  .SS la_objsearch()
>  \&
>  .nf
> @@ -508,9 +521,10 @@ This is reportedly fixed in glibc 2.10.
>  unsigned int
>  la_version(unsigned int version)
>  {
> -    printf("la_version(): %u\en", version);
> +    printf("la_version(): version = %u; LAV_CURRENT = %u\en",
> +            version, LAV_CURRENT);
>  
> -    return version;
> +    return LAV_CURRENT;
>  }
>  
>  char *
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
