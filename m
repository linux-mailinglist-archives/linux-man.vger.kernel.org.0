Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BE87777B701
	for <lists+linux-man@lfdr.de>; Mon, 14 Aug 2023 12:46:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229999AbjHNKp3 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 14 Aug 2023 06:45:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57702 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230053AbjHNKpD (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 14 Aug 2023 06:45:03 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8CDB4D2
        for <linux-man@vger.kernel.org>; Mon, 14 Aug 2023 03:45:02 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 223F064E6C
        for <linux-man@vger.kernel.org>; Mon, 14 Aug 2023 10:45:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2FA1CC433C7;
        Mon, 14 Aug 2023 10:45:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1692009901;
        bh=1ZjHYOhDl0RkiAaJLSA9fzCK8t9W08ypCr3fZHMQ/rw=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=e93ZE2HCnr7aQLK5BIKaqrwItOHzJ/y41ie6D1o33Yo+tUdi5+HpcaCBnoVzecX+Q
         //8z+jpg5EdoZuDi3dPyFFujy0f79Q31mvoozUSVhx0LP/zapjnK8b5Xv3xkBQb77R
         29nFJ3AreMWU9nnPz9dxEJOnOO8EObhp0gbbjmpfs39X7haeQ8HIIY9hHp/WkMKQbw
         qyO1+UDPbkgwtEk4GvaH1i8xoVnEO9WDthC1b6K6arkmVwAcPcXp8M0XpFp69My8DU
         JCAtO9tuMnNWLbOoc0AWjPkK7d3tWzn++7vPFEAyioTtikDyDLFKipwlaN/fplEFkV
         q0+T1XZlFDB0A==
Message-ID: <d7e83145-6084-969a-a6ab-91a25473a293@kernel.org>
Date:   Mon, 14 Aug 2023 12:44:58 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.1
Subject: Re: [PATCH v3] strerror.3: Change strerror() reference from MT-Unsafe
 to MT-Safe
Content-Language: en-US
To:     linux-man@vger.kernel.org
Cc:     Shani Leviim <sleviim@redhat.com>,
        Florian Weimer <fweimer@redhat.com>,
        Carlos O'Donell <carlos@redhat.com>,
        Sergei Gromeniuk <sgromeni@redhat.com>,
        Gobinda Das <godas@redhat.com>
References: <CAMO6KYomqkRFVnE1gfNa=htbZ5oBrVAm+AsFVqc6+vqZ0YxnAw@mail.gmail.com>
 <20230813202132.55879-1-alx@kernel.org>
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <20230813202132.55879-1-alx@kernel.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------a0J6lgikEj9lZ6bRxtCoMi2g"
X-Spam-Status: No, score=-6.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------a0J6lgikEj9lZ6bRxtCoMi2g
Content-Type: multipart/mixed; boundary="------------Ai3a1UJFsS9gizlLped7xsSF";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Shani Leviim <sleviim@redhat.com>, Florian Weimer <fweimer@redhat.com>,
 Carlos O'Donell <carlos@redhat.com>, Sergei Gromeniuk <sgromeni@redhat.com>,
 Gobinda Das <godas@redhat.com>
Message-ID: <d7e83145-6084-969a-a6ab-91a25473a293@kernel.org>
Subject: Re: [PATCH v3] strerror.3: Change strerror() reference from MT-Unsafe
 to MT-Safe
References: <CAMO6KYomqkRFVnE1gfNa=htbZ5oBrVAm+AsFVqc6+vqZ0YxnAw@mail.gmail.com>
 <20230813202132.55879-1-alx@kernel.org>
In-Reply-To: <20230813202132.55879-1-alx@kernel.org>

--------------Ai3a1UJFsS9gizlLped7xsSF
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 2023-08-13 22:21, Alejandro Colomar wrote:
> From: Shani Leviim <sleviim@redhat.com>
>=20
> The information in this patch was obtained from a glibc upstream patch,=

> commit ID 28aff047818eb1726394296d27b9c7885340bead
>=20
> According the patch above, for glibc versions >=3D2.32,
> strerror() is considered MT-Safe, and the man page should be changed ac=
cordingly.
>=20
> Signed-off-by: Shani Leviim <sleviim@redhat.com>
> Cc: Florian Weimer <fweimer@redhat.com>
> Cc: Carlos O'Donell <carlos@redhat.com>
> Cc: Sergei Gromeniuk <sgromeni@redhat.com>
> Cc: Gobinda Das <godas@redhat.com>
> Signed-off-by: Alejandro Colomar <alx@kernel.org>
> ---

Patch applied.

Cheers,
Alex

>=20
> v3: Added the CCs from the original thread.
>=20
>  man3/strerror.3 | 31 +++++++++++++++----------------
>  1 file changed, 15 insertions(+), 16 deletions(-)
>=20
> diff --git a/man3/strerror.3 b/man3/strerror.3
> index 8b36d6487..73199ef85 100644
> --- a/man3/strerror.3
> +++ b/man3/strerror.3
> @@ -72,11 +72,12 @@ .SH DESCRIPTION
>  is
>  .BR EINVAL ,
>  the returned description will be "Invalid argument".)
> -This string must not be modified by the application, but may be
> -modified by a subsequent call to
> +This string must not be modified by the application,
> +and the returned pointer will be invalidated on a subsequent call to
>  .BR strerror ()
>  or
> -.BR strerror_l ().
> +.BR strerror_l (),
> +or if the thread that obtained the string exits.
>  No other library function, including
>  .BR perror (3),
>  will modify this string.
> @@ -101,12 +102,12 @@ .SH DESCRIPTION
>  as an argument, this function returns a pointer to the string "EPERM".=

