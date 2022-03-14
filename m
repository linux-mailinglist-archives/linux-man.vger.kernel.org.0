Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 291764D866D
	for <lists+linux-man@lfdr.de>; Mon, 14 Mar 2022 15:05:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235381AbiCNOHE (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 14 Mar 2022 10:07:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36368 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242120AbiCNOHD (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 14 Mar 2022 10:07:03 -0400
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6A82F641B
        for <linux-man@vger.kernel.org>; Mon, 14 Mar 2022 07:05:52 -0700 (PDT)
Received: by mail-wr1-x431.google.com with SMTP id k24so24165836wrd.7
        for <linux-man@vger.kernel.org>; Mon, 14 Mar 2022 07:05:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=B8m6bNWZRwtvJr5kG3MXYw9ABOi6Tpij1rzgzfHA53Q=;
        b=EJMneMaIxOgkfKXBgZ9AwYHxg8OCEwUoI8wjViFc9pHm9n9mXxwyZVV6+lEznTjBSS
         9bxVTFgjEJkrROg95uqAu6Bg2A2qMTrVrC9WVfv0BQ0SlYQR6JAxWkqDYBZX3wSLf+SM
         hwLLDQ/goTTHzabq89LMOtJDoKEZq4CLTw/11KK1cXmwG+FbD+85a82Nv9mOrWosR4Ez
         wAlfZ9+w9HYRvca8uQ+hCNDV0rFQ3fR26bSfit3aMwn/36P20Fwebho4IcJra1xIOyWu
         TXTwdzbuRZk05UrBiat0rY2dAfyRmSc02ZszJDaRAw8lq3MbCpPHpOiic+CMN4tghhwS
         wm6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=B8m6bNWZRwtvJr5kG3MXYw9ABOi6Tpij1rzgzfHA53Q=;
        b=qsPM0P1MtssS9naSjxo6je0/PwMh3G3saFikWPqhCfJc4HRIZdizOL2ToJ98hPqzm6
         FrZkbHEETtDZZ3Ta/0WtujQUac7ujefpQRrJJpV7vWY8HOm2Lj+58oOOo7jM5B1dFl2s
         /LI1N0rCcAlREvsDuX1YwC/XNMxB/HFGZMGw3WWX8iS1PSfBEG7692XPtk4jLaKzAFE0
         +smTMz0gU+atE8nvyjjV3rrcEEkEwzyJNIsAHwFx7Kt5tvbj6BXZ5YkFdLsUmNCbxSHe
         qtkAgHY0aFPbGz4stO3SaDPHOrvhJWHiLBZ3suaLAnjY7qqytsl0MYDbPCtikl4nYnmp
         J14Q==
X-Gm-Message-State: AOAM533LTxXgmZAGN18GsYeV3uhrpS7AupDbKlYZvf76kX1O5sVjlkqa
        QbIeoDWumFBqWA8sn5g7+MdsPCO894kAEmwi
X-Google-Smtp-Source: ABdhPJwuLoLDSueN1p5a/LfJi9QRWeONzOxeyniDepcyMrhZyE4AmJw2ECysa33Gid9Kf0nWEMnoYQ==
X-Received: by 2002:adf:eb86:0:b0:1e6:8c92:af6b with SMTP id t6-20020adfeb86000000b001e68c92af6bmr16472029wrn.116.1647266751279;
        Mon, 14 Mar 2022 07:05:51 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id r2-20020a5d6942000000b001f0485057c4sm14028809wrw.74.2022.03.14.07.05.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Mar 2022 07:05:50 -0700 (PDT)
Message-ID: <2678e0e8-0057-7b63-a3a0-9f49b57f0cf4@gmail.com>
Date:   Mon, 14 Mar 2022 15:05:49 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.2
Subject: Re: [patch] Add docs on mount namespace rootfs access and pid
 namespace pid mapping
Content-Language: en-US
To:     Craig Ringer <craig.ringer@enterprisedb.com>,
        linux-man@vger.kernel.org
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
References: <CAGRY4nx5R6d5iH1SUZHEuJO+M67h1p1zLNQB_6F6X5GGBKFYeg@mail.gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
In-Reply-To: <CAGRY4nx5R6d5iH1SUZHEuJO+M67h1p1zLNQB_6F6X5GGBKFYeg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Craig,

On 3/14/22 07:10, Craig Ringer wrote:
> The attached 4-patch series adds information to the mount namespaces
> and pid namespaces documentation to help users discover how to access
> important related information.
> 
> 1. Elaborate on /proc/[pid]/root and x-ref it
> 2. Mention /proc/$pid/status NSpid in pid_namespaces
> 3. Mention pid namespaces /proc/[pid]/root/proc
> 4. Additional namespaces related x-refs
> 
> 1): Mention /proc/[pid]/root in mount_namespaces(7) to help people
> discover how to access the file system tree seen by a process in
> another mount namespace. In the proc (5) entry for it, warn about the
> possibly-confusing semantics of readlink() vs following the path in
> the vfs layer.
> 
>   Adding because I found it difficult to figure out how to access the
> file system seen by another process in a disjoint chroot in a
> non-ancestor mount namespace.
> 
> 2): Mention the /proc/[pid]/status NSpid field and related fields in
> pid_namespaces (7) to help people discover how to map process IDs
> between a parent namespace and any child namespace(s) the process is
> in.
> 
>   Adding because I found it difficult to discover how to map pids
> between namespaces.
> 
> 3): Mention how /proc/[pid]/root/proc behaves when [pid] is in a
> different pid namespace. It's useful to know that you can see another
> process's view of procfs via its /proc/[pid]/root link.
> 
> 4): Some minor cross-references and see-alsos that would've helped me
> during unrelated past efforts.

