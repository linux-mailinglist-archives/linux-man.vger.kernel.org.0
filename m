Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 07DDC57A90D
	for <lists+linux-man@lfdr.de>; Tue, 19 Jul 2022 23:36:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236814AbiGSVg6 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 19 Jul 2022 17:36:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45172 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230329AbiGSVg5 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 19 Jul 2022 17:36:57 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 07D25474E4
        for <linux-man@vger.kernel.org>; Tue, 19 Jul 2022 14:36:55 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id CEA5521C;
        Tue, 19 Jul 2022 23:36:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202205; t=1658266614;
        bh=KqKVGTUu5hxSfh39KQIYcHAFQNgU9BhcDKGIMAd6rlc=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=rQZxbs33aQvEuJvzGSOoC27OF/qCNkpCBzPy4MtsZvoKj9iD02nr6aFNaY1WFYzd1
         QDrdeN15pRAaUtB6/shda86nvtYMaRr1W1axoZ4vaT8e5RWl+jQ7hLnUMXX6lm3kP1
         MTw4shMALCCAr53sGK6B96i7EZdj1VdPp0UdbssOV62FD81+P0UvlcrZ5MSVnPUCyV
         P8Fsnkb/Y68R1njaJBFiWk1AG3o/3NxrdWGT3OdQlPwuO2t1J7W+0qGOtIkUisDICg
         VT4mVNNQF80R9lYOjP0jh1x8nktDVPzC+rEUCMz6tediy8fI5JHxOWaKY5jrHHBEjm
         G1Pc2TxaA9gx783HvXMIhnQzEd1JwFlRUV94c+maFxyeBQAm8ctEs6tGAMvsxIKnO3
         E8Df5wD8h2OBhtMk3vVtHp8uf8MOdlzhPsysVClj1WXvzNn53jaa27SfbvS2oHsZu1
         ZUKPYqxzXwg4X+IW7qGeKay87PCn4fC4W60uOX2PaVO6FMq1aGTjnNUjL3EPzVIT21
         kthEa5A5POohCMrBQNTLyjiQ7+NkdDBWMuZqx1ikOCJuSjW9LxuZ4Gh7H+KZN8xi2G
         lOkYaZDms3aq6WDltBP/0ZsXGshH4t4Uqtnd5pKIbbo/03q5Y5a7D7uhqewXLs3BdI
         MwNT+t0lJZJ/B/Hg84VjWcZI=
Date:   Tue, 19 Jul 2022 23:36:53 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: Re: [PATCH v3 1/2] tm.3type: describe tm_zone, tm_gmtoff
Message-ID: <20220719213653.tljzjqkwkl4ckfrl@tarta.nabijaczleweli.xyz>
References: <28ce4bcb0318b42c5fe6e286887bdab935995192.1658244821.git.nabijaczleweli@nabijaczleweli.xyz>
 <b84f1ff5815f24cc23e55a0d89ddd1878f35faa7.1658255829.git.nabijaczleweli@nabijaczleweli.xyz>
 <2a850b7d-a888-9577-6c0a-84deb542c0b9@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="bm2yi4arolandi62"
Content-Disposition: inline
In-Reply-To: <2a850b7d-a888-9577-6c0a-84deb542c0b9@gmail.com>
User-Agent: NeoMutt/20220429
X-Spam-Status: No, score=0.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FROM_SUSPICIOUS_NTLD,
        PDS_OTHER_BAD_TLD,RDNS_DYNAMIC,SPF_HELO_NONE,SPF_PASS autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--bm2yi4arolandi62
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

On Tue, Jul 19, 2022 at 10:33:34PM +0200, Alejandro Colomar wrote:
> On 7/19/22 20:38, =D0=BD=D0=B0=D0=B1 wrote:
> > diff --git a/man3/tm.3type b/man3/tm.3type
> > index 78e05a41a..c23fc023e 100644
> > --- a/man3/tm.3type
> > +++ b/man3/tm.3type
> > @@ -25,8 +25,26 @@ Standard C library
> >   .BR "    int         tm_yday;" \
> >   "   /* Day of the year  [" 0 ", " 365 "] (Jan/01 =3D " 0 ") */"
> >   .BR "    int         tm_isdst;" "  /* Daylight savings flag */"
> > +
>=20
> Use .PP.  See man-pages(7):
>    Formatting conventions (general)
>        Paragraphs should be separated by suitable markers  (usu=E2=80=90
>        ally  either .PP or .IP).  Do not separate paragraphs us=E2=80=90
>        ing blank lines, as this results  in  poor  rendering  in
>        some output formats (such as PostScript and PDF).

