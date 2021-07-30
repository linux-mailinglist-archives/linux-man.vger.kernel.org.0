Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1BCE23DB8C4
	for <lists+linux-man@lfdr.de>; Fri, 30 Jul 2021 14:41:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238808AbhG3MlX (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 30 Jul 2021 08:41:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41370 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238723AbhG3MlW (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 30 Jul 2021 08:41:22 -0400
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 65F3BC061765;
        Fri, 30 Jul 2021 05:41:16 -0700 (PDT)
Received: by mail-wr1-x433.google.com with SMTP id k4so333841wrc.0;
        Fri, 30 Jul 2021 05:41:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=Xg0Vx4rS2l5qssIznvc8oRxl3lXiPMKc0GydwI728v4=;
        b=itgD8gVt6zrn2CRJ3DS895O78vjyUxwYhgNp2znxrWCa7rU/q6HfgZApbCzb00IKsz
         Rgv6gP4aml6iEespR9T8fleiHCArQuwsTy5Pgh2TchyUeyb66Y+uW8hiE+LLEuMxo8CS
         s/YypBU77cqEc5OGlRtjs+7ohDd9xmoYgcIprsDeBMshIUmArzEhCwbJJ/lLfiSUle4V
         d22oxPG6svTRe+cUTHpGRuikiM7KJhQiqEAGf+vkVgLyzdLs+olpYXu2BjpTxOZqE2nU
         pqAXA6eDrZ7p27+OFFDPO1FNinHsTRD2o+8aB1uWd8Str7lGx4j80N+YhS6x6sirFwru
         /XPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Xg0Vx4rS2l5qssIznvc8oRxl3lXiPMKc0GydwI728v4=;
        b=TdOAz4PpPHGO8qcSVrVm0Hr/cQpnu4nTDVfSwRuWALgLfjv/vq9K2LgZ6f4ZKn2AZS
         lYxR4aIstAUWHD5JWvMcJ5UcA541AsLygCfb39eZ7mYNsL9Umht5clVKa43bLLqPOONn
         lefJena4fJmSOHEoGqGjxSTDq/dPsKxR1FMAcejXvAzthHNTl0Ugk+ug+jo/EFk9yxek
         ueaUoI7D9rkEIl6LEYP15IGlds3ug4IOgbZzheA35C/rC0j8VdVVNJDMyCSCPXS0O8lI
         o+qEGUMhN5qHQmeD5+Yg6Qdg9fma2m+FNyr0WfCWTf23SuQpQz9EbXMmo3T7rCKEbyzB
         iMow==
X-Gm-Message-State: AOAM531aW04RsaoauZjM8lcisOwyRTFlbCcmcleXRY1Bw0qESBiCDG5X
        EQ691hIcSigpvSGPsi4JG0c=
X-Google-Smtp-Source: ABdhPJzY8Hqv0fPrNrKFXRdctaO82jNat/lnf5ZrdjgkmKKpdI2T82AMXpAS/t1Xz56A/h6Ys0YW8w==
X-Received: by 2002:adf:fb05:: with SMTP id c5mr2823556wrr.55.1627648874798;
        Fri, 30 Jul 2021 05:41:14 -0700 (PDT)
Received: from [10.8.0.10] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id c2sm1661134wrs.60.2021.07.30.05.41.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Jul 2021 05:41:14 -0700 (PDT)
Subject: Re: [PATCH v2 1/4] landlock.7: Add a new page to introduce Landlock
To:     =?UTF-8?Q?Micka=c3=abl_Sala=c3=bcn?= <mic@digikod.net>
Cc:     Jann Horn <jannh@google.com>, Jonathan Corbet <corbet@lwn.net>,
        Kees Cook <keescook@chromium.org>,
        Randy Dunlap <rdunlap@infradead.org>,
        Vincent Dagonneau <vincent.dagonneau@ssi.gouv.fr>,
        landlock@lists.linux.dev, linux-kernel@vger.kernel.org,
        linux-man@vger.kernel.org, linux-security-module@vger.kernel.org,
        =?UTF-8?Q?Micka=c3=abl_Sala=c3=bcn?= <mic@linux.microsoft.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
References: <20210712155745.831580-1-mic@digikod.net>
 <20210712155745.831580-2-mic@digikod.net>
 <3f1b943b-2477-2c4e-c835-d6616888176c@gmail.com>
 <c5036c5c-37a1-57d2-e5dc-1f41a5ed0d31@digikod.net>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <a3b271e6-e03f-dab8-b04c-c76315cdd98e@gmail.com>
Date:   Fri, 30 Jul 2021 14:41:12 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <c5036c5c-37a1-57d2-e5dc-1f41a5ed0d31@digikod.net>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 7/30/21 2:15 PM, Mickaël Salaün wrote:
> 
> On 29/07/2021 16:56, Alejandro Colomar (man-pages) wrote:
>> Hi Mickaël,
>>
>> On 7/12/21 5:57 PM, Mickaël Salaün wrote:
>>> From: Mickaël Salaün <mic@linux.microsoft.com>
>>>
>>>   From the user point of view, Landlock is a set of system calls enabling
>>> to build and enforce a set of access-control rules.  A ruleset can be
>>> created with landlock_create_ruleset(2), populated with
>>> landlock_add_rule(2) and enforced with landlock_restrict_self(2).  This
>>> man page gives an overview of the whole mechanism.  Details of these
>>> system calls are documented in their respective man pages.
>>>
>>> This is an adaptation of
>>> https://www.kernel.org/doc/html/v5.13/userspace-api/landlock.html
>>>
>>> Signed-off-by: Mickaël Salaün <mic@linux.microsoft.com>
>>> Link: https://lore.kernel.org/r/20210712155745.831580-2-mic@digikod.net
>>
>> Please see some comments below, mostly about formatting.
>> The text looks good to me.
> 
> Thanks for the review.
> 
>>
>> Thanks,
>>
>> Alex
>>
>>> ---
>>>
>>> Changes since v1:
>>> * Replace all ".I" with ".IR", except when used for titles.
>>
>> Sorry, but I actually prefer the opposite: Use .I unless you really need
>> .IR
> 
> When do we really need .IR? Isn't `.I "foo bar"` the same as `.IR foo
> bar`? What do you use roman for?
> 
> Where can we find these preferences? The best I found was
> https://www.man7.org/linux/man-pages/man7/groff_man.7.html but it
> doesn't explain what to use. The current man pages seems to use both
> interchangeably.

I was going to point you to groff_man(7), but you're right that it 
doesn't explain it really well for someone new to groff.  Maybe some 
examples would help, but then the manual page would grow too much, so a 
bit of testing may be better than trying to have an extensive manual page.

So when to use each, and when any can fit:

.IR can do anything that .I can do.  It's a "superset" of .I in terms of 
output (ignoring that the input to get such output is different).
But .I is simpler and more readable when wanting .I behavior, so let's 
use .I for .I, and .IR only when roman is needed.

I means italics (which in the terminal is underscored, but ok);
R means roman (i.e., normal text)

For the following examples, I'll use uppercase to mean italics.

.I transforms everything to the right of it into italics, respecting 
spaces.  Therefore, .I doesn't require you to use quotes.

If you want two (or one) separate words in italics, you can use:
.I hello world
which will print:
HELLO WORLD

.IR on the other hand, alternates roman and bold breaking at spaces 
(which are not translated into the output).
Example:
.IR hello beautiful world
which will print:
HELLObeautifulWORLD

This is usually used when formatting a word that is followed by 
puntuation, as normally you don't want puntuation to be formatted, so 
you'll typically see (especially at the end of a sentence):
.IR size_t .
which will print:
SIZE_T.   (the period is not formatted)

You could use .IR (but don't) to imitate .I:
.IR hello
which will print:
HELLO

In the example above, as we didn't specify a roman part, it is just as an .I

When you need spaces to be respected with .IR, you need quotes:
.IR hello "beautiful world"
HELLObeautiful world

This is useful for formatting names consisting of two words next to 
punctuation:
.IR "hello world" .
HELLO WORLD.   (the period is not in italics)



I hope this was helpful :)

Cheers,

Alex




But, let's use .I


CC: Branden

> 
>>
>> If there was a misunderstanding about this, I'm sorry.
>>
>>> * Append punctuation to ".IR" and ".BR" when it makes sense (requested
>>>     by Alejandro Colomar).
>>> * Cut lines according to the semantic newline rules (requested by
>>>     Alejandro Colomar).
>>> * Remove roman style from ".TP" section titles (requested by Alejandro
>>>     Colomar).
>>> * Add comma after "i.e." and "e.g.".
>>> * Move the example in a new EXAMPLES section.
>>> * Improve title.
>>> * Explain the LSM acronym at first use.
>>> ---
>>>    man7/landlock.7 | 356 ++++++++++++++++++++++++++++++++++++++++++++++++
>>>    1 file changed, 356 insertions(+)
>>>    create mode 100644 man7/landlock.7
>>>
>>> diff --git a/man7/landlock.7 b/man7/landlock.7
>>> new file mode 100644
>>> index 000000000000..c89f5b1cabb6
>>> --- /dev/null
>>> +++ b/man7/landlock.7
>>> @@ -0,0 +1,356 @@
>>> +.\" Copyright © 2017-2020 Mickaël Salaün <mic@digikod.net>
>>> +.\" Copyright © 2019-2020 ANSSI
>>> +.\" Copyright © 2021 Microsoft Corporation
>>> +.\"
>>> +.\" %%%LICENSE_START(VERBATIM)
>>> +.\" Permission is granted to make and distribute verbatim copies of this
>>> +.\" manual provided the copyright notice and this permission notice are
>>> +.\" preserved on all copies.
>>> +.\"
>>> +.\" Permission is granted to copy and distribute modified versions of
>>> this
>>> +.\" manual under the conditions for verbatim copying, provided that the
>>> +.\" entire resulting derived work is distributed under the terms of a
>>> +.\" permission notice identical to this one.
>>> +.\"
>>> +.\" Since the Linux kernel and libraries are constantly changing, this
>>> +.\" manual page may be incorrect or out-of-date.  The author(s)
>>> assume no
>>> +.\" responsibility for errors or omissions, or for damages resulting
>>> from
>>> +.\" the use of the information contained herein.  The author(s) may not
>>> +.\" have taken the same level of care in the production of this manual,
>>> +.\" which is licensed free of charge, as they might when working
>>> +.\" professionally.
>>> +.\"
>>> +.\" Formatted or processed versions of this manual, if unaccompanied by
>>> +.\" the source, must acknowledge the copyright and authors of this work.
>>> +.\" %%%LICENSE_END
>>> +.\"
>>> +.TH LANDLOCK 7 2021-06-27 Linux "Linux Programmer's Manual"
>>> +.SH NAME
>>> +Landlock \- unprivileged access-control
>>> +.SH DESCRIPTION
>>> +Landlock is an access-control system that enables any processes to //
>>> securely /J/
> 
> Why adding a line break here? This line is 75 columns as stated by the
> documentation: https://man7.org/linux/man-pages/man7/man-pages.7.html
> I guess it helps for semantic newlines, right? If so, what are the rules?
> 
>>
>> I'll add some line breaks [//] and line joins [/J/] through the email.
>>
>>> +restrict themselves and their future children.
>>> +Because Landlock is a stackable Linux Security Module (LSM),
>>> +it makes possible to create safe security sandboxes as new security
>>> layers
>>
>> suggested wfix: "it makes it possible" or "it is possible"?
> 
> Ok
> 
>>
>>> +in addition to the existing system-wide access-controls.
>>> +This kind of sandbox is expected to help mitigate // the security
>>> impact of /J/ > +bugs, // and unexpected or malicious behaviors in
>>> applications.
>>
>> See line-break fixes above.
> 
> Ok
> 
>>
>>> +.PP
>>> +A Landlock security policy is a set of access rights
>>> +(e.g., open a file in read-only, make a directory, etc.)
>>> +tied to a file hierarchy.
>>> +Such policy can be configured and enforced by processes for themselves
>>> +using three system calls:
>>> +.IP \(bu 2
>>> +.BR landlock_create_ruleset (2)
>>> +creates a new ruleset;
>>> +.IP \(bu
>>> +.BR landlock_add_rule (2)
>>> +adds a new rule to a ruleset;
>>> +.IP \(bu
>>> +.BR landlock_restrict_self (2)
>>> +enforces a ruleset on the calling thread.
>>> +.PP
>>> +To be able to use these system calls,
>>> +the running kernel must support Landlock and // it must be enabled at
>>> boot /J/
>>> +time.
>>
>> See line-break fixes above
> 
> Ok
> 
>>
>>> +.\"
>>> +.SS Landlock rules
>>> +A Landlock rule describes an action on an object.
>>> +An object is currently a file hierarchy,
>>> +and the related filesystem actions are defined with access rights (see
>>> +.BR landlock_add_rule (2)).
>>> +A set of rules is aggregated in a ruleset, // which can /J/
>>> +then restrict the thread enforcing it, // and its future children.
>>
>> See line-break fixes above.
> 
> Ok
> 
>>
>>> +.\"
>>> +.SS Filesystem actions
>>> +These flags enable to restrict a sandboxed process to a // set of
>>> actions on /J/
>>> +files and directories. > +Files or directories opened before the
>>> sandboxing // are not subject
>> to these /J/
>>> +restrictions.
>>
>> See line-break fixes above.
> 
> Ok
> 
>>
>>> +See
>>> +.BR landlock_add_rule (2)
>>> +and
>>> +.BR landlock_create_ruleset (2)
>>> +for more context.
>>> +.PP
>>> +A file can only receive these access rights:
>>> +.TP
>>> +.B LANDLOCK_ACCESS_FS_EXECUTE
>>> +Execute a file.
>>> +.TP
>>> +.B LANDLOCK_ACCESS_FS_WRITE_FILE
>>> +Open a file with write access.
>>> +.TP
>>> +.B LANDLOCK_ACCESS_FS_READ_FILE
>>> +Open a file with read access.
>>> +.PP
>>> +A directory can receive access rights related to files or directories.
>>> +The following access right is applied to the directory itself,
>>> +and the directories beneath it:
>>> +.TP
>>> +.B LANDLOCK_ACCESS_FS_READ_DIR
>>> +Open a directory or list its content.
>>> +.PP
>>> +However,
>>> +the following access rights only apply to the content of a directory,
>>> +not the directory itself:
>>> +.TP
>>> +.B LANDLOCK_ACCESS_FS_REMOVE_DIR
>>> +Remove an empty directory or rename one.
>>> +.TP
>>> +.B LANDLOCK_ACCESS_FS_REMOVE_FILE
>>> +Unlink (or rename) a file.
>>> +.TP
>>> +.B LANDLOCK_ACCESS_FS_MAKE_CHAR
>>> +Create (or rename or link) a character device.
>>> +.TP
>>> +.B LANDLOCK_ACCESS_FS_MAKE_DIR
>>> +Create (or rename) a directory.
>>> +.TP
>>> +.B LANDLOCK_ACCESS_FS_MAKE_REG
>>> +Create (or rename or link) a regular file.
>>> +.TP
>>> +.B LANDLOCK_ACCESS_FS_MAKE_SOCK
>>> +Create (or rename or link) a UNIX domain socket.
>>> +.TP
>>> +.B LANDLOCK_ACCESS_FS_MAKE_FIFO
>>> +Create (or rename or link) a named pipe.
>>> +.TP
>>> +.B LANDLOCK_ACCESS_FS_MAKE_BLOCK
>>> +Create (or rename or link) a block device.
>>> +.TP
>>> +.B LANDLOCK_ACCESS_FS_MAKE_SYM
>>> +Create (or rename or link) a symbolic link.
>>> +.\"
>>> +.SS Layers of file path access rights
>>> +Each time a thread enforces a ruleset on itself, // it updates its
>>> Landlock /J/
>>
>> See line-break fixes above
> 
> Ok
> 
>>
>>> +domain with a new layer of policy.
>>> +Indeed, this complementary policy is composed with the potentially other
>>> +rulesets already restricting this thread.
>>> +A sandboxed thread can then safely add more constraints to itself with a
>>> +new enforced ruleset.
>>> +.PP
>>> +One policy layer grants access to a file path // if at least one of
>>> its rules /J/
>>> +encountered on the path grants the access.
>>> +A sandboxed thread can only access a file path // if all its enforced
>>> policy /J/
>>> +layers grant the access // as well as all the other system access
>>> controls
>>> +(e.g., filesystem DAC, other LSM policies, etc.).
>>
>> See line-break fixes above.
> 
> Ok
> 
>>
>>> +.\"
>>> +.SS Bind mounts and OverlayFS
>>> +Landlock enables restricting access to file hierarchies,
>>> +which means that these access rights can be propagated with bind mounts
>>> +(cf.
>>> +.BR mount_namespaces (7))
>>> +but not with OverlayFS.
>>> +.PP
>>> +A bind mount mirrors a source file hierarchy to a destination.
>>> +The destination hierarchy is then composed of the exact same files,
>>> +on which Landlock rules can be tied, // either via the source or the /J/
>>> +destination path.
>>> +These rules restrict access when they are encountered on a path,
>>> +which means that they can restrict access to // multiple file
>>> hierarchies at /J/
>>> +the same time,
>>> +whether these hierarchies are the result of bind mounts or not.
>>
>>
>> See line-break fixes above.
> 
> Ok
> 
>>
>>> +.PP
>>> +An OverlayFS mount point consists of upper and lower layers.
>>> +These layers are combined in a merge directory, result of the mount
>>> point.
>>> +This merge hierarchy may include files from the upper and lower layers,
>>> +but modifications performed on the merge hierarchy // only reflects
>>> on the /J/
>>
>> s/reflects/reflect/
> 
> Ok
> 
>>
>>> +upper layer.
>>> +From a Landlock policy point of view,
>>> +each OverlayFS layers and merge hierarchies are standalone and contains
>>> +their own set of files and directories,
>>> +which is different from bind mounts.
>>
>>
>> Incorrect mix of singular and plural, I think.
> 
> Is it OK with s/contains/contain/?
> 
>>
>>> +A policy restricting an OverlayFS layer will not restrict the resulted
>>> +merged hierarchy, and vice versa.
>>> +Landlock users should then only think about file hierarchies they
>>> want to
>>> +allow access to, regardless of the underlying filesystem.
>>> +.\"
>>> +.SS Inheritance
>>> +Every new thread resulting from a
>>> +.BR clone (2)
>>> +inherits Landlock domain restrictions from its parent.
>>> +This is similar to the
>>> +.BR seccomp (2)
>>> +inheritance or any other LSM dealing with task's
>>
>> Not sure:
>>
>> s/task/a task/
>> or
>> s/task's/tasks'/
> 
> I'll take "tasks'".
> 
>>
>>> +.BR credentials (7).
>>> +For instance, one process's thread may apply Landlock rules to itself,
>>
>> s/process's/process'/
> 
> As pointed out by Branden, this is correct.
> 
>>
>>> +but they will not be automatically applied to other sibling threads
>>> +(unlike POSIX thread credential changes, cf.
>>> +.BR nptl (7)).
>>> +.PP
>>> +When a thread sandboxes itself, // we have the guarantee that the
>>> related /J/
>>> +security policy // will stay enforced on all this thread's descendants.
>>> +This allows creating standalone and modular security policies // per /J/
>>> +application,
>>> +which will automatically be composed between themselves // according
>>> to their /J/
>>> +runtime parent policies.
>>> +.\"
>>> +.SS Ptrace restrictions
>>> +A sandboxed process has less privileges than a non-sandboxed process and
>>> +must then be subject to additional restrictions // when manipulating
>>> another /J/
>>> +process.
>>> +To be allowed to use
>>> +.BR ptrace (2)
>>> +and related syscalls on a target process,
>>> +a sandboxed process should have a subset of the target process rules,
>>> +which means the tracee must be in a sub-domain of the tracer.
>>> +.SH VERSIONS
>>> +Landlock was added in Linux 5.13.
>>> +.SH NOTES
>>> +Landlock is enabled by CONFIG_SECURITY_LANDLOCK.
>>
>> .BR CONFIG_SECURITY_LANDLOCK .
> 
> Ok
> 
>>
>>> +The
>>> +.IR lsm=lsm1,...,lsmN
>>
>> s/.IR/.I/
> 
> Ok
> 
>>
>>> +command line parameter controls the sequence of the initialization of
>>> +Linux Security Modules.
>>> +It must contain the string
>>> +.IR landlock
>>
>> s/.IR/.I
> 
> Ok
> 
>>
>>> +to enable Landlock.
>>> +If the command line parameter is not specified,
>>> +the initialization falls back to the value of the deprecated
>>> +.IR security=
>>
>> s/.IR/.I/
> 
> Ok
> 
>>
>>> +command line parameter and further to the value of CONFIG_LSM.
>>> +We can check that Landlock is enabled by looking for
>>> +.IR "landlock: Up and running."
>>
>> s/.IR/.I/
> 
> Ok
> 
>>
>>> +in kernel logs.
>>> +.PP
>>> +It is currently not possible to restrict some file-related actions
>>> +accessible through these syscall families:
>>
>> When using syscall to refer to system call (not the function syscall(2)),
>> we use the extended form "system call".
> 
> Ok
> 
>>
>>> +.BR chdir (2),
>>> +.BR truncate (2),
>>> +.BR stat (2),
>>> +.BR flock (2),
>>> +.BR chmod (2),
>>> +.BR chown (2),
>>> +.BR setxattr (2),
>>> +.BR utime (2),
>>> +.BR ioctl (2),
>>> +.BR fcntl (2),
>>> +.BR access (2).
>>> +Future Landlock evolutions will enable to restrict them.
>>> +.SH EXAMPLES
>> I'd prefer a complete example with a main function, if you can come up
>> with such one.  If not, this will be ok.
> 
> I think it is clearer to not to use a full main to explain these basic
> steps. A full working example is linked though.
> 
>>
>>
>>> +We first need to create the ruleset that will contain our rules.
>>> +For this example,
>>> +the ruleset will contain rules that only allow read actions,
>>> +but write actions will be denied.
>>> +The ruleset then needs to handle both of these kind of actions.
>>> +See below for the description of filesystem actions.
>>> +.PP
>>> +.in +4n
>>> +.EX
>>> +int ruleset_fd;
>>> +struct landlock_ruleset_attr ruleset_attr = {
>>> +    .handled_access_fs =
>>> +        LANDLOCK_ACCESS_FS_EXECUTE |
>>> +        LANDLOCK_ACCESS_FS_WRITE_FILE |
>>> +        LANDLOCK_ACCESS_FS_READ_FILE |
>>> +        LANDLOCK_ACCESS_FS_READ_DIR |
>>> +        LANDLOCK_ACCESS_FS_REMOVE_DIR |
>>> +        LANDLOCK_ACCESS_FS_REMOVE_FILE |
>>> +        LANDLOCK_ACCESS_FS_MAKE_CHAR |
>>> +        LANDLOCK_ACCESS_FS_MAKE_DIR |
>>> +        LANDLOCK_ACCESS_FS_MAKE_REG |
>>> +        LANDLOCK_ACCESS_FS_MAKE_SOCK |
>>> +        LANDLOCK_ACCESS_FS_MAKE_FIFO |
>>> +        LANDLOCK_ACCESS_FS_MAKE_BLOCK |
>>> +        LANDLOCK_ACCESS_FS_MAKE_SYM,
>>> +};
>>> +
>>> +ruleset_fd = landlock_create_ruleset(&ruleset_attr,
>>> sizeof(ruleset_attr), 0);
>>> +if (ruleset_fd < 0) {
>>> +    perror("Failed to create a ruleset");
>>> +    return 1;
>>> +}
>>> +.EE
>>> +.in
>>> +.PP
>>> +We can now add a new rule to this ruleset thanks to the returned file
>>> +descriptor referring to this ruleset.
>>> +The rule will only allow reading the file hierarchy
>>> +.IR /usr .
> 
> Why ".IR" is correct here?
> 
> 
>>> +Without another rule, write actions would then be denied by the ruleset.
>>> +To add
>>> +.IR /usr
>>> +to the ruleset, we open it with the
>>> +.IR O_PATH
>>> +flag and fill the
>>> +.IR "struct landlock_path_beneath_attr"
>>> +with this file descriptor.
>>> +.PP
>>> +.in +4n
>>> +.EX
>>> +int err;
>>> +struct landlock_path_beneath_attr path_beneath = {
>>> +    .allowed_access =
>>> +        LANDLOCK_ACCESS_FS_EXECUTE |
>>> +        LANDLOCK_ACCESS_FS_READ_FILE |
>>> +        LANDLOCK_ACCESS_FS_READ_DIR,
>>> +};
>>> +
>>> +path_beneath.parent_fd = open("/usr", O_PATH | O_CLOEXEC);
>>> +if (path_beneath.parent_fd < 0) {
>>> +    perror("Failed to open file");
>>> +    close(ruleset_fd);
>>> +    return 1;
>>> +}
>>> +err = landlock_add_rule(ruleset_fd, LANDLOCK_RULE_PATH_BENEATH,
>>> +                        &path_beneath, 0);
>>> +close(path_beneath.parent_fd);
>>> +if (err) {
>>> +    perror("Failed to update ruleset");
>>> +    close(ruleset_fd);
>>> +    return 1;
>>> +}
>>> +.EE
>>> +.in
>>> +.PP
>>> +We now have a ruleset with one rule allowing read access to
>>> +.IR /usr
>>> +while denying all other handled accesses for the filesystem.
>>> +The next step is to restrict the current thread from gaining more
>>> +privileges
>>> +(e.g., thanks to a set-user-ID binary).
>>> +.PP
>>> +.in +4n
>>> +.EX
>>> +if (prctl(PR_SET_NO_NEW_PRIVS, 1, 0, 0, 0)) {
>>> +    perror("Failed to restrict privileges");
>>> +    close(ruleset_fd);
>>> +    return 1;
>>> +}
>>> +.EE
>>> +.in
>>> +.PP
>>> +The current thread is now ready to sandbox itself with the ruleset.
>>> +.PP
>>> +.in +4n
>>> +.EX
>>> +if (landlock_restrict_self(ruleset_fd, 0)) {
>>> +    perror("Failed to enforce ruleset");
>>> +    close(ruleset_fd);
>>> +    return 1;
>>> +}
>>> +close(ruleset_fd);
>>> +.EE
>>> +.in
>>> +.PP
>>> +If the
>>> +.BR landlock_restrict_self (2)
>>> +system call succeeds, the current thread is now restricted and this
>>> policy
>>> +will be enforced on all its subsequently created children as well.
>>> +Once a thread is landlocked, there is no way to remove its security
>>> policy;
>>> +only adding more restrictions is allowed.
>>> +These threads are now in a new Landlock domain, // merge of their
>>> parent one /J/
>>> +(if any) with the new ruleset.
>>> +.PP
>>> +Full working code can be found in
>>> +.UR
>>> https://git.kernel.org\:/pub\:/scm\:/linux\:/kernel\:/git\:/stable\:/linux.git\:/tree\:/samples\:/landlock\:/sandboxer.c
>>>
>>> +.UE
>>> +.SH SEE ALSO
>>> +.BR landlock_create_ruleset (2),
>>> +.BR landlock_add_rule (2),
>>> +.BR landlock_restrict_self (2)
>>> +.PP
>>> +.UR https://landlock.io\:/
>>> +.UE
>>>
>>
>>


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