PATCH 1/4:

> Subject: [PATCH v1 1/4] Elaborate on /proc/[pid]/root and x-ref it

Please mention the modified page(s) in the Subject line.
See <https://www.kernel.org/doc/man-pages/patches.html>.

Also, per the same documentation, please send the patches inline (or
inline + attached if your mailer is likely to break the patches) if you
can, since it's easier for us to review and work with them.

> 
> Mention /proc/[pid]/{root,cwd,exe,fds} in mount_namespaces (7)
> to help users understand how to access the file system tree of
> a process in different mount namespace and possibly-disjoint
> chroot.
> 
> In proc (5) provide a little more detail on how links like
> /proc/[pid]/root behave when read with readlink (2) vs when
> resolved via kernel vfs layer path lookup. It can be quite confusing
> that "readlink /proc/$pid/root" prints "/" so
> "ls $(readlink /proc/$pid/root)" has the same result as "ls /" but
> "ls /proc/$pid/root/" actually lists the target pid's root.
> 
> Signed-off-by: Craig Ringer <craig.ringer@2ndquadrant.com>
> ---
>  man5/proc.5             | 29 ++++++++++++++++++++++++++++-
>  man7/mount_namespaces.7 | 14 ++++++++++++++
>  2 files changed, 42 insertions(+), 1 deletion(-)
> 
> diff --git a/man5/proc.5 b/man5/proc.5
> index c6684620e..2eed160e2 100644
> --- a/man5/proc.5
> +++ b/man5/proc.5
> @@ -658,6 +658,12 @@ are not available if the main thread has already terminated
>  (typically by calling
>  .BR pthread_exit (3)).
>  .IP
> +If the process is in a chroot and/or a different mount namespace, reading the

Please use semantic newlines
(i.e., break after that comma, instead of just before col 80).
See man-pages(7):

STYLE GUIDE
       [...]
   Use semantic newlines
       In the source of a manual page, new sentences  should  be
       started on new lines, long sentences should be split into
       lines  at  clause breaks (commas, semicolons, colons, and
       so on), and long clauses should be split at phrase bound‐
       aries.  This convention,  sometimes  known  as  "semantic
       newlines",  makes it easier to see the effect of patches,
       which often operate at the level of individual sentences,
       clauses, or phrases.

> +symlink path will return the executable path relative to the process's root.
> +Opening the path within the kernel vfs layer will yield the actual executable
> +contents even if  the path does may not exist within the currently active mount
> +namespace.
> +.IP
>  Permission to dereference or read
>  .RB ( readlink (2))
>  this symbolic link is governed by a ptrace access mode
> @@ -1830,7 +1836,8 @@ and
>  .IP
>  Note however that this file is not merely a symbolic link.
>  It provides the same view of the filesystem (including namespaces and the
> -set of per-process mounts) as the process itself.
> +set of per-process mounts) as the process itself
> +if dereferenced via the kernel vfs layer.
>  An example illustrates this point.
>  In one terminal, we start a shell in new user and mount namespaces,
>  and in that shell we create some new mounts:
> @@ -1866,6 +1873,26 @@ sh2# \fBls /usr | wc \-l\fP                  # /usr in initial NS
>  .EE
>  .in
>  .IP
> +If the target process is in a different mount namespace
> +and has a different root, following the
> +.B /proc/[pid]/root
> +link directly will resolve paths relative to the target
> +process's root. But
> +.BR readlink (2)
> +will return the root path as seen from within the target process's mount
> +namespace. Tools that canonicalize paths or resolve symbolic links in