>  .\"
>  .SS strerror_r()
> -The
>  .BR strerror_r ()
> -function is similar to
> +is like
>  .BR strerror (),
> -but is
> -thread safe.
> +but might use the supplied buffer
> +.I buf
> +instead of allocating one internally.
>  This function is available in two versions:
>  an XSI-compliant version specified in POSIX.1-2001
>  (available since glibc 2.3.4, but not POSIX-compliant until glibc 2.13=
),
> @@ -231,7 +232,7 @@ .SH ATTRIBUTES
>  T}	Thread safety	T{
>  .na
>  .nh
> -MT-Unsafe race:strerror
> +MT-Safe
>  T}
>  T{
>  .na
> @@ -246,6 +247,10 @@ .SH ATTRIBUTES
>  .BR strerror_l ()
>  T}	Thread safety	MT-Safe
>  .TE
> +.PP
> +Before glibc 2.32,
> +.BR strerror ()
> +is not MT-Safe.
>  .SH STANDARDS
>  .TP
>  .BR strerror ()
> @@ -301,13 +306,6 @@ .SH HISTORY
>  .BR strerrordesc_np ()
>  glibc 2.32.
>  .SH NOTES
> -The GNU C Library uses a buffer of 1024 characters for
> -.BR strerror ().
> -This buffer size therefore should be sufficient to avoid an
> -.B ERANGE
> -error when calling
> -.BR strerror_r ().
> -.PP
>  .BR strerrorname_np ()
>  and
>  .BR strerrordesc_np ()
> @@ -318,4 +316,5 @@ .SH SEE ALSO
>  .BR error (3),
>  .BR perror (3),
>  .BR strsignal (3),
> -.BR locale (7)
> +.BR locale (7),
> +.BR signal-safety (7)

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------Ai3a1UJFsS9gizlLped7xsSF--

--------------a0J6lgikEj9lZ6bRxtCoMi2g
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmTaBaoACgkQnowa+77/
2zLlUw/9Erx6FlceFYWcy9fLGfj2X0xU4F9dXMwyemo7sBqodjo5M81i5TnQMASN
JfxBxDZQe8kYnYfvB5DahyLzpL/98d9777dyv1HYuQzaM9KQzkQuD7Vku6LpqVzW
kXwkyQ7TbMmNQsq/imOj2fphjUZ6HeqUKeCfO/Yf4DGg9L++pCq3FaQw84y4MgNy
wsGzgUK56l9l12wvuyZkq8q5ptxQFZ29Q1qcEx6Ui1cqvnA0P2sBGC+eXcSouK41
auRt2ji+sO5iVcK1+GDnnau+Y1Ym3pIua5fER0UjXnN7uJiohXYlYNpei9OjWRT+
RRgJqCCcHCoQVqMPTlro7agZ5zugEuai+cHqqwL7dte5UvbEUEHqLv5Vog8a4k4n
X6XkvPLTcUj1nOuyM/O2WPgtTMrX76EMaG+MHjhfG+8b3MWr1msFNoEkM9O3W6Ak
xgasRrjo2oh8agOkWC5bM42uZuk9FXsA3sShgvSBHkc5PRouYTG9xcENLY4h5ZZX
TbO8V/eQ3hg/br0269S+l46ec0785Getrv/YxfrHAzeCaKoUa/ZWbn2N2oC1pUjI
VbvBL5OuO3ZEKZH15gMnyak1vHYD4L8zb0ZVsftzNV98Z/sPaSgCCEL/57IAH1Jj
PovRy3y4tOWndIkjrkxqUEIwOSfA1YM3SggOsHJqZvUhI7xuGOU=
=vu4F
-----END PGP SIGNATURE-----

--------------a0J6lgikEj9lZ6bRxtCoMi2g--
