Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 15D266417E9
	for <lists+linux-man@lfdr.de>; Sat,  3 Dec 2022 17:52:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229747AbiLCQwK (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 3 Dec 2022 11:52:10 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49950 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229901AbiLCQvu (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 3 Dec 2022 11:51:50 -0500
Received: from static.213-239-213-133.clients.your-server.de (luckmann.name [213.239.213.133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DAC1920BF5
        for <linux-man@vger.kernel.org>; Sat,  3 Dec 2022 08:51:32 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
  (uid 502)
  by static.213-239-213-133.clients.your-server.de with local
  id 0000000000E62052.00000000638B7E92.000058A0; Sat, 03 Dec 2022 17:51:30 +0100
Date:   Sat, 3 Dec 2022 17:51:30 +0100
From:   Helge Kreutzmann <debian@helgefjell.de>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org,
        Mario =?utf-8?Q?Bl=C3=A4ttermann?= <mario.blaettermann@gmail.com>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Ingo Schwarze <schwarze@usta.de>,
        Colin Watson <cjwatson@debian.org>,
        Marcos Fouces <marcos@debian.org>, toddy@debian.org
Subject: Re: Conflicting alias for some man pages
Message-ID: <20221203165130.GA22312@Debian-50-lenny-64-minimal>
References: <20221203140116.GA15173@Debian-50-lenny-64-minimal>
 <1ac0914d-72f8-654b-c6b0-6be68f26a598@gmail.com>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_luckmann.name-22688-1670086290-0001-2"
Content-Disposition: inline
In-Reply-To: <1ac0914d-72f8-654b-c6b0-6be68f26a598@gmail.com>
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Status: No, score=0.2 required=5.0 tests=BAYES_00,CK_HELO_GENERIC,
        HELO_DYNAMIC_IPADDR,SPF_HELO_NONE,SPF_NONE,URIBL_SBL_A autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is a MIME-formatted message.  If you see this text it means that your
E-mail software does not support MIME-formatted messages.

--=_luckmann.name-22688-1670086290-0001-2
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Alejandro,
On Sat, Dec 03, 2022 at 05:36:20PM +0100, Alejandro Colomar wrote:
> On 12/3/22 15:01, Helge Kreutzmann wrote:

> > Please remove duplicates in the alias (alternative) names of man
> > pages. (List of known examples at the end).
=E2=80=A6

> So, if I understand correctly, specifying the same name in the .SH NAME
> section in more than one page is problematic, right?  It makes sense to m=
e.
> I'm a bit surprised that this bug hasn't been reported though, but otherw=
ise
> I'm fine fixing it.

As usually whatis/man is hiding this, probably nobody has noticed (or
bothered reporting).

> I CCed a few people that have a lot more experience than I do, and will
> probably be able to tell if I understood the problem correctly.

Thanks.

> So, since we're still on time for the Debian freeze, if you confirm that
> this is the issue and the following fix is correct, I'll implement it and
> release man-pages-6.02 later this month; the solstice seems a proper day =
for
> a release, celebrating the new Sun.  Thanks for the report!

Thats great. I put the other Debian maintainer for manpages in CC so that
both are aware as well. If they are able to prepare a release soon
after you did, then the translators could start dealing with [1] which
looks like a big change?

Regarding timing:
There are quite a few fixes noted by the translators in the original
man pages. So it might make sense to report them as well soon?=20

Should I report them one by one as I did in the past to this list and
you and Michael Kerrisk in CC?=20

(We are not done with all translation updates, but I would simply report
the current issues even if slightly incomplete).

> So, I'll try to find a complete list of duplicate NAMEs, and keep only on=
e of them.

Thank you!

> [1]: <https://lore.kernel.org/linux-man/20221110094033.ptpfsqpvvx2yd5xs@i=
llithid/>

Greetings

         Helge

--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_luckmann.name-22688-1670086290-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAmOLfowACgkQQbqlJmgq
5nCckg//UnQbvSiKXt0eBYDGCGn+LLCHDr7htyovOxgQdGQ7OHfKTXNzQoiQlAbJ
wnap8jg6++D//pRDh0oWkShiUBKAyTJUGHeGJ5CxJKvz1SBU85KxVN7SryuTjvpu
RGjEhDyhbEg/5+T2kbr1cCJuor1KN6opDg0dzgyhSrP9lpJCSWm9DJWVycqoMLyv
8SvHMCKqtWmNeiJNapJjN3W48ZxIf6eYxmkmZnjCg1UEZL40fxYYho7RbPgxj/bK
NvizhGGZfebF9REAg7VHBY361Q7S7K/jb+f+68Ft/Mcbie2Vg1rcllfk/v3UTC8N
hnvbiEp+rFQwIEkICXtH4xYIUwnpCyvO2e6RJqi1GLkFY0aXNYCqDI0sikatwzPg
TXgHHRGfiQ/D48smC9W75FXhhdVAIzMKZXsHF6XMYB0TRfO0Xk4oRAozH5D3stTS
OHYJ27Xa3f6imZjhBzLMzEPEARSNnupli4fNi3m1znyHBC0hv3Imrlk8TvAK1S4W
yLDikcbxfgtlJzjZK27mpzkiYvsGnayjSGLbQrh//jvzKvGkMvc/T8tp0PwIUZz0
wJQ/75sNV7kDkET842xIANV4voEXLkWP3y1PK67UDX105v2eTvpekJ50MFWZb5OV
23e2Hi3Xbo7/bu8txm1J7c0xMuFxFSAodKDksqxRFwlw1kBod6E=
=Dt+y
-----END PGP SIGNATURE-----

--=_luckmann.name-22688-1670086290-0001-2--
