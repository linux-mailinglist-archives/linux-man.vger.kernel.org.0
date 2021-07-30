Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EA9913DB806
	for <lists+linux-man@lfdr.de>; Fri, 30 Jul 2021 13:47:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238616AbhG3LrP (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 30 Jul 2021 07:47:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55900 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230353AbhG3LrO (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 30 Jul 2021 07:47:14 -0400
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BC4F6C061765
        for <linux-man@vger.kernel.org>; Fri, 30 Jul 2021 04:47:09 -0700 (PDT)
Received: by mail-wr1-x436.google.com with SMTP id b7so10963151wri.8
        for <linux-man@vger.kernel.org>; Fri, 30 Jul 2021 04:47:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=zu+j36tJzgwTv9S/PS0mcvRxLGYCGBDHoi6JUPrgB98=;
        b=GbutRE7cOdWvPKDXlk/XYKyvcllNfQJVyYarDpQXkG4a0VE4hBPcb5G7JO9nQsxySt
         ZKRJPddFRd3cjaZRIsUg56FP2X5CfUgBYHmUCvwmfWuMlPxxX2cSyc/aUZLRLsHPByV4
         Az1gN5EZAQceBlXNJ1Z4iOQR3wMxsc0yRbhrMbNGkiQr0ysQpyDPYuGLK17+mpRe18Re
         lNzoZ1ABLYRj8UiuNwXo2Cw/+Y0TPxi93BBsVoJ9dO/zryUHWAlOXL5i3TRODI1Szbpn
         Y45MLaxxKTl7V2BsmA3ZZc+XJ6pRfeBO3CF16ctKCwF0CrAUpkANztMA0I5PslSVERiM
         Wm+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=zu+j36tJzgwTv9S/PS0mcvRxLGYCGBDHoi6JUPrgB98=;
        b=F2zNWy8pbXQDY4cA6nc06aFy5S+iSxtY5Z5VJ66UfDi/36WKaZV/0lO3/z/LZ4beP5
         rD3Ny2Tz9sk0g7u1h8oQPYO3Akgwyu6GEv/48zEuVMqix+o4SIP09vzFUM+zI/4dx6gY
         DdFJQCeMmXX0tLAicSe4X/LhTZ3v7QQlmJYMcJ3ZAeU5e3tKO91//iQ0L9LBgBOmAMkr
         ITNyCILil2g4gTClyKOUTrCumFbJEeq07dtxwtKH98C3ENGEtcn/6SNBjfPk8tl7g3nd
         FgrKDusGjZWxSYRg/MdC4tFY6eoAauJEg5hRH4zkZ8c5fwTyvnLM4URCJQNRHzbWbIzY
         cgpA==
X-Gm-Message-State: AOAM533fAMJBnCQ+rq+00doQ4YzfmPUfsnRqzPkqd/nkL5ng/eE0sOLa
        ioaBhrkgttR+Zbr/5upV1y/JW17fD5o=
X-Google-Smtp-Source: ABdhPJwt1c9OSil3hWr8y87rahBeeTK96SmuIKxFKbOqTYNRrvZ7m/V9o497wiBAqRWKf5LtGzdJxg==
X-Received: by 2002:adf:ed50:: with SMTP id u16mr2612454wro.174.1627645628331;
        Fri, 30 Jul 2021 04:47:08 -0700 (PDT)
Received: from [10.8.0.10] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id e5sm1776292wrr.36.2021.07.30.04.47.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Jul 2021 04:47:07 -0700 (PDT)
Subject: Re: [PATCH] ioctl_tty.2: Add example how to get or set baudrate on
 the serial port
To:     =?UTF-8?Q?Pali_Roh=c3=a1r?= <pali@kernel.org>
Cc:     =?UTF-8?Q?Marek_Beh=c3=ban?= <kabel@kernel.org>,
        libc-alpha@sourceware.org,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org
References: <20210730095333.6118-1-pali@kernel.org>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <b8ef8f70-ae61-b0f1-58dc-37380ae242ee@gmail.com>
Date:   Fri, 30 Jul 2021 13:47:06 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210730095333.6118-1-pali@kernel.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Pali,

On 7/30/21 11:53 AM, Pali Rohár wrote:
> Signed-off-by: Pali Rohár <pali@kernel.org>

Thanks for the patch!

Please see some comments below.

Cheers,

Alex


> ---
>   man2/ioctl_tty.2 | 60 ++++++++++++++++++++++++++++++++++++++++++++++++
>   1 file changed, 60 insertions(+)
> 
> diff --git a/man2/ioctl_tty.2 b/man2/ioctl_tty.2
> index 0b0083c671a7..9d394572ae93 100644
> --- a/man2/ioctl_tty.2
> +++ b/man2/ioctl_tty.2
> @@ -750,6 +750,66 @@ main(void)
>       close(fd);
>   }
>   .EE
> +.PP
> +Get or set arbitrary baudrate on the serial port.
> +.PP
> +.EX
> +#include <stdio.h>
> +#include <stdlib.h>
> +#include <sys/types.h>
> +#include <fcntl.h>
> +#include <unistd.h>
> +#include <sys/ioctl.h>
> +#include <asm/termbits.h>

Unless there's a reason to use a specific include order (and if so, add 
a comment), please use alphabetical order.

