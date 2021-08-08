Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0BA083E3CE8
	for <lists+linux-man@lfdr.de>; Sun,  8 Aug 2021 23:32:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232521AbhHHVdH (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 8 Aug 2021 17:33:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43318 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231447AbhHHVdH (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 8 Aug 2021 17:33:07 -0400
Received: from mail-pj1-x1035.google.com (mail-pj1-x1035.google.com [IPv6:2607:f8b0:4864:20::1035])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2F471C061760
        for <linux-man@vger.kernel.org>; Sun,  8 Aug 2021 14:32:47 -0700 (PDT)
Received: by mail-pj1-x1035.google.com with SMTP id lw7-20020a17090b1807b029017881cc80b7so5331874pjb.3
        for <linux-man@vger.kernel.org>; Sun, 08 Aug 2021 14:32:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=8fVJnf3PeIrcf2rbx63iFXCYbtW543fprmK1S1gSoxQ=;
        b=uPe+SFdeC3pV2fRpVcC9BWqROCmo6I8WbsqwrDrKD+/2rvY2Is4Ug7cJq2igp5/wnR
         Sr+v07QF7EzIwlGBAZaBy6j6LtBUtrbWOA3TwAVDkNFe9dwf3T5uScitTO4Snw1UM0Ze
         93Jhj+pOXzuFoLq0rqhmXA0qRL7jCUINMl8GDVdUC6IKfJzuO/Or2JxfbGitav3D/Lhz
         C0UZly4rJ/8S08L3flG4L3R6lf2e2KW9Zf8F9XYvV7FchYKKjXU81nk5ktqqFoTvbF4b
         FpNn+fdID3aXNyKl/YoVtStyOvJ+QTsL+Imo1M4BXBY5FwnPXAd2Y4RSme3mSBx70uPv
         Vo/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=8fVJnf3PeIrcf2rbx63iFXCYbtW543fprmK1S1gSoxQ=;
        b=C7gRDjrHqmfHmObWu3wTsKatQuyJD20q9Iw8F5fv2OHsLcUyv4wKII36U7atm6jiKo
         zibDHQcpvML4J4cjbWa0emLeJfGfPfcdj6+rJzPH4ZfpsVv2haKNcPh71ojy4kjzFSa0
         8qR9N9ooRPZwEkM7MHAl0fvLruvN7+tHVPV/GbnaAbZhdQevwWdSoOtIgyQsJm8zXgFa
         dzJe8qNKmny1XLrHSdql9BU9AzqN1++ARIN0uaYOahIwX8GeMDGGQtCxGMLUNG8T6q19
         tmevs6213P0GXyDAsT8MwREkfxJr6BnjHTCU2BvFKGVNEBYgAdUoi14vAbXtCD7zNoI4
         c4ug==
X-Gm-Message-State: AOAM532I4y1R9/ohvHcUq9SfuItn/oCik3A4TLC2SlTkljPRrBUCE04d
        6ija6tTHB3H1S8Jao/eK7eGyIN7wARA=
X-Google-Smtp-Source: ABdhPJyJ48dR2E4UH2lmDUCpC7AY7yCL8lhc7ffMQJM7+Hdl57jm+6eClrqCHjAmf+EEU0403u+HMw==
X-Received: by 2002:a63:211c:: with SMTP id h28mr72219pgh.83.1628458366559;
        Sun, 08 Aug 2021 14:32:46 -0700 (PDT)
Received: from [192.168.1.71] (122-61-176-117-fibre.sparkbb.co.nz. [122.61.176.117])
        by smtp.gmail.com with ESMTPSA id u24sm14092685pfm.27.2021.08.08.14.32.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 08 Aug 2021 14:32:46 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH 29/32] sigaction.2: Apply minor tweaks to Peter's patch
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210728202008.3158-1-alx.manpages@gmail.com>
 <20210728202008.3158-30-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <1ba66b7e-299e-8f09-24b0-ad1dd5e6022e@gmail.com>
Date:   Sun, 8 Aug 2021 23:32:43 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210728202008.3158-30-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Dropped, because reposted in a later series from Alex.

On 7/28/21 10:20 PM, Alejandro Colomar wrote:
> - Move example program to a new EXAMPLES section
> - Invert logic in the handler to have the failure in the conditional path,
>   and the success in out of any conditionals.
> - Use NULL, EXIT_SUCCESS, and EXIT_FAILURE instead of magic numbers
> - Separate declarations from code
> - Put function return type on its own line
> - Put function opening brace on its line
> 
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
> ---
>  man2/sigaction.2 | 76 +++++++++++++++++++++++++++---------------------
>  1 file changed, 43 insertions(+), 33 deletions(-)
> 
> diff --git a/man2/sigaction.2 b/man2/sigaction.2
> index 4bf6f095e..18404dde1 100644
> --- a/man2/sigaction.2
> +++ b/man2/sigaction.2
> @@ -936,39 +936,6 @@ because they were introduced before Linux 5.11.
>  However, in general, programs may assume that these flags are supported,
>  since they have all been supported since Linux 2.6,
>  which was released in the year 2003.
> -.PP
> -The following example program exits with status 0 if
> -.B SA_EXPOSE_TAGBITS
> -is determined to be supported, and 1 otherwise.
> -.PP
> -.EX
> -#include <signal.h>
> -#include <stdio.h>
> -#include <unistd.h>
> -
> -void handler(int signo, siginfo_t *info, void *context) {
> -    struct sigaction oldact;
> -    if (sigaction(SIGSEGV, 0, &oldact) == 0 &&
> -        !(oldact.sa_flags & SA_UNSUPPORTED) &&
> -        (oldact.sa_flags & SA_EXPOSE_TAGBITS)) {
> -        _exit(0);
> -    } else {
> -        _exit(1);
> -    }
> -}
> -
> -int main(void) {
> -    struct sigaction act = {0};
> -    act.sa_flags = SA_SIGINFO | SA_UNSUPPORTED | SA_EXPOSE_TAGBITS;
> -    act.sa_sigaction = handler;
> -    if (sigaction(SIGSEGV, &act, 0) != 0) {
> -        perror("sigaction");
> -        return 1;
> -    }
> -
> -    raise(SIGSEGV);
> -}
> -.EE
>  .SH RETURN VALUE
>  .BR sigaction ()
>  returns 0 on success; on error, \-1 is returned, and
> @@ -1174,6 +1141,49 @@ This bug was fixed in kernel 2.6.14.
>  .SH EXAMPLES
>  See
>  .BR mprotect (2).
> +.PP
> +The following example program exits with status
> +.B EXIT_SUCCESS
> +if
> +.B SA_EXPOSE_TAGBITS
> +is determined to be supported, and
> +.B EXIT_FAILURE
> +otherwise.
> +.PP
> +.EX
> +#include <signal.h>
> +#include <stdlib.h>
> +#include <stdio.h>
> +#include <unistd.h>
> +
> +void
> +handler(int signo, siginfo_t *info, void *context)
> +{
> +    struct sigaction oldact;
> +
> +    if (sigaction(SIGSEGV, NULL, &oldact) != 0 ||
> +        (oldact.sa_flags & SA_UNSUPPORTED) ||
> +        !(oldact.sa_flags & SA_EXPOSE_TAGBITS)) {
> +        _exit(EXIT_FAILURE);
> +    }
> +    _exit(EXIT_SUCCESS);
> +}
> +
> +int
> +main(void)
> +{
> +    struct sigaction act = {0};
> +
> +    act.sa_flags = SA_SIGINFO | SA_UNSUPPORTED | SA_EXPOSE_TAGBITS;
> +    act.sa_sigaction = &handler;
> +    if (sigaction(SIGSEGV, &act, NULL) != 0) {
> +        perror("sigaction");
> +        exit(EXIT_FAILURE);
> +    }
> +
> +    raise(SIGSEGV);
> +}
> +.EE
>  .SH SEE ALSO
>  .BR kill (1),
>  .BR kill (2),
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