Too used to mdoc(7) in .Bd -literal mode where an empty line is correct
for these. Fixed for v4.

> > @@ -35,6 +53,16 @@ describes wether daylight saving time is in effect a=
t the time described.
> >   The value is positive if daylight saving time is in effect,
> >   zero if it is not,
> >   and negative if the information is not available.
> > +.PP
> > +.I tm_gmtoff
> > +is the difference, in seconds, of the timezone represented by this bro=
ken-down time and UTC
>=20
> Heh, as the old kernel coding style used to read,
> "The limit on the length of lines is 80 columns and this is a strongly
> preferred limit."
>=20
> Rationale: I can keep the font size quite big, and still have 2 terminals=
 in
> a FullHD screen side by side, with line numbers.
>=20
> I can still see around 87 characters (a little more than 80),
> but that line is too much for me.  If eighty-few characters really improve
> readability, I can accept that, especially for SYNOPSIS, but in running
> text, 80-char is more of a strong limit.

Sure. Cracked before of for v4.

> > +.PP
> > +.BR timezone (3),
> > +as a variable, is an XSI extension: some systems provide the V7-compat=
ible
> > +.\" FreeBSD
> > +.BR timezone ()
>=20
> I've been thinking about if we should put there a section number.
> I think we should.  Actually, timezone(3) documents the function in NOTES.

Disagree: timezone() is /not/ timezone(3).

Our (and XSI) timezone(3) is
  extern long timezone;
whereas the V7-compatible timezone() is
  extern char *timezone(int zone, int dst);
cf. https://www.freebsd.org/cgi/man.cgi?query=3Dtimezone&apropos=3D0&sektio=
n=3D0&manpath=3DFreeBSD+13.1-RELEASE+and+Ports&arch=3Ddefault&format=3Dhtml

That's why I Xred the first usage (which refers to the variable we
document) and not the second (which refers to a function we don't).

Thoughts?

Best,
=D0=BD=D0=B0=D0=B1

--bm2yi4arolandi62
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmLXI/UACgkQvP0LAY0m
WPH6Zg/8DgIn8iEMfxSQDt/zvD8k2bYt2ieHtzIYq7oCyTn9Uzzu1GEDYHBNsPbJ
7vKea5mUNy+vwGznpcnFd7VdE9NnX1QAKGqgsPKRVcM9tLlLzI6M0rkYxWSUutKl
FxhFDf2ThXI72oTgP4Nq3No8LoV4L1RLl3JUZ6DpEu+sDN+82L1LG3j4gGAz0t/T
kvZkm96r/WfsjSKx9mN2dDb0JPTvoockOFlhxZXunDiv2gyKRvHjgkM4IZQ9rEYf
YnN/5Dc95PcprWrKAUK6Ns1WSIV5xzF0yBg8mIfX6k4kGAcX0ebyC3hXGjElGGge
3a5i10TMzverhiGPEk6GI/I0N1WAt3Y0f9qJXQKFcaOgDJ1vFU71us//kfw+6KyU
xsaNU7euPyDINbtWEEIZvcYP46h783V/nZeWQOJRXhbJui+9PvOjf7dTi0J8ca0g
1GUepbeggPZsygC3gA9qkbwsQibkaNz3yRsTgupKCCOm7HL4IVca5iT6110Qk9wl
Nes1sIeeagNpJHHcLDV3fL/riABKT9a0nM/p7STLMK79yfsrG9Atwa5lBBMqFZ/F
uUBQTT8guSubJpGtij1+XtPAbqaURzimbEQW2c4cM0keuCaBDsq2jWR5ORB/qoID
ymywecRfqbVDQEai4Zx04LqlElLRJcEYapn6D6kiDuS+au2/if4=
=hCbY
-----END PGP SIGNATURE-----

--bm2yi4arolandi62--
