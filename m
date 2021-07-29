Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5B9D13DA6EE
	for <lists+linux-man@lfdr.de>; Thu, 29 Jul 2021 16:56:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229934AbhG2O4q (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 29 Jul 2021 10:56:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40022 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237056AbhG2O4q (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 29 Jul 2021 10:56:46 -0400
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1A06EC0613C1;
        Thu, 29 Jul 2021 07:56:42 -0700 (PDT)
Received: by mail-wm1-x32b.google.com with SMTP id e25-20020a05600c4b99b0290253418ba0fbso4255564wmp.1;
        Thu, 29 Jul 2021 07:56:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=pjRAlrULSePqqJGMAXLfePxQ9Y3WP9O0W5olKHeFpTA=;
        b=evmEKy1KWjLReAaTTZgqurOjeHtVzDSvKI7+Mx+gu0mC0q0qsozfH5eE3rRue49tCG
         qR5IMO6kq5OXqnraudeIpKI4TZHvj/Gntncn3Q7aM9tZsBE0gRpCuWPQLetXHBOfzVnH
         kFf6dYOxDwYU/2Py2bhwrWRVrhigaYJnU+Z2kwVEJb8zNg+BfP00Ev3OjUK1dCNS99mO
         wziEU4S1FKc2q2zhE5NY6jwgoTYZnyPE2IIGQXBTraPrbhIx7lRJIEGi5sg7VcJhJh3t
         Pe1nSB3Aqi2v73Ki9TJe7754g+OYFAx2OZ1Fu8PHKqal9b6k/ihocTK2k4G+GB+NMdum
         DevA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=pjRAlrULSePqqJGMAXLfePxQ9Y3WP9O0W5olKHeFpTA=;
        b=qytH9r0+A6OVAAlnCQCFQpbxXgGEPylz4Hg39gHemNSLLkhkQSk/N43x+licpse9/z
         oIcTPzhSG9FeaNNBRZoloDSiA7l85vLxbgVA3N2Uf5gwYcAusfi2DQ8yZxku7WfFaY74
         6fbrwZ1sTgPKHVOmjWe6hNaSWJyATV7cjrBEnGd9yK4G2c7ET+QjQQ8o6BrKn6dFWGj0
         ckcgmaqjEgtWOS/kWM5rFb4YZEUbOVpTX/0ArK3sb7p0RKWx2ob0jUTewqsvxGkG/3sY
         vcXJvVEIhYzfBkQh/2fDwl8pbLkd+ToRQp/P3XH/u8MDZEY5+uj/SdF9Zi711Z1esl6g
         WMRw==
X-Gm-Message-State: AOAM533aXP9AfQsnh3l9vspp4KZYp9vvRRlgtDSI7X3rh9CGttj42mML
        GUBIZfvZiioTftleF5uI3Es=
X-Google-Smtp-Source: ABdhPJy343CzyZphZPYeeRGDoGheslZzuhLHMYxnVx/sKO9rYKSt5IjQMPEDVTcyg2xqLubOaMu64w==
X-Received: by 2002:a1c:6306:: with SMTP id x6mr4209436wmb.81.1627570600348;
        Thu, 29 Jul 2021 07:56:40 -0700 (PDT)
Received: from [10.8.0.10] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id t17sm3708924wru.94.2021.07.29.07.56.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Jul 2021 07:56:39 -0700 (PDT)
Subject: Re: [PATCH v2 1/4] landlock.7: Add a new page to introduce Landlock
To:     =?UTF-8?Q?Micka=c3=abl_Sala=c3=bcn?= <mic@digikod.net>
Cc:     Jann Horn <jannh@google.com>, Jonathan Corbet <corbet@lwn.net>,
        Kees Cook <keescook@chromium.org>,
        Randy Dunlap <rdunlap@infradead.org>,
        Vincent Dagonneau <vincent.dagonneau@ssi.gouv.fr>,
        landlock@lists.linux.dev, linux-kernel@vger.kernel.org,
        linux-man@vger.kernel.org, linux-security-module@vger.kernel.org,
        =?UTF-8?Q?Micka=c3=abl_Sala=c3=bcn?= <mic@linux.microsoft.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
References: <20210712155745.831580-1-mic@digikod.net>
 <20210712155745.831580-2-mic@digikod.net>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <3f1b943b-2477-2c4e-c835-d6616888176c@gmail.com>
Date:   Thu, 29 Jul 2021 16:56:37 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210712155745.831580-2-mic@digikod.net>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Mickaël,

On 7/12/21 5:57 PM, Mickaël Salaün wrote:
> From: Mickaël Salaün <mic@linux.microsoft.com>
> 
>  From the user point of view, Landlock is a set of system calls enabling
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
> Link: https://lore.kernel.org/r/20210712155745.831580-2-mic@digikod.net

Please see some comments below, mostly about formatting.
The text looks good to me.

Thanks,

Alex

> ---
> 
> Changes since v1:
> * Replace all ".I" with ".IR", except when used for titles.

Sorry, but I actually prefer the opposite: Use .I unless you really need .IR

If there was a misunderstanding about this, I'm sorry.

> * Append punctuation to ".IR" and ".BR" when it makes sense (requested
>    by Alejandro Colomar).
> * Cut lines according to the semantic newline rules (requested by
>    Alejandro Colomar).
> * Remove roman style from ".TP" section titles (requested by Alejandro
>    Colomar).
> * Add comma after "i.e." and "e.g.".
> * Move the example in a new EXAMPLES section.
> * Improve title.
> * Explain the LSM acronym at first use.
> ---
>   man7/landlock.7 | 356 ++++++++++++++++++++++++++++++++++++++++++++++++
>   1 file changed, 356 insertions(+)
>   create mode 100644 man7/landlock.7
> 
> diff --git a/man7/landlock.7 b/man7/landlock.7
> new file mode 100644
> index 000000000000..c89f5b1cabb6
> --- /dev/null
> +++ b/man7/landlock.7
> @@ -0,0 +1,356 @@
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
> +Landlock \- unprivileged access-control
> +.SH DESCRIPTION
> +Landlock is an access-control system that enables any processes to // securely /J/

I'll add some line breaks [//] and line joins [/J/] through the email.

> +restrict themselves and their future children.
> +Because Landlock is a stackable Linux Security Module (LSM),
> +it makes possible to create safe security sandboxes as new security layers

suggested wfix: "it makes it possible" or "it is possible"?

> +in addition to the existing system-wide access-controls.
> +This kind of sandbox is expected to help mitigate // the security impact of /J/ > +bugs, // and unexpected or malicious behaviors in applications.

See line-break fixes above.

> +.PP
> +A Landlock security policy is a set of access rights
> +(e.g., open a file in read-only, make a directory, etc.)
> +tied to a file hierarchy.
> +Such policy can be configured and enforced by processes for themselves
> +using three system calls:
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
> +To be able to use these system calls,
> +the running kernel must support Landlock and // it must be enabled at boot /J/
> +time.

See line-break fixes above

> +.\"
> +.SS Landlock rules
> +A Landlock rule describes an action on an object.
> +An object is currently a file hierarchy,
> +and the related filesystem actions are defined with access rights (see
> +.BR landlock_add_rule (2)).
> +A set of rules is aggregated in a ruleset, // which can /J/
> +then restrict the thread enforcing it, // and its future children.

See line-break fixes above.

> +.\"
> +.SS Filesystem actions
> +These flags enable to restrict a sandboxed process to a // set of actions on /J/
> +files and directories. > +Files or directories opened before the sandboxing // are not subject 
to these /J/
> +restrictions.

See line-break fixes above.

> +See
> +.BR landlock_add_rule (2)
> +and
> +.BR landlock_create_ruleset (2)
> +for more context.
> +.PP
> +A file can only receive these access rights:
> +.TP
> +.B LANDLOCK_ACCESS_FS_EXECUTE
> +Execute a file.
> +.TP
> +.B LANDLOCK_ACCESS_FS_WRITE_FILE
> +Open a file with write access.
> +.TP
> +.B LANDLOCK_ACCESS_FS_READ_FILE
> +Open a file with read access.
> +.PP
> +A directory can receive access rights related to files or directories.
> +The following access right is applied to the directory itself,
> +and the directories beneath it:
> +.TP
> +.B LANDLOCK_ACCESS_FS_READ_DIR
> +Open a directory or list its content.
> +.PP
> +However,
> +the following access rights only apply to the content of a directory,
> +not the directory itself:
> +.TP
> +.B LANDLOCK_ACCESS_FS_REMOVE_DIR
> +Remove an empty directory or rename one.
> +.TP
> +.B LANDLOCK_ACCESS_FS_REMOVE_FILE
> +Unlink (or rename) a file.
> +.TP
> +.B LANDLOCK_ACCESS_FS_MAKE_CHAR
> +Create (or rename or link) a character device.
> +.TP
> +.B LANDLOCK_ACCESS_FS_MAKE_DIR
> +Create (or rename) a directory.
> +.TP
> +.B LANDLOCK_ACCESS_FS_MAKE_REG
> +Create (or rename or link) a regular file.
> +.TP
> +.B LANDLOCK_ACCESS_FS_MAKE_SOCK
> +Create (or rename or link) a UNIX domain socket.
> +.TP
> +.B LANDLOCK_ACCESS_FS_MAKE_FIFO
> +Create (or rename or link) a named pipe.
> +.TP
> +.B LANDLOCK_ACCESS_FS_MAKE_BLOCK
> +Create (or rename or link) a block device.
> +.TP
> +.B LANDLOCK_ACCESS_FS_MAKE_SYM
> +Create (or rename or link) a symbolic link.
> +.\"
> +.SS Layers of file path access rights
> +Each time a thread enforces a ruleset on itself, // it updates its Landlock /J/

See line-break fixes above

> +domain with a new layer of policy.
> +Indeed, this complementary policy is composed with the potentially other
> +rulesets already restricting this thread.
> +A sandboxed thread can then safely add more constraints to itself with a
> +new enforced ruleset.
> +.PP
> +One policy layer grants access to a file path // if at least one of its rules /J/
> +encountered on the path grants the access.
> +A sandboxed thread can only access a file path // if all its enforced policy /J/
> +layers grant the access // as well as all the other system access controls
> +(e.g., filesystem DAC, other LSM policies, etc.).

See line-break fixes above.

> +.\"
> +.SS Bind mounts and OverlayFS
> +Landlock enables restricting access to file hierarchies,
> +which means that these access rights can be propagated with bind mounts
> +(cf.
> +.BR mount_namespaces (7))
> +but not with OverlayFS.
> +.PP
> +A bind mount mirrors a source file hierarchy to a destination.
> +The destination hierarchy is then composed of the exact same files,
> +on which Landlock rules can be tied, // either via the source or the /J/
> +destination path.
> +These rules restrict access when they are encountered on a path,
> +which means that they can restrict access to // multiple file hierarchies at /J/
> +the same time,
> +whether these hierarchies are the result of bind mounts or not.


See line-break fixes above.

> +.PP
> +An OverlayFS mount point consists of upper and lower layers.
> +These layers are combined in a merge directory, result of the mount point.
> +This merge hierarchy may include files from the upper and lower layers,
> +but modifications performed on the merge hierarchy // only reflects on the /J/

s/reflects/reflect/

> +upper layer.
> +From a Landlock policy point of view,
> +each OverlayFS layers and merge hierarchies are standalone and contains
> +their own set of files and directories,
> +which is different from bind mounts.


Incorrect mix of singular and plural, I think.

> +A policy restricting an OverlayFS layer will not restrict the resulted
> +merged hierarchy, and vice versa.
> +Landlock users should then only think about file hierarchies they want to
> +allow access to, regardless of the underlying filesystem.
> +.\"
> +.SS Inheritance
> +Every new thread resulting from a
> +.BR clone (2)
> +inherits Landlock domain restrictions from its parent.
> +This is similar to the
> +.BR seccomp (2)
> +inheritance or any other LSM dealing with task's

Not sure:

s/task/a task/
or
s/task's/tasks'/

> +.BR credentials (7).
> +For instance, one process's thread may apply Landlock rules to itself,

s/process's/process'/

> +but they will not be automatically applied to other sibling threads
> +(unlike POSIX thread credential changes, cf.
> +.BR nptl (7)).
> +.PP
> +When a thread sandboxes itself, // we have the guarantee that the related /J/
> +security policy // will stay enforced on all this thread's descendants.
> +This allows creating standalone and modular security policies // per /J/
> +application,
> +which will automatically be composed between themselves // according to their /J/
> +runtime parent policies.
> +.\"
> +.SS Ptrace restrictions
> +A sandboxed process has less privileges than a non-sandboxed process and
> +must then be subject to additional restrictions // when manipulating another /J/
> +process.
> +To be allowed to use
> +.BR ptrace (2)
> +and related syscalls on a target process,
> +a sandboxed process should have a subset of the target process rules,
> +which means the tracee must be in a sub-domain of the tracer.
> +.SH VERSIONS
> +Landlock was added in Linux 5.13.
> +.SH NOTES
> +Landlock is enabled by CONFIG_SECURITY_LANDLOCK.

.BR CONFIG_SECURITY_LANDLOCK .

> +The
> +.IR lsm=lsm1,...,lsmN

s/.IR/.I/

> +command line parameter controls the sequence of the initialization of
> +Linux Security Modules.
> +It must contain the string
> +.IR landlock

s/.IR/.I

> +to enable Landlock.
> +If the command line parameter is not specified,
> +the initialization falls back to the value of the deprecated
> +.IR security=

s/.IR/.I/

> +command line parameter and further to the value of CONFIG_LSM.
> +We can check that Landlock is enabled by looking for
> +.IR "landlock: Up and running."

s/.IR/.I/

> +in kernel logs.
> +.PP
> +It is currently not possible to restrict some file-related actions
> +accessible through these syscall families:

When using syscall to refer to system call (not the function syscall(2)),
we use the extended form "system call".

> +.BR chdir (2),
> +.BR truncate (2),
> +.BR stat (2),
> +.BR flock (2),
> +.BR chmod (2),
> +.BR chown (2),
> +.BR setxattr (2),
> +.BR utime (2),
> +.BR ioctl (2),
> +.BR fcntl (2),
> +.BR access (2).
> +Future Landlock evolutions will enable to restrict them.
> +.SH EXAMPLES
I'd prefer a complete example with a main function, if you can come up 
with such one.  If not, this will be ok.


> +We first need to create the ruleset that will contain our rules.
> +For this example,
> +the ruleset will contain rules that only allow read actions,
> +but write actions will be denied.
> +The ruleset then needs to handle both of these kind of actions.
> +See below for the description of filesystem actions.
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
> +descriptor referring to this ruleset.
> +The rule will only allow reading the file hierarchy
> +.IR /usr .
> +Without another rule, write actions would then be denied by the ruleset.
> +To add
> +.IR /usr
> +to the ruleset, we open it with the
> +.IR O_PATH
> +flag and fill the
> +.IR "struct landlock_path_beneath_attr"
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
> +.IR /usr
> +while denying all other handled accesses for the filesystem.
> +The next step is to restrict the current thread from gaining more
> +privileges
> +(e.g., thanks to a set-user-ID binary).
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
> +will be enforced on all its subsequently created children as well.
> +Once a thread is landlocked, there is no way to remove its security policy;
> +only adding more restrictions is allowed.
> +These threads are now in a new Landlock domain, // merge of their parent one /J/
> +(if any) with the new ruleset.
> +.PP
> +Full working code can be found in
> +.UR https://git.kernel.org\:/pub\:/scm\:/linux\:/kernel\:/git\:/stable\:/linux.git\:/tree\:/samples\:/landlock\:/sandboxer.c
> +.UE
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
