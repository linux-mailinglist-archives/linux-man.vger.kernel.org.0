Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6C41A31BA8A
	for <lists+linux-man@lfdr.de>; Mon, 15 Feb 2021 14:52:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229666AbhBONuj (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 15 Feb 2021 08:50:39 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45326 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230203AbhBONug (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 15 Feb 2021 08:50:36 -0500
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D9A6AC061786
        for <linux-man@vger.kernel.org>; Mon, 15 Feb 2021 05:36:38 -0800 (PST)
Received: by mail-wr1-x42b.google.com with SMTP id v1so8911913wrd.6
        for <linux-man@vger.kernel.org>; Mon, 15 Feb 2021 05:36:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=PGH/kHrDcWr+sq1oEi4dLIbghoZ6D6x+HjXAaft00Qc=;
        b=mqXeySFrf04XGtd5XU1Hica9pUtr236V/jHC2WrBgQMFggkFfmUicnzLvXVbh+W6mg
         feVpprvArLiZEzzrkPZX4bwXvP8xKsorhUguvo5OA9aihZxANpuzv7LNIwXKRKlIkB/j
         7l5oqFfGYr3iRRDvnVnGiZUxvEb9u52BzfTsEYlQ7GhJBkBX35O/JMC9Dwz1lLjKijqm
         +tFWuVbVOzD9e4cSWXmYfpCZRV2VBP+E+wrV7N5jy18elnqc8kFQo/QFaU9wQ+PEK54c
         TYQ2ZCLQL/kSTuI94/kE0vGMvIytJsOPHsO9NftZPM0QfZZMXMDNGuMVjM86cXyR+bq7
         6EYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=PGH/kHrDcWr+sq1oEi4dLIbghoZ6D6x+HjXAaft00Qc=;
        b=WfKBWiXI7SEOankeg+Xc8ZH6GEANjNuwRySJb0mpqbSxzmypb0hfD/SyiGhONHm6Xt
         AMQVQ5XmBpSMAV8b0YTSrxXJdR3EY2QX7vjb+nyK8/KQ/yfrY9lTkgGFtR0bIv4+gFcl
         O6ekCla0qYMJAuhmbWZW2yq2xGQZ2KUCP1uxsfNNTFpQKV6SKRtRmbQ+yeXAPCt4Wgrm
         8cTGudEyHFSxwVCvAWe3NvgJTtYXpXpRVsK+R7BgPw1SkF62No6qQ9J6AGnhwDu43vRS
         eakyEcmanVLWJgQ0YfxA7ueElIp4VPIgDCG++K5kWgTCD/wwN8s+awjYmESzIL0Xgma9
         KEZw==
X-Gm-Message-State: AOAM533VpNG56CwuE9oy/pUpWsfjVUlMA6yG0k9SK1iWO6dRbEQsHhZD
        MSK/7Cp47u4Qv+Hpbn3UrmCtRaHinEM=
X-Google-Smtp-Source: ABdhPJzjDQfD7/oCYkbItY/HZtvjjMSnAwPyk0ovovOZjZOfuAFq6K7rOHtAaNXZ72YYGQooZteCsA==
X-Received: by 2002:a5d:4250:: with SMTP id s16mr18765766wrr.297.1613396197645;
        Mon, 15 Feb 2021 05:36:37 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with UTF8SMTPSA id t30sm20570843wra.56.2021.02.15.05.36.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Feb 2021 05:36:37 -0800 (PST)
Subject: Re: [PATCH] scripts/bash_aliases: Add useful functions
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
References: <20210215131522.450666-11-alx.manpages@gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <de484d8e-9a91-1fb4-f198-8cfee370dba1@gmail.com>
Date:   Mon, 15 Feb 2021 14:36:36 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:84.0) Gecko/20100101
 Thunderbird/84.0
MIME-Version: 1.0
In-Reply-To: <20210215131522.450666-11-alx.manpages@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 2/15/21 2:15 PM, Alejandro Colomar wrote:
> That file should be sourced (.) from 'bashrc' (or 'bash_aliases').
> 
> It contains functions that are useful for the maintenance of this
> project.
> 
> - grep_syscall()
> - grep_syscall_def()
> - man_section()
> - man_lsfunc()
> - pdfman()
> - grep_glibc_prototype()
> 
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
> ---
>  scripts/bash_aliases | 172 +++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 172 insertions(+)
>  create mode 100644 scripts/bash_aliases
> 
> diff --git a/scripts/bash_aliases b/scripts/bash_aliases
> new file mode 100644
> index 000000000..4fcd66e62
> --- /dev/null
> +++ b/scripts/bash_aliases
> @@ -0,0 +1,172 @@
> +# SPDX-License-Identifier: GPL-2.0-only
> +########################################################################
> +#
> +# (C) Copyright 2021, Alejandro Colomar
> +# This program is free software; you can redistribute it and/or
> +# modify it under the terms of the GNU General Public License
> +# as published by the Free Software Foundation; version 2.
> +#
> +# This program is distributed in the hope that it will be useful,
> +# but WITHOUT ANY WARRANTY; without even the implied warranty of
> +# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> +# GNU General Public License for more details
> +# (http://www.gnu.org/licenses/gpl-2.0.html).
> +#
> +########################################################################
> +
> +########################################################################
> +#	Exit status
> +
> +EX_OK=0;
> +EX_USAGE=64;
> +
> +########################################################################
> +#	Linux kernel
> +
> +#  grep_syscall()  finds the prototype of a syscall in the kernel sources,
> +# printing the filename, line number, and the prototype.
> +# It should be run from the root of the linux kernel source tree.
> +# Usage example:  .../linux$ grep_syscall openat2;
> +
> +function grep_syscall()
> +{
> +	if ! [ -v 1 ]; then
> +		>&2 echo "Usage: ${FUNCNAME[0]} <syscall>";
> +		return ${EX_USAGE};
> +	fi
> +
> +	find * -type f \
> +	|grep '\.c$' \
> +	|sort -V \
> +	|xargs pcregrep -Mn "(?s)^\w*SYSCALL_DEFINE.\(${1},.*?\)" \
> +	|sed -E 's/^[^:]+:[0-9]+:/&\n/';
> +
> +	find * -type f \
> +	|grep '\.[ch]$' \
> +	|sort -V \
> +	|xargs pcregrep -Mn "(?s)^asmlinkage\s+[\w\s]+\**sys_${1}\s*\(.*?\)" \
> +	|sed -E 's/^[^:]+:[0-9]+:/&\n/';
> +}
> +
> +#  grep_syscall_def()  finds the definition of a syscall in the kernel sources,
> +# printing the filename, line number, and the function definition.
> +# It should be run from the root of the linux kernel source tree.
> +# Usage example:  .../linux$ grep_syscall_def openat2;
> +
> +function grep_syscall_def()
> +{
> +	if ! [ -v 1 ]; then
> +		>&2 echo "Usage: ${FUNCNAME[0]} <syscall>";
> +		return ${EX_USAGE};
> +	fi
> +
> +	find * -type f \
> +	|grep '\.c$' \
> +	|sort -V \
> +	|xargs pcregrep -Mn "(?s)^\w*SYSCALL_DEFINE.\(${1},.*?^}" \
> +	|sed -E 's/^[^:]+:[0-9]+:/&\n/';
> +}
> +
> +########################################################################
> +#	Linux man-pages
> +
> +#  man_section()  prints a specific manual page section (DESCRIPTION, SYNOPSIS,
> +# ...) of all manual pages in a directory (or in a single manual page file).
> +# Usage example:  .../man-pages$ man_section man2 SYNOPSIS;
> +
> +function man_section()
> +{
> +	if ! [ -v 2 ]; then
> +		>&2 echo "Usage: ${FUNCNAME[0]} <dir> <section>";
> +		return ${EX_USAGE};
> +	fi
> +
> +	find "${1}" -type f \
> +	|xargs grep -l "\.SH ${2}" \
> +	|sort -V \
> +	|while read -r manpage; do
> +		<${manpage} \
> +		sed -n \
> +			-e '/^\.TH/,/^\.SH/{/^\.SH/!p}' \
> +			-e "/^\.SH ${2}/p" \
> +			-e "/^\.SH ${2}/,/^\.SH/{/^\.SH/!p}" \
> +		|man -P cat -l - 2>/dev/null;
> +	done;
> +}
> +
> +#  man_lsfunc()  prints the name of all C functions declared in the SYNOPSIS
> +# of all manual pages in a directory (or in a single manual page file).
> +# Each name is printed in a separate line
> +# Usage example:  .../man-pages$ man_lsfunc man2;
> +
> +function man_lsfunc()
> +{
> +	if ! [ -v 1 ]; then
> +		>&2 echo "Usage: ${FUNCNAME[0]} <dir>";
> +		return ${EX_USAGE};
> +	fi
> +
> +	find "${1}" -type f \
> +	|xargs grep -l "\.SH SYNOPSIS" \
> +	|sort -V \
> +	|while read -r manpage; do
> +		<${manpage} \
> +		sed -n \
> +			-e '/^\.TH/,/^\.SH/{/^\.SH/!p}' \
> +			-e "/^\.SH SYNOPSIS/p" \
> +			-e "/^\.SH SYNOPSIS/,/^\.SH/{/^\.SH/!p}" \
> +		|sed \
> +			-e '/Feature/,$d' \
> +			-e '/{/,/}/d' \
> +		|man -P cat -l - 2>/dev/null;
> +	done \
> +	|sed -n "/^SYNOPSIS/,/^\w/p" \
> +	|grep '^       \w' \
> +	|grep -v ':' \
> +	|sed 's/^[^(]* \**\(\w*\)(.*/\1/' \
> +	|grep '^\w' \
> +	|uniq;
> +}
> +
> +#  pdfman()  reanders a manual page in PDF
> +# Usage example:  .../man-pages$ pdfman man2/membarrier.2

Hi Michael,

Please, add a ';' there for consistency.

Thanks,

Alex

> +
> +function pdfman()
> +{
> +	if ! [ -v 1 ]; then
> +		>&2 echo "Usage: ${FUNCNAME[0]} <man-page.n>";
> +		return ${EX_USAGE};
> +	fi;
> +
> +	local tmp="$(mktemp -t "${1##*/}.XXXXXX")";
> +
> +	<${1} \
> +	man -Tps -l - \
> +	|ps2pdf - - \
> +	>${tmp};
> +	xdg-open ${tmp};
> +}
> +
> +########################################################################
> +#	Glibc
> +
> +#  grep_glibc_prototype()  finds a function prototype in the glibc sources,
> +# printing the filename, line number, and the prototype.
> +# It should be run from the root of the glibc source tree.
> +# Usage example:  .../glibc$ grep_glibc_prototype printf;
> +
> +function grep_glibc_prototype()
> +{
> +	if ! [ -v 1 ]; then
> +		>&2 echo "Usage: ${FUNCNAME[0]} <func>";
> +		return ${EX_USAGE};
> +	fi
> +
> +	find * -type f \
> +	|grep '\.h$' \
> +	|sort -V \
> +	|xargs pcregrep -Mn \
> +	  "(?s)^[^\s#][\w\s]+\s+\**${1}\s*\([\w\s()[\]*,]*?(...)?\)[\w\s()]*;" \
> +	|sed -E 's/^[^:]+:[0-9]+:/&\n/';
> +}
> +
> 


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
