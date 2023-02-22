Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 69C9B69EFDD
	for <lists+linux-man@lfdr.de>; Wed, 22 Feb 2023 09:04:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229966AbjBVIEL (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 22 Feb 2023 03:04:11 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53844 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229596AbjBVIEF (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 22 Feb 2023 03:04:05 -0500
X-Greylist: delayed 1111 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Wed, 22 Feb 2023 00:04:02 PST
Received: from smtp-8fa9.mail.infomaniak.ch (smtp-8fa9.mail.infomaniak.ch [83.166.143.169])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C3EC527982
        for <linux-man@vger.kernel.org>; Wed, 22 Feb 2023 00:04:02 -0800 (PST)
Received: from smtp-3-0000.mail.infomaniak.ch (unknown [10.4.36.107])
        by smtp-2-3000.mail.infomaniak.ch (Postfix) with ESMTPS id 4PM7w05f8lzMrLnQ;
        Wed, 22 Feb 2023 09:04:00 +0100 (CET)
Received: from unknown by smtp-3-0000.mail.infomaniak.ch (Postfix) with ESMTPA id 4PM7w036kdz1dKc;
        Wed, 22 Feb 2023 09:04:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=digikod.net;
        s=20191114; t=1677053040;
        bh=Yrn5yVZ987mQh6KOtwy+2O/Q1I2AX8zvg1I7eLpEroc=;
        h=Date:Subject:From:Reply-To:To:Cc:References:In-Reply-To:From;
        b=PB8FmY5vqgWxaT1myKNTHJxU2jya5ESRZxhLaXXgPZJKryXGGU3BmEtBBES9QfjYQ
         iL2Rv6TWkRPq7LGeLKYQ3Ur2a7xkNyTwTx2M6eWJUEt2GPUQzBzblXASveD86tYQk2
         5au+6zbNBjhM9jYSVUSnmY476jtkCNsb4AOIcDh4=
Message-ID: <9f9d462dc501b97fd8bd6afde30fc70a@mail.infomaniak.com>
Date:   Wed, 22 Feb 2023 09:04:00 +0100
Subject: Re: [PATCH 3/3] landlock.7: Document Landlock ABI v3 (file
 truncation; kernel 6.2)
From:   =?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?= <mic@digikod.net>
Reply-To: =?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?= <mic@digikod.net>
To:     =?utf-8?Q?G=C3=BCnther?= Noack <gnoack3000@gmail.com>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-WS-User-Origin: eyJpdiI6IllkejdmcE9qTEx3aUNCakFrNno1Unc9PSIsInZhbHVlIjoiK1JMSnBIQ0tzeDhUbHlTSDN0Y2VqQT09IiwibWFjIjoiYmExNjljMGViZjM4Zjg1NDNjY2Q3OWNjMDIwNDY4YmRjM2UyZDJkMGNmOGM5MzE0OTRmMzg2MTI3ZTI0M2UyZSIsInRhZyI6IiJ9
X-WS-User-Mbox: eyJpdiI6IlRYMVBWRDY0bFJPQnVTSEtzZEE3N3c9PSIsInZhbHVlIjoiMUVkbXhxVlVuR25Fd3I3UkVEU0xGUT09IiwibWFjIjoiNDQxNmE5ODQ4MDE0OTdmZjUzYjMwNTkzNzFmNzU4ZjUzY2E5MTQyOWU5YTUxNWY5N2I5NWMzMGE5MmJjMmIzMSIsInRhZyI6IiJ9
X-WS-Location: eJxzKUpMKykGAAfpAmU-
X-Mailer: Infomaniak Workspace (1.3.446)
References: <20230221205023.2739-1-gnoack3000@gmail.com>
 <20230221205023.2739-3-gnoack3000@gmail.com>
In-Reply-To: <20230221205023.2739-3-gnoack3000@gmail.com>
X-Infomaniak-Routing: alpha
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,
        SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 2023-02-21T21:50:23.000+01:00, G=C3=BCnther Noack wrote:
>  https://lore.kernel.org/all/20221018182216.301684-1-gnoack3000@gmail.com=
/

We should point to the git (merge) commit once it is merged in the kernel:
https://git.kernel.org/torvalds/c/299e2b1967578b1442128ba8b3e86ed3427d3651

[...]

> @@ -328,7 +401,8 @@ attr.handled_access_fs =3D
>          LANDLOCK_ACCESS_FS_MAKE_FIFO |
>          LANDLOCK_ACCESS_FS_MAKE_BLOCK |
>          LANDLOCK_ACCESS_FS_MAKE_SYM |
> -        LANDLOCK_ACCESS_FS_REFER;
> +        LANDLOCK_ACCESS_FS_REFER |;

trailing ";"

> +        LANDLOCK_ACCESS_FS_TRUNCATE;
> =20
>  ruleset_fd =3D landlock_create_ruleset(&attr, sizeof(attr), 0);
>  if (ruleset_fd =3D=3D -1) {
> --=20
2.39.2
