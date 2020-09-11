Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F242A265A7B
	for <lists+linux-man@lfdr.de>; Fri, 11 Sep 2020 09:24:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725468AbgIKHYz (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 11 Sep 2020 03:24:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43868 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725792AbgIKHYt (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 11 Sep 2020 03:24:49 -0400
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 64E50C061573;
        Fri, 11 Sep 2020 00:24:49 -0700 (PDT)
Received: by mail-wr1-x444.google.com with SMTP id a17so10413805wrn.6;
        Fri, 11 Sep 2020 00:24:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=NmBNH8hRQYjTI1ofR4EhVv+sfyRMCuK+r0fsinWUPrc=;
        b=P3LKLf2u5BwvfB3TeHEkau8iFL8hxkHQKfbu0orIo5R9Dz6S4hETvgODwe7mJXGMUT
         ZtufnGS/ZG1Y8aoj/1t5JnbOgdvb7oczi10/EXDNtqVRcNKL1ta2zD+kF7jMDl6lfUm7
         6Cw9nuc59Z/5LUYbiQupCKjsj3M+yJNhScRGPBg6tJDhVsGuJwcYGeaEdWfqNO9NBKZb
         mdgiTpNKh1S470qEarBwJdC+j0rEbnjxGlbIG0nQ+nRIxUR1I7GPlEI7rWC+2DDM0kb4
         bX0yNqXi5J8cKkmLo3xSAbT45QbhbfGYTWwg6nIclcVZM0HWTQsW5LEkt4ltTzMk938n
         8+FQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=NmBNH8hRQYjTI1ofR4EhVv+sfyRMCuK+r0fsinWUPrc=;
        b=q2T8HuomUdiWY+bddrOETHaIRQgS2vs7TxshA7ijaOpXOLi97HC1tT68tHptekh2xM
         Vti4uQFvJicy8j9SapmYXPbOI03VdEMJDfc7NSZRqD+7ZYRp2K1Z+YtrWtgmbTUdDWE/
         JEDv/zRi3oFa+eq7OeZLtOoWRwosmTL5cjnE4DW6aECXLwrCx9dN9WC3F8MBbfLy95oz
         EKLZCEbH1xfyprp/X0TfR1W4nKQlyb0sRVMGmo9Sp9Gsn2xCrm35PW72BzjbkksVzoYX
         YeUCr7k8MtRaPnEhDSJ9Bcjh6y/LIxiqaT0OShvVktsYhctLR9jQgtBZh/2FLQzlr281
         Ua8Q==
X-Gm-Message-State: AOAM5325E4ZGV7qFWmq9bXfmtdhB7EZhGdFJ0NRyrO7o5babstbAjSx2
        MMU5/xY7I5myWHB1/eYBtbpN4Yd7RxE=
X-Google-Smtp-Source: ABdhPJzKcdm36ey/cD6DfXFnyFTjQHYzOfuECC6gWNXRVn3He0gmZX/NtgpVYPOe/gxOcaL+FXwOqg==
X-Received: by 2002:a5d:4a0c:: with SMTP id m12mr620992wrq.83.1599809087859;
        Fri, 11 Sep 2020 00:24:47 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id h204sm2469147wmf.35.2020.09.11.00.24.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Sep 2020 00:24:47 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 10/24] ioctl_ns.2: Remove unneeded cast
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20200910211344.3562-1-colomar.6.4.3@gmail.com>
 <20200910211344.3562-11-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <e17f617a-4ba2-8788-20fa-7c2596d67ec6@gmail.com>
Date:   Fri, 11 Sep 2020 09:24:44 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200910211344.3562-11-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 9/10/20 11:13 PM, Alejandro Colomar wrote:
> Both major(3) and minor(3) return an 'unsigned int',
> so there is no need to use a 'long' for printing.
> Moreover, it should have been 'unsigned long',
> as "%lx" expects an unsigned type.

This may be true on Linux, but is not true on other systems.
For example, on HP-UX, according to one header file I'm 
looking at, the return value is 'long'.

These kinds of casts are intended to improve code portability
across UNIX implementations, so I think they should stay
(although, I do wonder if they would be even better as casts 
to 'unsigned long')

Thanks,

Michael


> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
> ---
>  man2/ioctl_ns.2 | 10 ++++------
>  1 file changed, 4 insertions(+), 6 deletions(-)
> 
> diff --git a/man2/ioctl_ns.2 b/man2/ioctl_ns.2
> index 818dde32c..bf832a2c7 100644
> --- a/man2/ioctl_ns.2
> +++ b/man2/ioctl_ns.2
> @@ -316,9 +316,8 @@ main(int argc, char *argv[])
>              exit(EXIT_FAILURE);
>          }
>          printf("Device/Inode of owning user namespace is: "
> -                "[%lx,%lx] / %ld\en",
> -                (long) major(sb.st_dev), (long) minor(sb.st_dev),
> -                (long) sb.st_ino);
> +                "[%x,%x] / %ld\en",
> +                major(sb.st_dev), minor(sb.st_dev), (long) sb.st_ino);
>  
>          close(userns_fd);
>      }
> @@ -345,9 +344,8 @@ main(int argc, char *argv[])
>              perror("fstat\-parentns");
>              exit(EXIT_FAILURE);
>          }
> -        printf("Device/Inode of parent namespace is: [%lx,%lx] / %ld\en",
> -                (long) major(sb.st_dev), (long) minor(sb.st_dev),
> -                (long) sb.st_ino);
> +        printf("Device/Inode of parent namespace is: [%x,%x] / %ld\en",
> +                major(sb.st_dev), minor(sb.st_dev), (long) sb.st_ino);
>  
>          close(parent_fd);
>      }
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
