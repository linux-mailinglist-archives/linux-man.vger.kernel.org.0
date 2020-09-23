Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3CBFE2761EB
	for <lists+linux-man@lfdr.de>; Wed, 23 Sep 2020 22:21:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726460AbgIWUVb (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 23 Sep 2020 16:21:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59638 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726419AbgIWUVb (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 23 Sep 2020 16:21:31 -0400
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com [IPv6:2a00:1450:4864:20::342])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 54EC3C0613CE
        for <linux-man@vger.kernel.org>; Wed, 23 Sep 2020 13:21:31 -0700 (PDT)
Received: by mail-wm1-x342.google.com with SMTP id x23so1278044wmi.3
        for <linux-man@vger.kernel.org>; Wed, 23 Sep 2020 13:21:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=z2/LMmCSq2GlBfRJ4USlpH0h6wtGbDtpGFFUaQuE9mE=;
        b=WKk2ZXTT5+RgLKgr26WaVChcAPs1KihWtAqqxIVZCj3qd7zlOJ2rw6JbxCzlO6weVe
         kDBHaaRCdzcZ/JoLHdYon6mJVVYvW3yyJOZfRh1IIwrhS4U6X3/lCvl7wIeaJ8Xl+jtf
         cZ0zqBZhBIN3TPdVQsgHGNqGBJSJWFxZ5xbWSPlB9szhdFxsXUj38lQYRiI8Qyrh0irv
         +fBQNxPTsaVA7i0D+z6oT5XZrgmSZ6ZqtZYeFB48VR/bQY5LIXbzrvHidHhCUfO7enTv
         DbDOSVOL5s1vMaQw5b8XJj+4ySsH4EUaLSyB649KYWX3UIcXfWPafINsyF+DZvG6nKx4
         MHfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=z2/LMmCSq2GlBfRJ4USlpH0h6wtGbDtpGFFUaQuE9mE=;
        b=Nt0fBdq+EaoX4v8LNtd62sEPfj8yef0z8FbXsWi7rMtaCZDmeV45DY8Pnm77sYgtZq
         BuaN0uRg3C6gt0oo/uYphesxCCRnfmdPZIHaGnVbt5fQQz99qNavZNxTqQnkrG0ytTQI
         PBZZ5N2EKQpCQJQXmf3z+nIYqxwAvCBYOB2vPpNgo3ERMiFcwYkhb9QsYZqiw/zcjUl0
         5W84FRNiy7OCm96UBZIOUrn84nqyVDfTtbE5TM2ocsk3zz2CUNE1GLWgQI9ZhmOd9j8q
         jCqwdS/zet6D3iYcMDCbzkMZ4ALn677Hx1Son479J8xI1Uvi9xUABbcRrLKM0eOKZk3W
         cmsA==
X-Gm-Message-State: AOAM532+ia5BbHw7WZepvxwekYU+Uq+hPi9HW300K1AAKr+QvOuEUbSE
        8/J94Va2zc0ECCRbgAkxz+o=
X-Google-Smtp-Source: ABdhPJwtfWV3872vwkfuSTXuo4I1NNUysBH/uS+nyRZ+fgMELY5zIFZ7hoZQZHskU4RHxoCZMlBphg==
X-Received: by 2002:a7b:cc09:: with SMTP id f9mr1210364wmh.93.1600892489900;
        Wed, 23 Sep 2020 13:21:29 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id 91sm1083806wrq.9.2020.09.23.13.21.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Sep 2020 13:21:29 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        Konstantin Bukin <kbukin@gmail.com>
Subject: Re: [PATCH] ioctl_ns.2, stat.2: Fix signedness of printf specifiers
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20200923145425.41073-1-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <84b3ae6e-5458-20b4-0cfe-51083e65758d@gmail.com>
Date:   Wed, 23 Sep 2020 22:21:26 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200923145425.41073-1-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 9/23/20 4:54 PM, Alejandro Colomar wrote:
> These variables are either of an unsigned integer type per POSIX;
> or of an integer type per POSIX, that Linux defines as an unsigned integer type.
> 
> Print them with 'uintmax_t' instead of 'intmax_t' to avoid
> big positive numbers being printed as negative numbers.
> 
> Bug report:
> From: Konstantin Bukin @ 2020-09-13 15:04 UTC
>   To: mtk.manpages; +Cc: Konstantin Bukin, linux-man
> 
> inode numbers are expected to be positive. Casting them to a signed type
> may result in printing negative values. E.g. running example program on
> the following file:
> 
> $ ls -li test.txt
> 9280843260537405888 -r--r--r-- 1 kbukin hardware 300 Jul 21 06:36 test.txt
> 
> resutls in the following output:
> 
> $ ./example test.txt
> ID of containing device:  [0,480]
> File type:                regular file
> I-node number:            -9165900813172145728
> Mode:                     100444 (octal)
> Link count:               1
> Ownership:                UID=2743   GID=30
> Preferred I/O block size: 32768 bytes
> File size:                300 bytes
> Blocks allocated:         8
> Last status change:       Tue Jul 21 06:36:50 2020
> Last file access:         Sat Sep 12 14:13:38 2020
> Last file modification:   Tue Jul 21 06:36:50 2020
> 
> Such erroneous reporting happens for inode values greater than maximum
> value which can be stored in signed long. Casting does not seem to be
> necessary here. Printing inode as unsigned long fixes the issue.
> 
> Reported-by: Konstantin Bukin <kbukin@gmail.com>
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>

Thanks! Patch applied.

Cheers,

Michael

> ---
> 
> Hi Michael,
> 
> I wrote a patch similar to Konstantin's patch,
> but using `uintmax_t` as we discussed.
> I further fixed a few more cases of incorrect casts.
> I found all of those related to `struct stat`'s members,
> but there may be more incorrect casts out there.
> 
> Cheers,
> 
> Alex
> 
>  man2/ioctl_ns.2 | 8 ++++----
>  man2/stat.2     | 8 ++++----
>  2 files changed, 8 insertions(+), 8 deletions(-)
> 
> diff --git a/man2/ioctl_ns.2 b/man2/ioctl_ns.2
> index b83db74e0..87b5168a7 100644
> --- a/man2/ioctl_ns.2
> +++ b/man2/ioctl_ns.2
> @@ -317,10 +317,10 @@ main(int argc, char *argv[])
>              exit(EXIT_FAILURE);
>          }
>          printf("Device/Inode of owning user namespace is: "
> -                "[%jx,%jx] / %jd\en",
> +                "[%jx,%jx] / %ju\en",
>                  (uintmax_t) major(sb.st_dev),
>                  (uintmax_t) minor(sb.st_dev),
> -                (intmax_t) sb.st_ino);
> +                (uintmax_t) sb.st_ino);
>  
>          close(userns_fd);
>      }
> @@ -347,10 +347,10 @@ main(int argc, char *argv[])
>              perror("fstat\-parentns");
>              exit(EXIT_FAILURE);
>          }
> -        printf("Device/Inode of parent namespace is: [%jx,%jx] / %jd\en",
> +        printf("Device/Inode of parent namespace is: [%jx,%jx] / %ju\en",
>                  (uintmax_t) major(sb.st_dev),
>                  (uintmax_t) minor(sb.st_dev),
> -                (intmax_t) sb.st_ino);
> +                (uintmax_t) sb.st_ino);
>  
>          close(parent_fd);
>      }
> diff --git a/man2/stat.2 b/man2/stat.2
> index f71cc3831..13a1f37f7 100644
> --- a/man2/stat.2
> +++ b/man2/stat.2
> @@ -682,14 +682,14 @@ main(int argc, char *argv[])
>      default:       printf("unknown?\en");                break;
>      }
>  
> -    printf("I\-node number:            %jd\en", (intmax_t) sb.st_ino);
> +    printf("I\-node number:            %ju\en", (uintmax_t) sb.st_ino);
>  
>      printf("Mode:                     %jo (octal)\en",
>              (uintmax_t) sb.st_mode);
>  
> -    printf("Link count:               %jd\en", (intmax_t) sb.st_nlink);
> -    printf("Ownership:                UID=%jd   GID=%jd\en",
> -            (intmax_t) sb.st_uid, (intmax_t) sb.st_gid);
> +    printf("Link count:               %ju\en", (uintmax_t) sb.st_nlink);
> +    printf("Ownership:                UID=%ju   GID=%ju\en",
> +            (uintmax_t) sb.st_uid, (uintmax_t) sb.st_gid);
>  
>      printf("Preferred I/O block size: %jd bytes\en",
>              (intmax_t) sb.st_blksize);
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
