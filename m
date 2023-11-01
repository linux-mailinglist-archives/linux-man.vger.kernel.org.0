Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 94BB87DE4F3
	for <lists+linux-man@lfdr.de>; Wed,  1 Nov 2023 18:00:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232819AbjKARAD (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 1 Nov 2023 13:00:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39878 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231981AbjKARAC (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 1 Nov 2023 13:00:02 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4907DFD
        for <linux-man@vger.kernel.org>; Wed,  1 Nov 2023 09:59:56 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1D63BC433C8;
        Wed,  1 Nov 2023 16:59:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1698857995;
        bh=WoH9Y8HdAlRvt8OfhCEKSHs2J9Zc7fLidWwfQENZ+iQ=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=gL5cZ+k3DlRGjAsftKV0nTHOa0JG2LDEXvZAkHwAws907sHR6jE8CebhBytcYVQUp
         1R+10RZckgpDJV1yrZtvaLQgP/GCS13vBbeHH9GxhXo9r/mqgW/b3eVo9MLryqvtv9
         9IAMjzDDwh8EOIoBGfAL002+c59iQClorYZRFe8DeIAqbeLc5+aqBjIrirQJd8YyuK
         eVoHu5SMajtzmCxdf1JRBle4PsFGfBhddiUVIga6+TjqxFXI8Ac5hc6xzXhXsu2Syt
         pWbuWOW6rJc0ql0KItLjtgjYhAlDz2UbAyyu0ie85X1oiH4LHr3AWSzwye8LW0dQcD
         BJA5nwCgvNazQ==
Date:   Wed, 1 Nov 2023 17:59:51 +0100
From:   Alejandro Colomar <alx@kernel.org>
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page hostname.7
Message-ID: <ZUKEB7bFCE-btgFZ@debian>
References: <ZUJaY9YthI-EXLzi@meinfjell.helgefjelltest.de>
 <ZUJxn0JHxBasvKGf@debian>
 <ZUJy3qmi9tRg0x-4@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="RZqHbRQk7nJAoRnC"
Content-Disposition: inline
In-Reply-To: <ZUJy3qmi9tRg0x-4@meinfjell.helgefjelltest.de>
X-Spam-Status: No, score=-4.8 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--RZqHbRQk7nJAoRnC
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Wed, 1 Nov 2023 17:59:51 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page hostname.7

Hello Helge,

On Wed, Nov 01, 2023 at 03:46:38PM +0000, Helge Kreutzmann wrote:
> Hello Alejandro,
> Am Wed, Nov 01, 2023 at 04:41:19PM +0100 schrieb Alejandro Colomar:
> > On Wed, Nov 01, 2023 at 02:02:11PM +0000, Helge Kreutzmann wrote:
> > > Without further ado, the following was found:
> > >=20
> > > Issue:    B<nsswitch.conf> =E2=86=92 I<nsswitch.conf>
> >=20
> > Please explain why.
>=20
> Filenames are usually in italics, not bold.

If it's a filename, I think the full path would be better.  It could
also be a manual page reference, in which case, it's lacking the section.

I think the manual page reference would be better, but I'm not sure.
What do you think?

Cheers,
Alex

>=20
> Greetings
>=20
>      Helge
>=20
>=20
> --=20
>       Dr. Helge Kreutzmann                     debian@helgefjell.de
>            Dipl.-Phys.                   http://www.helgefjell.de/debian.=
php
>         64bit GNU powered                     gpg signed mail preferred
>            Help keep free software "libre": http://www.ffii.de/



--=20
<https://www.alejandro-colomar.es/>

--RZqHbRQk7nJAoRnC
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVChAcACgkQnowa+77/
2zIaKQ//XjTDf+wSw2/eWMokq+g5/udls2FTNfGuYwn4cLxh/VxVqpgVCkJJdk+6
SlL6hQe9iSBkwNqNRZWM2aBUios55/kaaz5KXJEnq/8ZqltpKpbSho9gs7uwxvT9
miZBpG+t+Jv31FX5OxTX9Bh1I/mx1V/Men7arRSTDrzDvim+6m4BFYWK7c52wMZc
wUHS6gZhc8gsFWb1DbU9KKNEZ//V5U34+Ov6tZXnK0HcrzmPvs/FjjIPK2siEs2j
0jAzfyeThy3U0yfDbNvVHQuRWTekZ+0WkP4qHZijZynUuJy9kp9ZX36UotkARkam
j4713udPJQ2sEv1qhDcE6nAanp4jrYc6IH8Izar2v/I/MyUj95KaY9zbe5AUpwok
Az5ZFWp6bkot91yKI0uPJG/WmHWhRkvd3n9R3KnRm4QOuPETTQpripHeOFC0XV0u
ax4J3m9E4XRhMn2X+/F6q0h/sPeCuX7JpIjkCJhztWL8gFjJ3lMc5fV+2vx3sfEk
6TNF2OnPn38/EhAKq1UaOc+6iuxjvzQ2WAZBxlmiQGrHHxuom5yBlW7uRqvNWQRa
NpxveioLsZ4IPe9zeNbiVnGPrBZ9jfatkXX5sYxMjcBOGzJjbYOXXEhB0Tfi8agZ
2jL3kBOLvqzahm99TNCTBfRlD0ga2B7tHys+B8vamAxfxHDE+RM=
=o9/8
-----END PGP SIGNATURE-----

--RZqHbRQk7nJAoRnC--
