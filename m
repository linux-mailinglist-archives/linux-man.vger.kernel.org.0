Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D57D93C3605
	for <lists+linux-man@lfdr.de>; Sat, 10 Jul 2021 20:12:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229674AbhGJSPI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 10 Jul 2021 14:15:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59880 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229490AbhGJSPI (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 10 Jul 2021 14:15:08 -0400
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8F738C0613DD;
        Sat, 10 Jul 2021 11:12:20 -0700 (PDT)
Received: by mail-wr1-x42d.google.com with SMTP id m2so6273478wrq.2;
        Sat, 10 Jul 2021 11:12:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=iIKly1dsmAYj+XpboBkSD4rxbHI54J30TQMqzhrEopI=;
        b=YlDX82YaBXrxT5YMDqAaX0R3bn8zrdLtcKknbOyrqR6aqMF+sLR6lma7D6qGtNEPQY
         9/AEFv7dEy1pPuzVP7vs4Vmd0IXejx+wyzSPLU//5hyFUgWyG1WbBvz3/yo6e86Dd+Cr
         1xW169ahnyB+5pmpnPV4aEoc2w6sRC8f0WnJwjkZEe2U31WGm6T9UZz8PzOVSYe5bqwI
         Rq9GC7uQ7m38929G2wiV90GV5hCq/VALnqU7t7bsaITFhkgxmYeWrXz595SEx4RGd6X5
         d0UFHqCB9TC9D20oH5PiurP7ipCMciISV+CKLIeSY+8igRwdkmYsqSmops+WlqMZsxTI
         xsGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=iIKly1dsmAYj+XpboBkSD4rxbHI54J30TQMqzhrEopI=;
        b=Eks+U0HfnzpXHu4M/BO8pTYbi4AxY4LGzmhO8A69//TGt3qAAa8vOqCaPE00yb6m6x
         QF1zQWYcEyMiy07JwS/2pPYvdLcFXamUJURkr6o41MOfO+nZzj3cnZOPz+kPG/l/NiiQ
         d4onG3HyYbRqW74Jl0EyTmdr5yLQ5sGGZhmMrPxFoJfn2hyA3q4XkKrNOPCSo/UEF3Qi
         12IR3yXRuLidQwa9ox06etM/Du1Ik1jFBRsoGESXPvLX0zOHVF6u8i1wUdyVaHByQSUO
         2gBxUKsd0kE0re+KLj2kBhGgl5q/KejV992Lw8ybbDuaFy9yjFN8Txieh0C3u7SAd3Fu
         MD2g==
X-Gm-Message-State: AOAM5337COkQ53Cm/Q2bCP+oVPCV3eZ2yY3/p/bj7rbCxKgukOiLtPhT
        0TOkW3oKGQ9Pm6CSIIE9lHM=
X-Google-Smtp-Source: ABdhPJw3QniTFf332GnYll0HCGBFHVZzRpSisNELWB/HOtA25n5923XWMn003bBlnOfqG+27h0RdoA==
X-Received: by 2002:adf:e107:: with SMTP id t7mr49182988wrz.165.1625940738959;
        Sat, 10 Jul 2021 11:12:18 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id y16sm9301662wrw.42.2021.07.10.11.12.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 10 Jul 2021 11:12:18 -0700 (PDT)
Subject: Re: [PATCH v1 1/4] landlock.7: Add a new page to introduce Landlock
To:     =?UTF-8?Q?Micka=c3=abl_Sala=c3=bcn?= <mic@digikod.net>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     Jann Horn <jannh@google.com>, Jonathan Corbet <corbet@lwn.net>,
        Kees Cook <keescook@chromium.org>,
        Randy Dunlap <rdunlap@infradead.org>,
        Vincent Dagonneau <vincent.dagonneau@ssi.gouv.fr>,
        landlock@lists.linux.dev, linux-kernel@vger.kernel.org,
        linux-man@vger.kernel.org, linux-security-module@vger.kernel.org,
        =?UTF-8?Q?Micka=c3=abl_Sala=c3=bcn?= <mic@linux.microsoft.com>
References: <20210706182217.32338-1-mic@digikod.net>
 <20210706182217.32338-2-mic@digikod.net>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <f8bc9f53-025b-0b1e-cd10-43dc6f8637a1@gmail.com>
Date:   Sat, 10 Jul 2021 20:12:16 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210706182217.32338-2-mic@digikod.net>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Mickaël,

On 7/6/21 8:22 PM, Mickaël Salaün wrote:
> From: Mickaël Salaün <mic@linux.microsoft.com>
> 
> From the user point of view, Landlock is a set of system calls enabling
> to build and enforce a set of access-control rules.  A ruleset can be
> created with landlock_create_ruleset(2), populated with
> landlock_add_rule(2) and enforced with landlock_restrict_self(2).  This
> man page gives an overview of the whole mechanism.  Details of these
> system calls are documented in their respective man pages.
> 
> This is an adaptation of
> https://www.kernel.org/doc/html/v5.13/userspace-api/landlock.html
> 
> Signed-off-by: Mickaël Salaün <mic@linux.microsoft.com>
> Link: https://lore.kernel.org/r/20210706182217.32338-2-mic@digikod.net

Please see a few comments below.

Thanks,

Alex

> ---
>  man7/landlock.7 | 354 ++++++++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 354 insertions(+)
>  create mode 100644 man7/landlock.7
> 
> diff --git a/man7/landlock.7 b/man7/landlock.7
> new file mode 100644
> index 000000000000..32127d3b2061
> --- /dev/null
> +++ b/man7/landlock.7
> @@ -0,0 +1,354 @@
> +.\" Copyright © 2017-2020 Mickaël Salaün <mic@digikod.net>
> +.\" Copyright © 2019-2020 ANSSI
> +.\" Copyright © 2021 Microsoft Corporation
> +.\"
> +.\" %%%LICENSE_START(VERBATIM)
> +.\" Permission is granted to make and distribute verbatim copies of this
> +.\" manual provided the copyright notice and this permission notice are
> +.\" preserved on all copies.
> +.\"
> +.\" Permission is granted to copy and distribute modified versions of this
> +.\" manual under the conditions for verbatim copying, provided that the
> +.\" entire resulting derived work is distributed under the terms of a
> +.\" permission notice identical to this one.
> +.\"
> +.\" Since the Linux kernel and libraries are constantly changing, this
> +.\" manual page may be incorrect or out-of-date.  The author(s) assume no
> +.\" responsibility for errors or omissions, or for damages resulting from
> +.\" the use of the information contained herein.  The author(s) may not
> +.\" have taken the same level of care in the production of this manual,
> +.\" which is licensed free of charge, as they might when working
> +.\" professionally.
> +.\"
> +.\" Formatted or processed versions of this manual, if unaccompanied by
> +.\" the source, must acknowledge the copyright and authors of this work.
> +.\" %%%LICENSE_END
> +.\"
> +.TH LANDLOCK 7 2021-06-27 Linux "Linux Programmer's Manual"
> +.SH NAME
> +Landlock \- security sandboxing
> +.SH DESCRIPTION
> +Landlock is a sandboxing mechanism that enables any processes to securely
> +restrict themselves and their future children.
> +Because Landlock is a stackable LSM, it makes possible to create safe
> +security sandboxes as new security layers in addition to the existing
> +system-wide access-controls.  This kind of sandbox is expected to help
> +mitigate the security impact of bugs, and unexpected or malicious behaviors
> +in applications.
> +.PP
> +A Landlock security policy is a set of access rights (e.g., open a file in
> +read-only, make a directory, etc.) tied to a file hierarchy.  Such policy
> +can be configured and enforced by processes for themselves using three
> +system calls:


See the following extract from man-pages(7):

$ man 7 man-pages | sed -n '/Use semantic newlines/,/^$/p';
   Use semantic newlines
       In the source of a manual page,  new  sentences  should  be
       started  on new lines, and long sentences should split into
       lines at clause breaks (commas, semicolons, colons, and  so
       on).   This  convention,  sometimes known as "semantic new‐
       lines", makes it easier to see the effect of patches, which
       often  operate at the level of individual sentences or sen‐
       tence clauses.

> +.IP \(bu 2
> +.BR landlock_create_ruleset (2)
> +creates a new ruleset;
> +.IP \(bu
> +.BR landlock_add_rule (2)
> +adds a new rule to a ruleset;
> +.IP \(bu
> +.BR landlock_restrict_self (2)
> +enforces a ruleset on the calling thread.
> +.PP
> +To be able to use these system calls, the running kernel must support
> +Landlock and it must be enabled at boot time.
> +.\"
> +.SS Landlock rules
> +A Landlock rule describes an action on an object.  An object is currently a
> +file hierarchy, and the related filesystem actions are defined with access
> +rights (see
> +.BR landlock_add_rule (2)
> +).  A set of rules is aggregated in a ruleset, which can
> +then restrict the thread enforcing it, and its future children.
> +.\"
> +.SS Defining and enforcing a security policy
> +We first need to create the ruleset that will contain our rules.  For this
> +example, the ruleset will contain rules that only allow read actions, but
> +write actions will be denied.  The ruleset then needs to handle both of
> +these kind of actions.  See below for the description of filesystem
> +actions.
> +.PP
> +.in +4n
> +.EX
> +int ruleset_fd;
> +struct landlock_ruleset_attr ruleset_attr = {
> +    .handled_access_fs =
> +        LANDLOCK_ACCESS_FS_EXECUTE |
> +        LANDLOCK_ACCESS_FS_WRITE_FILE |
> +        LANDLOCK_ACCESS_FS_READ_FILE |
> +        LANDLOCK_ACCESS_FS_READ_DIR |
> +        LANDLOCK_ACCESS_FS_REMOVE_DIR |
> +        LANDLOCK_ACCESS_FS_REMOVE_FILE |
> +        LANDLOCK_ACCESS_FS_MAKE_CHAR |
> +        LANDLOCK_ACCESS_FS_MAKE_DIR |
> +        LANDLOCK_ACCESS_FS_MAKE_REG |
> +        LANDLOCK_ACCESS_FS_MAKE_SOCK |
> +        LANDLOCK_ACCESS_FS_MAKE_FIFO |
> +        LANDLOCK_ACCESS_FS_MAKE_BLOCK |
> +        LANDLOCK_ACCESS_FS_MAKE_SYM,
> +};
> +
> +ruleset_fd = landlock_create_ruleset(&ruleset_attr, sizeof(ruleset_attr), 0);
> +if (ruleset_fd < 0) {
> +    perror("Failed to create a ruleset");
> +    return 1;
> +}
> +.EE
> +.in
> +.PP
> +We can now add a new rule to this ruleset thanks to the returned file
> +descriptor referring to this ruleset.  The rule will only allow reading the
> +file hierarchy
> +.I /usr

Use the following for formatting part of a "word":

.IR /usr .

See man_groff(7).

> +\&.  Without another rule, write actions would then be denied by the
> +ruleset.  To add
> +.I /usr
> +to the ruleset, we open it with the
> +.I O_PATH
> +flag and fill the
> +.I struct landlock_path_beneath_attr
> +with this file descriptor.
> +.PP
> +.in +4n
> +.EX
> +int err;
> +struct landlock_path_beneath_attr path_beneath = {
> +    .allowed_access =
> +        LANDLOCK_ACCESS_FS_EXECUTE |
> +        LANDLOCK_ACCESS_FS_READ_FILE |
> +        LANDLOCK_ACCESS_FS_READ_DIR,
> +};
> +
> +path_beneath.parent_fd = open("/usr", O_PATH | O_CLOEXEC);
> +if (path_beneath.parent_fd < 0) {
> +    perror("Failed to open file");
> +    close(ruleset_fd);
> +    return 1;
> +}
> +err = landlock_add_rule(ruleset_fd, LANDLOCK_RULE_PATH_BENEATH,
> +                        &path_beneath, 0);
> +close(path_beneath.parent_fd);
> +if (err) {
> +    perror("Failed to update ruleset");
> +    close(ruleset_fd);
> +    return 1;
> +}
> +.EE
> +.in
> +.PP
> +We now have a ruleset with one rule allowing read access to
> +.I /usr
> +while denying all other handled accesses for the filesystem.  The next step
> +is to restrict the current thread from gaining more privileges (e.g.,
> +thanks to a set-user-ID binary).
> +.PP
> +.in +4n
> +.EX
> +if (prctl(PR_SET_NO_NEW_PRIVS, 1, 0, 0, 0)) {
> +    perror("Failed to restrict privileges");
> +    close(ruleset_fd);
> +    return 1;
> +}
> +.EE
> +.in
> +.PP
> +The current thread is now ready to sandbox itself with the ruleset.
> +.PP
> +.in +4n
> +.EX
> +if (landlock_restrict_self(ruleset_fd, 0)) {
> +    perror("Failed to enforce ruleset");
> +    close(ruleset_fd);
> +    return 1;
> +}
> +close(ruleset_fd);
> +.EE
> +.in
> +.PP
> +If the
> +.BR landlock_restrict_self (2)
> +system call succeeds, the current thread is now restricted and this policy
> +will be enforced on all its subsequently created children as well.  Once a
> +thread is landlocked, there is no way to remove its security policy; only
> +adding more restrictions is allowed.  These threads are now in a new
> +Landlock domain, merge of their parent one (if any) with the new ruleset.
> +.PP
> +Full working code can be found in
> +.UR https://git.kernel.org\:/pub\:/scm\:/linux\:/kernel\:/git\:/stable\:/linux.git\:/tree\:/samples\:/landlock\:/sandboxer.c
> +.UE
> +.\"
> +.SS Filesystem actions
> +These flags enable to restrict a sandboxed process to a set of actions on
> +files and directories.  Files or directories opened before the sandboxing
> +are not subject to these restrictions.  See
> +.BR landlock_add_rule (2)
> +and
> +.BR landlock_create_ruleset (2)
> +for more context.
> +.PP
> +A file can only receive these access rights:
> +.TP
> +.BR LANDLOCK_ACCESS_FS_EXECUTE

Here it should be .B and not .BR (no roman part).  Also below...

> +Execute a file.
> +.TP
> +.BR LANDLOCK_ACCESS_FS_WRITE_FILE
> +Open a file with write access.
> +.TP
> +.BR LANDLOCK_ACCESS_FS_READ_FILE
> +Open a file with read access.
> +.PP
> +A directory can receive access rights related to files or directories.  The
> +following access right is applied to the directory itself, and the
> +directories beneath it:
> +.TP
> +.BR LANDLOCK_ACCESS_FS_READ_DIR
> +Open a directory or list its content.
> +.PP
> +However, the following access rights only apply to the content of a
> +directory, not the directory itself:
> +.TP
> +.BR LANDLOCK_ACCESS_FS_REMOVE_DIR
> +Remove an empty directory or rename one.
> +.TP
> +.BR LANDLOCK_ACCESS_FS_REMOVE_FILE
> +Unlink (or rename) a file.
> +.TP
> +.BR LANDLOCK_ACCESS_FS_MAKE_CHAR
> +Create (or rename or link) a character device.
> +.TP
> +.BR LANDLOCK_ACCESS_FS_MAKE_DIR
> +Create (or rename) a directory.
> +.TP
> +.BR LANDLOCK_ACCESS_FS_MAKE_REG
> +Create (or rename or link) a regular file.
> +.TP
> +.BR LANDLOCK_ACCESS_FS_MAKE_SOCK
> +Create (or rename or link) a UNIX domain socket.
> +.TP
> +.BR LANDLOCK_ACCESS_FS_MAKE_FIFO
> +Create (or rename or link) a named pipe.
> +.TP
> +.BR LANDLOCK_ACCESS_FS_MAKE_BLOCK
> +Create (or rename or link) a block device.
> +.TP
> +.BR LANDLOCK_ACCESS_FS_MAKE_SYM
> +Create (or rename or link) a symbolic link.
> +.\"
> +.SS Layers of file path access rights
> +Each time a thread enforces a ruleset on itself, it updates its Landlock
> +domain with a new layer of policy.  Indeed, this complementary policy is
> +composed with the potentially other rulesets already restricting this
> +thread.  A sandboxed thread can then safely add more constraints to itself
> +with a new enforced ruleset.
> +.PP
> +One policy layer grants access to a file path if at least one of its rules
> +encountered on the path grants the access.  A sandboxed thread can only
> +access a file path if all its enforced policy layers grant the access as
> +well as all the other system access controls (e.g., filesystem DAC, other
> +LSM policies, etc.).
> +.\"
> +.SS Bind mounts and OverlayFS
> +Landlock enables restricting access to file hierarchies, which means that
> +these access rights can be propagated with bind mounts (cf.
> +.BR mount_namespaces (7)
> +) but not with OverlayFS.
> +.PP
> +A bind mount mirrors a source file hierarchy to a destination.  The
> +destination hierarchy is then composed of the exact same files, on which
> +Landlock rules can be tied, either via the source or the destination path.
> +These rules restrict access when they are encountered on a path, which
> +means that they can restrict access to multiple file hierarchies at the
> +same time, whether these hierarchies are the result of bind mounts or not.
> +.PP
> +An OverlayFS mount point consists of upper and lower layers.  These layers
> +are combined in a merge directory, result of the mount point.  This merge
> +hierarchy may include files from the upper and lower layers, but
> +modifications performed on the merge hierarchy only reflects on the upper
> +layer.  From a Landlock policy point of view, each OverlayFS layers and
> +merge hierarchies are standalone and contains their own set of files and
> +directories, which is different from bind mounts.  A policy restricting an
> +OverlayFS layer will not restrict the resulted merged hierarchy, and vice
> +versa.  Landlock users should then only think about file hierarchies they
> +want to allow access to, regardless of the underlying filesystem.
> +.\"
> +.SS Inheritance
> +Every new thread resulting from a
> +.BR clone (2)
> +inherits Landlock domain restrictions from its parent.  This is similar to
> +the
> +.BR seccomp (2)
> +inheritance or any other LSM dealing with task's
> +.BR credentials (7)
> +\&.  For instance, one process's thread may apply Landlock rules to itself,
> +but they will not be automatically applied to other sibling threads (unlike
> +POSIX thread credential changes, cf.
> +.BR nptl (7)
> +).
> +.PP
> +When a thread sandboxes itself, we have the guarantee that the related
> +security policy will stay enforced on all this thread's descendants.  This
> +allows creating standalone and modular security policies per application,
> +which will automatically be composed between themselves according to their
> +runtime parent policies.
> +.\"
> +.SS Ptrace restrictions
> +A sandboxed process has less privileges than a non-sandboxed process and
> +must then be subject to additional restrictions when manipulating another
> +process.  To be allowed to use
> +.BR ptrace (2)
> +and related syscalls on a target process, a sandboxed process should have a
> +subset of the target process rules, which means the tracee must be in a
> +sub-domain of the tracer.
> +.SH VERSIONS
> +Landlock was added in Linux 5.13.
> +.SH NOTES
> +Landlock is enabled by CONFIG_SECURITY_LANDLOCK.
> +The
> +.I lsm=lsm1,...,lsmN
> +command line parameter controls the sequence of the initialization of
> +Linux Security Modules.
> +It must contain the string
> +.I landlock
> +to enable Landlock.
> +If the command line parameter is not specified,
> +the initialization falls back to the value of the deprecated
> +.I security=
> +command line parameter and further to the value of CONFIG_LSM.
> +We can check that Landlock is enabled by looking for
> +.I
> +landlock: Up and running.
> +in kernel logs.
> +.\"
> +.PP
> +It is currently not possible to restrict some file-related actions
> +accessible through these syscall families:
> +.BR chdir (2)
> +,
> +.BR truncate (2)
> +,

In a single line:

.BR truncate (2),

> +.BR stat (2)
> +,
> +.BR flock (2)
> +,
> +.BR chmod (2)
> +,
> +.BR chown (2)
> +,
> +.BR setxattr (2)
> +,
> +.BR utime (2)
> +,
> +.BR ioctl (2)
> +,
> +.BR fcntl (2)
> +,
> +.BR access (2)
> +\&.

And

.BR access (2).

> +Future Landlock evolutions will enable to restrict them.
> +.SH SEE ALSO
> +.BR landlock_create_ruleset (2),
> +.BR landlock_add_rule (2),
> +.BR landlock_restrict_self (2)
> +.PP
> +.UR https://landlock.io\:/
> +.UE
> 

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
