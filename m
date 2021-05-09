Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 06E5C37793C
	for <lists+linux-man@lfdr.de>; Mon, 10 May 2021 01:28:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229964AbhEIX3J (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 9 May 2021 19:29:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33772 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229840AbhEIX3I (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 9 May 2021 19:29:08 -0400
Received: from mail-pj1-x102e.google.com (mail-pj1-x102e.google.com [IPv6:2607:f8b0:4864:20::102e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E3E73C061573
        for <linux-man@vger.kernel.org>; Sun,  9 May 2021 16:28:03 -0700 (PDT)
Received: by mail-pj1-x102e.google.com with SMTP id fa21-20020a17090af0d5b0290157eb6b590fso9209876pjb.5
        for <linux-man@vger.kernel.org>; Sun, 09 May 2021 16:28:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=x0lDjYqZnW+LM70mipcPihnfJZvAs7yAt/A61+saBEg=;
        b=Ikhqmw1Wg4Vhtj381Rl8YmKWxZ7S94njQgqrs9IAC+aNc2I7BzS9SPOdKikSrByG/r
         WWCgT+IUNqPF6t7MUDVhgD75glOTYdJNdkt93wxZfyEwIk2mD+wsDcl3hRKlJ0spMjLN
         7C3A4ZP2xbbC5mGgOmnGiBdQRrQZAP1PwgLrnRHO0+MWtilPAfCOZcbb6v4ZipEI0IdF
         oP51QnBp1p7Zv6po7mF7mcFvE+XQxQuHqWb6OiKiVbOhrZXql2H2EV3FSjtadavpHYV6
         pSWxNnNGfTK0Q4q+mA/88YfGgA/xO9NfVTrh+9zInhbGgRg320UCU0Pk+GxTh0RWdenO
         c49g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=x0lDjYqZnW+LM70mipcPihnfJZvAs7yAt/A61+saBEg=;
        b=Y8gS7WfU8HQEPefl0LBDZa655hg01F2sYvFUT5Hm3Xn/yfPqkdSZX1HhIHM3cz6ceR
         M0LutV9h7eEsKcZYVwmAbBM7V98tjwfmN1PsbEKRbVltlAqTgL+HdlXDyNRM9edsfeoq
         T2bL8m+p8b6ECmZ9ib5VS9IkP2o0lk1aB3h23DLahGfNzDj5+HMujuAbrctnDMZQnOZa
         akgD5pcel7JWowLJ95DCPDTUeuGmnCCSUDzHlEDR94uYXL7b7BfF3pXnG5YCRbDW+wGp
         PyCVIZk5mOoNwXhYQlqjNa42ULjnxNZM7c8BZTPzlNdYaRBHF2SWl6NKX07cRH21R+Vh
         g5rQ==
X-Gm-Message-State: AOAM532JDgfs70eyz4xO2IoenrHXlJjbzHm4v4nH+ZtFAqKqdxhjE0u0
        sU2m4zoQkAz16W0tlkGwZqJZ7rVPKik=
X-Google-Smtp-Source: ABdhPJyl2UFY0mlWzWxUbdHvQlv9flUBEaBQYbJJMYtSv0SfX2Smor8pPZK9oAjYyO8sr5aUsaV5Jw==
X-Received: by 2002:a17:902:a60f:b029:ee:cc8c:f891 with SMTP id u15-20020a170902a60fb02900eecc8cf891mr21240033plq.39.1620602883125;
        Sun, 09 May 2021 16:28:03 -0700 (PDT)
Received: from [192.168.192.21] (47-72-82-130.dsl.dyn.ihug.co.nz. [47.72.82.130])
        by smtp.gmail.com with ESMTPSA id g16sm16485527pju.17.2021.05.09.16.28.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 09 May 2021 16:28:02 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] scripts/bash_aliases, scripts/modified_pages.sh: Move
 scripts/modified_pages.sh to a function man_gitstaged()
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210509213930.94120-1-alx.manpages@gmail.com>
 <20210509213930.94120-2-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <7732b074-e007-36e2-0070-2992a8b2420d@gmail.com>
Date:   Mon, 10 May 2021 11:27:59 +1200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <20210509213930.94120-2-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 5/10/21 9:38 AM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

Applied. (I take these patches to your own scripts on trust...)

Thanks,

Michael


> ---
>  scripts/bash_aliases      | 17 ++++++++++++++++-
>  scripts/modified_pages.sh | 34 ----------------------------------
>  2 files changed, 16 insertions(+), 35 deletions(-)
>  delete mode 100755 scripts/modified_pages.sh
> 
> diff --git a/scripts/bash_aliases b/scripts/bash_aliases
> index a14c65cd4..8cedc4efc 100644
> --- a/scripts/bash_aliases
> +++ b/scripts/bash_aliases
> @@ -1,7 +1,7 @@
>  # SPDX-License-Identifier: GPL-2.0-only
>  ########################################################################
>  #
> -# (C) Copyright 2021, Alejandro Colomar
> +# (C) Copyright 2020, 2021, Alejandro Colomar
>  # These functions are free software; you can redistribute them and/or
>  # modify them under the terms of the GNU General Public License
>  # as published by the Free Software Foundation; version 2.
> @@ -147,6 +147,21 @@ function pdfman()
>  	xdg-open ${tmp};
>  }
>  
> +#  man_gitstaged  prints a list of all files with changes staged for commit
> +# (basename only if the files are within <man?/>), separated by ", ".
> +# Usage example:  .../man-pages$ git commit -m "$(man_gitstaged): msg";
> +
> +function man_gitstaged()
> +{
> +	git status							\
> +	|sed "/Changes not staged for commit:/q"			\
> +	|grep -E "^\s*(modified|deleted|new file):"			\
> +	|sed "s/^.*:\s*/, /"						\
> +	|sed "s%man[1-9]/%%"						\
> +	|tr -d '\n'							\
> +	|sed "s/^, //"
> +}
> +
>  ########################################################################
>  #	Glibc
>  
> diff --git a/scripts/modified_pages.sh b/scripts/modified_pages.sh
> deleted file mode 100755
> index f6c4a6cea..000000000
> --- a/scripts/modified_pages.sh
> +++ /dev/null
> @@ -1,34 +0,0 @@
> -#!/bin/bash
> -
> -## SPDX-License-Identifier: GPL-2.0-only
> -########################################################################
> -##
> -## (C) Copyright 2020, Alejandro Colomar
> -## This program is free software; you can redistribute it and/or
> -## modify it under the terms of the GNU General Public License
> -## as published by the Free Software Foundation; version 2.
> -##
> -## This program is distributed in the hope that it will be useful,
> -## but WITHOUT ANY WARRANTY; without even the implied warranty of
> -## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> -## GNU General Public License for more details
> -## (http://www.gnu.org/licenses/gpl-2.0.html).
> -##
> -########################################################################
> -##
> -## The output of this script is a
> -## list of all files with changes staged for commit
> -## (basename only if the files are within "man?/"),
> -## separated by ", ".
> -## Usage:
> -## git commit -m "$(./scripts/modified_pages.sh): Short message here"
> -##
> -
> -
> -git status							\
> -|sed "/Changes not staged for commit:/q"			\
> -|grep -E "^\s*(modified|deleted|new file):"			\
> -|sed "s/^.*:\s*/, /"						\
> -|sed "s%man[1-9]/%%"						\
> -|tr -d '\n'							\
> -|sed "s/^, //"
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
