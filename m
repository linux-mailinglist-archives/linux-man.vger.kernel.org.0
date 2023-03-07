Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 028826AF90D
	for <lists+linux-man@lfdr.de>; Tue,  7 Mar 2023 23:42:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231305AbjCGWmF (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 7 Mar 2023 17:42:05 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49536 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231620AbjCGWlq (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 7 Mar 2023 17:41:46 -0500
X-Greylist: delayed 1453 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Tue, 07 Mar 2023 14:41:03 PST
Received: from smtp-190e.mail.infomaniak.ch (smtp-190e.mail.infomaniak.ch [185.125.25.14])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E214BAF69B
        for <linux-man@vger.kernel.org>; Tue,  7 Mar 2023 14:41:03 -0800 (PST)
Received: from smtp-3-0000.mail.infomaniak.ch (unknown [10.4.36.107])
        by smtp-3-3000.mail.infomaniak.ch (Postfix) with ESMTPS id 4PWVlq04CRzMqHjF;
        Tue,  7 Mar 2023 23:40:55 +0100 (CET)
Received: from unknown by smtp-3-0000.mail.infomaniak.ch (Postfix) with ESMTPA id 4PWVlp3HwLz2268;
        Tue,  7 Mar 2023 23:40:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=digikod.net;
        s=20191114; t=1678228854;
        bh=VBTU1GsAcbhih+LqerCmRNj319pJFxjW8FUgNXwnOkY=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=R8N+wK/NRTf+IxBKL9kD9XFUhPhvCF6PPrOsB3GvFvHr6kck+fUUk9RRVJ2xoIoEN
         ZQrn8S4ZLpF0ujhtIwH3Jx+RyLYbx8DSCyxCkIWeHSvbuNsjG4pDAVr4axx7BFQnGb
         cBo5Lf16yMSUTKwj49D98jIHAEY7L6SR0Wbh2B9Y=
Message-ID: <e7563a7c-98f2-0779-9283-1c0180615516@digikod.net>
Date:   Tue, 7 Mar 2023 23:40:53 +0100
MIME-Version: 1.0
User-Agent: 
Subject: Re: [PATCH v3 1/2] landlock.7: Document Landlock ABI v2 (file
 reparenting; Linux 5.19)
Content-Language: en-US
To:     =?UTF-8?Q?G=c3=bcnther_Noack?= <gnoack3000@gmail.com>,
        Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>, linux-man@vger.kernel.org
References: <20230304171607.8301-1-gnoack3000@gmail.com>
From:   =?UTF-8?Q?Micka=c3=abl_Sala=c3=bcn?= <mic@digikod.net>
In-Reply-To: <20230304171607.8301-1-gnoack3000@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Infomaniak-Routing: alpha
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,
        SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


On 04/03/2023 18:16, Günther Noack wrote:
> * Add the description for LANDLOCK_ACCESS_FS_REFER,
>    in line with recent update to the uapi headers:
>    https://lore.kernel.org/linux-security-module/20230202204623.10345-1-gnoack3000@gmail.com/T/
> * VERSIONS: Add a table of Landlock versions and their changes.
>    Briefly talk about how to probe ABI levels and warn users about the
>    special semantics of the LANDLOCK_ACCESS_FS_REFER right.
> * Add LANDLOCK_ACCESS_FS_REFER to the code example.
> 
> Code review threads for the "refer" feature:
> * https://lore.kernel.org/all/20220506161102.525323-1-mic@digikod.net/ (initial commit)
> * https://lore.kernel.org/all/20220823144123.633721-1-mic@digikod.net/ (bugfix)

You can replace these links with
https://git.kernel.org/torvalds/c/cb44e4f061e16be65b8a16505e121490c66d30d0
I don't think the fix is worth mentioning because it doesn't change the 
documentation


> * https://lore.kernel.org/all/20230221165205.4231-1-gnoack3000@gmail.com/ (documentation update)

FYI, this patch is in my -next tree and will be merged with the next 
release.


> 
> Signed-off-by: Günther Noack <gnoack3000@gmail.com>

Reviewed-by: Mickaël Salaün <mic@digikod.net>


> ---
>   man7/landlock.7 | 102 +++++++++++++++++++++++++++++++++++++++++++++++-
>   1 file changed, 100 insertions(+), 2 deletions(-)
> 
> diff --git a/man7/landlock.7 b/man7/landlock.7
> index b2bc9e10b..1ab0a6cbc 100644
> --- a/man7/landlock.7
> +++ b/man7/landlock.7
> @@ -105,6 +105,56 @@ Create (or rename or link) a block device.
>   .TP
>   .B LANDLOCK_ACCESS_FS_MAKE_SYM
>   Create (or rename or link) a symbolic link.
> +.TP
> +.B LANDLOCK_ACCESS_FS_REFER
> +Link or rename a file from or to a different directory
> +(i.e. reparent a file hierarchy).
> +.IP
> +This access right is available since the second version of the Landlock ABI.
> +.IP
> +This is the only access right which is denied by default by any ruleset,
> +even if the right is not specified as handled at ruleset creation time.
> +The only way to make a ruleset grant this right
> +is to explicitly allow it for a specific directory
> +by adding a matching rule to the ruleset.
> +.IP
> +In particular, when using the first Landlock ABI version,
> +Landlock will always deny attempts to reparent files
> +between different directories.
> +.IP
> +In addition to the source and destination directories having the
> +.B LANDLOCK_ACCESS_FS_REFER
> +access right,
> +the attempted link or rename operation must meet the following constraints:
> +.RS
> +.IP \[bu] 3
> +The reparented file may not gain more access rights in the destination directory
> +than it previously had in the source directory.
> +If this is attempted, the operation results in an
> +.B EXDEV
> +error.
> +.IP \[bu]
> +When linking or renaming, the
> +.BI LANDLOCK_ACCESS_FS_MAKE_ *
> +right for the respective file type must be granted
> +for the destination directory.
> +Otherwise, the operation results in an
> +.BR EACCES
> +error.
> +.IP \[bu]
> +When renaming, the
> +.BI LANDLOCK_ACCESS_FS_REMOVE_ *
> +right for the respective file type must be granted
> +for the source directory.
> +Otherwise, the operation results in an
> +.B EACCES
> +error.
> +.RE
> +.IP
> +If multiple requirements are not met, the
> +.B EACCES
> +error code takes precedence over
> +.BR EXDEV .
>   .\"
>   .SS Layers of file path access rights
>   Each time a thread enforces a ruleset on itself,
> @@ -182,7 +232,54 @@ and related syscalls on a target process,
>   a sandboxed process should have a subset of the target process rules,
>   which means the tracee must be in a sub-domain of the tracer.
>   .SH VERSIONS
> -Landlock was added in Linux 5.13.
> +Landlock was introduced in Linux 5.13.
> +.PP
> +To determine which Landlock features are available,
> +users should query the Landlock ABI version:
> +.TS
> +box;
> +ntb| ntb| lbx
> +nt| nt| lbx.
> +ABI	Kernel	Newly introduced access rights
> +_	_	_
> +1	5.13	LANDLOCK_ACCESS_FS_EXECUTE
> +\^	\^	LANDLOCK_ACCESS_FS_WRITE_FILE
> +\^	\^	LANDLOCK_ACCESS_FS_READ_FILE
> +\^	\^	LANDLOCK_ACCESS_FS_READ_DIR
> +\^	\^	LANDLOCK_ACCESS_FS_REMOVE_DIR
> +\^	\^	LANDLOCK_ACCESS_FS_REMOVE_FILE
> +\^	\^	LANDLOCK_ACCESS_FS_MAKE_CHAR
> +\^	\^	LANDLOCK_ACCESS_FS_MAKE_DIR
> +\^	\^	LANDLOCK_ACCESS_FS_MAKE_REG
> +\^	\^	LANDLOCK_ACCESS_FS_MAKE_SOCK
> +\^	\^	LANDLOCK_ACCESS_FS_MAKE_FIFO
> +\^	\^	LANDLOCK_ACCESS_FS_MAKE_BLOCK
> +\^	\^	LANDLOCK_ACCESS_FS_MAKE_SYM
> +_	_	_
> +2	5.19	LANDLOCK_ACCESS_FS_REFER
> +.TE
> +.sp 1
> +.PP
> +Users should use the Landlock ABI version rather than the kernel version
> +to determine which features are available.
> +The mainline kernel versions listed here are only included for orientation.
> +Kernels from other sources may contain backported features,
> +and their version numbers may not match.
> +.PP
> +To query the running kernel's Landlock ABI version,
> +programs may pass the
> +.B LANDLOCK_CREATE_RULESET_VERSION
> +flag to
> +.BR landlock_create_ruleset (2).
> +.PP
> +When building fallback mechanisms for compatibility with older kernels,
> +users are advised to consider the special semantics of the
> +.B LANDLOCK_ACCESS_FS_REFER
> +access right:
> +In ABI v1,
> +linking and moving of files between different directories is always forbidden,
> +so programs relying on such operations are only compatible
> +with Landlock ABI v2 and higher.
>   .SH NOTES
>   Landlock is enabled by
>   .BR CONFIG_SECURITY_LANDLOCK .
> @@ -242,7 +339,8 @@ attr.handled_access_fs =
>           LANDLOCK_ACCESS_FS_MAKE_SOCK |
>           LANDLOCK_ACCESS_FS_MAKE_FIFO |
>           LANDLOCK_ACCESS_FS_MAKE_BLOCK |
> -        LANDLOCK_ACCESS_FS_MAKE_SYM;
> +        LANDLOCK_ACCESS_FS_MAKE_SYM |
> +        LANDLOCK_ACCESS_FS_REFER;
>   
>   ruleset_fd = landlock_create_ruleset(&attr, sizeof(attr), 0);
>   if (ruleset_fd == -1) {
> 
> base-commit: 184ecd225079567aa3dede2b63c7ddf962cfdbdf
