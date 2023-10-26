Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A9F7D7D844C
	for <lists+linux-man@lfdr.de>; Thu, 26 Oct 2023 16:12:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1345184AbjJZOMv (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 26 Oct 2023 10:12:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47200 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1345191AbjJZOMu (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 26 Oct 2023 10:12:50 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3CD961BE
        for <linux-man@vger.kernel.org>; Thu, 26 Oct 2023 07:12:48 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DE829C433C8;
        Thu, 26 Oct 2023 14:12:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1698329567;
        bh=6iQOgWkCLvzb4kkZKWqliEFLW4s0LbEtVVVLLWlGhdw=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=TUG9skENtTrWAbjzADTYBMWUnYRX5W96TultNdExVTuAEc3bymK37Wy5FKJgpeWPk
         b506mUiSZbUsnVuFkJ2X09AnhYoNoAdlHGiYu0bqkw/MjWW+Xb7++eaYkov8fXA3TO
         wLvUVa5Pb5pLvuoRfSabsD9ARIuFLRJOz2ip0zZUsvAVKpBhL1clGnSbvQ2DKN+hhF
         qQw+GIIGTgZ0kkVDKh8/FaKWi1eRncztu8VWOisDVZHIUSvcry8QsEU6HGtfdSCJfg
         EISveqDSaffvOT3Hu4UDR0Iq3xrVkcxSjiiBRSLg9xxVWgon0uQh+TPykcCAjLSvql
         ce643kz3AOalw==
Date:   Thu, 26 Oct 2023 16:12:36 +0200
From:   Alejandro Colomar <alx@kernel.org>
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man@vger.kernel.org, groff@gnu.org
Subject: Re: `\c`, mdoc(7), and man(7) extension macros (was: [PATCH 1/2]
 man*/: srcfix)
Message-ID: <ZTpz3A0yijoxDvip@debian>
References: <20231025185424.txreg7q47zigo24j@illithid>
 <ZTlu2r8N3nrCnMpa@debian>
 <20231026125835.phpfjhz6xbsde33d@illithid>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="KmVJHL1ZSK6jTGLY"
Content-Disposition: inline
In-Reply-To: <20231026125835.phpfjhz6xbsde33d@illithid>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--KmVJHL1ZSK6jTGLY
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Thu, 26 Oct 2023 16:12:36 +0200
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org, groff@gnu.org
Subject: Re: `\c`, mdoc(7), and man(7) extension macros (was: [PATCH 1/2]
 man*/: srcfix)

Hi Branden,

On Thu, Oct 26, 2023 at 07:58:35AM -0500, G. Branden Robinson wrote:
[...]
>=20
> And mdoc _does_ manage to make `\c`
> almost(?) totally unnecessary--at the cost of a weighty internal
> recursive macro reprocessing system that no other *roff package is known
> to implement.
>=20
> (This is what that "parsed"/"callable" stuff in groff_mdoc(7) (and
> mandoc_mdoc(7)) is all about.  Also, by "weighty", I mean it--back in
> ~1990, when mdoc was implemented, its documentation warned the reader of
> its slowness.  Fortunately, on modern systems, the rendering latency
> relative to man(7) is no longer noticeable.)
>=20
> Even with performance considerations out of the picture, I think such a
> system is a point against adoption of mdoc; one can observe that,
> nowadays, both man(7) and mdoc require a person to acquire knowledge
> that they will "never" transfer anywhere else, assuming no resurgence in
> *roff popularity.  But the point is _even more true_ of mdoc than it is
> of man(7), by dint of the recursive macro reprocessing feature and the
> funny requirements that become necessary as a consequence (you have to
> use `\&` in more places; you have to break up individual punctuation
> characters when using them as macro arguments if you want them to work
> right).  In other words, learning mdoc doesn't help you learn *roff all
> that much.  Not as much as man(7) does.  And it doesn't help you learn
> any other programming/documentation system anywhere.
>=20
> Plus, in mdoc, there is a much larger lexicon of macros to learn in the
> first place.  I count 115.

Yup.  I have similar feelings about C++, BTW.  I have a hard time
understanding complex languages.  I prefer simpler languages.  Most
features can be implemented as library code, without complicating the
language.

[...]

> >=20
> > For consistency with the above two cases, I think you should move that
> > (\c to a new line.  It also reduces the diff (semantic newlines any?)
> > :)
>=20
> Well, okay.  I'll roll a v5.
>=20
> By the way, even the diffless version of 2/2 (the actual `MR` migration)
> got canned by vger.  Even just the diff --stat blows past the 100,000
> byte limit.  But you should have a copy in your inbox, and the sed
> script is what does the real work of 2/2 anyway.

Yep, I have 2/2 locally.  Maybe reply to the mail CCing vger, keeping
only the commit message, so that readers of the list can get a notice of
what MR.sed is.

>=20
> Regards,
> Branden
>=20
> [1] It _would_ be nice if these all ended in `S` and `E`, respectively,
>     for "start" and "end".  Alas, there is historical baggage here,
>     which Doug McIlroy, author of the original man(7) macros and of the
>     latter Ninth Edition Unix `EX`/`EE` extension, recently lamented.
>=20
>     https://lists.gnu.org/archive/html/groff/2023-09/msg00058.html
>=20
>     We _could_ fix all the outliers, save one, without collision.
>=20
> 	EX -> ES (example start)
> 	MT -> MS (mail-to start)
> 	UR -> US (URL start)
> 	YS -> SE (synopsis end)

I always make the mistake of writing MS instead of MT, out of inertia of
having an 'S' for the start!  :D

The others have nicer mnemonics that work for me; I wouldn't change
them.  And well, just for changing MT, I wouldn't do it.

>=20
>     The oddball is `SY`.  We can't rename that to `SS`, which is already
>     a subsection heading macro.  But we could rename _both_ synopsis
>     macros.
>=20
> 	SY -> NS (syNopsis start)
> 	YS -> NE (syNopsis end)

Hmmm, no; I don't like it.

>=20
>     I'm game for any of these reforms, if people think it's worth it.
>     The old names can be kept for backward compatibility for as long as
>     necessary (but de-documented).  I _assume_ there's too much inertia
>     for this.

Regarding PP, LP, and P, what's the history of them?  Why do we have the
3?  I'm willing to reduce them to just one.


Cheers,
Alex

--=20
<https://www.alejandro-colomar.es/>

--KmVJHL1ZSK6jTGLY
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmU6c9QACgkQnowa+77/
2zLFhA/7Bnfyy3vEAeNcUk4L5flACclKUZujTBMmlVXBCKECMphXiFPsaK+GTgLy
NomXKmxSmwBNJ6w6nM5rRl2e99ytjH3CvbHagEtFKmirzvOAr0GqQhAv9otsmn/U
laB75BEEEw05HccCDmtW7Pp4yqlWIgnhCusiJigxRSdjX/Waj/1M04pD+Vt9DbfK
6oFZoauWzaFTuL0O2SbJG4WPC2RE8mebTb5Ra3xJ8gsyJEL/bW/mpPlJ+W5IHj4W
Lx8kFxfX/05MdKKaTrTRodk8NNxKCZwB+ZCG/NV9qmOuu1MukpzPc3yaIwJfUEO5
2p4/Jbnv/VqlILoAbvLReRqXjxvp+CpQfPE5uxe4jTOQLaaKNod067cGSPLLC4m5
Rm7FhhoN6sUiQud5Ivi5ecdwJuh8/dFi2uuJA47h3wy/7bl2eP6uI46wzZQAfnqe
WEFzBYvLmnipbDJsPVmgxuuw27ZhXgTpAS3Bf5x4YOMfGwrm4D67vSG9zrD0Mo4W
z3D93hm5dv8E8rITjSh9/HVxq8Pn6LEggHVBw0xR7Q7+LwCJsJeCeh3ClBHWBzKk
l5Xvd1YjwXYKHglx19Z9Xi4TNENnkQYGJdwaC255FXAei8GJHt3jwqa+R/FpGi18
S+prbeDuwU/YdX5d8p33cyWRKE/7SVu51dngGnx+mjb/6gJ7nCU=
=vQWM
-----END PGP SIGNATURE-----

--KmVJHL1ZSK6jTGLY--
