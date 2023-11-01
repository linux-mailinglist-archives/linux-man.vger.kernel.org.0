Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 35AFA7DE388
	for <lists+linux-man@lfdr.de>; Wed,  1 Nov 2023 16:37:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234025AbjKAP1Y (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 1 Nov 2023 11:27:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38066 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234100AbjKAP1X (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 1 Nov 2023 11:27:23 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6CDB1115
        for <linux-man@vger.kernel.org>; Wed,  1 Nov 2023 08:27:16 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B687AC433C7;
        Wed,  1 Nov 2023 15:27:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1698852435;
        bh=M+3xAR84aZdbF3lNnUA7x7GyNmhcjYFfwAaga9uQyKw=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=I/QQ/9V39Z92pD5icl79SzWFzGg8IAp7azJBL274djanBGbfz/AD8QnnvqKZPU8kY
         IJMGDVTTHAVnoL1SWQ5tPkFJAUWwD/rmbt/KoySI8m7ppnIIdbigMtB9nKjmjtqDsa
         ECmdU1Lc4AMtjBDa5oWfx+pMikS2M3P4aHzZ5ZxpNsAZLFU7s1yxwzBa8UNooQxnOE
         uZBx28EFcsiXaUaYwguGQT8SoJhxsvq537xgoSuxHPHjgyzKzMH1JArV0sIySk7n4/
         wNweDroXTBFVtOwgniHbolkHO0SorvezkTlwFthbK66ZWoRicEtzwFV8z/pnJVt8vN
         QPzQhDG6V5Mlg==
Date:   Wed, 1 Nov 2023 16:27:12 +0100
From:   Alejandro Colomar <alx@kernel.org>
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page execve.2
Message-ID: <ZUJuUJV_ztcfQeC6@debian>
References: <ZUJaYiMc1nM_GhB3@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="1MO/3fipUD8kBIBD"
Content-Disposition: inline
In-Reply-To: <ZUJaYiMc1nM_GhB3@meinfjell.helgefjelltest.de>
X-Spam-Status: No, score=-4.8 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--1MO/3fipUD8kBIBD
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Wed, 1 Nov 2023 16:27:12 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page execve.2

Hi Helge,

On Wed, Nov 01, 2023 at 02:02:10PM +0000, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:    NULL pointer =E2=86=92 NULL

Thanks for the report!  I applied a slightly different fix:
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3D1bd990b3bee5fa83824f341a2cdd5a446267b09b>

Cheers,
Alex

>=20
> "I<argv> is an array of pointers to strings passed to the new program as =
its "
> "command-line arguments.  By convention, the first of these strings (i.e.=
, "
> "I<argv[0]>)  should contain the filename associated with the file being "
> "executed.  The I<argv> array must be terminated by a NULL pointer.  (Thu=
s, "
> "in the new program, I<argv[argc]> will be NULL.)"
>=20
> "I<envp> is an array of pointers to strings, conventionally of the form "
> "B<key=3Dvalue>, which are passed as the environment of the new program. =
 The "
> "I<envp> array must be terminated by a NULL pointer."

--=20
<https://www.alejandro-colomar.es/>

--1MO/3fipUD8kBIBD
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVCblAACgkQnowa+77/
2zJhxhAAnoAFWyfNWazzk1oHz6DC93jfIK+ugWLD4ZRdWrzPzADvhMfWtHOetW2R
yA2XgfAoSj8TcB43aJ6TBI6exqJXP0FAV/Ce1vN6EsiTdYhuoMizYlHQXK/9uBf4
iMimvml2/i4AgKF8+47AhsgRNR4W/fTCxbg09mpHifV+wwWc/BqxAwPHiD54OwqT
7WOZUnOB6bM8erTa5nkVeDoZ7ALOmoIqFxb8jPbioy4xpjyevADjpIIBTokJ5axQ
/D8ShptN3rUsm6arILafnoYNxVOXgxCrtH6EAdg9zff8Tnt+DgxYtKbCtTQwIIYe
rUySXainGYA3ycJ1glxRxvmNdC9JW9UYApwxlAE6bsXNxT/GBpCmNrgVky11J0Xl
YiTZ/fwe6RUn/cskcV3BQkEmkmQD1CYBCcgEJe+jreWE+Oo8/StRmMX+9rod3T6J
QgJ/22xiOPQHaQ5JLBFkq4EqQsOoJ3Xe61w0lXTYoGnLAH7BBp9JVtBE2bo/Aq1Q
eFzhSf1GGJmk/gC3S3HRZyuBFex2mMCP7h+EqNxQWXStIirTU8ifNg0n6vFdcgNG
EHhGd8mRHZE9H4s4Q5iOmuPkIjrvXfcGPDsw0AoMZcmrsk8uhVdeMR31mie99myk
svp7eu1cy8woEhC6H0s6SStqa8ZI7yRnnpxGw2QK9gMuudd6iOk=
=cOMg
-----END PGP SIGNATURE-----

--1MO/3fipUD8kBIBD--
