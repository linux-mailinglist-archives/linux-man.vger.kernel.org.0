Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8A0367548CC
	for <lists+linux-man@lfdr.de>; Sat, 15 Jul 2023 15:41:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229816AbjGONly (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 15 Jul 2023 09:41:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33612 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229549AbjGONlx (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 15 Jul 2023 09:41:53 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BF4812680
        for <linux-man@vger.kernel.org>; Sat, 15 Jul 2023 06:41:52 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 4EDFB60A26
        for <linux-man@vger.kernel.org>; Sat, 15 Jul 2023 13:41:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D9987C433C7;
        Sat, 15 Jul 2023 13:41:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1689428511;
        bh=RAi6+x6MoUrT33+8hdPZwk/be/f6qKOAYNJO1wWJsXg=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=NYPusSTjuCf1n0UF9ehbRepsfjYdZJACGk4Q9EvooPj+hF3pOuje6Sc5zsICUpY3L
         rQX8yeL1YTS9VYRl05lKBN7mjnWdv8ciiB36jikynAl/dY6wbV5XMqn8fDMgvfQaDm
         VnNewywh4UH71FoeyufwJ4RnsZzVtrqaPvMySCy9J+fuXhkmWW3FqHz/WyyWNueU7P
         cT/XBlK+5ca7pRjQWKCVWhfQ8v8SUZVU0Vfpj707bs9dsqCyCDnnuUXehR3ChWKyRl
         L3ECJnWqfQ7AZz0PRgRluzWDVZ3F7LQb/BYlqwaZ9ejVjdjoL341VhhWBP5jAsWFYy
         wHOHkcuYkfXiA==
Message-ID: <f6a0a053-bbfe-82fb-f2c5-1d73e3367480@kernel.org>
Date:   Sat, 15 Jul 2023 15:41:48 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH v3 2/2] statvfs.3: note f_favail = f_ffree on Linux
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org, Tom Schwindl <schwindl@posteo.de>
References: <c79b5d7e-540a-ce0a-2ee7-ce5fdde6947c@kernel.org>
 <rubximyg43zxy2itklr6jrk3bisxt52zbsbwfdovpy7b5cgma7@zwl7wl5xnpzz>
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <rubximyg43zxy2itklr6jrk3bisxt52zbsbwfdovpy7b5cgma7@zwl7wl5xnpzz>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------wcF6xsTMOGsAcvBgjC6sw42j"
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------wcF6xsTMOGsAcvBgjC6sw42j
Content-Type: multipart/mixed; boundary="------------5jyYKmEB84jZ1gnqyA6cMCn3";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org, Tom Schwindl <schwindl@posteo.de>
Message-ID: <f6a0a053-bbfe-82fb-f2c5-1d73e3367480@kernel.org>
Subject: Re: [PATCH v3 2/2] statvfs.3: note f_favail = f_ffree on Linux
References: <c79b5d7e-540a-ce0a-2ee7-ce5fdde6947c@kernel.org>
 <rubximyg43zxy2itklr6jrk3bisxt52zbsbwfdovpy7b5cgma7@zwl7wl5xnpzz>
In-Reply-To: <rubximyg43zxy2itklr6jrk3bisxt52zbsbwfdovpy7b5cgma7@zwl7wl5xnpzz>

--------------5jyYKmEB84jZ1gnqyA6cMCn3
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 2023-07-08 22:01, =D0=BD=D0=B0=D0=B1 wrote:
> Quoting myself from #musl:
> 01:59:40 hm, I think this was just invented for symmetry with bfree/bav=
ail
> 02:00:46 FFS has minfree for space but nothing equivalent for inodes
> 02:32:31 (this is mirrored in ext4;
> 	  a global grep over DragonFlyBSD and the illumos gate
> 	  showed just NFSv3 forwarding from the server;
> 	  OpenBSD always sets it to the same thing as f_ffree;
> 	  oddly, NetBSD /does/ calculate it differently
> 	  for LFS and FFS but due to queued writes or
> 	  w/e not because of root reservation;
> 	  and as expected a lot of "/* what to put in here? */"
> 	                       and "// XXX same??")
>=20
> Link: https://lore.kernel.org/linux-man/f54kudgblgk643u32tb6at4cd3kkzha=
6hslahv24szs4raroaz@ogivjbfdaqtb/t/#u
> Cc: Tom Schwindl <schwindl@posteo.de>
> Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.=
xyz>
> ---
>  man3/statvfs.3 | 8 ++++++++
>  1 file changed, 8 insertions(+)
>=20
> diff --git a/man3/statvfs.3 b/man3/statvfs.3
> index b1f0e7545..50b568ab1 100644
> --- a/man3/statvfs.3
> +++ b/man3/statvfs.3
> @@ -227,6 +227,14 @@ .SH NOTES
>  .BR statvfs ()
>  with the argument
>  .IR path .
> +.PP
> +Under Linux,
> +.I f_favail
> +is always the same as
> +.IR f_ffree ,
> +and there's no way for a filesystem to report otherwise.
> +This is not an issue, since no filesystems with an inode

The break point of this line is strange.  I fixed it to right after the
comma.

Nevertheless, patch applied.

Thanks,
Alex

> +root reservation exist.
>  .SH STANDARDS
>  POSIX.1-2008.
>  .SH HISTORY

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------5jyYKmEB84jZ1gnqyA6cMCn3--

--------------wcF6xsTMOGsAcvBgjC6sw42j
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmSyoh0ACgkQnowa+77/
2zIFvQ//Xl2Z6c2E9s4WQghYWkxeUDM/K75sfFH0AP/Zhj28vlQCD19xF22Tt5zs
/ys0eXdkrIr/li0eVEvy6xV7ID9cFX6zwnJxCzIvgaucvPophO4YS2YuwSWYM51I
Q3Y8dl0zTreJLoeWjZYPf/4HLIdNMzEP4azC3nKNCpcjcJbtzXfKuwL1O6j33yJI
51yHDkDlr171NqJZEoIEeM6Ey71W2GwesBD4AJkFqpcpn85U/dSwovN+ALi5pVcL
83jkO76CbJnD6SPuMDT6FHrAauIYhXlkt311x06DYYbDgV47ooLS1k67OeAY7PXR
GtCQMuJ5y/9ux/Eo2pnMogjjzrBxskNfLJHROz7BOn+0qiL0zEe2GioQEjbYGS7V
2zo7VPhLpvHKJ25lBlIAR6VT8Vxki2/GpGsfCQuOsJwVxwQjY1fcDVHECMoiwhVd
ENqMse4/Qy3wN6jY2iQkCiB9Yy3ORaKGMiah+m+0XWfPm/ezz0RUCWMdxJPGI1f6
woQX42FsZdq0OkjqXqfyK6Poomb3wBkJNOBq1EkFsRxcrMLg9Fn88FIW51sx8N7+
5mpleyKqUScSTZmiyHRjHxQGkUPFaSv1/X09W7VaKLxnq2QnvuLO/JLsOioUcXqr
DBcBbyb3p9tJeEpR3iWBCkj8fn2Vzy44YgWTeJ/T9VXsVkF9NZA=
=Kz88
-----END PGP SIGNATURE-----

--------------wcF6xsTMOGsAcvBgjC6sw42j--
