Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 32A9C37794B
	for <lists+linux-man@lfdr.de>; Mon, 10 May 2021 01:33:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229882AbhEIXe3 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 9 May 2021 19:34:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34960 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229847AbhEIXe2 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 9 May 2021 19:34:28 -0400
Received: from mail-pl1-x62b.google.com (mail-pl1-x62b.google.com [IPv6:2607:f8b0:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 447B4C061573
        for <linux-man@vger.kernel.org>; Sun,  9 May 2021 16:33:24 -0700 (PDT)
Received: by mail-pl1-x62b.google.com with SMTP id b15so2050068plh.10
        for <linux-man@vger.kernel.org>; Sun, 09 May 2021 16:33:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=EJE6OtZDW4LD4JLAX72v4sdidJN7EDVXy4Xeu7BhCvM=;
        b=BIlwiiOHu0ow30QznAXxZCzXH4JU5F3btMNoT/iJSf8OZnuuxRfdAgx7v+ZVmIzPq4
         efKBSqoPQmYMPl5m052XFbD78g3CjyI4h9QaXYN4rb+Xw1p4u220u9CLPWloS1PnYJ58
         exJ0HveQ9OonBtyu9k6z9gW9CG2rj3AO63+9B9LfCf3rFTJ319IXTXXcGSt+orXSaPOG
         ZZfmSv0J5gqyIIZ++4Y7hS0t49UD+c1E0WAy3W1dYsENuc02c13pWVn+NNyOslfFb3y+
         ynfCdFejb8OhnHl0oJTJVHo8sb7AEpqdqJVnMACQ1clKJcgi4lIBVrwgjYnf1omYFtVS
         Q0cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=EJE6OtZDW4LD4JLAX72v4sdidJN7EDVXy4Xeu7BhCvM=;
        b=MrJT/tWNPKqwLqLF8riW7jaeByLZpVmt7iFeNiVfcOsoWj1O00Fgs3XmnP4KgUMg62
         1oLCzMQgcrWc3WIW+ERYF4PEhjmSuwkCEAeNNoUeqqGpJDx947722ECaRp3BE7IZhytc
         eOJgI4bT/9J5oZj2nHJ7xiKZMt4KYQhKTwUC+JoLfmhsnAsFHiDW2GNibs/HyezfcMhS
         CmOKJsqbue9jXaWyH5xLA6bTf3iKrmhOD9yUhV+9RyBxw0dmFfp92dl4d8QuR6zRAjxS
         RBB9sR3w0Crj2NaUhJDGQI3HUxZ1Or/zpTMVS1fDp0xvfCwSQMVI52YWRcAQ1kYSWNhW
         SVRQ==
X-Gm-Message-State: AOAM533/sLuieKNdT7x0zGYm2AkXGUJJhPVZqAzC5+7adLcUYeA5nMMy
        a0gG5nOcAdyyv8PVPu3/nzZNfzjbquk=
X-Google-Smtp-Source: ABdhPJzUZvOKcvGODPTKxTKonAlJM1sG2WejJ7VtNo2Z7mMkUvvsECp9EIbrNdcp4P7/v/8tj/Id3A==
X-Received: by 2002:a17:90b:508:: with SMTP id r8mr6494863pjz.152.1620603203666;
        Sun, 09 May 2021 16:33:23 -0700 (PDT)
Received: from [192.168.192.21] (47-72-82-130.dsl.dyn.ihug.co.nz. [47.72.82.130])
        by smtp.gmail.com with ESMTPSA id h4sm18666322pjc.12.2021.05.09.16.33.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 09 May 2021 16:33:23 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] scripts/bash_aliases: man_section(): Accept multiple
 sections
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210509213930.94120-1-alx.manpages@gmail.com>
 <20210509213930.94120-26-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <e4312d7e-8165-4dc8-23d7-7ae651e1580c@gmail.com>
Date:   Mon, 10 May 2021 11:33:20 +1200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <20210509213930.94120-26-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi ALex,

On 5/10/21 9:39 AM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

Applied.

Thanks,

Michael


> ---
>  scripts/bash_aliases | 29 +++++++++++++++++++----------
>  1 file changed, 19 insertions(+), 10 deletions(-)
> 
> diff --git a/scripts/bash_aliases b/scripts/bash_aliases
> index 813c00960..7b1b7da9c 100644
> --- a/scripts/bash_aliases
> +++ b/scripts/bash_aliases
> @@ -85,26 +85,35 @@ function grep_syscall_def()
>  ########################################################################
>  #	Linux man-pages
>  
> -#  man_section()  prints a specific manual page section (DESCRIPTION, SYNOPSIS,
> +#  man_section()  prints specific manual page sections (DESCRIPTION, SYNOPSIS,
>  # ...) of all manual pages in a directory (or in a single manual page file).
> -# Usage example:  .../man-pages$ man_section man2 SYNOPSIS;
> +# Usage example:  .../man-pages$ man_section man2 SYNOPSIS 'CONFORMING TO';
>  
>  function man_section()
>  {
>  	if ! [ -v 2 ]; then
> -		>&2 echo "Usage: ${FUNCNAME[0]} <dir> <section>";
> +		>&2 echo "Usage: ${FUNCNAME[0]} <dir> <section>...";
>  		return ${EX_USAGE};
>  	fi
>  
> -	find "${1}" -type f \
> -	|xargs grep -l "\.SH ${2}" \
> +	local page="$1";
> +	shift;
> +	local sect="$@";
> +
> +	find "${page}" -type f \
> +	|xargs wc -l \
> +	|grep -v -e '\b1 ' -e '\btotal\b' \
> +	|awk '{ print $2 }' \
>  	|sort -V \
>  	|while read -r manpage; do
> -		<${manpage} \
> -		sed -n \
> -			-e '/^\.TH/,/^\.SH/{/^\.SH/!p}' \
> -			-e "/^\.SH ${2}/p" \
> -			-e "/^\.SH ${2}/,/^\.SH/{/^\.SH/!p}" \
> +		cat \
> +		<(<${manpage} sed -n '/^\.TH/,/^\.SH/{/^\.SH/!p}') \
> +		<(for s in ${sect}; do
> +			<${manpage} \
> +			sed -n \
> +				-e "/^\.SH ${s}/p" \
> +				-e "/^\.SH ${s}/,/^\.SH/{/^\.SH/!p}"; \
> +		  done;) \
>  		|man -P cat -l - 2>/dev/null;
>  	done;
>  }
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
