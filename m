Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6682E37794A
	for <lists+linux-man@lfdr.de>; Mon, 10 May 2021 01:32:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229939AbhEIXeB (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 9 May 2021 19:34:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34860 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229847AbhEIXeA (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 9 May 2021 19:34:00 -0400
Received: from mail-pl1-x633.google.com (mail-pl1-x633.google.com [IPv6:2607:f8b0:4864:20::633])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 39759C061573
        for <linux-man@vger.kernel.org>; Sun,  9 May 2021 16:32:56 -0700 (PDT)
Received: by mail-pl1-x633.google.com with SMTP id a11so8229089plh.3
        for <linux-man@vger.kernel.org>; Sun, 09 May 2021 16:32:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=Ez/DU1VEkfcLBt01Obo3unSXOst1x1bC2nG2X95wNBw=;
        b=DY9jiYoi3eXJQU/3f5d1UYg3969IxPp37x2Fx2gcVWB7Zt18z9H19PPdH/1ClKmgmu
         Qi+YWAEDO5QHefmMRCzPjdqJBbUuLiZqrumEVJw8yEFrkKR2LV75ZT3pORys3n3nF8Sj
         vuThKVPLM6YnyLOYYOarAkGEXGVQNeb6p+pekW6ZzzH/eG6pGKeLMXenkTi6ngNzhO7+
         DdcvP7drq2jcjC/b0wdMUFQsMUFqkyXZ/ZOHOkNYC4BCd+qMwycNr2V42aGzOhTrR/qB
         RXCLgLZfRaedWJM1IBvMoVoLQsjRvGC5moQYsS59YqH8KFhrSrbI1qaH6Dd/P2nHZHra
         GgcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Ez/DU1VEkfcLBt01Obo3unSXOst1x1bC2nG2X95wNBw=;
        b=sRI0tNmG0vChg08nyQlWPEEv+E/d3K2wGsGxubztse8JiLf9fyYdA7/9JNgiw3CC9z
         knFLGlj3TyiDUDCJP2kJTPXnsCS8nwzG5qAQ1wGwOMwHHS4cf0KkX5+xQC2hqqA8n+Mo
         lLqBWgL5x8h6NlU80eRp9QJ88KOud06hy8i8ezwYYf5MAzIBbfdclw5RuIp0HhLWDcKO
         TxM0bPqmHkd69vMcIi8Ww8FW5ruiLFgnCyrs2hBMEDSN/kGsK1/3xqSivdKZMAp6YLEh
         /znIobgzryK6cnMoTxgWQiMaJ7GctWMB7MIUtTGQN446ThxVBEuzEKNIKeumnTmwChOn
         VgUw==
X-Gm-Message-State: AOAM531G/EPyw9Pw4XNwuE7QnbdvvVpCjva33aRtL/AHfgZcx3hGP8VX
        +sdRwn2XYTTrjz3CVm8FxFbmKIFRI3k=
X-Google-Smtp-Source: ABdhPJyp83F9/utx9xt3JNd1pV1FSy4mt0GxgABUqoIth4Wkye8tsOgZEJf+2zdiqios45TbRBZL0A==
X-Received: by 2002:a17:90a:d246:: with SMTP id o6mr24513363pjw.57.1620603175606;
        Sun, 09 May 2021 16:32:55 -0700 (PDT)
Received: from [192.168.192.21] (47-72-82-130.dsl.dyn.ihug.co.nz. [47.72.82.130])
        by smtp.gmail.com with ESMTPSA id j10sm9989584pff.69.2021.05.09.16.32.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 09 May 2021 16:32:55 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] scripts/bash_aliases: Add man_lsvar(), similar to
 man_lsfunc() but lists variables
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210509213930.94120-1-alx.manpages@gmail.com>
 <20210509213930.94120-16-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <3eb80e15-cf48-08e0-bdd8-6b713dacc9ba@gmail.com>
Date:   Mon, 10 May 2021 11:32:52 +1200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <20210509213930.94120-16-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 5/10/21 9:39 AM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

Applied.

Thanks,

Michael


> ---
>  scripts/bash_aliases | 27 +++++++++++++++++++++++++++
>  1 file changed, 27 insertions(+)
> 
> diff --git a/scripts/bash_aliases b/scripts/bash_aliases
> index c50108a16..813c00960 100644
> --- a/scripts/bash_aliases
> +++ b/scripts/bash_aliases
> @@ -131,6 +131,33 @@ function man_lsfunc()
>  	|uniq;
>  }
>  
> +#  man_lsvar()  prints the name of all C variables declared in the SYNOPSIS
> +# of all manual pages in a directory (or in a single manual page file).
> +# Each name is printed in a separate line
> +# Usage example:  .../man-pages$ man_lsvar man3;
> +
> +function man_lsvar()
> +{
> +	if ! [ -v 1 ]; then
> +		>&2 echo "Usage: ${FUNCNAME[0]} <dir>";
> +		return ${EX_USAGE};
> +	fi
> +
> +	for arg in "$@"; do
> +		man_section "${arg}" 'SYNOPSIS';
> +	done \
> +	|sed_rm_ccomments \
> +	|pcregrep -Mv '(?s)^ [\w ]+ \**\w+\([\w\s(,)[\]*]+?(...)?\s*\); *$' \
> +	|pcregrep -Mn \
> +	  -e '(?s)^ +extern [\w ]+ \**\(\*+[\w ]+\)\([\w\s(,)[\]*]+?\s*\); *$' \
> +	  -e '^ +extern [\w ]+ \**[\w ]+; *$' \
> +	|grep '^[0-9]' \
> +	|grep -v 'typedef' \
> +	|sed -E 's/^[0-9]+: +extern [^(]+ \**\(\*+(\w* )?(\w+)\)\(.*/\2/' \
> +	|sed    's/^[0-9]\+: \+extern .* \**\(\w\+\); */\1/' \
> +	|uniq;
> +}
> +
>  #  pdfman()  renders a manual page in PDF
>  # Usage example:  .../man-pages$ pdfman man2/membarrier.2;
>  
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
