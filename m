Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B429D330476
	for <lists+linux-man@lfdr.de>; Sun,  7 Mar 2021 21:22:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231934AbhCGUWD (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 7 Mar 2021 15:22:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49652 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232845AbhCGUVl (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 7 Mar 2021 15:21:41 -0500
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0A8E2C06174A
        for <linux-man@vger.kernel.org>; Sun,  7 Mar 2021 12:21:41 -0800 (PST)
Received: by mail-wm1-x32e.google.com with SMTP id u187so4819963wmg.4
        for <linux-man@vger.kernel.org>; Sun, 07 Mar 2021 12:21:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=Z5P7hhyv4SXUnGmmpcC/qpx+sJx43MpT3lwW+3uU9bU=;
        b=ElUNf7fiT14gOqVZPObV4bom/9KpBw9/A33ejYC+sXDwI5CzI6jVYB620W6yRN+pO8
         Ddhp1+yjZY9SkhAJON8Ii8B6jT0qt+wJvIjsFfOEQhYXyc2Ky/cf6X0//veun9B1vMSb
         tnX6jGIsiM0fpxi40lvdLEkg83RunUGYjJ7fwN9hf+57L+E9k4Zahdxu/uTLeiDFP0G6
         HKbjh2BTH+rM2D5XXf7NQhbzVPHD5J72GlXx88KARBzY/WOcgwc7WTjWhiU8npgoaLcR
         vQ8Gtitv5FmPMj1ZZQHXJqejUtiQiQfjph4MshM91sKtgcbm5ihIqO3NbX67eDCGwRzg
         3WFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Z5P7hhyv4SXUnGmmpcC/qpx+sJx43MpT3lwW+3uU9bU=;
        b=oJ8IEt8lTG/k9kWqeQ4FH1J/K47ei4utNs8vi9DaBeTWJJi0Hukhj55wDZb9A7Qbwj
         LJkEubMv7JItt70Y3m3gQUZl6PRtkptJuCZ/IWW3iIhxU/kOUQULmvX64BPFSzmDUe6W
         u2MaGjQ2K/U3SfUamGloTrlxU03+qcwe2VsOVPzzhJEXEqO8E28wfSrzmQN+QBJnBLUB
         DEuiayBfolFthx6d87wPiK9Hsr3r6+Z+W9mnP8Dvm2ApSbaSyQk5e/yLQTGcXW4PPIVN
         Avd1pNz4HNpIyhfvarkjSZMgixiZ44NZOjgiqGEXumgPUb2eUhF9K9uTPc3+B/k8QHC2
         lIGg==
X-Gm-Message-State: AOAM532qaaOjj3JPunnVEoFZrAGYnHlquzGnJLzXEL8g5oIdPyXiDZBj
        OiettFp4+QUiVh5PEXkstHk=
X-Google-Smtp-Source: ABdhPJydnCNzM88J5rtgV4mACeYfxxdh4+l2TWWNvW9JO/R+EBhu3Ti3USFgP7TJGLvPugEkH6KfnA==
X-Received: by 2002:a1c:c904:: with SMTP id f4mr19394622wmb.14.1615148499821;
        Sun, 07 Mar 2021 12:21:39 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id h6sm10137549wmi.6.2021.03.07.12.21.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 07 Mar 2021 12:21:39 -0800 (PST)
Subject: Re: [PATCH] scripts/bash_aliases: Make man_lsfunc() more robust; Add
 sed_rm_ccomments().
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, Stefan Puiu <stefan.puiu@gmail.com>,
        Walter Harms <wharms@bfs.de>
References: <20210307195622.1140064-1-alx.manpages@gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <b5796de8-fdaf-2315-8957-a04612f93b18@gmail.com>
Date:   Sun, 7 Mar 2021 21:21:38 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <20210307195622.1140064-1-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

Please fix some minor things for me (see below).

Thanks,

Alex

On 3/7/21 8:56 PM, Alejandro Colomar wrote:
> This patch makes man_lsfunc() search for the function prototypes,
> instead of relying on the current manual page formatting,
> which might change in the future, and break this function.
> It also simplifies the code, by reusing man_section().
> 
> As a side effect, this change fixed some corner cases, where this
> function failed to find a function, or listed a wrong function.
> 
> Create a new function sed_rm_ccomments(), which is needed by
> man_lsfunc(), and may also be useful in other cases.
> 
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
> ---
>  scripts/bash_aliases | 40 ++++++++++++++++++++++------------------
>  1 file changed, 22 insertions(+), 18 deletions(-)
> 
> diff --git a/scripts/bash_aliases b/scripts/bash_aliases
> index d9b6047d1..12fb203e1 100644
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
> +	|sed -r '\%/\*%,\%\*/%{\%(\*/|/\*)%!d; s%/\*.*%%; s%.*\*/%%;}' \
> +	|sed 's%//.*%%';
> +}
> +
>  ########################################################################
>  #	Linux kernel
>  
> @@ -106,25 +121,14 @@ function man_lsfunc()
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
> +		man_section "${arg}" "SYNOPSIS";

s/"SYNOPSIS"/'SYNOPSIS'/

>  	done \
> -	|sed -n "/^SYNOPSIS/,/^\w/p" \
> -	|grep '^       \w' \
> -	|grep -v ':' \
> -	|sed 's/^[^(]* \**\(\w*\)(.*/\1/' \
> -	|grep '^\w' \
> +	|sed_rm_ccomments \
> +	|pcregrep -Mn \
> +	  "(?s)^ [\w ]+ \**\w+\([\w\s(,)[\]*]+?(...)?\s*\); *$" \

s/"/'/

> +	|grep '^[0-9]' \
> +	|sed -r 's/^[^(]+ +\**(\w+)\(.*/\1/' \
>  	|uniq;
>  }
>  
> 

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
