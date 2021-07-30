Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 268D83DBA98
	for <lists+linux-man@lfdr.de>; Fri, 30 Jul 2021 16:30:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239150AbhG3Oae (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 30 Jul 2021 10:30:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41004 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239226AbhG3Oad (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 30 Jul 2021 10:30:33 -0400
Received: from smtp-bc0e.mail.infomaniak.ch (smtp-bc0e.mail.infomaniak.ch [IPv6:2001:1600:4:17::bc0e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6FD28C061765
        for <linux-man@vger.kernel.org>; Fri, 30 Jul 2021 07:30:28 -0700 (PDT)
Received: from smtp-3-0001.mail.infomaniak.ch (unknown [10.4.36.108])
        by smtp-3-3000.mail.infomaniak.ch (Postfix) with ESMTPS id 4GbqYt0TVXzMpst1;
        Fri, 30 Jul 2021 16:30:26 +0200 (CEST)
Received: from ns3096276.ip-94-23-54.eu (unknown [23.97.221.149])
        by smtp-3-0001.mail.infomaniak.ch (Postfix) with ESMTPA id 4GbqYr1MZFzlmrrl;
        Fri, 30 Jul 2021 16:30:24 +0200 (CEST)
Subject: Re: [PATCH v2 1/4] landlock.7: Add a new page to introduce Landlock
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
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
 <a3b271e6-e03f-dab8-b04c-c76315cdd98e@gmail.com>
 <1a698059-d9dd-5aa0-2765-42e704c3a697@gmail.com>
From:   =?UTF-8?Q?Micka=c3=abl_Sala=c3=bcn?= <mic@digikod.net>
Message-ID: <e0f0a037-268d-04df-91bf-e3ade4968f12@digikod.net>
Date:   Fri, 30 Jul 2021 16:32:20 +0200
User-Agent: 
MIME-Version: 1.0
In-Reply-To: <1a698059-d9dd-5aa0-2765-42e704c3a697@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Thanks Alejandro for the detailed explanations, that's useful!

On 30/07/2021 14:59, Alejandro Colomar (man-pages) wrote:
> Hi Mickaël,
> 
> On 7/30/21 2:41 PM, Alejandro Colomar (man-pages) wrote:
> [...]
>>
>>
>>
>> I hope this was helpful :)
>>
>> Cheers,
>>
>> Alex
>>
>>
>>
>>
>> But, let's use .I
> 
> I hit send too soon.  Let's continue.
> 
> As for current usage, yes, there are many uses of .IR to mean .I, but
> for new code, we're only using .I (or .B) when possible.
> 
>>
>>
>> CC: Branden
>>
>>>
>>>>
>>>> If there was a misunderstanding about this, I'm sorry.
>>>>
>>>>> * Append punctuation to ".IR" and ".BR" when it makes sense (requested
>>>>>     by Alejandro Colomar).
>>>>> * Cut lines according to the semantic newline rules (requested by
>>>>>     Alejandro Colomar).
>>>>> * Remove roman style from ".TP" section titles (requested by Alejandro
>>>>>     Colomar).
>>>>> * Add comma after "i.e." and "e.g.".
>>>>> * Move the example in a new EXAMPLES section.
>>>>> * Improve title.
>>>>> * Explain the LSM acronym at first use.
>>>>> ---
>>>>>    man7/landlock.7 | 356
>>>>> ++++++++++++++++++++++++++++++++++++++++++++++++
>>>>>    1 file changed, 356 insertions(+)
>>>>>    create mode 100644 man7/landlock.7
>>>>>
>>>>> diff --git a/man7/landlock.7 b/man7/landlock.7
>>>>> new file mode 100644
>>>>> index 000000000000..c89f5b1cabb6
>>>>> --- /dev/null
>>>>> +++ b/man7/landlock.7
>>>>> @@ -0,0 +1,356 @@
>>>>> +.\" Copyright © 2017-2020 Mickaël Salaün <mic@digikod.net>
>>>>> +.\" Copyright © 2019-2020 ANSSI
>>>>> +.\" Copyright © 2021 Microsoft Corporation
>>>>> +.\"
>>>>> +.\" %%%LICENSE_START(VERBATIM)
>>>>> +.\" Permission is granted to make and distribute verbatim copies
>>>>> of this
>>>>> +.\" manual provided the copyright notice and this permission
>>>>> notice are
>>>>> +.\" preserved on all copies.
>>>>> +.\"
>>>>> +.\" Permission is granted to copy and distribute modified versions of
>>>>> this
>>>>> +.\" manual under the conditions for verbatim copying, provided
>>>>> that the
>>>>> +.\" entire resulting derived work is distributed under the terms of a
>>>>> +.\" permission notice identical to this one.
>>>>> +.\"
>>>>> +.\" Since the Linux kernel and libraries are constantly changing,
>>>>> this
>>>>> +.\" manual page may be incorrect or out-of-date.  The author(s)
>>>>> assume no
>>>>> +.\" responsibility for errors or omissions, or for damages resulting
>>>>> from
>>>>> +.\" the use of the information contained herein.  The author(s)
>>>>> may not
>>>>> +.\" have taken the same level of care in the production of this
>>>>> manual,
>>>>> +.\" which is licensed free of charge, as they might when working
>>>>> +.\" professionally.
>>>>> +.\"
>>>>> +.\" Formatted or processed versions of this manual, if
>>>>> unaccompanied by
>>>>> +.\" the source, must acknowledge the copyright and authors of this
>>>>> work.
>>>>> +.\" %%%LICENSE_END
>>>>> +.\"
>>>>> +.TH LANDLOCK 7 2021-06-27 Linux "Linux Programmer's Manual"
>>>>> +.SH NAME
>>>>> +Landlock \- unprivileged access-control
>>>>> +.SH DESCRIPTION
>>>>> +Landlock is an access-control system that enables any processes to //
>>>>> securely /J/
>>>
>>> Why adding a line break here? This line is 75 columns as stated by the
>>> documentation: https://man7.org/linux/man-pages/man7/man-pages.7.html
>>> I guess it helps for semantic newlines, right? If so, what are the
>>> rules?
> 
> Yes, they were because of semantic newlines.
> 
> The "rules" are:
> 
> Follow mainly "semantic newlines" style (forgetting about the line
> length), which will give you a text that (mostly) fits into 75 or 80
> columns.
> 
> If after doing that there are some lines that exceed the 75 or 80 column
> right margin, consider fixing that line by breaking it at a different
> point or maybe breaking it further.  The 80 column limit is a hard limit
> (I can't read anything past the 80 col), while the 75 limit is a bit
> softer (that's for allowing quotes in reviews) (if fitting a line into
> col 75 would break it in a weird way, don't do it).
> 
> If I didn't explain myself enough, please tell me.
> 
>>>>> +upper layer.
>>>>> +From a Landlock policy point of view,
>>>>> +each OverlayFS layers and merge hierarchies are standalone and
>>>>> contains
>>>>> +their own set of files and directories,
>>>>> +which is different from bind mounts.
>>>>
>>>>
>>>> Incorrect mix of singular and plural, I think.
>>> >> Is it OK with s/contains/contain/?
> 
> I think so.
> 
>>>
>>>>
>>>>> +A policy restricting an OverlayFS layer will not restrict the
>>>>> resulted
>>>>> +merged hierarchy, and vice versa.
>>>>> +Landlock users should then only think about file hierarchies they
>>>>> want to
>>>>> +allow access to, regardless of the underlying filesystem.
>>>>> +.\"
>>>>> +.SS Inheritance
>>>>> +Every new thread resulting from a
>>>>> +.BR clone (2)
>>>>> +inherits Landlock domain restrictions from its parent.
>>>>> +This is similar to the
>>>>> +.BR seccomp (2)
>>>>> +inheritance or any other LSM dealing with task's
>>>>
>>>> Not sure:
>>>>
>>>> s/task/a task/
>>>> or
>>>> s/task's/tasks'/
>>>
>>> I'll take "tasks'".
> 
> Okay.
> 
>>>
>>>>
>>>>> +.BR credentials (7).
>>>>> +For instance, one process's thread may apply Landlock rules to
>>>>> itself,
>>>>
>>>> s/process's/process'/
>>>
>>> As pointed out by Branden, this is correct.
> 
> That's right. :)
> 
>>>
>>>>
>>>>> +.BR chdir (2),
>>>>> +.BR truncate (2),
>>>>> +.BR stat (2),
>>>>> +.BR flock (2),
>>>>> +.BR chmod (2),
>>>>> +.BR chown (2),
>>>>> +.BR setxattr (2),
>>>>> +.BR utime (2),
>>>>> +.BR ioctl (2),
>>>>> +.BR fcntl (2),
>>>>> +.BR access (2).
>>>>> +Future Landlock evolutions will enable to restrict them.
>>>>> +.SH EXAMPLES
>>>> I'd prefer a complete example with a main function, if you can come up
>>>> with such one.  If not, this will be ok.
>>>
>>> I think it is clearer to not to use a full main to explain these basic
>>> steps. A full working example is linked though.
> 
> Ahh sorry, I didn't see the link.
> I'll have a look at it.
> 
>>>
>>>>
>>>>
>>>>> +We first need to create the ruleset that will contain our rules.
>>>>> +For this example,
>>>>> +the ruleset will contain rules that only allow read actions,
>>>>> +but write actions will be denied.
>>>>> +The ruleset then needs to handle both of these kind of actions.
>>>>> +See below for the description of filesystem actions.
>>>>> +.PP
>>>>> +.in +4n
>>>>> +.EX
>>>>> +int ruleset_fd;
>>>>> +struct landlock_ruleset_attr ruleset_attr = {
>>>>> +    .handled_access_fs =
>>>>> +        LANDLOCK_ACCESS_FS_EXECUTE |
>>>>> +        LANDLOCK_ACCESS_FS_WRITE_FILE |
>>>>> +        LANDLOCK_ACCESS_FS_READ_FILE |
>>>>> +        LANDLOCK_ACCESS_FS_READ_DIR |
>>>>> +        LANDLOCK_ACCESS_FS_REMOVE_DIR |
>>>>> +        LANDLOCK_ACCESS_FS_REMOVE_FILE |
>>>>> +        LANDLOCK_ACCESS_FS_MAKE_CHAR |
>>>>> +        LANDLOCK_ACCESS_FS_MAKE_DIR |
>>>>> +        LANDLOCK_ACCESS_FS_MAKE_REG |
>>>>> +        LANDLOCK_ACCESS_FS_MAKE_SOCK |
>>>>> +        LANDLOCK_ACCESS_FS_MAKE_FIFO |
>>>>> +        LANDLOCK_ACCESS_FS_MAKE_BLOCK |
>>>>> +        LANDLOCK_ACCESS_FS_MAKE_SYM,
>>>>> +};
>>>>> +
>>>>> +ruleset_fd = landlock_create_ruleset(&ruleset_attr,
>>>>> sizeof(ruleset_attr), 0);
>>>>> +if (ruleset_fd < 0) {
>>>>> +    perror("Failed to create a ruleset");
>>>>> +    return 1;
>>>>> +}
>>>>> +.EE
>>>>> +.in
>>>>> +.PP
>>>>> +We can now add a new rule to this ruleset thanks to the returned file
>>>>> +descriptor referring to this ruleset.
>>>>> +The rule will only allow reading the file hierarchy
>>>>> +.IR /usr .
>>>
>>> Why ".IR" is correct here?
> 
> "/usr" needs to be formatted, but "." not.
> 
> [
> .I /usr
> .
> ]
> 
> Would add a space: /usr .
> So we need a solution that formats only part of a space-separated token;
> that's what .IR does.  I hope the last email explained that well.
> 
> Thanks,
> 
> Alex
> 
> 
