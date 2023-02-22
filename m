Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7296B69EFA5
	for <lists+linux-man@lfdr.de>; Wed, 22 Feb 2023 08:54:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231229AbjBVHyt (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 22 Feb 2023 02:54:49 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42486 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229755AbjBVHyr (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 22 Feb 2023 02:54:47 -0500
X-Greylist: delayed 554 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Tue, 21 Feb 2023 23:54:46 PST
Received: from smtp-190c.mail.infomaniak.ch (smtp-190c.mail.infomaniak.ch [IPv6:2001:1600:4:17::190c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5A1B92A9AA
        for <linux-man@vger.kernel.org>; Tue, 21 Feb 2023 23:54:46 -0800 (PST)
Received: from smtp-2-0001.mail.infomaniak.ch (unknown [10.5.36.108])
        by smtp-3-3000.mail.infomaniak.ch (Postfix) with ESMTPS id 4PM7Vd2c5czMr24L;
        Wed, 22 Feb 2023 08:45:29 +0100 (CET)
Received: from unknown by smtp-2-0001.mail.infomaniak.ch (Postfix) with ESMTPA id 4PM7Vd0CxYzMrwS4;
        Wed, 22 Feb 2023 08:45:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=digikod.net;
        s=20191114; t=1677051929;
        bh=E83KE3Yo6QfjjqySYuYhEkAb7xrTWpO1K6w1Yfifjwk=;
        h=Date:Subject:From:Reply-To:To:Cc:References:In-Reply-To:From;
        b=J0rdxIr83kjAZHCzK2IM7RgY3pFGGwaBYunGzV5oiPnSUH/3UdvZfugiyS0LEWX81
         +sUbADXr1SR7roVUYcGdpwfqsTe8ThtXYwdl0jOkYEQ9EdnHwdCz5HwMz1VDrlH4Kq
         KPAf9PF00nSyiuxTaNkXKq/g2J2b04rYmKi4pcYc=
Message-ID: <1bb1d91c9edd6b4b65b012827aa4f739@mail.infomaniak.com>
Date:   Wed, 22 Feb 2023 08:45:28 +0100
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
X-WS-User-Origin: eyJpdiI6IlMwNUVXYXhXNWVvSDNKU3dSRUkrclE9PSIsInZhbHVlIjoiNmgxcFhmNlRuaVJ0VXlFeW9sOXdsUT09IiwibWFjIjoiZTdhODA5YzgwYWRjMWYzNTQ1NDBiYzY0MjdkYjI5OTdhYzdjMjMwNzM0ZDQ0NjM3MjQ3YmJiZmRhMmZmYjg4NyIsInRhZyI6IiJ9
X-WS-User-Mbox: eyJpdiI6IjFDTVYvQ2FrbnB5K3BXWUd6L1ZpMGc9PSIsInZhbHVlIjoiQ1I4OHVPWklpS0M0d0FIVVh6algrZz09IiwibWFjIjoiZGZlOWNjZDkxYmZiOTIyOTA0OGE0NTk1OGVkMmVkNDA2MzVlZTVjNjJkOGI0MGJlMmVlMGUxZWRhOTVlZGU3OSIsInRhZyI6IiJ9
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

On 2023-02-21T21:50:22.000+01:00, G=C3=BCnther Noack wrote:

[...]

>  .SH VERSIONS
> -Landlock was added in Linux 5.13.
> +Landlock was introduced in Linux 5.13.
> +.PP
> +The availability of individual Landlock features is versioned through
> +ABI levels:
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

This code example should now query the Landlock ABI version and mask new ac=
cess right to make it works with old kernels.

> =20
>  ruleset_fd =3D landlock_create_ruleset(&attr, sizeof(attr), 0);
>  if (ruleset_fd =3D=3D -1) {
> --=20
2.39.2
