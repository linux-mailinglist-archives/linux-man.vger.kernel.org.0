Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D71D63DB82B
	for <lists+linux-man@lfdr.de>; Fri, 30 Jul 2021 14:02:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238275AbhG3MCJ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 30 Jul 2021 08:02:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59660 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238271AbhG3MCJ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 30 Jul 2021 08:02:09 -0400
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 905B8C0613C1
        for <linux-man@vger.kernel.org>; Fri, 30 Jul 2021 05:02:03 -0700 (PDT)
Received: by mail-wm1-x32a.google.com with SMTP id f14-20020a05600c154eb02902519e4abe10so9014467wmg.4
        for <linux-man@vger.kernel.org>; Fri, 30 Jul 2021 05:02:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=LTGp+tKW50sns2T4Y9VOb0JcXaDePS+aIRnSsRxdGw8=;
        b=kOII1atzWKbVpGpjRmZTeSyBSHGlg3GrDLHTZAuhOEB7XQBfebilGPHN0/aP320bcD
         1c63dWv0DQwC449xmuWfaWMQu8PB+3RxiEZi91gtARYw+2KEI/pnAMPLgSQTgrz6mPrF
         l3j64tI7LbpgTZ7/VYEWHEgW9G0q/xfkfEKs9fHQKWciTPu5z1fP3n8lhwSjsnbvnM9j
         3eKl0jt3rEQJVUM6kk/Bw77E2dvJLWMcYI1J5hkfgR73VBwXhO4hf1nHfr/NwtsrwYKY
         bucu7nOZnjOIdTj8DxUU6KROc0ZrGU299WjKg2jAPpx3jHb/FKacvhXUGJ6MgKTnu6m7
         c1Pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=LTGp+tKW50sns2T4Y9VOb0JcXaDePS+aIRnSsRxdGw8=;
        b=qLLeX4hkEbWp7RZJQ8ePHGlqj/RXiRAd197wfZlfWJqn5m5gNQlrnlJdEr5zXr5Byu
         FYkeb4LUDdvnwYthN8aIrxaT9cLwPLNfB+WSzVqiL9flLGMVBo5xscY58QYP6KJvgedx
         3EijRO+jYPEKFDLlc+BKZ9B992bb2YZciUoIO7bNOjvK9hYTIHot9VMziN4v3dY910uT
         sk6s5rCSTVE/hkiJG2sp5xoQ/rxnToN+CS7j0cPvX0YhYqqCgIxkOVr8Xp72CYLzqZ0E
         LIKzIEkAqahwjdQvea5VAGiUmNEDlWnPxtm3klWtqsfyDarzs5T7pCaw7vcgz33cp2ic
         f/bA==
X-Gm-Message-State: AOAM5320vnqQrLGo5itWpTrWfYg8zLYuWe6j81vVFrWHHWLtZVdv7MQM
        /wazpvU6VANnRA+4SlPiHGxDSHKct9k=
X-Google-Smtp-Source: ABdhPJwMo/BF3fEAP29Mgf12fUO5qLHFgGOuF2qLuOVzMJdgFu1Ul7AOorXFqGOGBpfXpj4fdQ4aDw==
X-Received: by 2002:a1c:32c1:: with SMTP id y184mr2574645wmy.70.1627646522215;
        Fri, 30 Jul 2021 05:02:02 -0700 (PDT)
Received: from [10.8.0.10] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id x12sm1577825wrt.35.2021.07.30.05.02.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Jul 2021 05:02:01 -0700 (PDT)
Subject: Re: [PATCH] ioctl_tty.2: Fix information about header include file
To:     =?UTF-8?Q?Pali_Roh=c3=a1r?= <pali@kernel.org>
Cc:     =?UTF-8?Q?Marek_Beh=c3=ban?= <kabel@kernel.org>,
        libc-alpha@sourceware.org,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org
References: <20210730105353.10424-1-pali@kernel.org>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <f521c025-e219-fa72-505b-5bec149446cf@gmail.com>
Date:   Fri, 30 Jul 2021 14:02:00 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210730105353.10424-1-pali@kernel.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Pali,

On 7/30/21 12:53 PM, Pali Rohár wrote:
> Header file termios.h contains incompatible definitions for linux ioctl
> calls. Correct definitions are exported by header file linux/termios.h but
> this file conflicts with sys/ioctl.h header file (required for ioctl()
> call). Therefore include direct asm header file asm/termbits.h which
> contains compatible definitions and structures for ioctl calls.
> 
> Signed-off-by: Pali Rohár <pali@kernel.org>

Thanks for the patch.  I'll wait to see if someone from glibc reviews 
the change.
I'll add some comments about the formatting for now.

Cheers,

Alex

> ---
>   man2/ioctl_tty.2 | 17 +++++++++++++++--
>   1 file changed, 15 insertions(+), 2 deletions(-)
> 
> diff --git a/man2/ioctl_tty.2 b/man2/ioctl_tty.2
> index c1875530f0b1..91aceddb7828 100644
> --- a/man2/ioctl_tty.2
> +++ b/man2/ioctl_tty.2
> @@ -11,8 +11,8 @@ ioctl_tty \- ioctls for terminals and serial lines
>   .SH SYNOPSIS
>   .nf
>   .B #include <sys/ioctl.h>
> -.BR "#include <termios.h>" "      /* Definition of " CLOCAL ", and"
> -.BR    "                             TC*" { FLUSH , ON , OFF "} constants */"
> +.BR "#include <asm/termbits.h>"   "   /* Definition of " struct " " termios ", " struct " " termios2 ","

A single space between tokens is enough: s/>"   "/>" "/

Join related tokens: s/struct " " termios/"struct termios"/

Tokens without spaces don't need quoting: s/","$/,/

> +.BR "                              " " " BOTHER ", " CLOCAL ", and " TC* { FLUSH , ON , OFF "} constants */"

Please format everything into at most 80 columns, and preferably 78.

Right now I see:

[
SYNOPSIS
        #include <sys/ioctl.h>
        #include <asm/termbits.h>   /* Definition of struct termios, 
struct termios2,
                                       BOTHER, CLOCAL, and 
TC*{FLUSH,ON,OFF} constants */

        int ioctl(int fd, int cmd, ...);
]

Maybe break between the 2 structs, and after that "and".
Also, I'd add an "and" just before the constants to make clear that 
"constants" only applies to them.

>   .PP
>   .BI "int ioctl(int " fd ", int " cmd ", ...);"
>   .fi
> @@ -31,6 +31,19 @@ makes for nonportable programs.
>   Use the POSIX interface described in
>   .BR termios (3)
>   whenever possible.
> +.PP
> +Please note that
> +.B struct termios
> +from
> +.B #include <asm/termbits.h>
> +is different and incompatible with
> +.B struct termios
> +from
> +.BR "#include <termios.h>" .
> +These ioctl calls require
> +.B struct termios
> +from
> +.BR "#include <asm/termbits.h>" .
>   .SS Get and set terminal attributes
>   .TP
>   .B TCGETS
> 


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
