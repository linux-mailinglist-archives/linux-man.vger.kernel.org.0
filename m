Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 079B06E9BDC
	for <lists+linux-man@lfdr.de>; Thu, 20 Apr 2023 20:46:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230105AbjDTSqR (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 20 Apr 2023 14:46:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53814 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230010AbjDTSqR (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 20 Apr 2023 14:46:17 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id E3A061BE2
        for <linux-man@vger.kernel.org>; Thu, 20 Apr 2023 11:46:14 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id A259B6830;
        Thu, 20 Apr 2023 20:46:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202211; t=1682016371;
        bh=fLtocAWsEzm95o7MdQz9/4Q5YClLWBIKOYKEmD6ft18=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=sPGLX9e2Whee7ru0j6SZsEfO2zNHMWe/2PykTLsjVasFMx0Gc6fBLRmSTxH7vYYBg
         Tvt7lx43r2l0IvjIwPmi5BRqk6uJJcpYvVo9FwMt3/Wz1qUglmvQktX679mIdkgbcD
         1SHdEJSaONEFDJAiwf7OQejSHBCbtioMsL0721ib+MkixsmDabzILM0bNvkEaK0h41
         m0SsrSF0av23KSTfSRGLs3KJ0i3GoRDEZW12djeDHFUWIHl+/bEiYPWfiXoqSeiWnh
         OIiZsJd9GCH6v3Jrq9jWFwwdMNwH9JCXALu7F4ob2caXafZI7s19MFuoNBTns3t7l8
         dl8c7qLCY8Wew==
Date:   Thu, 20 Apr 2023 20:46:10 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: Re: [PATCH v5 3/8] regex.3: Desoupify regerror() description
Message-ID: <kq2rpdxdwgk6oiccjzqyjerz5hutdsros2ewreggsbuxhbsyoe@hhbnxxou3xff>
References: <6405717b8de85a370febef4f102676dc65c61113.1681995401.git.nabijaczleweli@nabijaczleweli.xyz>
 <cover.1682004802.git.nabijaczleweli@nabijaczleweli.xyz>
 <108f30cd72f18419b3e4c62490d63807d48225b7.1682004802.git.nabijaczleweli@nabijaczleweli.xyz>
 <516ecf85-a1e5-a87e-632c-da026a16dddd@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="dtnlyzmon7phc2vg"
Content-Disposition: inline
In-Reply-To: <516ecf85-a1e5-a87e-632c-da026a16dddd@gmail.com>
User-Agent: NeoMutt/20230407
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RDNS_DYNAMIC,SPF_HELO_PASS,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--dtnlyzmon7phc2vg
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

On Thu, Apr 20, 2023 at 07:23:39PM +0200, Alejandro Colomar wrote:
> On 4/20/23 17:35, =D0=BD=D0=B0=D0=B1 wrote:
> > +.I errcode
> > +must be the latest error returned from an operation on
> > +.IR preg .
> > +If
> > +.I preg
> > +is a null pointer\(emthe latest error.
> I don't read that from the POSIX spec.
Whereas that's precisely where I got it from.

> If preg is NULL, then I think any
> error returned by a call to one of these APIs would be valid.
That's unspecified.

> In fact,
> since these functions are MT-Safe, they can't store any state,
Probably. OTOH, musl raw-dogs mbtowc() in regexec(), so.
(I'm pretty sure it's by accident since they do have a mbstate_t
 and juggle it a lot, but it's never actually used.)

> which leads
> me to think that they can't really distinguish between the latest error,
> and an error returned at a random point in the past, or even the result of
> csrand_interval(x, y)[1] with appropriate x and y.
Again, probably. But (line numbers from Issue 8 Draft 2.1):
57517  The regerror( ) function provides a mapping from error codes returne=
d by regcomp( ) and
57518  regexec( ) to unspecified printable strings. It generates a string c=
orresponding to the value of the
57519  errcode argument, which the application shall ensure is the last non=
-zero value returned by
57520  regcomp( ) or regexec( ) with the given value of preg. If errcode is=
 not such a value, the content of
57521  the generated string is unspecified.

57522  If preg is a null pointer, but errcode is a value returned by a prev=
ious call to regexec( ) or regcomp( ),
57523  the regerror( ) still generates an error string corresponding to the=
 value of errcode, but it might not
57524  be as detailed under some implementations.

57525  If the errbuf_size argument is not 0, regerror( ) shall place the ge=
nerated string into the buffer of
57526  size errbuf_size bytes pointed to by errbuf. If the string (includin=
g the terminating null) cannot fit
57527  in the buffer, regerror( ) shall truncate the string and null-termin=
ate the result.

57528  If errbuf_size is 0, regerror( ) shall ignore the errbuf argument, a=
nd return the size of the buffer
57529  needed to hold the generated string.

In these difficult times I tend to turn to what implementations do:
NetBSD, musl, illumos, and glibc, if you subtract REG_ATOI and REG_ITOA,
all essentially return lsearch(errors, errcode)->description
+ all sans NetBSD localise it.
None of them even use preg.

So yeah, I'll axe that.


And split out regfree() from this patch because I missed it.


Best,
=D0=BD=D0=B0=D0=B1

--dtnlyzmon7phc2vg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmRBiG8ACgkQvP0LAY0m
WPGKow//Z9f2j3Tqj0xRa7V5ZcddNcFBilzZIgt6+zTghydMb5Ig20PS7eGOA3qD
phc14o8JnaZ/gMxWgvcbm/N77BxB2CcQ6fvGCsNJ9jPw+Oy9a0+1uivj6CjMW1qa
DnO3Ma48G1tB6/s935HUMawcgeKHSQlH0Dm5vdp4JJ0QgO07AGmiWPqZWVtfKG+d
MmYXPb2S0cs2F8AwJv/HoGPWthnoMX5Yw7egFmCrM1w7IJtp8dfi7vnRe2s9dCU4
u+QU8G2feamxHUq5J8LgbJmOg+Pq8fLyyUuo8jXtXh6BD08qUo+ryDc+s0EswRdt
fqvqZIr2SFwnd1ffUXB+F98kjAWrzi3E2NOWIwiAWvXh47jDdVG+HJuEFxI7yaR0
qVmAgLwtTNzy0cdwvhkY8CSNA9TkkOLTOMHOIULTaB+B4m4xMme/V3xqitE+A6Xk
H4jZWOAHnxzeknJKPLfbn9pJFj8gfiqrRfiZcOlVcoaDHwkZLz7i62wKfGDql9E/
tFR2viUo4UsEklnUuf0wpcr3rEIRKk4mLHWsuCueI4sDLCz9DGogBnnlsiJqpgbN
adQEBQzpLqDKMwqZlkfxencLVnamKrcP748WukkMrl59lF2qeaNdgIFF0OZXWquL
cywNLmcxV6c5FRkbboSVt/5GSQMauGc+vtrLkxOSf0oaQlzSWk4=
=creM
-----END PGP SIGNATURE-----

--dtnlyzmon7phc2vg--
