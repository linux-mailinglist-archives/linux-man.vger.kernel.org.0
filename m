Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 48B4D3205BB
	for <lists+linux-man@lfdr.de>; Sat, 20 Feb 2021 15:37:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229632AbhBTOgi (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 20 Feb 2021 09:36:38 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40736 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229614AbhBTOgh (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 20 Feb 2021 09:36:37 -0500
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com [IPv6:2a00:1450:4864:20::534])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D7CE0C061574
        for <linux-man@vger.kernel.org>; Sat, 20 Feb 2021 06:35:56 -0800 (PST)
Received: by mail-ed1-x534.google.com with SMTP id v22so15771519edx.13
        for <linux-man@vger.kernel.org>; Sat, 20 Feb 2021 06:35:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=HxUP+OQnAZynFrT2M7LQb1c4uzAeFXse7OdXkEaapiA=;
        b=JsUMnpx86ZcOpLycXmmEqOKWgtC9Zspn/cRcPWYobYGPWrKODlp2DQ4KpDN0N71bGW
         P7sFr2YX4KXFLw1OOqj32+8xB+Dd/rIDHASYBrA/HKm2mGjatmCJ92qI4mkEOWqHHBgT
         TCwHucz6kEFEcrVmVXD5+4vkZ2KS5lWWZNGSy0ZS4/VO9ipcfdykizI01JjBj4YQ/vxR
         57rr87zAqQVJWJxaxcxvTTbi0TXSNj59eJpKqd6jGu1sA7lqIDlI9oEmy3e3zXIEVAo8
         Ht9ry6C8SCVJ+SRfublRl5BxOtQH++w1XRJEZD+x0TcSGmmm9kKaHCFGXgaeGt2XOVOY
         HgiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=HxUP+OQnAZynFrT2M7LQb1c4uzAeFXse7OdXkEaapiA=;
        b=e5Al2TJVGAyNxbkoR1rpCyzPkAuG+fTmEprEoSQf12v9ZXo9tzaRc/xQ0Pgvux4VBq
         Q6iHkApdYJXzP4VJHM8MbgAUTpg51JqFFgHc3b1gYvhbdTlrkTz57tWrK7Ax7PuR5X3P
         je+lSfD980NKLg7LpDvo7d7U4juIgVw+LG2ZNdq1Vx1VdesJFGsK27z0gJ3IDAfxbFgZ
         wW8/zHw23Tve67hR9t3Pjg18pAa2pkUE91Ip9liiiOlKL17xlZESjCIftO0V6cN1iitf
         5hkY3FZjc/5u0vHK9krYXjj92nBR4nX4QLITC9LR5umsUP6MAPL47TKERaM1YOS6stGg
         5+sQ==
X-Gm-Message-State: AOAM532W2y1fnikFlPCld+rUQ8EGoL9yLYBSNu8EygvnOXW0lP0c+Q65
        XSxwi2fDFlH2sjyC84m2spcW6FBo9EgQPQ==
X-Google-Smtp-Source: ABdhPJyjhkgSPF9L1I8RTap8FT4L4KoYx3lXxglSnow1kH2JDUYNGLllitpwS60u6YxuSe7ca+dKNA==
X-Received: by 2002:a05:6402:10c3:: with SMTP id p3mr14077348edu.67.1613831755484;
        Sat, 20 Feb 2021 06:35:55 -0800 (PST)
Received: from ?IPv6:2001:a61:3a2d:1d01:99ab:4f20:ed7f:402b? ([2001:a61:3a2d:1d01:99ab:4f20:ed7f:402b])
        by smtp.gmail.com with ESMTPSA id z16sm6483849ejd.102.2021.02.20.06.35.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 20 Feb 2021 06:35:55 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        Walter Harms <wharms@bfs.de>
Subject: Re: [PATCH v9] scripts/bash_aliases: Add useful functions
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210215131522.450666-11-alx.manpages@gmail.com>
 <20210219143221.108935-1-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <8dbf975a-200f-ccf5-85a9-5dca4b6d3268@gmail.com>
Date:   Sat, 20 Feb 2021 15:35:54 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <20210219143221.108935-1-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hey Alex,

On 2/19/21 3:32 PM, Alejandro Colomar wrote:
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
> 
> v2:
> 	- Reword license to adequate it for many functions instead
> 	  of a single program.
> 	- Add a trailing ';' for consistency.
> v3:
> 	- Resend to avoid confusion:  I forgot to use [PATCH v2]!
> v4:
> 	- grep_glibc_prototype(): Fix some corner cases where
> 	  a function invocation was printed.
> v5:
> 	- grep_glibc_prototype(): Fix some corner cases where
> 	  a function prototype with many attributes wasn't printed.
> v6:
> 	- man_lsfunc(): Allow listing more than one dir.
> 	  Example: $ man_lsfunc man[23];
> v7:
> 	- grep_glibc_prototype(): Fix some corner cases where
> 	  a function invocation was printed.
> v8:
> 	- grep_glibc_prototype():
> 		- Print attributes before the prototype too.
> 		  (AFAICS, there are none; but just in case...)
> 		- Accept C2x attributes (glibc doesn't use them yet,
> 		  but it doesn't hurt to accept them).
> v9:
> 	- grep_glibc_prototype(): Accept namespaced C2x attributes,
> 	  such as [[gnu::nonnull]].

I'm wondering if I should apply this, or wait until you hit SEND
again :-).

Cheers,

Michael

> ---
>  scripts/bash_aliases | 171 +++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 171 insertions(+)
>  create mode 100644 scripts/bash_aliases
> 
> diff --git a/scripts/bash_aliases b/scripts/bash_aliases
> new file mode 100644
> index 000000000..5e4b424af
> --- /dev/null
> +++ b/scripts/bash_aliases
> @@ -0,0 +1,171 @@
> +# SPDX-License-Identifier: GPL-2.0-only
> +########################################################################
> +#
> +# (C) Copyright 2021, Alejandro Colomar
> +# These functions are free software; you can redistribute them and/or
> +# modify them under the terms of the GNU General Public License
> +# as published by the Free Software Foundation; version 2.
> +#
> +# These functions are distributed in the hope that they will be useful,
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
> +	find "${@}" -type f \
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
> +# Usage example:  .../man-pages$ pdfman man2/membarrier.2;
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
> +	  "(?s)^[\w[][\w\s(,)[:\]]+\s+\**${1}\s*\([\w\s(,)[\]*]+?(...)?\)[\w\s(,)[:\]]*;" \
> +	|sed -E 's/^[^:]+:[0-9]+:/&\n/';
> +}
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
