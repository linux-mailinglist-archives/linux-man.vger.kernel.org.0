Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 08806326D7C
	for <lists+linux-man@lfdr.de>; Sat, 27 Feb 2021 16:10:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230010AbhB0PKX (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 27 Feb 2021 10:10:23 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56344 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229953AbhB0PKU (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 27 Feb 2021 10:10:20 -0500
Received: from mail-pg1-x52f.google.com (mail-pg1-x52f.google.com [IPv6:2607:f8b0:4864:20::52f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A5EE1C06174A
        for <linux-man@vger.kernel.org>; Sat, 27 Feb 2021 07:09:40 -0800 (PST)
Received: by mail-pg1-x52f.google.com with SMTP id t25so8130289pga.2
        for <linux-man@vger.kernel.org>; Sat, 27 Feb 2021 07:09:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=P3oS4lAYML3Dzzv/k2CeIkLEU4XE9MilzrzZ+U3KAco=;
        b=oX5OzbefE2PuyBpthK4YE/xp5LwTXeFaBj0XCiWkkN00AKk5aj5CtUeCgtujZ6k9vv
         TmbUJsQA7z4gp455BHTSpba9anaiKrS/e64s7ztMkvfGZpywJY3UvoI8oKPIiU1MGpUg
         1vo7Nva+oknZYY8JGL/Kt2IOD9PLZuV09j0iaA36wCjsrvxgfY3uljB6toLK1lmBWGDf
         4qNC7lwYzKFe5n6pGbOhHYWt8keRBEdrVnctu1s10n+wV0hbkz3I8teNLasCDrbGRFr7
         9vChlhZvP8eZ0A3gLABOJj41xUy8MRoAsPgOf2OtJhQ5XsQn4Gnl2EPJ5Qzu2L6BfPty
         piQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=P3oS4lAYML3Dzzv/k2CeIkLEU4XE9MilzrzZ+U3KAco=;
        b=KToxsLY94+7mFPMWeCvAVeS1VyZ1Fo1Yr1qyTmYRV/nHJ7D2sEbcbI3cRYWhG9fRZ1
         amIvQ5X2fvFJWUDco/+7zfefV3fYzpmyo0yvb8RTqa+jP69wWEs5VipVGue0eifo70cb
         LUq5eSG5w9GmLYGt782/uloN8MHd0+mverxSHB2wfm132G5TpfW3HQY+x2/t0JjTvwCp
         KfyzKQ3vqa0XatmpYVAvyGY35tv4I6QKAuDX/eQY+G/QCJ6c2I03j2EEdFbb4+hnzl6o
         vbFVH4LTcuuYELYyu/YAIThA7RQiLXODxRc7ez+OMgVOaLRcye0xhov9DY6M7qk6b4rD
         M8SA==
X-Gm-Message-State: AOAM530iCGWF8R3gKfMd9ouoAQqscREVy7Ej6sF0c7fK41/6Xd4hl/5G
        8UWnLezl5zxtmQNeUQLGt8tPWqCgwV45M+7fADc=
X-Google-Smtp-Source: ABdhPJzbkqpA2UQ/sEmM8tSWrSdI3HlPALzb0hL/3SPYe0bfx7oigXebpKP71HUVeN1j1luhYIwTEtoryjTwsp//bLI=
X-Received: by 2002:a62:68c1:0:b029:1ee:5dfa:860b with SMTP id
 d184-20020a6268c10000b02901ee5dfa860bmr2272490pfc.35.1614438580011; Sat, 27
 Feb 2021 07:09:40 -0800 (PST)
MIME-Version: 1.0
References: <20210215131522.450666-11-alx.manpages@gmail.com> <20210219143221.108935-1-alx.manpages@gmail.com>
In-Reply-To: <20210219143221.108935-1-alx.manpages@gmail.com>
From:   Stefan Puiu <stefan.puiu@gmail.com>
Date:   Sat, 27 Feb 2021 17:09:28 +0200
Message-ID: <CACKs7VAD69B2+rRPkXLwy0YtVOswvbqJjvvMNQ_rdQoBjF-sow@mail.gmail.com>
Subject: Re: [PATCH v9] scripts/bash_aliases: Add useful functions
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>,
        lnx-man <linux-man@vger.kernel.org>, Walter Harms <wharms@bfs.de>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alejandro,

Sorry for jumping in this discussion so late, but I was wondering
about one thing (see below).

On Fri, Feb 19, 2021 at 4:38 PM Alejandro Colomar
<alx.manpages@gmail.com> wrote:
>
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
>         - Reword license to adequate it for many functions instead
>           of a single program.
>         - Add a trailing ';' for consistency.
> v3:
>         - Resend to avoid confusion:  I forgot to use [PATCH v2]!
> v4:
>         - grep_glibc_prototype(): Fix some corner cases where
>           a function invocation was printed.
> v5:
>         - grep_glibc_prototype(): Fix some corner cases where
>           a function prototype with many attributes wasn't printed.
> v6:
>         - man_lsfunc(): Allow listing more than one dir.
>           Example: $ man_lsfunc man[23];
> v7:
>         - grep_glibc_prototype(): Fix some corner cases where
>           a function invocation was printed.
> v8:
>         - grep_glibc_prototype():
>                 - Print attributes before the prototype too.
>                   (AFAICS, there are none; but just in case...)
>                 - Accept C2x attributes (glibc doesn't use them yet,
>                   but it doesn't hurt to accept them).
> v9:
>         - grep_glibc_prototype(): Accept namespaced C2x attributes,
>           such as [[gnu::nonnull]].
>
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
> +#      Exit status
> +
> +EX_OK=0;
> +EX_USAGE=64;
> +
> +########################################################################
> +#      Linux kernel
> +
> +#  grep_syscall()  finds the prototype of a syscall in the kernel sources,
> +# printing the filename, line number, and the prototype.
> +# It should be run from the root of the linux kernel source tree.
> +# Usage example:  .../linux$ grep_syscall openat2;
> +
> +function grep_syscall()
> +{
> +       if ! [ -v 1 ]; then
> +               >&2 echo "Usage: ${FUNCNAME[0]} <syscall>";
> +               return ${EX_USAGE};
> +       fi
> +
> +       find * -type f \
> +       |grep '\.c$' \
> +       |sort -V \
> +       |xargs pcregrep -Mn "(?s)^\w*SYSCALL_DEFINE.\(${1},.*?\)" \
> +       |sed -E 's/^[^:]+:[0-9]+:/&\n/';
> +
> +       find * -type f \
> +       |grep '\.[ch]$' \

Any reason not to use "find . -type f -name '*.[ch]'" when you need to
restrict the files you're looking at? I would expect that to be
faster. Also, not sure what you are trying to do with 'sort -V' - why
not feed the results directly to pcregrep?

> +       |sort -V \
> +       |xargs pcregrep -Mn "(?s)^asmlinkage\s+[\w\s]+\**sys_${1}\s*\(.*?\)" \
> +       |sed -E 's/^[^:]+:[0-9]+:/&\n/';
> +}
> +
> +#  grep_syscall_def()  finds the definition of a syscall in the kernel sources,
> +# printing the filename, line number, and the function definition.
> +# It should be run from the root of the linux kernel source tree.
> +# Usage example:  .../linux$ grep_syscall_def openat2;
> +
> +function grep_syscall_def()
> +{
> +       if ! [ -v 1 ]; then
> +               >&2 echo "Usage: ${FUNCNAME[0]} <syscall>";
> +               return ${EX_USAGE};
> +       fi
> +
> +       find * -type f \
> +       |grep '\.c$' \
> +       |sort -V \
> +       |xargs pcregrep -Mn "(?s)^\w*SYSCALL_DEFINE.\(${1},.*?^}" \
> +       |sed -E 's/^[^:]+:[0-9]+:/&\n/';
> +}
> +
> +########################################################################
> +#      Linux man-pages
> +
> +#  man_section()  prints a specific manual page section (DESCRIPTION, SYNOPSIS,
> +# ...) of all manual pages in a directory (or in a single manual page file).
> +# Usage example:  .../man-pages$ man_section man2 SYNOPSIS;
> +
> +function man_section()
> +{
> +       if ! [ -v 2 ]; then
> +               >&2 echo "Usage: ${FUNCNAME[0]} <dir> <section>";
> +               return ${EX_USAGE};
> +       fi
> +
> +       find "${1}" -type f \
> +       |xargs grep -l "\.SH ${2}" \
> +       |sort -V \
> +       |while read -r manpage; do
> +               <${manpage} \
> +               sed -n \
> +                       -e '/^\.TH/,/^\.SH/{/^\.SH/!p}' \
> +                       -e "/^\.SH ${2}/p" \
> +                       -e "/^\.SH ${2}/,/^\.SH/{/^\.SH/!p}" \
> +               |man -P cat -l - 2>/dev/null;
> +       done;
> +}
> +
> +#  man_lsfunc()  prints the name of all C functions declared in the SYNOPSIS
> +# of all manual pages in a directory (or in a single manual page file).
> +# Each name is printed in a separate line
> +# Usage example:  .../man-pages$ man_lsfunc man2;
> +
> +function man_lsfunc()
> +{
> +       if ! [ -v 1 ]; then
> +               >&2 echo "Usage: ${FUNCNAME[0]} <dir>";
> +               return ${EX_USAGE};
> +       fi
> +
> +       find "${@}" -type f \
> +       |xargs grep -l "\.SH SYNOPSIS" \
> +       |sort -V \
> +       |while read -r manpage; do
> +               <${manpage} \
> +               sed -n \
> +                       -e '/^\.TH/,/^\.SH/{/^\.SH/!p}' \
> +                       -e "/^\.SH SYNOPSIS/p" \
> +                       -e "/^\.SH SYNOPSIS/,/^\.SH/{/^\.SH/!p}" \
> +               |sed \
> +                       -e '/Feature/,$d' \
> +                       -e '/{/,/}/d' \
> +               |man -P cat -l - 2>/dev/null;
> +       done \
> +       |sed -n "/^SYNOPSIS/,/^\w/p" \
> +       |grep '^       \w' \
> +       |grep -v ':' \
> +       |sed 's/^[^(]* \**\(\w*\)(.*/\1/' \
> +       |grep '^\w' \
> +       |uniq;
> +}
> +
> +#  pdfman()  reanders a manual page in PDF
> +# Usage example:  .../man-pages$ pdfman man2/membarrier.2;
> +
> +function pdfman()
> +{
> +       if ! [ -v 1 ]; then
> +               >&2 echo "Usage: ${FUNCNAME[0]} <man-page.n>";
> +               return ${EX_USAGE};
> +       fi;
> +
> +       local tmp="$(mktemp -t "${1##*/}.XXXXXX")";
> +
> +       <${1} \
> +       man -Tps -l - \
> +       |ps2pdf - - \
> +       >${tmp};
> +       xdg-open ${tmp};
> +}
> +
> +########################################################################
> +#      Glibc
> +
> +#  grep_glibc_prototype()  finds a function prototype in the glibc sources,
> +# printing the filename, line number, and the prototype.
> +# It should be run from the root of the glibc source tree.
> +# Usage example:  .../glibc$ grep_glibc_prototype printf;
> +
> +function grep_glibc_prototype()
> +{
> +       if ! [ -v 1 ]; then
> +               >&2 echo "Usage: ${FUNCNAME[0]} <func>";
> +               return ${EX_USAGE};
> +       fi
> +
> +       find * -type f \
> +       |grep '\.h$' \
> +       |sort -V \
> +       |xargs pcregrep -Mn \
> +         "(?s)^[\w[][\w\s(,)[:\]]+\s+\**${1}\s*\([\w\s(,)[\]*]+?(...)?\)[\w\s(,)[:\]]*;" \
> +       |sed -E 's/^[^:]+:[0-9]+:/&\n/';
> +}
> --
> 2.30.1.721.g45526154a5
>