> +
> +int
> +main(int argc, char *argv[])
> +{
> +#if !defined(TCGETS2) || !defined(TCSETS2) || !defined(BOTHER)
> +    fprintf(stderr, "TCGETS2, TCSETS2 or BOTHER is unsupported\\n");
> +    return 1;
> +#else

Do we want the program to compile if those are unsupported?

Maybe you can #error there and simplify the reader having to parse the 
preprocessor directive mentally:

#if !defined...
# error ...
#endif

I know it's non-standard, but I think it's common enough so that we can 
use it here.

> +    struct termios2 tio2;
> +    int fd, rc;
> +
> +    if (argc != 2 && argc != 3) {
> +        fprintf(stderr, "Usage: %s device [new_baudrate]\\n", argv[0]);

We use \e for printing the escape character.  Not \\
CC: Branden

See groff_man(7):
    Portability
        [...]

        Similar  caveats  apply  to escapes.  Some escape sequences
        are however required for correct typesetting  even  in  man
        pages and usually do not cause portability problems:

        [...]

        \e     Widely used in man pages to  represent  a  backslash
               output  glyph.  It works reliably as long as the .ec
               request is not used, which should  never  happen  in
               man pages, and it is slightly more portable than the
               more exact ‘\(rs’  (“reverse  solidus”)  escape  se‐
               quence.


> +        return 1;
> +    }
> +
> +    fd = open(argv[1], O_RDWR | O_NONBLOCK | O_NOCTTY);
> +    if (fd < 0) {
> +        perror("open");
> +        return 1;

exit(EXIT_FAILURE);

> +    }
> +
> +    rc = ioctl(fd, TCGETS2, &tio2);
> +    if (rc) {
> +        perror("TCGETS2");
> +        close(fd);
> +        return 1;

exit(3)

> +    }
> +
> +    printf("%u\\n", tio2.c_ospeed);

\e

> +
> +    if (argc == 3) {
> +        tio2.c_cflag &= ~CBAUD;
> +        tio2.c_cflag |= BOTHER;
> +        tio2.c_ospeed = tio2.c_ispeed = atoi(argv[2]);
> +
> +        rc = ioctl(fd, TCSETS2, &tio2);
> +        if (rc) {
> +            perror("TCSETS2");
> +            close(fd);
> +            return 1;

exit(3)

> +        }
> +    }
> +
> +    close(fd);
> +    return 0;

exit(3)

> +#endif
> +}
> +.EE
>   .SH SEE ALSO
>   .BR ldattach (1),
>   .BR ioctl (2),
> 


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
