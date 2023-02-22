Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 85BA169EF0F
	for <lists+linux-man@lfdr.de>; Wed, 22 Feb 2023 08:01:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230135AbjBVHBz (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 22 Feb 2023 02:01:55 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35198 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230446AbjBVHBy (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 22 Feb 2023 02:01:54 -0500
Received: from smtp-bc0f.mail.infomaniak.ch (smtp-bc0f.mail.infomaniak.ch [IPv6:2001:1600:3:17::bc0f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 684B636471
        for <linux-man@vger.kernel.org>; Tue, 21 Feb 2023 23:01:36 -0800 (PST)
Received: from smtp-3-0001.mail.infomaniak.ch (unknown [10.4.36.108])
        by smtp-2-3000.mail.infomaniak.ch (Postfix) with ESMTPS id 4PM6Wv72yBzMrRcp;
        Wed, 22 Feb 2023 08:01:31 +0100 (CET)
Received: from unknown by smtp-3-0001.mail.infomaniak.ch (Postfix) with ESMTPA id 4PM6Wv3r8tzMsXq1;
        Wed, 22 Feb 2023 08:01:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=digikod.net;
        s=20191114; t=1677049291;
        bh=r2UsWAAsTAZWuYCeJ4yNDc6oeQ2qnn0/l/GekwsoX2o=;
        h=Date:Subject:From:Reply-To:To:Cc:References:In-Reply-To:From;
        b=GJDLbm5YhUCfKCogbePFwv8KTtNweyL7zCha23QQUAMAnl/LUn4XtboXZudJiKiPW
         56XzGnOb+A9Wfe/R0s2LyCVVbsjMOMLHK0RlpJObTf7Gmy6wbSoAtERQvwQh6FUT4A
         O3zsy19O7AR5hT8LxvFcCShFnzTaJuMSSVbuJrCg=
Message-ID: <ae071c4a4da0204d3921478797e41b1a@mail.infomaniak.com>
Date:   Wed, 22 Feb 2023 08:01:31 +0100
Subject: Re: [PATCH 2/3] landlock.7: Document Landlock ABI v2 (file
 reparenting; kernel 5.19)
From:   =?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?= <mic@digikod.net>
Reply-To: =?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?= <mic@digikod.net>
To:     =?utf-8?Q?G=C3=BCnther?= Noack <gnoack3000@gmail.com>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-WS-User-Origin: eyJpdiI6IjQwUVZsTmE4OUsvY2JLR0VKL0pwL0E9PSIsInZhbHVlIjoiM0c4RVpDTnl4Q05HeDkvNlVBWmJWUT09IiwibWFjIjoiNTA4YTY2NTMzZWZmYTlkNmJlMDAxMjY4MGJiZGU2MDhkYmE4NWU2OTA5ZmMxZTA5NGQ1MDBmNzk3Nzk3ZDhiYSIsInRhZyI6IiJ9
X-WS-User-Mbox: eyJpdiI6ImVyZHpSbmJjVEVKK2t2VlVIUXJFSmc9PSIsInZhbHVlIjoiMmhYMXZaZXk2aUFab0RGRkhlekRsZz09IiwibWFjIjoiMTJhMTUyOTU3MzhjMmJmZDgwYzU2ZTIzNjhhOWIxY2VhYmE1OGQwOTI2NzgyZTczNTVkYmM1Nzk3ZWI3NWI5OCIsInRhZyI6IiJ9
X-WS-Location: eJxzKUpMKykGAAfpAmU-
X-Mailer: Infomaniak Workspace (1.3.446)
References: <20230221205023.2739-1-gnoack3000@gmail.com>
 <20230221205023.2739-2-gnoack3000@gmail.com>
In-Reply-To: <20230221205023.2739-2-gnoack3000@gmail.com>
X-Infomaniak-Routing: alpha
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Thanks for this update G=C3=BCnther.

On 2023-02-21T21:50:22.000+01:00, G=C3=BCnther Noack <gnoack3000@gmail.com>=
 wrote:
>  * Add the description for LANDLOCK_ACCESS_FS_REFER,
>   in line with recent update to the uapi headers:
>   https://lore.kernel.org/linux-security-module/20230202204623.10345-1-gn=
oack3000@gmail.com/T/
> * VERSIONS: Add a table of Landlock versions and their changes.
>   Briefly talk about how to probe ABI levels and warn users about the
>   special semantics of the LANDLOCK_ACCESS_FS_REFER right.
> * Add LANDLOCK_ACCESS_FS_REFER to the code example.
>=20
> Code review threads for the "refer" feature:
> * https://lore.kernel.org/all/20220506161102.525323-1-mic@digikod.net/ (i=
nitial commit)
> * https://lore.kernel.org/all/20220823144123.633721-1-mic@digikod.net/ (b=
ugfix)
> * https://lore.kernel.org/all/20230221165205.4231-1-gnoack3000@gmail.com/=
 (documentation update)
> ---
>  man7/landlock.7 | 90 +++++++++++++++++++++++++++++++++++++++++++++++--
>  1 file changed, 88 insertions(+), 2 deletions(-)
>=20
> diff --git a/man7/landlock.7 b/man7/landlock.7
> index 099f68067..6321b56ab 100644
> --- a/man7/landlock.7
> +++ b/man7/landlock.7
> @@ -105,6 +105,53 @@ Create (or rename or link) a block device.
>  .TP
>  .B LANDLOCK_ACCESS_FS_MAKE_SYM
>  Create (or rename or link) a symbolic link.
> +.TP
> +.B LANDLOCK_ACCESS_FS_REFER
> +Link or rename a file from or to a different directory (i.e. reparent
> +a file hierarchy).
> +.IP
> +This access right is available since the second version of the
> +Landlock ABI.
> +.IP
> +This is the only access right which is denied by default by any
> +ruleset, even if the right is not specified as handled at ruleset
> +creation time.  The only way to make a ruleset grant this right is to
> +explicitly allow it for a specific directory by adding a matching rule
> +to the ruleset.
> +.IP
> +In particular, when using the first Landlock ABI version, Landlock will
> +always deny attempts to reparent files between different directories.
> +.IP
> +In addition to the source and destination directories having the
> +.B LANDLOCK_ACCESS_FS_REFER
> +access right, the attempted link or rename operation must meet the
> +following constraints:
> +.RS
> +.IP \(bu 3
> +The reparented file may not gain more access rights in the destination
> +directory than it previously had in the source directory.  If this is
> +attempted, the operation results in an
> +.B EXDEV
> +error.
> +.IP \(bu 3
> +When linking or renaming, the
> +.B LANDLOCK_ACCESS_FS_MAKE_*
> +right for the respective file type must be granted for the destination
> +directory. Otherwise, the operation results in an
> +.BR EACCES
> +error.
> +.IP \(bu 3
> +When renaming, the
> +.B LANDLOCK_ACCESS_FS_REMOVE_*
> +right for the respective file type must be granted for the source direct=
ory. Otherwise, the operation results in an
> +.B EACCES
> +error.
> +.RE
> +.IP
> +If multiple requirements are not met, the
> +.B EACCES
> +error code takes precedence over
> +.BR EXDEV .
>  .\"
>  .SS Layers of file path access rights
>  Each time a thread enforces a ruleset on itself,
> @@ -182,7 +229,45 @@ and related syscalls on a target process,
>  a sandboxed process should have a subset of the target process rules,
>  which means the tracee must be in a sub-domain of the tracer.
>  .SH VERSIONS
> -Landlock was added in Linux 5.13.
> +Landlock was introduced in Linux 5.13.
> +.PP
> +The availability of individual Landlock features is versioned through
> +ABI levels:

I think this table is useful, but it should contain a warning to make sure =
developers don't rely on kernel versions to check Landlock features, but us=
e the dedicated Landlock syscall instead.
It should be explained that this table is true for the mainline/vanilla ker=
nel, but that can be incorrect for any other kernel (e.g. patched distro ke=
rnel, like chromeOS that may backport upstream features).

> +.TS
> +box;
> +ntb| ntb| lbx
> +nt| nt| lbx.
> +ABI=09Kernel=09Newly introduced access rights
> +_=09_=09_
> +1=095.13=09LANDLOCK_ACCESS_FS_EXECUTE
> +\^=09\^=09LANDLOCK_ACCESS_FS_WRITE_FILE
> +\^=09\^=09LANDLOCK_ACCESS_FS_READ_FILE
> +\^=09\^=09LANDLOCK_ACCESS_FS_READ_DIR
> +\^=09\^=09LANDLOCK_ACCESS_FS_REMOVE_DIR
> +\^=09\^=09LANDLOCK_ACCESS_FS_REMOVE_FILE
> +\^=09\^=09LANDLOCK_ACCESS_FS_MAKE_CHAR
> +\^=09\^=09LANDLOCK_ACCESS_FS_MAKE_DIR
> +\^=09\^=09LANDLOCK_ACCESS_FS_MAKE_REG
> +\^=09\^=09LANDLOCK_ACCESS_FS_MAKE_SOCK
> +\^=09\^=09LANDLOCK_ACCESS_FS_MAKE_FIFO
> +\^=09\^=09LANDLOCK_ACCESS_FS_MAKE_BLOCK
> +\^=09\^=09LANDLOCK_ACCESS_FS_MAKE_SYM
> +_=09_=09_
> +2=095.19=09LANDLOCK_ACCESS_FS_REFER
> +.TE
> +.PP
> +To query the running kernel's Landlock ABI level, programs may pass
> +the
> +.B LANDLOCK_CREATE_RULESET_VERSION
> +flag to
> +.BR landlock_create_ruleset (2).
> +.PP
> +When building fallback mechanisms for compatibility with older kernels,
> +users are advised to consider the special semantics of the
> +.B LANDLOCK_ACCESS_FS_REFER
> +access right: In ABI v1, linking and moving of files between different
> +directories is always forbidden, so programs relying on such
> +operations are only compatible with Landlock ABI v2 and higher.
>  .SH NOTES
>  Landlock is enabled by
>  .BR CONFIG_SECURITY_LANDLOCK .
> @@ -242,7 +327,8 @@ attr.handled_access_fs =3D
>          LANDLOCK_ACCESS_FS_MAKE_SOCK |
>          LANDLOCK_ACCESS_FS_MAKE_FIFO |
>          LANDLOCK_ACCESS_FS_MAKE_BLOCK |
> -        LANDLOCK_ACCESS_FS_MAKE_SYM;
> +        LANDLOCK_ACCESS_FS_MAKE_SYM |
> +        LANDLOCK_ACCESS_FS_REFER;
> =20
>  ruleset_fd =3D landlock_create_ruleset(&attr, sizeof(attr), 0);
>  if (ruleset_fd =3D=3D -1) {
> --=20
2.39.2
