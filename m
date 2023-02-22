Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3F5B169EF72
	for <lists+linux-man@lfdr.de>; Wed, 22 Feb 2023 08:36:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230414AbjBVHgo (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 22 Feb 2023 02:36:44 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59198 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229581AbjBVHgn (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 22 Feb 2023 02:36:43 -0500
X-Greylist: delayed 2105 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Tue, 21 Feb 2023 23:36:39 PST
Received: from smtp-bc0b.mail.infomaniak.ch (smtp-bc0b.mail.infomaniak.ch [45.157.188.11])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 87D24366AD
        for <linux-man@vger.kernel.org>; Tue, 21 Feb 2023 23:36:39 -0800 (PST)
Received: from smtp-2-0001.mail.infomaniak.ch (unknown [10.5.36.108])
        by smtp-2-3000.mail.infomaniak.ch (Postfix) with ESMTPS id 4PM7JQ0QlgzMrNlK;
        Wed, 22 Feb 2023 08:36:38 +0100 (CET)
Received: from unknown by smtp-2-0001.mail.infomaniak.ch (Postfix) with ESMTPA id 4PM7JP4xjwzMrwPd;
        Wed, 22 Feb 2023 08:36:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=digikod.net;
        s=20191114; t=1677051397;
        bh=vs2Nl7F5gXH7A6NuRSwxtRZtLx3j2wx223SVDfAGhWA=;
        h=Date:Subject:From:Reply-To:To:Cc:References:In-Reply-To:From;
        b=BKi536bswWNDQW6hED+D0fV6QOxfDdz9fJoWz1CwRwWzwqkt6uDO0yjg+wEmX3W/c
         Hzysa9nd98aPXsEomoAA9Trp0svgqzqhNNd06tGpACzULRaXATmrhIXedgNBVQLjdw
         hY/QJaCNQSdYlz4N710iLS7xSy0Iw+POuPpmbF+Q=
Message-ID: <5495bf9a0580a049bbe5a874c57202ba@mail.infomaniak.com>
Date:   Wed, 22 Feb 2023 08:36:37 +0100
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
X-WS-User-Origin: eyJpdiI6Im92Mi81c3c5bUxNZTVTM0hrYVcyQUE9PSIsInZhbHVlIjoiM3c1c2JxNDFFWnVXRVh1Vk8vR1Fndz09IiwibWFjIjoiYjMyZTA2YzVkNmM3NzQ2MTljMzdkN2RhZTdhZWVjZjNlMTk2YzYxOGIwN2FhNWY1OTIyYTNhMjZmNmY0MzQ0NyIsInRhZyI6IiJ9
X-WS-User-Mbox: eyJpdiI6IitLRGNpUG1OVFdqK1BDNzlrZGVhenc9PSIsInZhbHVlIjoiMkk2cWY5NzdnUGtyOEVQbW1ZTXFLZz09IiwibWFjIjoiODA5YWQ3ZmMyMTg3YzAzYjAxNjI4Y2NiOGZiZmFmMzg1ZjhhMGJiYTVhNDY2NmNlN2NlZmI5OTM5OWM1MjU5MyIsInRhZyI6IiJ9
X-WS-Location: eJxzKUpMKykGAAfpAmU-
X-Mailer: Infomaniak Workspace (1.3.446)
References: <20230221205023.2739-1-gnoack3000@gmail.com>
 <20230221205023.2739-2-gnoack3000@gmail.com>
In-Reply-To: <20230221205023.2739-2-gnoack3000@gmail.com>
X-Infomaniak-Routing: alpha
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,
        SPF_PASS,UPPERCASE_50_75 autolearn=ham autolearn_force=no version=3.4.6
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

A line break would be nice here.

> +To query the running kernel's Landlock ABI level, programs may pass

s/level/version/

> +the
> +.B LANDLOCK_CREATE_RULESET_VERSION
> +flag to
> +.BR landlock_create_ruleset (2).
