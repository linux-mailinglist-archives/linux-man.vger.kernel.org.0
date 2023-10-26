Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A69767D8B89
	for <lists+linux-man@lfdr.de>; Fri, 27 Oct 2023 00:17:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230216AbjJZWRA (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 26 Oct 2023 18:17:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52394 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230089AbjJZWQ7 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 26 Oct 2023 18:16:59 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1C71491
        for <linux-man@vger.kernel.org>; Thu, 26 Oct 2023 15:16:57 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BD8B8C433C8;
        Thu, 26 Oct 2023 22:16:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1698358616;
        bh=/XuJLmrOFYdPg7Fdqhiv8j23yMB0MqbarljhdhHt3vE=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=TkStXginlsWmiHIDR8g6nRd0YfnU34jnGi/J86+9oE2BzxH87O26J3hlP7WKDYSmK
         QR9AdB6I9SaduWypy1XB3kSraJj3so7MwxubA9LW3X01KU29DwfK8tkvK7BlHZej2s
         UtNIbcacpyx1PP5/zBGID1r49am1ld2zRAXXekeLM0LUbG/wrf6K2izuUaiLHz1JhN
         UWE8uT1VBZltdxfrWEWcHiXBc6RHwx7iJS0EzLpuVwikCbnxcggYdGIHsbt+ZfcqWj
         1SSbwnKGIRmR6pxpYlGxtsOEhMipg3gts8suuAr9aOh5FZImSe41+n2Gb+mczqm4z9
         0HLewTW3xwiFw==
Date:   Fri, 27 Oct 2023 00:16:47 +0200
From:   Alejandro Colomar <alx@kernel.org>
To:     Ingo Schwarze <schwarze@usta.de>
Cc:     g.branden.robinson@gmail.com, linux-man@vger.kernel.org,
        groff@gnu.org
Subject: Re: Why does man(7) have 3 paragraph macros for the same thing?
Message-ID: <ZTrlVYtcGLr011GY@debian>
References: <20231025185424.txreg7q47zigo24j@illithid>
 <ZTlu2r8N3nrCnMpa@debian>
 <20231026125835.phpfjhz6xbsde33d@illithid>
 <ZTpz3A0yijoxDvip@debian>
 <20231026145140.qyl4lsfhp3644hmh@illithid>
 <ZTp-hZTj7cmKMlXb@debian>
 <20231026152813.6jziefb3umfmshb4@illithid>
 <ZTqnTZPYkiPmtenf@asta-kit.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="Kbz3hPaU4Cxn7DdO"
Content-Disposition: inline
In-Reply-To: <ZTqnTZPYkiPmtenf@asta-kit.de>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--Kbz3hPaU4Cxn7DdO
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Fri, 27 Oct 2023 00:16:47 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Ingo Schwarze <schwarze@usta.de>
Cc: g.branden.robinson@gmail.com, linux-man@vger.kernel.org, groff@gnu.org
Subject: Re: Why does man(7) have 3 paragraph macros for the same thing?

Hi Ingo,

On Thu, Oct 26, 2023 at 07:52:13PM +0200, Ingo Schwarze wrote:
>=20
> I consider this a bikeshed discussion.

Sure.  But someone has to design the bike parkings.  I find a lot awful
bike parkings that harm bike's wheels, and have to park it in a sign or
tree nearby.

>=20
> Given that Branden apparently wants to
>  * promote .P and deprecate .PP
>  * i don't want mandoc_man(7) to gratuitiously spread any more bad
>    man(7) style advice than is unavoidable by the fundamental decision
>    of declaring the whole man(7) language as obsolete,
> i briefly considered changing mandoc_man(7).
>=20
> Currently it says:
>=20
>   PP  Begin an undecorated paragraph.  The scope of a paragraph is closed
>       by a subsequent paragraph, sub-section, section, or end of file.
>       The saved paragraph left-margin width is reset to the default.
>=20
>   LP  A synonym for PP.
>=20
>   P   This synonym for PP is an AT&T System=C2=A0III UNIX extension later
>       adopted by 4.3BSD.
>=20
> and it declares LP and P deprecated by including only PP in the
> MACRO OVERVIEW.
>=20
> All the arguments feel weak in either direction:
>=20
>  * In theory, .PP is more portable than .P, but that is extremely
>    unlikely to ever matter in practice.
>  * As seen above, the similarities and subtle differences
>    when comparing to ms(7) can be employed as arguments in either
>    direction.
>  * The arguably more important similarity that HTML defines a <p>
>    but not a <pp> element can be regarded as a learning aid,
>    but it's still a weak argument because HTML and roff(7) are
>    very different domains and not similar in most other respects.
>  * The similarity of .P and <P> can also be turned around to be
>    levied as an argument for .PP:  .P and <P> are *very different*
>    in so far as <P> is a block element, whereas .P is an in-line
>    macro that cannot participate in block nesting.  In particular,
>    it can neither nest inside a list item, nor can anything be
>    contained inside a .P syntax tree node.  In contrast to <p>,
>    .P does not represent a *paragraph*, but only a paragraph *break*.
>  * .PP is more similar to mdoc(7) .Pp.  Again, a weak argument because
>    macro naming is totally different in both languages even in most
>    of the few cases where functionality matches, with the exception
>    of only .SH and .SS.
>=20
> Consequently, i tend to leave mandoc_man(7) just as it is and not
> repaint the bikeshed.  That way, the original .PP macro - with which
> nothing is really wrong, except for the fundamental design mistake
> of not being a block macro, a mistake it shares with mdoc(7) .Pp -
> gets the full description, while the slighly younger .P gets the
> compat info, even though that now is only of historical but not
> of practical interest.  Maybe still nice to keep both apart - gee,
> yet another weak argument.
>=20
> If, for some reason, you feel strongly about it and think it is
> important which one to promote, it might be possible to convince me to
> deprecate .PP and list .P as the non-deprecated form even though it
> is theoretically less portable.  I must admit i don't particularly
> like the idea, though.  It feels like taking a gratuitious risk,
> which does not feel ideal even if both the magnitude of the risk
> and the benefit reaped are almost exactly zero.

I don't think there's any urgent need to change mandoc_man(7), since
good quality man(7) pages should not even read that page.  I see it as
a quick guide if you're in a mandoc(1) system and need to fix a man(7)
bug or something.  If you're going to write new man(7) pages, you
probably want to read groff_man(7).

But I think having 3 ways of spelling PP is bad, and I think deprecating
at least LP, and possibly one of P or PP would be a good move.

For making sure pages are fixed, we could an a warning that gets
triggered always, so that projects have time to catch the change.

As for chosing P or PP: I don't mind very much which, but P seems
slightly better.  Since both are relatively widespread, and I can help
turn the balance in favour of any of them, I'll side with groff(1)
using and recommending P.  But yeah, it's a very arbitrary decission
between P and PP.

Cheers,
Alex

>=20
> Yours,
>   Ingo

--=20
<https://www.alejandro-colomar.es/>

--Kbz3hPaU4Cxn7DdO
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmU65U8ACgkQnowa+77/
2zJt6g/+NCsOjS8NkPV5ivSL9rl5pBQK9ckCcgqR6KixqbCeHa7Bh73G1+8P+AZW
gAhfG8qaT2Qbkn80ysWOBYFfH9ZXNrDxKeiMjukTgScthur/jWPjiRlqbI8662M/
XS0swblJY7tQIuGWRnopWj2JK7VWEyIgDdiFTropVsLWff4BgDASsZLj1rNIpt5E
bTIV2/kNuaw0yw/ZgGB2ClTqQKqvFI62kQbffHiil0nO9qJXrmg3Vm9Kd96OwuW8
sQXn9ez4ronKYgSFjMMhR0Je+A3H3INVF77bZEA3jFmUWYzZaPd/1TPq1ycq9Ie9
eRwHMxn4vlCDEjsgyBjhNlUhU67EGBU57hf2e5+VMADepOsIE3DUiG0L9iyUPUQG
/2rohW7zC2uuHuVDJD9W0Luj3UNCxepAaCTKtPR7TRjn2m7FETJ4oP2gZpCmZGcr
t1XgeGLu2DJh6/Uw/iy/tQREWylvcbh+l69+BX3tRsmsksraePhB8xohSaaqbSpC
iFAmuyhEJGRJAZ2UTdvqmOlnKNoIHLdT323uzHLP0mzOoiZzZqBDVenHH+7P/pIp
V8/r5BgB9MTojhvyc7Uz08FiQKseLMml2DsGGIc7HW4vXKHZbd3RjQnOnBeyEEKV
rCieeWFJTUfNUXOx7c2im3SogujmvHHUFuHUAFL5riX8Xoc5Om0=
=70rh
-----END PGP SIGNATURE-----

--Kbz3hPaU4Cxn7DdO--
