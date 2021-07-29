Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 06F823DA1DA
	for <lists+linux-man@lfdr.de>; Thu, 29 Jul 2021 13:14:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236297AbhG2LOl (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 29 Jul 2021 07:14:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41986 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232195AbhG2LOl (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 29 Jul 2021 07:14:41 -0400
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8AF50C061765
        for <linux-man@vger.kernel.org>; Thu, 29 Jul 2021 04:14:37 -0700 (PDT)
Received: by mail-wr1-x42a.google.com with SMTP id h14so6420072wrx.10
        for <linux-man@vger.kernel.org>; Thu, 29 Jul 2021 04:14:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=Nlo4NDAfg+itJE3BXDIfKdPIQEi5TqYIt58m7f2SxDk=;
        b=fQbhQLU4UIyxRpc1M002zp1Y6WFbgFVMTbNSfRXJs2Hqp9s2yek0qbPaMGRTwsTeU4
         R03qDwHzhZa2shxWC5zw9cGiJ+T6TtJNtNKN5dkf/OSpB8qrZK8Kufls/p2KeZxOlBQb
         uKyQfw5ii7lPChsfzJGjO1Uox7N2jges1fW/e8Nfx7lAAOu0v56JA9QN8yWuCMfoKsyX
         qL9f+D93hZgDaAFMyDuXLRryZFpOVQe9FWrm9wCF+/Pxp/9pQDo77JZA5TJzvTxGMoOe
         ING8PlMDtAwhQyLVl1W8n2GlxcGdnddZYi9GZOM/NUsn1+9Ti7nWmnShoi4Dcb7CD9wi
         VVAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Nlo4NDAfg+itJE3BXDIfKdPIQEi5TqYIt58m7f2SxDk=;
        b=khffmoH5X0vR1fbhj+dh08jDOyOCTDVFDeao9OJvhCXxxTWCsQTxNTpD4wHXaYLqly
         c1mGZQN6WkF0yFoClfyylTYjM1fe3l5sjKZLejRymjIfuxIWQnra40PHnRD0Hd+HDwhq
         FT7xV4WqmpPuCGDJO7b8noZGEzBR9X0+0K8Yw905QWOpS6CTbakyPcvaVnZFJAXyyQKU
         pY5rKvKYHTECyzgsuypfOpd6Tr3J1YavetVQrDc6aEw3WC0tmA6iApcDMr6ju1pAiIyr
         34jY3+iKgYcy/jHf+bozZFcDAmE7peMqqhcZoqrgvu4cPQ3DQTN33JKdUMmjqNYSomeZ
         UDPw==
X-Gm-Message-State: AOAM530KqDS6lnzGpWDRKydxATtHw0Ak9QrEW4ONY8tuYHChFJ2Q7BVF
        fNdQjVrjKKKPW/YtyvWeFlU=
X-Google-Smtp-Source: ABdhPJwpkFuuAqJ4aICewjD540AFMPZWclwmkMK2xWvbe78SUyVdGOIph23wL0fJ0o5Zv8sCQRhf/w==
X-Received: by 2002:a5d:45c5:: with SMTP id b5mr4285466wrs.32.1627557276152;
        Thu, 29 Jul 2021 04:14:36 -0700 (PDT)
Received: from [10.8.0.150] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id m20sm2725729wms.3.2021.07.29.04.14.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Jul 2021 04:14:35 -0700 (PDT)
Subject: Re: [PATCH 29/32] sigaction.2: Apply minor tweaks to Peter's patch
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, Peter Collingbourne <pcc@google.com>
References: <20210728202008.3158-1-alx.manpages@gmail.com>
 <20210728202008.3158-30-alx.manpages@gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <d3760be4-86e9-b03a-f55c-357122e471a1@gmail.com>
Date:   Thu, 29 Jul 2021 13:14:34 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210728202008.3158-30-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 7/28/21 10:20 PM, Alejandro Colomar wrote:
> - Move example program to a new EXAMPLES section
> - Invert logic in the handler to have the failure in the conditional path,
>    and the success in out of any conditionals.
> - Use NULL, EXIT_SUCCESS, and EXIT_FAILURE instead of magic numbers
> - Separate declarations from code
> - Put function return type on its own line
> - Put function opening brace on its line
> 
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

I forgot to CC Peter here.

> ---
>   man2/sigaction.2 | 76 +++++++++++++++++++++++++++---------------------
>   1 file changed, 43 insertions(+), 33 deletions(-)
> 
> diff --git a/man2/sigaction.2 b/man2/sigaction.2
> index 4bf6f095e..18404dde1 100644
> --- a/man2/sigaction.2
> +++ b/man2/sigaction.2
> @@ -936,39 +936,6 @@ because they were introduced before Linux 5.11.
>   However, in general, programs may assume that these flags are supported,
>   since they have all been supported since Linux 2.6,
>   which was released in the year 2003.
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
>   .SH RETURN VALUE
>   .BR sigaction ()
>   returns 0 on success; on error, \-1 is returned, and
> @@ -1174,6 +1141,49 @@ This bug was fixed in kernel 2.6.14.
>   .SH EXAMPLES
>   See
>   .BR mprotect (2).
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
>   .SH SEE ALSO
>   .BR kill (1),
>   .BR kill (2),
> 


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