Always start sentences after '.' in a new line.
That's already covered by "semantic newlines" (see above),
but it's especially important in this case because
groff(1) prints (at least) 2 spaces after '.' normally,
but if you write it this way it doesn't.

BTW, Branden,
I CCd you because I didn't find this documented in groff(7),
or at least I couldn't find it.
I tried /\.[^ [a-z]] and also keywords like period, point or dot,
but no luck.
Is it documented anywhere?

> +user-space will not be able to see the target process's root. So
> +.B ls $(realpath /proc/[pid]/root)

Commands should use italics (.I) instead of bold (.B).
See man-pages(7):

[
STYLE GUIDE
       [...]
   Formatting conventions (general)
       [...]
       Complete commands should, if long, be written as  an  in‐
       dented  line  on  their own, with a blank line before and
       after the command, for example

           man 7 man-pages

       If the command is short, then it can be  included  inline
       in  the  text,  in italic format, for example, man 7 man-
       pages.  In this case, it may be worth  using  nonbreaking
       spaces  (\~)  at suitable places in the command.  Command
       options should be written in italics (e.g., -l).
]

Variable text inside running italics should be in roman.
So instead of writing [pid], you should use:
.IR "ls $(realpath /proc/" pid /root)

See groff_man_style(7):

[
Description
       [...]
   Font style macros
       [...]
       .I [text]
              Set text in italics.  If the macro is given no ar‐
              guments, the text of the next input line is set in
              italics.

              Use italics for file and path names, for  environ‐
              ment  variables, for C data types, for enumeration
              or  preprocessor  constants  in  C,  for  variable
              (user-determined) portions of syntax synopses, for
              the first occurrence (only) of a technical concept
              being  introduced,  for  names  of journals and of
              literary works longer than an  article,  and  any‐
              where  a  parameter  requiring  replacement by the
              user is encountered.  An exception involves  vari‐
              able  text  in a context that is already marked up
              in italics, such as file or path names with  vari‐
              able components; in such cases, follow the conven‐
              tion  of  mathematical typography: set the file or
              path name in italics as usual but  use  roman  for
              the  variable  part  (see  .IR and .RI below), and
              italics again in running roman text when referring
              to the variable material.
]

> +will expand to
> +.B ls /
> +and print the root of the invoking shell, but
> +.B ls /proc/[pid]/root/
> +will list the contents of
> +.B /
> +as seen by [pid]. See

In this case, use:
.IR pid .

Se rationale above.

> +.BR mount_namespaces (7)
> +for details.
> +.IP
>  .\" The following was still true as at kernel 2.6.13
>  In a multithreaded process, the contents of the
>  .I /proc/[pid]/root

BTW, I now realize that the manual page is currently incorrectly
formatted according to what I just said above.
So, please don't fix that in your patch,
so that the whole page is consistent with itself,
and I'll fix the whole page after your patch
(and some other pages that seem to the same problem). :)

> diff --git a/man7/mount_namespaces.7 b/man7/mount_namespaces.7
> index 7725b341f..98bfd864c 100644
> --- a/man7/mount_namespaces.7
> +++ b/man7/mount_namespaces.7
> @@ -75,6 +75,20 @@ and
>  in either mount namespace will not (by default) affect the
>  mount list seen in the other namespace
>  (but see the following discussion of shared subtrees).
> +.PP
> +The pseudo-symlinks
> +.IR /proc/[pid]/exe ,
> +.IR /proc/[pid]/root ,
> +.IR /proc/[pid]/fds ,
> +and
> +.IR /proc/[pid]/cwd
> +provide views into the mount namespace of
> +.IR [pid]
> +from outside that namespace.
> +These links provide a way to access the mount namespace seen by another process
> +- even if its root is disjoint from the current process's root. See
> +.BR proc (5)
> +for details and caveats.
>  .\"
>  .SH SHARED SUBTREES
>  After the implementation of mount namespaces was completed,
> -- 
> 2.34.1
> 

Thanks!

Alex

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
