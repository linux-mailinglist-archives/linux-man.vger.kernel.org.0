Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7D94F4834ED
	for <lists+linux-man@lfdr.de>; Mon,  3 Jan 2022 17:40:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229797AbiACQkz (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 3 Jan 2022 11:40:55 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41972 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230149AbiACQky (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 3 Jan 2022 11:40:54 -0500
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 37264C061761
        for <linux-man@vger.kernel.org>; Mon,  3 Jan 2022 08:40:54 -0800 (PST)
Received: by mail-wr1-x42c.google.com with SMTP id w20so61951927wra.9
        for <linux-man@vger.kernel.org>; Mon, 03 Jan 2022 08:40:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=4P/BDxD9wXuoyl8/9m/sO+oIim+TqbfnviFY8nXWO4A=;
        b=j/gkczvFFTQB+y9UN+yAJ9WTXwqaNRKLD1AnQRaHJkM6/CBLGp2lxCKCKOUT2H2IfC
         bknTteI2RdzIIPD2ArOmfo02Wt96LAwiXanSk9Ds9IyGLXniNkPqfbvCrHpVTTXff3sH
         AZdELfmW03+8+lyVn8OhW5zqbX+XpVJI+Yl/mU7doCohNRg1iIFy4yNC75jGsLkD6Ao7
         L5pbr8ZIYrVGYwm9tW7lDYaoRoHpW/VhAFQktyscFjtM9Ebofmi8Qtzu1fXJSaIUemY+
         J6s8ZsuFlh5DP3oj1gCV43ArGlqRw3pL2iSn7edeCfR2q2dwJvq5m3LOKn+N50shaqkv
         oYvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=4P/BDxD9wXuoyl8/9m/sO+oIim+TqbfnviFY8nXWO4A=;
        b=UqOBNAT4UNQbyvcW0VkJujqdEvZbS80N/KawXdCvoy4P5d4tSWr7yIemU7pm8n3ln9
         8HvUJWVxr0Ljp1b+9X2YZbfeFLtKy8O+PGsEUw3RlIPiZ5y2X1hXJHtIK1OTL5NtTEsv
         5Ecq+l+OUaHe2BzV+Jc3xbU6Tgi0+YMDDW+6gxoCuVU21sa1q3ZOlSIBmjqDyOrLTGQG
         k14A87cPmTbwKqQB8hs+f10ZMsR6S8889TKnd+zT5zj8nbtcXlFaOP6sakxn5HDhbtIq
         1CCWr0ktHx0hpIKSNWsnCPv9R2ePcmtqA/1Cl1YhZRaHhQ5OKC0hiQCKuRazUqA2s9wW
         +XeQ==
X-Gm-Message-State: AOAM533vjikQWM0kJyZRorb39xccb6F/YYqVoxsXDRi9eEQy29+c+za3
        8dJBB2wdZuNhsN7JdOBSop6VvhIUOMM=
X-Google-Smtp-Source: ABdhPJxmD0xsba52AUXr4aDzjUsoPeqlEaSMh57wcXeF/nVmYC+F3eP5DsSDa/YAjJyNoln089dmrw==
X-Received: by 2002:a5d:64a2:: with SMTP id m2mr39296514wrp.102.1641228052741;
        Mon, 03 Jan 2022 08:40:52 -0800 (PST)
Received: from [10.168.10.170] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id m35sm71525548wms.1.2022.01.03.08.40.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Jan 2022 08:40:52 -0800 (PST)
Message-ID: <c9779348-f3f4-b621-4f09-e6f4c0d2cfc6@gmail.com>
Date:   Mon, 3 Jan 2022 17:40:51 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.4.1
Subject: Re: [PATCH 3/3] tee.2: always fail after perror(), use for(;;)
 instead of do{}while(1)
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <a59610f1d397bf532e4ce46481f439ac089fb05e.1641224016.git.nabijaczleweli@nabijaczleweli.xyz>
 <c68f0d3beba927e3417807201c335d7449fc18b2.1641224016.git.nabijaczleweli@nabijaczleweli.xyz>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
In-Reply-To: <c68f0d3beba927e3417807201c335d7449fc18b2.1641224016.git.nabijaczleweli@nabijaczleweli.xyz>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi наб,

Man pages extensively use exit(EXIT_ERROR) and exit(EXIT_SUCCESS) 
instead of return EXIT_ERROR and return EXIT_SUCCESS or even nothing at 
the end of main().  I never used that myself, and don't see much 
difference between exit(3) and return, but if only for consistency, and 
for keeping the status quo in case of doubt, I'll keep using exit(3).

However, I like the change to for(;;).  At least a while (1) would be 
sane, but do ... while (1) seems a bit weird to me :)
Could you please write a separate patch for that?

Also, please see an inline comment below.

Cheers,

Alex

On 1/3/22 16:34, наб wrote:
> ---
>   man2/tee.2 | 11 +++++------
>   1 file changed, 5 insertions(+), 6 deletions(-)
> 
> diff --git a/man2/tee.2 b/man2/tee.2
> index 17b93882d..4b410ecad 100644
> --- a/man2/tee.2
> +++ b/man2/tee.2
> @@ -171,10 +171,10 @@ main(int argc, char *argv[])
>       int fd = open(argv[1], O_WRONLY | O_CREAT | O_TRUNC, 0644);
>       if (fd == \-1) {
>           perror("open");
> -        exit(EXIT_FAILURE);
> +        return EXIT_FAILURE;
>       }
>   
> -    do {
> +    for (;;) {
>           /*
>            * tee stdin to stdout.
>            */
> @@ -184,7 +184,7 @@ main(int argc, char *argv[])
>               if (errno == EAGAIN)
>                   continue;
>               perror("tee");
> -            exit(EXIT_FAILURE);
> +            return EXIT_FAILURE;
>           } else
>               if (len == 0)
>                   break;
> @@ -197,14 +197,13 @@ main(int argc, char *argv[])
>                                     len, SPLICE_F_MOVE);
>               if (slen < 0) {
>                   perror("splice");
> -                break;
> +                return EXIT_FAILURE;

This seems like a bug in the example program, so a separate patch for it 
would be better.

This makes me think that the loop wasn't originally a do ... while (1) 
but something different, and in a rewrite, a few things were forgotten, 
maybe.

>               }
>               len \-= slen;
>           }
> -    } while (1);
> +    }
>   
>       close(fd);
> -    exit(EXIT_SUCCESS);
>   }
>   .EE
>   .SH SEE ALSO

-- 
Alejandro Colomar
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
