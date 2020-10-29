Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 62B1C29E3DC
	for <lists+linux-man@lfdr.de>; Thu, 29 Oct 2020 08:23:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725993AbgJ2HVZ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 29 Oct 2020 03:21:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54758 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725971AbgJ2HVD (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 29 Oct 2020 03:21:03 -0400
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com [IPv6:2a00:1450:4864:20::343])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 18658C08EA7D
        for <linux-man@vger.kernel.org>; Thu, 29 Oct 2020 00:13:53 -0700 (PDT)
Received: by mail-wm1-x343.google.com with SMTP id k18so1415771wmj.5
        for <linux-man@vger.kernel.org>; Thu, 29 Oct 2020 00:13:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=Jt66Ro6ChwF7B4WUC9O1hydUy4hsd8CqZ72SMpMelMs=;
        b=INwvDTh4fObfAFt44nEj74IOpvd0GQBwUhKw9SimO73RmNQBxBuL+RXTxGV8HPtEVj
         airCl644lol8BI0Rf10XV7HKRnvv39U43fdAn3VqQt6T/Q5lIU9ZgjuLgeAQCgiWwnBL
         rq3nNlfw6VylwJZviROPGZVI8cP4rcNyi5Yr1uMRXEpo1L7S3L8AE2mcKcZBswt+wlCX
         ihNjS3mW1WWoJD9JGhwmo0sUUMg/KC4UM9x/gR3MTreH2IW13VgPjvSKIMzphn3csT8Z
         q2HIekFzhSedbow1jNXjBUw47Dtbaji4rrzmJLRXUQIB6hnuwU5GzWfHj9H7AuTndJ1V
         M2cQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Jt66Ro6ChwF7B4WUC9O1hydUy4hsd8CqZ72SMpMelMs=;
        b=mQYPlu85XzyG+0cBgiAzCBjaO7XcgZ10shlN2e6N+HPazJAqa+MRpxxw2mJflOg7nK
         97AvMYn5mkDmKxE6koaIC9fkm3KKPLRTma+fzHXVuRPpgKmQeJj6jDYsdj5JBv03rDjE
         T7BGAp7XE+rwxgT1L+a/TLcv3oL5+MqaVtYcp3qCVZwzWnWlMA6ykjAD5L2k1rsh9G2C
         qwKe/Mw3LrfXGY+t06Ey4PLeQ2/BIqTy9R6Q6cSsNDNjqX52blP4N7Mh/dqVOrrho4tu
         ttlmRZDHOUZ4iS02ax1Iirg3eJuRZHDMZ3Fh4RiMNN43ngkND3Y8/fHXjGAmT+CfHIrQ
         TMxw==
X-Gm-Message-State: AOAM532weEIc9Fk2W8c58aJ6LnrTuWLEFGXjs5NfTS9SKi6ZsWYq7GWO
        +QqMjZNMmXnJqdChO5/6y/Ke9MmM1fs=
X-Google-Smtp-Source: ABdhPJyY/MtaRTjNN5AOkf46pA+dh7dnvI2F4pPRJ1xtbqTuaMJ9jy1IHPcE5/HFeuXd/TyGWLFvvA==
X-Received: by 2002:a1c:203:: with SMTP id 3mr2695512wmc.128.1603955631449;
        Thu, 29 Oct 2020 00:13:51 -0700 (PDT)
Received: from ?IPv6:2001:a61:245a:d801:2e74:88ad:ef9:5218? ([2001:a61:245a:d801:2e74:88ad:ef9:5218])
        by smtp.gmail.com with ESMTPSA id p9sm2640072wma.12.2020.10.29.00.13.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Oct 2020 00:13:50 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] getdents.2: Use 'ssize_t' instead of 'int'
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20201028221118.158108-1-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <ed5937c4-a590-1735-b716-0894657ff8fc@gmail.com>
Date:   Thu, 29 Oct 2020 08:13:48 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.1
MIME-Version: 1.0
In-Reply-To: <20201028221118.158108-1-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 10/28/20 11:11 PM, Alejandro Colomar wrote:
> The glibc wrapper for getdents64() uses ssize_t.

It also changed the types for the arguments, so those need to be 
fixed too.

> And let's use it also for getdents().

I actually think we should *not* change that. So long as their is
no wrapper, we should show pretty much what the ABI exposes. (That
makes me think that the return type should really be long; see 
what you think about DEFINE_SYSCALL3 in the kernel sources.)

And you added an include for <sys/types.h>. I'm not sure 
whether that's needed, but it should be explained in the 
commit message.

Thanks,

Michael

> It makes more sense than int:
> It's a count of bytes, and can report an error (-1).
> 
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
> ---
>  man2/getdents.2 | 10 ++++++----
>  1 file changed, 6 insertions(+), 4 deletions(-)
> 
> diff --git a/man2/getdents.2 b/man2/getdents.2
> index a187fbcef..d660f1bc1 100644
> --- a/man2/getdents.2
> +++ b/man2/getdents.2
> @@ -33,13 +33,13 @@
>  getdents, getdents64 \- get directory entries
>  .SH SYNOPSIS
>  .nf
> -.BI "int getdents(unsigned int " fd ", struct linux_dirent *" dirp ,
> +.BI "ssize_t getdents(unsigned int " fd ", struct linux_dirent *" dirp ,
>  .BI "             unsigned int " count );
>  .PP
>  .BR "#define _GNU_SOURCE" "        /* See feature_test_macros(7) */"
>  .B #include <dirent.h>
>  .PP
> -.BI "int getdents64(unsigned int " fd ", struct linux_dirent64 *" dirp ,
> +.BI "ssize_t getdents64(unsigned int " fd ", struct linux_dirent64 *" dirp ,
>  .BI "             unsigned int " count );
>  .fi
>  .PP
> @@ -266,6 +266,7 @@ inode#    file type  d_reclen  d_off   d_name
>  #include <stdlib.h>
>  #include <sys/stat.h>
>  #include <sys/syscall.h>
> +#include <sys/types.h>
>  
>  #define handle_error(msg) \e
>          do { perror(msg); exit(EXIT_FAILURE); } while (0)
> @@ -282,7 +283,8 @@ struct linux_dirent {
>  int
>  main(int argc, char *argv[])
>  {
> -    int fd, nread;
> +    int fd;
> +    ssize_t nread;
>      char buf[BUF_SIZE];
>      struct linux_dirent *d;
>      char d_type;
> @@ -301,7 +303,7 @@ main(int argc, char *argv[])
>  
>          printf("\-\-\-\-\-\-\-\-\-\-\-\-\-\-\- nread=%d \-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\en", nread);
>          printf("inode#    file type  d_reclen  d_off   d_name\en");
> -        for (int bpos = 0; bpos < nread;) {
> +        for (ssize_t bpos = 0; bpos < nread;) {
>              d = (struct linux_dirent *) (buf + bpos);
>              printf("%8ld  ", d\->d_ino);
>              d_type = *(buf + bpos + d\->d_reclen \- 1);
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
