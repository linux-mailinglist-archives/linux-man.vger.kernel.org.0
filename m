Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4D59A3E3D09
	for <lists+linux-man@lfdr.de>; Mon,  9 Aug 2021 00:33:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230506AbhHHWdT (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 8 Aug 2021 18:33:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56140 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230175AbhHHWdS (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 8 Aug 2021 18:33:18 -0400
Received: from mail-pj1-x102d.google.com (mail-pj1-x102d.google.com [IPv6:2607:f8b0:4864:20::102d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9247BC061760
        for <linux-man@vger.kernel.org>; Sun,  8 Aug 2021 15:32:59 -0700 (PDT)
Received: by mail-pj1-x102d.google.com with SMTP id mq2-20020a17090b3802b0290178911d298bso3954558pjb.1
        for <linux-man@vger.kernel.org>; Sun, 08 Aug 2021 15:32:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=ScqTA3pu9ChirULpxAKnbVUUe/+l7aZaHcNmNYIXL08=;
        b=or73Dsee5w1bZnKI7j+315MUVVG6erzrmT7fwiUI+KuwxhJ43tipv07+7k6vaRsIVq
         OhVniatuvksndocWOB8eaQf5P1XOztNpHiRV7GbBrdDzVtYd8YDN1BuEwRwOJB/3iEvV
         EsbHwgHWynvsNfMuhaSrDDp6XkinLFwogiPeQEvvvmqkJkfsSqFr5SzOM84F2IrXc/MN
         +gmU4UaoPA/jRxJGmJAnlFrrqwLk9XTFzQb7FyIemjaEsb6xEqfGdNqFB0n/2jz53Ey6
         sKsGzRm55GgwwDjOvXgtez1bCY6fpEXnCgJFqgDMiX4nR+A4ymr5V3kd+SXIA1qNOChF
         VEoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=ScqTA3pu9ChirULpxAKnbVUUe/+l7aZaHcNmNYIXL08=;
        b=t2k7bSIQ4fUyYN7Qsgp+Fn3u7zMSbOMhuWZ/8OSDjvN8aKdz4BlUWQSblwsyiwWh3M
         P9yYZVp49RoedgFykdrNDgFDq+vSJxmCXTPTuFa9/2KZwbdmyUCnR4YA1UT7+9FNGIOk
         BMK4gkxm9Us2VWEj7LLKpjpOSRygK9q5dTFqtJ1FZ5h8PRM80IpXfXsrvKCBtgpfUD8g
         t6K4ysH0E5/qV7g4QoNiK5GCJTdz8nweI4JFrWBKuQencIpvocNQsfAHO4fj8K5vnk2V
         rhnCxdyTTeOPTUfJQRDrEMShRXCAXo/mJHHKiTuGO5mFFM5Awzqu4CHPLisxbBo3s4Hq
         RSUA==
X-Gm-Message-State: AOAM5322VCw3pJmVNSLBoGZVfxjEK7k/kLc1xLxiK3/qJD+5NkjFdTX8
        HsmvYFW1QRU8daOCqe7r2j0=
X-Google-Smtp-Source: ABdhPJxhe8C1ft23LSxMKjKp1ITR73KajQvtRaUBbxWVvz0pWX5y8ZUAY7qDSIG2dcgHHn1zDes1Vw==
X-Received: by 2002:a05:6a00:ccb:b029:3c6:803d:8e3 with SMTP id b11-20020a056a000ccbb02903c6803d08e3mr21486104pfv.0.1628461978955;
        Sun, 08 Aug 2021 15:32:58 -0700 (PDT)
Received: from [192.168.1.71] (122-61-176-117-fibre.sparkbb.co.nz. [122.61.176.117])
        by smtp.gmail.com with ESMTPSA id s14sm17517351pfg.220.2021.08.08.15.32.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 08 Aug 2021 15:32:58 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        EmanueleTorre <torreemanuele6@gmail.com>
Subject: Re: [PATCH 22/23] ldd.1: Fix example command
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210808084133.734274-1-alx.manpages@gmail.com>
 <20210808084133.734274-23-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <b9eabeb5-0b8b-99f3-7c63-c75977604e4c@gmail.com>
Date:   Mon, 9 Aug 2021 00:32:54 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210808084133.734274-23-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Emanuele and Alex,

On 8/8/21 10:41 AM, Alejandro Colomar wrote:
> Emanuele Torre via linux-man@:
> 
> [
> I was reading the man page for ldd(1)[1]; and I read this in the first
> paragraph of the DECRIPTION section:
> 
>  ldd prints the shared objects (shared libraries) required by each
>  program or shared object specified on the command line.  An
>  example of its use and output (using sed(1) to trim leading white
>  space for readability in this page) is the following:
> 
>      $ ldd /bin/ls | sed 's/^ */    /'
>          linux-vdso.so.1 (0x00007ffcc3563000)
>          libselinux.so.1 => /lib64/libselinux.so.1 (0x00007f87e5459000)
>          libcap.so.2 => /lib64/libcap.so.2 (0x00007f87e5254000)
>          libc.so.6 => /lib64/libc.so.6 (0x00007f87e4e92000)
>          libpcre.so.1 => /lib64/libpcre.so.1 (0x00007f87e4c22000)
>          libdl.so.2 => /lib64/libdl.so.2 (0x00007f87e4a1e000)
>          /lib64/ld-linux-x86-64.so.2 (0x00005574bf12e000)
>          libattr.so.1 => /lib64/libattr.so.1 (0x00007f87e4817000)
>          libpthread.so.0 => /lib64/libpthread.so.0 (0x00007f87e45fa000)
> 
> This is a little confusing though since that sed(1) command does not
> seem to work. (and also potentially misleading for someone who is trying
> figure out how to parse ldd(1)'s output.)
> 
> ldd(1) prepends a TAB character (0x09) to each line, not spaces:
> 
>  $ ldd /bin/ls | xxd | head -1
>  00000000: 096c 696e 7578 2d76 6473 6f2e 736f 2e31  .linux-vdso.so.1
> 
> I read ldd(1)'s source code[2] (it is part of glibc) and it seems to be
> a bash script that tries to use different rtld programs ( ld.so(8) )
> from an RTLDLIST.
> 
> Those, on my system, are:
> 
>  * /usr/lib/ld-linux.so.2
>  * /usr/lib64/ld-linux-x86-64.so.2
>  * /usr/libx32/ld-linux-x32.so.2
> 
> And they all seem to also be part of glibc.
> 
> I have tried to follow the git history of glibc to see when the switch
> from spaces to the TAB character occured, but, to me, it seems like
> glibc.git/elf/rtld.c has always used '\t'; at since
> 6a76c115150318eae5d02eca76f2fc03be7bd029[3] (358th commit since glibc
> started using the git repository repository - Nov 18th 1995): before
> that commit there are not any results for `git grep '\\t'` in the elf
> directory and I did not investigate further.
> 
> Still, at the time of that commit, glibc did not seem to have an ldd(1)
> utility.
> 
> Perhaps the man page is old and its original author was using and
> documenting an ldd(1) utility that was not part of glibc when he was
> writing it.
> 
> Anyhow, since I think that sed(1) command will not work on any system
> that uses, at least, the most recent version of glibc (because lld(1)
> and the ld.so(8) programs it depends on are all part of glibc), I think
> that that example should be changed to avoid confusions.
> 
> The output format of ldd(1) does not seem to be clearly defined, so I
> think this would be a good option:
> 
>  $ ldd /bin/ls | sed 's/^[[:space:]]*/    /'
> 
> NB: ^\s* should also work on most GNU/Linux systems, but \s is
>     non-standard or documented so I don not suggest using it in the man
>     page.
> 
> Another option could be to remove "the pipe to sed(1)" part and the note
> in parentheses that explains why it was used by the original author.
> 
> Cheers.
>  emanuele6
> 
> [1]: https://man7.org/linux/man-pages/man1/ldd.1.html
> [2]: https://sourceware.org/git/?p=glibc.git;a=blob;f=elf/ldd.bash.in;h=ba736464ac5e4a9390b1b6a39595035238250232;hb=5188a9d0265cc6f7235a8af1d31ab02e4a24853d
> [3]: https://sourceware.org/git/?p=glibc.git;a=commit;h=6a76c115150318eae5d02eca76f2fc03be7bd029
> 
> ///////
> 
>  $ uname -a
>  Linux t420 5.10.54-1-lts #1 SMP Wed, 28 Jul 2021 15:05:20 +0000
> x86_64 GNU/Linux
>  $ pacman -Qo ldd
>  /usr/bin/ldd is owned by glibc 2.33-5
>  $ pacman -Qo /usr/share/man/man1/ldd.1.gz
>  /usr/share/man/man1/ldd.1.gz is owned by man-pages 5.12-2
>  $ pacman -Qo /usr/lib/ld-linux.so.2
>  /usr/lib/ld-linux.so.2 is owned by lib32-glibc 2.33-5
>  $ pacman -Qo /usr/lib64/ld-linux-x86-64.so.2
>  /usr/lib/ld-linux-x86-64.so.2 is owned by glibc 2.33-5
>  $ pacman -F /usr/libx32/ld-linux-x32.so.2 || echo not available on arch linux.
>  not available on arch linux.
> ]
> 
> Reported-by: EmanueleTorre <torreemanuele6@gmail.com>
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

Emanuele, thanks for all of the details.
Alex, thanks for the patch.

Applied.

Cheers,

Michael

> ---
>  man1/ldd.1 | 5 +----
>  1 file changed, 1 insertion(+), 4 deletions(-)
> 
> diff --git a/man1/ldd.1 b/man1/ldd.1
> index ed1ab3c05..8bb1410d5 100644
> --- a/man1/ldd.1
> +++ b/man1/ldd.1
> @@ -23,14 +23,11 @@ ldd \- print shared object dependencies
>  prints the shared objects (shared libraries) required by each program or
>  shared object specified on the command line.
>  An example of its use and output
> -(using
> -.BR sed (1)
> -to trim leading white space for readability in this page)
>  is the following:
>  .PP
>  .in +4n
>  .EX
> -$ \fBldd /bin/ls | sed \(aqs/^ */    /\(aq\fP
> +$ \fBldd /bin/ls\fP
>      linux\-vdso.so.1 (0x00007ffcc3563000)
>      libselinux.so.1 => /lib64/libselinux.so.1 (0x00007f87e5459000)
>      libcap.so.2 => /lib64/libcap.so.2 (0x00007f87e5254000)
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
