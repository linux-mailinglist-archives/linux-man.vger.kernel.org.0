Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 449A46AF918
	for <lists+linux-man@lfdr.de>; Tue,  7 Mar 2023 23:43:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230195AbjCGWm7 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 7 Mar 2023 17:42:59 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48680 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231251AbjCGWmc (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 7 Mar 2023 17:42:32 -0500
Received: from smtp-bc0d.mail.infomaniak.ch (smtp-bc0d.mail.infomaniak.ch [IPv6:2001:1600:3:17::bc0d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C97357EE1
        for <linux-man@vger.kernel.org>; Tue,  7 Mar 2023 14:41:55 -0800 (PST)
Received: from smtp-2-0001.mail.infomaniak.ch (unknown [10.5.36.108])
        by smtp-2-3000.mail.infomaniak.ch (Postfix) with ESMTPS id 4PWVmw4WsLzMqc7C;
        Tue,  7 Mar 2023 23:41:52 +0100 (CET)
Received: from unknown by smtp-2-0001.mail.infomaniak.ch (Postfix) with ESMTPA id 4PWVmw0GwlzMsGvl;
        Tue,  7 Mar 2023 23:41:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=digikod.net;
        s=20191114; t=1678228912;
        bh=b3MAXyEU2V4XkJW67w4jyEUgUNVMpQtjkzYNVRMFDmE=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=WUShalQfAq0fr2SYxVZN0wRWp6KUT6cuyHKDnZRbkxVLDv5n3cDDOd2v+25DSXE+C
         GrDJznvH+znIQ60tUVruWP2F6pMzpMjv2v/Oom2EgwQlEo38Z3S1dk4BbFrbF3VKwi
         zFNNOgdwyt6EmsWq517RxbdIUv4V/x1tLm4ugZ3M=
Message-ID: <7a7e79ab-94e4-3137-b89e-28995059e084@digikod.net>
Date:   Tue, 7 Mar 2023 23:41:51 +0100
MIME-Version: 1.0
User-Agent: 
Subject: Re: [PATCH v3 2/2] landlock.7: Document Landlock ABI v3 (file
 truncation; Linux 6.2)
Content-Language: en-US
To:     =?UTF-8?Q?G=c3=bcnther_Noack?= <gnoack3000@gmail.com>,
        Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>, linux-man@vger.kernel.org
References: <20230304171607.8301-1-gnoack3000@gmail.com>
 <20230304171607.8301-2-gnoack3000@gmail.com>
From:   =?UTF-8?Q?Micka=c3=abl_Sala=c3=bcn?= <mic@digikod.net>
In-Reply-To: <20230304171607.8301-2-gnoack3000@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Infomaniak-Routing: alpha
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


On 04/03/2023 18:16, Günther Noack wrote:
> https://git.kernel.org/torvalds/c/299e2b1967578b1442128ba8b3e86ed3427d3651
> 
> Signed-off-by: Günther Noack <gnoack3000@gmail.com>

Reviewed-by: Mickaël Salaün <mic@digikod.net>

> ---
>   man7/landlock.7 | 83 +++++++++++++++++++++++++++++++++++++++++++++++--
>   1 file changed, 81 insertions(+), 2 deletions(-)
> 
> diff --git a/man7/landlock.7 b/man7/landlock.7
> index 1ab0a6cbc..f711000f1 100644
> --- a/man7/landlock.7
> +++ b/man7/landlock.7
> @@ -64,9 +64,39 @@ Execute a file.
>   .TP
>   .B LANDLOCK_ACCESS_FS_WRITE_FILE
>   Open a file with write access.
> +.IP
> +When opening files for writing,
> +you will often additionally need the
> +.B LANDLOCK_ACCESS_FS_TRUNCATE
> +right.
> +In many cases,
> +these system calls truncate existing files when overwriting them
> +(e.g.,
> +.BR creat (2)).
>   .TP
>   .B LANDLOCK_ACCESS_FS_READ_FILE
>   Open a file with read access.
> +.TP
> +.B LANDLOCK_ACCESS_FS_TRUNCATE
> +Truncate a file with
> +.BR truncate (2),
> +.BR ftruncate (2),
> +.BR creat (2),
> +or
> +.BR open (2)
> +with
> +.BR O_TRUNC .
> +Whether an opened file can be truncated with
> +.BR ftruncate (2)
> +is determined during
> +.BR open (2),
> +in the same way as read and write permissions are checked during
> +.BR open (2)
> +using
> +.B LANDLOCK_ACCESS_FS_READ_FILE
> +and
> +.BR LANDLOCK_ACCESS_FS_WRITE_FILE .
> +This access right is available since the third version of the Landlock ABI.
>   .PP
>   A directory can receive access rights related to files or directories.
>   The following access right is applied to the directory itself,
> @@ -231,6 +261,53 @@ To be allowed to use
>   and related syscalls on a target process,
>   a sandboxed process should have a subset of the target process rules,
>   which means the tracee must be in a sub-domain of the tracer.
> +.\"
> +.SS Truncating files
> +The operations covered by
> +.B LANDLOCK_ACCESS_FS_WRITE_FILE
> +and
> +.B LANDLOCK_ACCESS_FS_TRUNCATE
> +both change the contents of a file and sometimes overlap in
> +non-intuitive ways.
> +It is recommended to always specify both of these together.
> +.PP
> +A particularly surprising example is
> +.BR creat (2).
> +The name suggests that this system call requires
> +the rights to create and write files.
> +However, it also requires the truncate right
> +if an existing file under the same name is already present.
> +.PP
> +It should also be noted that truncating files does not require the
> +.B LANDLOCK_ACCESS_FS_WRITE_FILE
> +right.
> +Apart from the
> +.BR truncate (2)
> +system call, this can also be done through
> +.BR open (2)
> +with the flags
> +.IR "O_RDONLY\ |\ O_TRUNC" .
> +.PP
> +When opening a file, the availability of the
> +.B LANDLOCK_ACCESS_FS_TRUNCATE
> +right is associated with the newly created file descriptor
> +and will be used for subsequent truncation attempts using
> +.BR ftruncate (2).
> +The behavior is similar to opening a file for reading or writing,
> +where permissions are checked during
> +.BR open (2),
> +but not during the subsequent
> +.BR read (2)
> +and
> +.BR write (2)
> +calls.
> +.PP
> +As a consequence,
> +it is possible to have multiple open file descriptors for the same file,
> +where one grants the right to truncate the file and the other does not.
> +It is also possible to pass such file descriptors between processes,
> +keeping their Landlock properties,
> +even when these processes do not have an enforced Landlock ruleset.
>   .SH VERSIONS
>   Landlock was introduced in Linux 5.13.
>   .PP
> @@ -257,6 +334,8 @@ _	_	_
>   \^	\^	LANDLOCK_ACCESS_FS_MAKE_SYM
>   _	_	_
>   2	5.19	LANDLOCK_ACCESS_FS_REFER
> +_	_	_
> +3	6.2	LANDLOCK_ACCESS_FS_TRUNCATE
>   .TE
>   .sp 1
>   .PP
> @@ -302,7 +381,6 @@ in kernel logs.
>   It is currently not possible to restrict some file-related actions
>   accessible through these system call families:
>   .BR chdir (2),
> -.BR truncate (2),
>   .BR stat (2),
>   .BR flock (2),
>   .BR chmod (2),
> @@ -340,7 +418,8 @@ attr.handled_access_fs =
>           LANDLOCK_ACCESS_FS_MAKE_FIFO |
>           LANDLOCK_ACCESS_FS_MAKE_BLOCK |
>           LANDLOCK_ACCESS_FS_MAKE_SYM |
> -        LANDLOCK_ACCESS_FS_REFER;
> +        LANDLOCK_ACCESS_FS_REFER |
> +        LANDLOCK_ACCESS_FS_TRUNCATE;
>   
>   ruleset_fd = landlock_create_ruleset(&attr, sizeof(attr), 0);
>   if (ruleset_fd == -1) {
