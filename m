Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1D44A37794F
	for <lists+linux-man@lfdr.de>; Mon, 10 May 2021 01:34:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229939AbhEIXfN (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 9 May 2021 19:35:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35128 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229882AbhEIXfL (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 9 May 2021 19:35:11 -0400
Received: from mail-pg1-x530.google.com (mail-pg1-x530.google.com [IPv6:2607:f8b0:4864:20::530])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F3648C061573
        for <linux-man@vger.kernel.org>; Sun,  9 May 2021 16:34:06 -0700 (PDT)
Received: by mail-pg1-x530.google.com with SMTP id p12so11988694pgj.10
        for <linux-man@vger.kernel.org>; Sun, 09 May 2021 16:34:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=Mm3OZxpyOcbYhhrjMDbgWyiyVOw0tof/Z7LYolwtunE=;
        b=NV9dEykZY6af2OKmQ+oXWHagMBwVNKmjrSx4+M8kakFM+Bfq6rReFHQBOo9f57NeQm
         NuDnjxvXWyb7DeNGLtAunV9H76nDXMvFKDjXNrnAqyZIxaoc3k8rdxzmdprCKaQNF23r
         F10t7yKsoqILJF/ZlzQz+PkaS6oFkENEB5dfVOXtMW1+B7o5l3G32DZpaAARgG0oZgvq
         it7szUfS/pz+qL1tw4GqbOHSnC4Fg0ZIU5Dugm455mSW8mPhYEckqTme92glyrfe/N1G
         DYcH0Sk423WekgdhHDTyP50Bvswevxqr2FLZD4a4ELcX6rbuq0ParHiRArsSDnCzhV6L
         pa9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Mm3OZxpyOcbYhhrjMDbgWyiyVOw0tof/Z7LYolwtunE=;
        b=XDToFKU0dFavL4O9i9W2X2JwJwUH/CyCCKRVDd4JI0PxcgyIb9yImeDmmyhURKmyk8
         RurnOyYiow1hqMNpzhTQwToVVyOuiVigrkDJZKsOUJMjWOxv1hQPQUWuf7I2KKEUO8uO
         v1aQmw71JUDoDcI2BFi7lKjUxw948kG4ZvN4k8RLiHHwIMSXCx+X80aPyUFsbhZXBuz6
         XmQ1nl8GiV8bBlvTIud1Uq1UnDbxNkodVCWgFHQVkvzdshzV8wSXGCx/f+IYIfX/FX2h
         rF694JJhx4uQhzPOXbgzY25zEU1pneiQUMKJp5yUjtikN2e3Uwnqe3mKMfgacuyTfH0i
         vgtA==
X-Gm-Message-State: AOAM531MUic7BbZ8J8wxZjbMWOp0uPTDVym8/neuA9PNx3MymgMn29tA
        87+dwdhysSkImMeR+4RwKzL2d+v03xk=
X-Google-Smtp-Source: ABdhPJy79kWWDWbsarfhwKI137r/bMWmcnJ9QtgzASxprsz5ANZTLcYiGbpEprVfXTZ9sQCfDpwzaQ==
X-Received: by 2002:a63:f301:: with SMTP id l1mr21911787pgh.394.1620603246373;
        Sun, 09 May 2021 16:34:06 -0700 (PDT)
Received: from [192.168.192.21] (47-72-82-130.dsl.dyn.ihug.co.nz. [47.72.82.130])
        by smtp.gmail.com with ESMTPSA id z26sm9500028pfq.86.2021.05.09.16.34.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 09 May 2021 16:34:06 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] scripts/bash_aliases: srcfix
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210509213930.94120-1-alx.manpages@gmail.com>
 <20210509213930.94120-32-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <992b8c4b-fc1f-18f1-b471-7b907812e986@gmail.com>
Date:   Mon, 10 May 2021 11:34:02 +1200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <20210509213930.94120-32-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 5/10/21 9:39 AM, Alejandro Colomar wrote:
> I clarified the code about two things:
> 
> - Checking how many arguments are being passed.
>     Here, some functions didn't reject extra arguments when they
>     weren't being used.  Fix that.
>     I also changed the code to use $#, which is more explicit.
>     And use arithmetic expressions, which better indicate that
>     we're dealing with numbers.
> 
> - Remove unneeded options from sort.
>     Reported-by: Stefan Puiu <stefan.puiu@gmail.com>
>     After Stefan asked about why am I using 'sort -V',
>     I noticed that I really don't need '-V', and it may confuse
>     people trying to understand the script, so even though I
>     slightly prefer the output of 'sort -V', in this case, it's
>     better to use the simpler 'sort' (yet I need 'sort', to
>     maintain consistency in the results (find is quite random)).
> 
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

Applied.

Thanks,

Michael


> ---
>  scripts/bash_aliases | 24 ++++++++++++------------
>  1 file changed, 12 insertions(+), 12 deletions(-)
> 
> diff --git a/scripts/bash_aliases b/scripts/bash_aliases
> index a14026bda..358e2f37a 100644
> --- a/scripts/bash_aliases
> +++ b/scripts/bash_aliases
> @@ -45,20 +45,20 @@ function sed_rm_ccomments()
>  
>  function grep_syscall()
>  {
> -	if ! [ -v 1 ]; then
> +	if (($# != 1)); then
>  		>&2 echo "Usage: ${FUNCNAME[0]} <syscall>";
>  		return ${EX_USAGE};
>  	fi
>  
>  	find * -type f \
>  	|grep '\.c$' \
> -	|sort -V \
> +	|sort \
>  	|xargs pcregrep -Mn "(?s)^\w*SYSCALL_DEFINE.\(${1},.*?\)" \
>  	|sed -E 's/^[^:]+:[0-9]+:/&\n/';
>  
>  	find * -type f \
>  	|grep '\.[ch]$' \
> -	|sort -V \
> +	|sort \
>  	|xargs pcregrep -Mn "(?s)^asmlinkage\s+[\w\s]+\**sys_${1}\s*\(.*?\)" \
>  	|sed -E 's/^[^:]+:[0-9]+:/&\n/';
>  }
> @@ -70,14 +70,14 @@ function grep_syscall()
>  
>  function grep_syscall_def()
>  {
> -	if ! [ -v 1 ]; then
> +	if (($# != 1)); then
>  		>&2 echo "Usage: ${FUNCNAME[0]} <syscall>";
>  		return ${EX_USAGE};
>  	fi
>  
>  	find * -type f \
>  	|grep '\.c$' \
> -	|sort -V \
> +	|sort \
>  	|xargs pcregrep -Mn "(?s)^\w*SYSCALL_DEFINE.\(${1},.*?^}" \
>  	|sed -E 's/^[^:]+:[0-9]+:/&\n/';
>  }
> @@ -91,7 +91,7 @@ function grep_syscall_def()
>  
>  function man_section()
>  {
> -	if ! [ -v 2 ]; then
> +	if (($# < 2)); then
>  		>&2 echo "Usage: ${FUNCNAME[0]} <dir> <section>...";
>  		return ${EX_USAGE};
>  	fi
> @@ -104,7 +104,7 @@ function man_section()
>  	|xargs wc -l \
>  	|grep -v -e '\b1 ' -e '\btotal\b' \
>  	|awk '{ print $2 }' \
> -	|sort -V \
> +	|sort \
>  	|while read -r manpage; do
>  		cat \
>  		<(<${manpage} sed -n '/^\.TH/,/^\.SH/{/^\.SH/!p}') \
> @@ -125,7 +125,7 @@ function man_section()
>  
>  function man_lsfunc()
>  {
> -	if ! [ -v 1 ]; then
> +	if (($# < 1)); then
>  		>&2 echo "Usage: ${FUNCNAME[0]} <manpage|manNdir>...";
>  		return ${EX_USAGE};
>  	fi
> @@ -147,7 +147,7 @@ function man_lsfunc()
>  
>  function man_lsvar()
>  {
> -	if ! [ -v 1 ]; then
> +	if (($# < 1)); then
>  		>&2 echo "Usage: ${FUNCNAME[0]} <manpage|manNdir>...";
>  		return ${EX_USAGE};
>  	fi
> @@ -172,7 +172,7 @@ function man_lsvar()
>  
>  function pdfman()
>  {
> -	if ! [ -v 1 ]; then
> +	if (($# != 1)); then
>  		>&2 echo "Usage: ${FUNCNAME[0]} <man-page.n>";
>  		return ${EX_USAGE};
>  	fi;
> @@ -209,14 +209,14 @@ function man_gitstaged()
>  
>  function grep_glibc_prototype()
>  {
> -	if ! [ -v 1 ]; then
> +	if (($# != 1)); then
>  		>&2 echo "Usage: ${FUNCNAME[0]} <func>";
>  		return ${EX_USAGE};
>  	fi
>  
>  	find * -type f \
>  	|grep '\.h$' \
> -	|sort -V \
> +	|sort \
>  	|xargs pcregrep -Mn \
>  	  "(?s)^[\w[][\w\s(,)[:\]]+\s+\**${1}\s*\([\w\s(,)[\]*]+?(...)?\)[\w\s(,)[:\]]*;" \
>  	|sed -E 's/^[^:]+:[0-9]+:/&\n/';
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
