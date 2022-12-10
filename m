Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2A6FD648D86
	for <lists+linux-man@lfdr.de>; Sat, 10 Dec 2022 08:53:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229691AbiLJHxI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 10 Dec 2022 02:53:08 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33270 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229494AbiLJHxG (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 10 Dec 2022 02:53:06 -0500
Received: from static.213-239-213-133.clients.your-server.de (luckmann.name [213.239.213.133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6DD1813F03
        for <linux-man@vger.kernel.org>; Fri,  9 Dec 2022 23:53:05 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
  (uid 502)
  by static.213-239-213-133.clients.your-server.de with local
  id 0000000000E54048.0000000063943ADF.00007A7F; Sat, 10 Dec 2022 08:53:03 +0100
Date:   Sat, 10 Dec 2022 08:53:03 +0100
From:   Helge Kreutzmann <debian@helgefjell.de>
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        Ingo Schwarze <schwarze@usta.de>,
        Colin Watson <cjwatson@debian.org>, linux-man@vger.kernel.org,
        Mario =?utf-8?Q?Bl=C3=A4ttermann?= <mario.blaettermann@gmail.com>,
        Marcos Fouces <marcos@debian.org>,
        "Dr. Tobias Quathamer" <toddy@debian.org>
Subject: Re: Conflicting alias for some man pages
Message-ID: <20221210075302.GA4079@Debian-50-lenny-64-minimal>
References: <20221203140116.GA15173@Debian-50-lenny-64-minimal>
 <1ac0914d-72f8-654b-c6b0-6be68f26a598@gmail.com>
 <4aaf7fb4-8d4b-e050-b376-9120d8c328ac@gmail.com>
 <20221209203719.yh5eosxv6ckgfuhz@illithid>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_luckmann.name-31359-1670658783-0001-2"
Content-Disposition: inline
In-Reply-To: <20221209203719.yh5eosxv6ckgfuhz@illithid>
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Status: No, score=0.3 required=5.0 tests=BAYES_00,CK_HELO_GENERIC,
        HELO_DYNAMIC_IPADDR,SPF_HELO_NONE,SPF_NONE autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is a MIME-formatted message.  If you see this text it means that your
E-mail software does not support MIME-formatted messages.

--=_luckmann.name-31359-1670658783-0001-2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Branden,
On Fri, Dec 09, 2022 at 02:37:19PM -0600, G. Branden Robinson wrote:
> At 2022-12-09T19:53:44+0100, Alejandro Colomar wrote:
> > > > Could you remove these duplicates in your next upload?
> > > >=20
> > > > I found the following duplicates, I did not do an extensive search:
> > > > =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> > > > rindex - Both in index.3 and in string.3
> > > > strncasecmp - Both in strcasecmp.3 and in string.3
> > > > strncat - Both in strcat.3 and in string.3
> > > > strncmp - Both in strcmp.3 and in string.3
> > > > strncpy - Both in strcpy.3 and in string.3
> > > > __fpurge - Both in fpurge.3 and in stdio_ext.3
> > > > strcspn - Both in strspn.3 and in string.3
> > > > strrchr - Both in strchr.3 and in string.3
> > > > pselect - Both in select.2 and in select_tut.2
> >=20
> > Could you please confirm if this is a bug in the Linux man-pages, or is=
 it
> > something desirable?
>=20
> I don't think it is a bug for multiple pages to have a mandb entry for
> the same name.  The man(1) librarian is designed in expectation of that;
> we have both printf(1) and printf(3), after all.

Ok. The rationale for my request was that the for *localized* system
this does not work in Debian (reliably). It only works if the english
man page is not present, otherwise you get the english version.

For example, for strcasecmp I currently get the german version,
however, for strncasecmp I get the english version.

I reported this to the man-db package in Debian and was told that
this is a bug in manpages-l10n and that I should create symlinks.

See https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=3D1020742 for
details.

While doing so, I noticed this problem, because how should I decide if
strncat.3 should point to strcat.3 or string.3? Especially
automatically, because manpages-l10n has a dozen or so languuages with
many thousand man pages.

Currently, the link is set randomly.


> > I find it a bit weird that we need to specify a NAME only once.
>=20
> There is no such need, and it would be impossible to enforce across
> projects anyway.

For me I would report that where I notice it, however, I do see you
rationale.

But how should man behave? If you enter
man strncasecmp
should it be the man page for strcasecmp.3 or string.3?

> > Then whatis(1) will not find the other pages that also talk
> > about an interface (of course, ideally, only a page would describe an
> > interface, but we know that's not reality).
>=20
> apropos(1) and whatis(1) do indeed behave in a way that surprises me on
> my Debian system (man-db 2.9.4-2).  I would have expected multiple
> results.
>=20
> What I expected:
>=20
> $ whatis rindex
> rindex (3)           - locate character in string
> string (3)           - string operations
> [...and maybe others I haven't thought of]
>=20
> What I got:
> rindex (3)           - locate character in string
>=20
> I am not sure why further matches are being hidden.

On my Debian testing system this is (more) correct:

index (3)            - findet ein Zeichen in einer Zeichenkette
rindex (3)           - locate character in string

So maybe something on your system? Is this Debian stable or testing?

Greetings

         Helge
--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_luckmann.name-31359-1670658783-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAmOUOtkACgkQQbqlJmgq
5nDBABAAmCChJRnzjFsvdSjaR1lSLYVLuqo49jwqHndZPCnJmxNeJtKpXb91F0QO
omeFRT0l8ktrEa07WDYYv4ujMB2RxRmH0nDIS5ApAZB/463ovkSHKN7g0cNmgey4
PLiP8ynGR4bJiP0xctc74eEYuMcNjc/9XqGOBdVym/0n6Uy1DOqmf3hRbzFkU/vT
hdFC3uY1L/kTrZRG6gnveBWRiZdp0FSJhYU6/MllxhvomgBkPaTRoRcHiIy5hA9E
WRfDZdtirxgnfaHv99biQtY1xuyps92fQgGEQuYcGkF/ExEnoQ7KvbTi+7fol56b
6CpJGgIh2+lEOzMWFWE3rYdKJtzSAb+7JRX3ZSS/279elPI+zxMKnIt6t62KCIAu
S+G8YpsPqIJjUdeVyNsiaaZveoUNLLQcZavyrdb46Hpcs3HjpS41Bd/xzpdS17Nq
X6/j9e0gicMzPsPkc1fnyO5hDkvhW79zgkSD9Iu2S9K5myoBQS5rMSTwuqGHvl/k
BX+uxsxlwd7lagUSBrSRFbj17vwUiCLZbA62Df+zUR9ftLiybTgrq7ZKXJUlSLCp
AOLVx6yema2EGfwazCkAMbZTO51LcqRovDyZ0YNJTdQgQf9WUX4mCoEtL7CMHLYF
s/p6twlJ7jE5wGyFtZsBoxGpm/0xc+EhKVlTXPYQjw0xgdUq8BQ=
=AxfT
-----END PGP SIGNATURE-----

--=_luckmann.name-31359-1670658783-0001-2--
