Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2263E7DE46D
	for <lists+linux-man@lfdr.de>; Wed,  1 Nov 2023 17:15:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230520AbjKAQPB (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 1 Nov 2023 12:15:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39512 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229498AbjKAQPB (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 1 Nov 2023 12:15:01 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C356AF7
        for <linux-man@vger.kernel.org>; Wed,  1 Nov 2023 09:14:55 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8C557C433C7;
        Wed,  1 Nov 2023 16:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1698855295;
        bh=NC/RPREoASDRLgxNREmcdn6Y+8cCFZrbZM66LjSx6VU=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=lJGi7Lrl08kb6ZDr9tCfu0OpAxk1kAmZZ19Lwn70bdQaAQvyabmNjqQ3sxr4rghfB
         XPgWgDJPyh922Ox1c1MmA/mbKwg4gy6rv0Q474DzYx18+iPWLxF79/aQXjVVnXXbEc
         uhG2i+TTnFhG7fLp555S4bkw3A5S/EevXGtHJ31UoyMCKTDyb8udw/Z1cOL0PrdSO8
         /sm/kNbPxpKIFfvDBDGFQTdK/NCeRwTbT1jF+XU/w0b+4C8kNbi4tughL4l0d6pVsi
         Q+g8X+cc9EkC3ZhCennUN/A/B2YmLURx9s30RQWyFvH4OlG4O0QFQyv9X/0W8882+m
         tPeD5VMlTZfRQ==
Date:   Wed, 1 Nov 2023 17:14:51 +0100
From:   Alejandro Colomar <alx@kernel.org>
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page syscalls.2
Message-ID: <ZUJ5e8hPLsBG0Vax@debian>
References: <ZUJaZL4eHezC6C-F@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="ASmGqv0ajbqG/9HQ"
Content-Disposition: inline
In-Reply-To: <ZUJaZL4eHezC6C-F@meinfjell.helgefjelltest.de>
X-Spam-Status: No, score=-4.8 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--ASmGqv0ajbqG/9HQ
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Wed, 1 Nov 2023 17:14:51 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page syscalls.2

On Wed, Nov 01, 2023 at 02:02:12PM +0000, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:    And the Linux 6.x series?

Thanks!  Updated:
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3D1b65d56c511ebdbe2ad44d6057408ae1e26c8fe2>

Cheers,
Alex

>=20
> "Starting with Linux 2.6.0, the development model changed, and new system=
 "
> "calls may appear in each Linux 2.6.x release.  In this case, the exact "
> "version number where the system call appeared is shown.  This convention=
 "
> "continues with the Linux 3.x kernel series, which followed on from Linux=
 "
> "2.6.39; and the Linux 4.x kernel series, which followed on from Linux 3.=
19; "
> "and the Linux 5.x kernel series, which followed on from Linux 4.20."

--=20
<https://www.alejandro-colomar.es/>

--ASmGqv0ajbqG/9HQ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVCeXsACgkQnowa+77/
2zLwkg/+KEde1BfVH3AUifXSOLdSchsj6/s3tfqDvJps7Of0WZDdm8ER0ZXqlgzt
xm/ucBMMl3gx1DAFHCwhxqUcoUsnR1OiomrEF0NzM8H6wQD9yYqDFCuc0Z1z4FW8
ICxIkKfqqjXmS/YjvaGzd2JzYdJfS2OwZ48J6V1BprBLfMdt7dJs3OIke4hB3Ob3
vEUqdrRaUXGvkrFcO6odauChZONT1WILlM5Bmu41+VdXmpzt+mUNJ4NrdUiNLJV/
MsTrG34DtMfE79qjJhpMV+OWXu0hRIWDcAet1j7CQB743m6SZubbDXryQxgh3ymT
w5yFbKREaLM3SAgXmWYAq/kxiIZ26nMyDA6tYrh1WCza/ZdTikQJ0mDhgHrgzpk/
O0+h+gFs1I4J88XQG4LZ/V2EnG6lY0SFj2Nj180KaVjsXSutoK4py16YYsiAjaF4
zstsI/6lP8/w5tA7aR0IRVb471rq5XbfNxhnQc+ZlOiYGA+dMJELv7GY6le0FgAf
EQufj18QLC2zN5FjkdfGts0+NgI8P3dqN/U+GMismNbqiUirtfDlNyrXLAhTadnq
8ZEt0l16arhsELjoUpmfpZPn06icUWfhgmpbphFi6/3dtjKC160ikChSP/441THl
cU0SOpRZQFAf7ZRJlnJhwQ6k82+dBYonSpctC1WFC6I7LSj62H0=
=bAh0
-----END PGP SIGNATURE-----

--ASmGqv0ajbqG/9HQ--
