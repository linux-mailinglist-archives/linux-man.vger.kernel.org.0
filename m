Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AF08B377949
	for <lists+linux-man@lfdr.de>; Mon, 10 May 2021 01:32:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229882AbhEIXdj (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 9 May 2021 19:33:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34788 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229847AbhEIXdj (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 9 May 2021 19:33:39 -0400
Received: from mail-pl1-x62d.google.com (mail-pl1-x62d.google.com [IPv6:2607:f8b0:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7DA4DC061573
        for <linux-man@vger.kernel.org>; Sun,  9 May 2021 16:32:35 -0700 (PDT)
Received: by mail-pl1-x62d.google.com with SMTP id v13so8219190ple.9
        for <linux-man@vger.kernel.org>; Sun, 09 May 2021 16:32:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=dAxYG6ulFM2YxM1575DZc9O/KifsuOtbRmTCRMCTjFk=;
        b=Xi9eSAZhMkyIAx8AHFpgUyPqI0gbYOQhPDJ28QCdRg8tVM8s0LGcFqkoktZLx8mNKa
         0xcrh/E+//WtaQVFVbwn70jLMKprqgeM24cyCevsLpiDQam9DJtaq2zBjoG2v3DOjUBj
         oW96qO7rtiWVlZ9qc0O9xVyn4wEPHe2jG8pgFyqI4llayD7ku4YpAaVtSsdsAT9RIIRU
         /TnwKkiZmN6nnVOrWAutkmhhr0wFI8YGAf8jr/mKwXKjEFc43kouWAMJXEHQVygey3mJ
         3AAZuXOQOLWk66dIoTAJUESvAwhQUjwCcW3sCFrXq9W9X9GhdWL7h1chbc7nEPEvBgjL
         yilQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=dAxYG6ulFM2YxM1575DZc9O/KifsuOtbRmTCRMCTjFk=;
        b=eh+8gY7dmyoj8zUtJXHtcJDYFn9kSO8i+YGhum/BRgvljJ3rSBcyy2f0VN0dnXt0Ky
         75F2AdMizx/InxMwmOYylprHVRYHqNUaXOgkeyVSvnsuu3kadD/RrLGjmO1JiQDuVVvF
         K2gx1MIy7GyHVKn4m6t7+4IJC4DTnfV7COsOydjkg7QPlau82JiA15ruRUptZid3ZtHH
         eEfuwQSGIQ/PnkZlJOdewMYhcsYi50lY1nHum5YU3dwhmD+e8KCMALCMG662XcLoT73F
         7BL41rclfD0ErOQ0m/NP04sv08osNo2u5aYQNoSUm8k1XhPrhR/xa+wBM4Cllf06GgFS
         kblQ==
X-Gm-Message-State: AOAM532qN7KLup4zrstkFjDz3kkDDA+hy6EY+9xj9ipOXUGYIxTJ1dEX
        AzpenZjWpJoGr009VJry1pUD1JIInsE=
X-Google-Smtp-Source: ABdhPJz605mD21uJVvpnuUSK/cIXWxT3hYkTKboNlFBdRREdhHwns6I4xg5ZHRZTQsuzn+o1rmO+tw==
X-Received: by 2002:a17:90a:9f4b:: with SMTP id q11mr36686690pjv.180.1620603154894;
        Sun, 09 May 2021 16:32:34 -0700 (PDT)
Received: from [192.168.192.21] (47-72-82-130.dsl.dyn.ihug.co.nz. [47.72.82.130])
        by smtp.gmail.com with ESMTPSA id w14sm9867199pff.94.2021.05.09.16.32.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 09 May 2021 16:32:34 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] scripts/bash_aliases: Make man_lsfunc() more robust; Add
 sed_rm_ccomments().
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210509213930.94120-1-alx.manpages@gmail.com>
 <20210509213930.94120-15-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <5aec682c-fd03-dde9-8cd2-d5b593255406@gmail.com>
Date:   Mon, 10 May 2021 11:32:31 +1200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <20210509213930.94120-15-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 5/10/21 9:39 AM, Alejandro Colomar wrote:
> This patch makes man_lsfunc() search for the function prototypes,
> instead of relying on the current manual page formatting,
> which might change in the future, and break this function.
> 
> It also simplifies the code, by reusing man_section().
> 
> Create a new function sed_rm_ccomments(), which is needed by
> man_lsfunc(), and may also be useful in other cases.
> 
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

Applied.

Thanks,

Michael


> ---
>  scripts/bash_aliases | 39 +++++++++++++++++++++------------------
>  1 file changed, 21 insertions(+), 18 deletions(-)
> 
> diff --git a/scripts/bash_aliases b/scripts/bash_aliases
> index d9b6047d1..c50108a16 100644
> --- a/scripts/bash_aliases
> +++ b/scripts/bash_aliases
> @@ -20,6 +20,21 @@
>  EX_OK=0;
>  EX_USAGE=64;
>  
> +########################################################################
> +#	C
> +
> +#  sed_rm_ccomments()  removes C comments.
> +# It can't handle multiple comments in a sinlge line correctly,
> +# nor mixed or embedded //... and /*...*/ comments.
> +# Use as a filter (see man_lsfunc() in this file).
> +
> +function sed_rm_ccomments()
> +{
> +	sed 's%/\*.*\*/%%' \
> +	|sed -E '\%/\*%,\%\*/%{\%(\*/|/\*)%!d; s%/\*.*%%; s%.*\*/%%;}' \
> +	|sed 's%//.*%%';
> +}
> +
>  ########################################################################
>  #	Linux kernel
>  
> @@ -106,25 +121,13 @@ function man_lsfunc()
>  		return ${EX_USAGE};
>  	fi
>  
> -	find "${@}" -type f \
> -	|xargs grep -l "\.SH SYNOPSIS" \
> -	|sort -V \
> -	|while read -r manpage; do
> -		<${manpage} \
> -		sed -n \
> -			-e '/^\.TH/,/^\.SH/{/^\.SH/!p}' \
> -			-e "/^\.SH SYNOPSIS/p" \
> -			-e "/^\.SH SYNOPSIS/,/^\.SH/{/^\.SH/!p}" \
> -		|sed \
> -			-e '/Feature/,$d' \
> -			-e '/{/,/}/d' \
> -		|man -P cat -l - 2>/dev/null;
> +	for arg in "$@"; do
> +		man_section "${arg}" 'SYNOPSIS';
>  	done \
> -	|sed -n "/^SYNOPSIS/,/^\w/p" \
> -	|grep '^       \w' \
> -	|grep -v ':' \
> -	|sed 's/^[^(]* \**\(\w*\)(.*/\1/' \
> -	|grep '^\w' \
> +	|sed_rm_ccomments \
> +	|pcregrep -Mn '(?s)^ [\w ]+ \**\w+\([\w\s(,)[\]*]+?(...)?\s*\); *$' \
> +	|grep '^[0-9]' \
> +	|sed -E 's/^[^(]+ \**(\w+)\(.*/\1/' \
>  	|uniq;
>  }
>  
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
