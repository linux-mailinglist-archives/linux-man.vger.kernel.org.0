Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7EE09641F5E
	for <lists+linux-man@lfdr.de>; Sun,  4 Dec 2022 21:04:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229954AbiLDUEg (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 4 Dec 2022 15:04:36 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35508 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229949AbiLDUEf (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 4 Dec 2022 15:04:35 -0500
Received: from static.213-239-213-133.clients.your-server.de (luckmann.name [213.239.213.133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6205C11C02
        for <linux-man@vger.kernel.org>; Sun,  4 Dec 2022 12:04:34 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
  (uid 502)
  by static.213-239-213-133.clients.your-server.de with local
  id 0000000000E5E0DD.00000000638CFD4F.00003C96; Sun, 04 Dec 2022 21:04:31 +0100
Date:   Sun, 4 Dec 2022 21:04:31 +0100
From:   Helge Kreutzmann <debian@helgefjell.de>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page strcat.3
Message-ID: <20221204200431.GB15305@Debian-50-lenny-64-minimal>
References: <20221204090716.GA707@Debian-50-lenny-64-minimal>
 <44d14599-a166-225c-603d-55d9cc8e6a3b@gmail.com>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_luckmann.name-15510-1670184271-0001-2"
Content-Disposition: inline
In-Reply-To: <44d14599-a166-225c-603d-55d9cc8e6a3b@gmail.com>
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Status: No, score=0.4 required=5.0 tests=BAYES_00,CK_HELO_GENERIC,
        HELO_DYNAMIC_IPADDR,SPF_HELO_NONE,SPF_NONE,URIBL_SBL_A autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is a MIME-formatted message.  If you see this text it means that your
E-mail software does not support MIME-formatted messages.

--=_luckmann.name-15510-1670184271-0001-2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Alejandro,
On Sun, Dec 04, 2022 at 08:55:16PM +0100, Alejandro Colomar wrote:
> On 12/4/22 10:07, Helge Kreutzmann wrote:
> > Without further ado, the following was found:
> >=20
> > Issue:   The variable I<size> is not defined above in the summary? Is t=
his I<n>?
> >=20
> > "This function appends the null-terminated string I<src> to the string"
> > "I<dest>, copying at most I<size-strlen(dest)-1> from I<src>, and adds =
a"
> > "terminating null byte to the result, I<unless> I<size> is less than"
> > "I<strlen(dest)>.  This function fixes the buffer overrun problem of"
> > "B<strcat>(), but the caller must still handle the possibility of data =
loss"
> > "if I<size> is too small.  The function returns the length of the strin=
g"
> > "B<strlcat>()  tried to create; if the return value is greater than or =
equal"
> > "to I<size>, data loss occurred.  If data loss matters, the caller I<mu=
st>"
> > "either check the arguments before the call, or test the function retur=
n"
> > "value.  B<strlcat>()  is not present in glibc and is not standardized =
by"
> > "POSIX, but is available on Linux via the I<libbsd> library."
>=20
>=20
> The report is invalid.  That 'size' refers to the strlcat(3) prototype,
> declared in the same NOTES section.

Thanks for the clarification!

I mark it as such in our files.

Greetings

           Helge


--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_luckmann.name-15510-1670184271-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAmOM/U8ACgkQQbqlJmgq
5nCpuQ/+Pr4rJk2+2ONkjLDwEj5jxIEpD+Ounc1OfjIkJ9F57S0DeooSFO3kbESl
VeFbbkRl6ptqQ6v1ThODHqZ5kKnylW6ElW8ZrvVBATrUZAWRPXTagz0GGpRSLgDA
dFYiVEwCpk2vP/TnkrqCdDNxi61yLuQuHm8+RZN5DrBxyh80sYU3ENm59QSYSiQN
JlSaoF4aAlec1bg2xPgEbAVhjRkGWh4WgN6VWx2ZO6WPJNIWT0+9+bkHr2ZPAAr2
/1zEJ+VuVMu08vryazaYmhcH2j+lNzim1CMhVTmKGpjL05GG8TVvzgNMiRyVuMqN
raCQzfRtcSZ+oaUBXuFxVcOXS8SQ1ba3ajHlDlfbqp2HaYx6TEWCgUiyrgsBHhvF
h16MqtqRCTRlqvrEED7P7MXmwqrbKwfkKJS+y0ytx0/SdtrBCysd9W1FN/eMso0I
vAtxgYr0aaVcJGhmn0DGEeVbp4FiW2wGZ5D7ylE33LImKwbYZA47kFWoqgiq5Ymv
8atqfWb17KZq4juD9TtbYs1IzFu7eSgR0wnctiWyIiypsN0yv7zsoNlkFvIFmtlE
PX/+y9lWP+BY3W25X3y8ghaphGi4QszqXGbXbBOUjobzHjUO/d682iM/UQuUmXgz
f89YA8L0RoZ46OIK076Oj9SGfwNRITVOYsrhIshkw3ufPjQOFOQ=
=2Yh/
-----END PGP SIGNATURE-----

--=_luckmann.name-15510-1670184271-0001-2--
