Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3B8D73E398F
	for <lists+linux-man@lfdr.de>; Sun,  8 Aug 2021 10:26:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231176AbhHHI05 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 8 Aug 2021 04:26:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42128 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230301AbhHHI05 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 8 Aug 2021 04:26:57 -0400
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7D3CEC061760
        for <linux-man@vger.kernel.org>; Sun,  8 Aug 2021 01:26:37 -0700 (PDT)
Received: by mail-wm1-x334.google.com with SMTP id d131-20020a1c1d890000b02902516717f562so9184455wmd.3
        for <linux-man@vger.kernel.org>; Sun, 08 Aug 2021 01:26:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=UY3UnF8swrE9a2YQJ/iktfOEYttWRMxMnEZWZ6UOTvU=;
        b=QqBAl3qR6ODjL/yR2HPQdR68E9oPw7/z4682H4aI3xmeCFUVQWGPAzt1AT6Vo5MerX
         YgHTgYNxyUniQZAuXIKykEvLZbaEh/S/8H0e7+ra7ilRN55dHTkqBOHeQoPgQ85mLOgy
         tbe/QLwuCaIa1zawo5XnSO/VoFXDC+3xQCL/c4E2VkUYzvA/xd0axie5dG3C9lEfdCkU
         CZIs2otALPmkz1f46bOt3SqTNlQpj+FIyI7a++McrFlQzzQhsXip1lCVi9sb+lpGJa39
         KlcsBKHPfAkDSl2ZK/LSj1N5ecL0u0GU/1MFZa3JzoSy9xxRMJqn8zVOuEVFwmlUX4aQ
         pLnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=UY3UnF8swrE9a2YQJ/iktfOEYttWRMxMnEZWZ6UOTvU=;
        b=sK3k9c4YSEunnPOuQL9lZKR0Lnvc7yDoKdShBpLIItF09nwNorOgJSKB3WWxDiOQdN
         GhUB1K56vM5Pq66/Lv7grYfwTZfhwz6/2ZuL3UUy7u6sF/0eZbjuEMQMA3m7/NeaIq0X
         DTRSRZ+YfDM2KVJbVWED+0+ObiVtTkA1XWe5Twl+JT7hL5u7XeDLmX1HbaUj78jWBb7V
         zOCulor2j2HkE/FOI5mhl33IRxvG/yOhzNTApmx0I/xOFJzdXBeodX6jMxLvI6j9Lsse
         01+G7jjg6wMtKzx+oeW3adoV4y0PptlL1aNTpJtUU8vSBgR+WHvrvLxNYEgVFn65TD6S
         2tkA==
X-Gm-Message-State: AOAM532kqFaOpzubpdpIBahm1stlGuSiwHykp0+7TWgi5rCWWnzVoF0Q
        Gzx7D3YY01yT89okW2NBtzw=
X-Google-Smtp-Source: ABdhPJySqNK9ruVEcqAwSALjZBb80nFzAtjavMcJiJqqbbtnkb37KZiuIHP/0lu5a/hEO3VQtQn9ug==
X-Received: by 2002:a05:600c:2298:: with SMTP id 24mr10909721wmf.62.1628411195994;
        Sun, 08 Aug 2021 01:26:35 -0700 (PDT)
Received: from [10.8.0.10] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id o2sm13892518wmq.30.2021.08.08.01.26.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 08 Aug 2021 01:26:35 -0700 (PDT)
Subject: Re: [PATCH v2] ioctl_tty.2: Fix information about header include file
To:     =?UTF-8?Q?Pali_Roh=c3=a1r?= <pali@kernel.org>
Cc:     =?UTF-8?Q?Marek_Beh=c3=ban?= <kabel@kernel.org>,
        libc-alpha@sourceware.org,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        linux-man@vger.kernel.org, Michael Kerrisk <mtk.manpages@gmail.com>
References: <20210730105353.10424-1-pali@kernel.org>
 <20210730130537.18863-1-pali@kernel.org>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <3d927d3c-67a1-bb48-b597-44c87b8f715a@gmail.com>
Date:   Sun, 8 Aug 2021 10:26:33 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <20210730130537.18863-1-pali@kernel.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Pali,

On 7/30/21 3:05 PM, Pali Rohár wrote:
> Header file termios.h contains incompatible definitions for linux ioctl
> calls. Correct definitions are exported by header file linux/termios.h but
> this file conflicts with sys/ioctl.h header file (required for ioctl()
> call). Therefore include direct asm header file asm/termbits.h which
> contains compatible definitions and structures for ioctl calls.

No one screamed so far, so I was going to apply this one, but I just 
noticed a minor formatting issue; see below.

Thanks,

Alex

> 
> Signed-off-by: Pali Rohár <pali@kernel.org>
> 
> ---
> Changes in v2:
> * Reformat SYNOPSIS for 80 chars per line
> ---
>   man2/ioctl_tty.2 | 19 +++++++++++++++++--
>   1 file changed, 17 insertions(+), 2 deletions(-)
> 
> diff --git a/man2/ioctl_tty.2 b/man2/ioctl_tty.2
> index 771a9a470bf0..ecbae4f887c4 100644
> --- a/man2/ioctl_tty.2
> +++ b/man2/ioctl_tty.2
> @@ -11,8 +11,10 @@ ioctl_tty \- ioctls for terminals and serial lines
>   .SH SYNOPSIS
>   .nf
>   .B #include <sys/ioctl.h>
> -.BR "#include <termios.h>" "      /* Definition of " CLOCAL ", and"
> -.BR    "                             TC*" { FLUSH , ON , OFF "} constants */"
> +.BR "#include <asm/termbits.h>" "   /* Definition of " "struct termios" ,
> +.BR    "                               struct termios2" ", and"
> +.BR    "                               Bnn" ", " BOTHER ", " CBAUD ", " CLOCAL ,
> +.BR    "                               TC*" { FLUSH , ON , OFF "} and other constants */"
>   .PP
>   .BI "int ioctl(int " fd ", int " cmd ", ...);"
>   .fi
> @@ -31,6 +33,19 @@ makes for nonportable programs.
>   Use the POSIX interface described in
>   .BR termios (3)
>   whenever possible.
> +.PP
> +Please note that
> +.B struct termios
> +from
> +.B #include <asm/termbits.h>

Instead, just (with no "#include"):

.I <asm/termbits.h>

See man-pages(7):
    Formatting conventions (general)
        [...]

        Filenames  (whether  pathnames,  or  references  to  header
        files) are always in italics (e.g., <stdio.h>),  except  in
        the  SYNOPSIS  section,  where  included  files are in bold
        (e.g., #include <stdio.h>).  When referring to  a  standard
        header  file include, specify the header file surrounded by
        angle brackets, in the usual C way (e.g., <stdio.h>).


> +is different and incompatible with
> +.B struct termios
> +from
> +.BR "#include <termios.h>" .

ditto

> +These ioctl calls require
> +.B struct termios
> +from
> +.BR "#include <asm/termbits.h>" .

ditto

>   .SS Get and set terminal attributes
>   .TP
>   .B TCGETS
> 


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
