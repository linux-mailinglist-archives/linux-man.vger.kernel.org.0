Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2537157A300
	for <lists+linux-man@lfdr.de>; Tue, 19 Jul 2022 17:28:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236123AbiGSP2s (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 19 Jul 2022 11:28:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59656 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234007AbiGSP2r (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 19 Jul 2022 11:28:47 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 6768456BA5
        for <linux-man@vger.kernel.org>; Tue, 19 Jul 2022 08:28:44 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 166B02B8;
        Tue, 19 Jul 2022 17:28:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202205; t=1658244522;
        bh=tJJk0IlKbpkMEcOthgADa+fN6GlwqLHrEMxc784zWHQ=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=Y4V04I0gEoFCW2Jtzr2lBzM9fPWc4ws/lSce6nWWaahoSxrhnhx17/U3O78BusynL
         n1q6BcN5RgCccimyFoIvFZD8IgNngaHCT4W/9cfQisZpsrB1LZtiQFgG2O1KtxJ5WK
         EzOCKHqmXpHEdihWWAL6WfKw2weyuNpCoHyo5nHAEAqZg4k5F6V0zhWfMN4TMyD22i
         9UVR+M68Q622pa1gOG9wLPon7n/0QXm+NJf1kRqe/UZ8CKNJMPRDWlfU86atpt+ulF
         6SnoXl5FzeGN0k5aItfLhiMARLEkeZkbBXj4ZTGX316OQI1emgfCoE5iWewdG9R1gj
         HUCWJ9dGxb529YI3pETFdEwRrkOZ+ITniAEZ8lqyLBAqFZcFv1tHX5yAXL4Xmf3Ovj
         cUjmLHh6CGbnQsKDvMbr4uyr2WsFkbqdCqsQT20sPnBIuylHlTV7kx/9bEbpjuudXg
         TMh0PuefFB/PJacl+hq7Btto3lxQ34DDHcDrPfrz0gKCGlAMw+vv5Zaf8Gci+Ikh4n
         wEraHIPJGpiY8fM4+eST31EOB3mtOTuyrk4SbrSVC3VhykYjAfLny02HNU6sRf+utw
         vRJ+CBSWcFzQenE7i/PQam0h7edQHgvHQHw+biBUVjIuiSThw1H2qN9qAlZnEK++Pe
         iIhhRCMGrzqpyvsxdcZ0EPBM=
Date:   Tue, 19 Jul 2022 17:28:40 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org,
        "G . Branden Robinson" <g.branden.robinson@gmail.com>
Subject: Re: [PATCH 4/5] tm.3type: describe tm_zone, tm_gmtoff
Message-ID: <20220719152840.4one3lvvvpgv7plk@tarta.nabijaczleweli.xyz>
References: <62c1b6748d2faa6263264b9fcaa064495357441b.1658195739.git.nabijaczleweli@nabijaczleweli.xyz>
 <a8be8830890c50b1a36e9b7d20693c19c77ca4e5.1658195739.git.nabijaczleweli@nabijaczleweli.xyz>
 <90beebd3-2636-21d5-323b-766c8d81d6d3@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="22uaum2bafyactfh"
Content-Disposition: inline
In-Reply-To: <90beebd3-2636-21d5-323b-766c8d81d6d3@gmail.com>
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


--22uaum2bafyactfh
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

On Tue, Jul 19, 2022 at 02:17:15PM +0200, Alejandro Colomar wrote:
> On 7/19/22 03:56, =D0=BD=D0=B0=D0=B1 wrote:
> > glibc cited for __USE_MISC, tm_zone invalidation is Debian 2.33-7
>=20
> But I guess it is present in much older glibcs, right?
> Otherwise we should add a VERSIONS thingy.

The fields appear in the glibc git root commit
28f540f45bbacd939bfd07f213bcad2bf730b1bf ("initial import");
the ChangeLog entry for them is
  Mon Apr  6 01:39:07 1992  Roland McGrath  (roland@geech.gnu.ai.mit.edu)
    time/time.h (struct tm): Add `tz_gmtoff', `tz_zone'.
This was 30 years ago, so I don't think we need to version it.

For the macro requirements, blame on the glibc git points to
-- >8 --
@@ -110,8 +110,14 @@ struct tm
   int tm_wday;                 /* Day of week. [0-6] */
   int tm_yday;                 /* Days in year.[0-365] */
   int tm_isdst;                        /* DST.         [-1/0/1]*/
-  long int tm_gmtoff;          /* Seconds west of UTC.  */
+
+#ifdef __USE_BSD
+  long int tm_gmtoff;          /* Seconds east of UTC.  */
   __const char *tm_zone;       /* Timezone abbreviation.  */
+#else
+  long int __tm_gmtoff;                /* Seconds east of UTC.  */
+  __const char *__tm_zone;     /* Timezone abbreviation.  */
+#endif
 };
-- >8 --
=66rom f0f1bf8536fe660cb6230a22694f9b7e6b02605e ("update from main archive
960911"), dated Thu Sep 12 02:51:03 1996 +0000; the relevant message
chunk is
  1996-09-11  Paul Eggert  <eggert@twinsun.com>
    * time/time.h (tm_gmtoff, tm_zone): Prefix with `__' unless
    __USE_BSD; this is required for ANSI C compatibility.
for the origin.

(I realise now __USE_BSD corresponds to just _BSD_SOURCE, which didn't
 match the template I copied, so I updated that for v2).

This was replaced with __USE_MISC in
498afc54dfee41d33ba519f496e96480badace8e ("Combine __USE_BSD and
__USE_SVID into __USE_MISC."):
-- >8 --
@@ -142,7 +142,7 @@ struct tm
   int tm_yday;                 /* Days in year.[0-365] */
   int tm_isdst;                        /* DST.         [-1/0/1]*/

-# ifdef        __USE_BSD
+# ifdef        __USE_MISC
   long int tm_gmtoff;          /* Seconds east of UTC.  */
   const char *tm_zone;         /* Timezone abbreviation.  */
 # else
-- >8 --
which is contained in every tag since glibc-2.20, the relevant part of
which says:
-- >8 --
* The _BSD_SOURCE and _SVID_SOURCE feature test macros are no longer
  supported; they now act the same as _DEFAULT_SOURCE (but generate a
  warning).  Except for cases where _BSD_SOURCE enabled BSD interfaces that
  conflicted with POSIX (support for which was removed in 2.19), the
  interfaces those macros enabled remain available when compiling with
  _GNU_SOURCE defined, with _DEFAULT_SOURCE defined, or without any feature
  test macros defined.
-- >8 --

(I've also updated the f_t_m(7) box to say >=3D2.20: _D_S, <2.20: _B_S.)

> > This also fixes the multiple lies in man-pages 5.10 localtime(3),
> > which says only:
> Did you forget that removal of lies?  I don't see it in the patch.

I've updated the commit message for v2 to be less misleading,
the removal is in 5/5

> >=20
> > Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.=
xyz>
> > ---
> >   man3/tm.3type | 45 +++++++++++++++++++++++++++++++++++++++++++++
> >   1 file changed, 45 insertions(+)
> >=20
> > diff --git a/man3/tm.3type b/man3/tm.3type
> > index 1931d890d..8b6f8d9bf 100644
> > --- a/man3/tm.3type
> > +++ b/man3/tm.3type
> > @@ -25,8 +25,26 @@ Standard C library
> >   .BR "    int  tm_yday;" \
> >   "   /* Day of the year  [" 0 ", " 365 "] (Jan/01 =3D " 0 ") */"
> >   .BR "    int  tm_isdst;" "  /* Daylight savings flag */"
> > +
> > +.BR "    long tm_gmtoff;" " /* Seconds East of UTC */"
> > +.BR "    char*tm_zone;" "   /* Timezone abbreviation */"
>=20
> Please add cosmetic whitespace (at least 1 for every member, possibly 2,
> depending on your taste) :)

Added to match the classic
  long  f1;
  int  *f2;
layout.

> > +.I tm_gmtoff
> > +is the difference, in seconds, of the timezone represented by this bro=
ken-down time and UTC
> > +(this is the reverse of
>=20
> Could you come up with a more mathematically precise term for "reverse"?
> What is reverse?  The additive inverse?  Maybe use "additive inverse"?  I
> think "opposite" also has the meaning of additive inverse in maths, and i=
t's
> maybe a simpler term (although additive inverse is more precise, IMHO).  =
But
> reverse is definitely confusing to me.

::timezone is seconds West, struct tm::tm_gmtoff is seconds East, so
they have the opposite sign.

I was also not a fan of "reverse", but couldn't come up with a good
english term for it; a skim of a technical terms dictionary points to
  Additive inverse (negation)
  Multiplicative inverse (reciprocal)
but the wiktionary confirms my inkling that "negation" doesn't work here.

"Opposite" may work since we (and POSIX) define this as cur - UTC
(well, POSIX ::timezone in the opposite (hehe) order as UTC - cur),
but that may not be obvious.

"Additive inverse" works, IMO, yeah. Updated.

> > +.BR timezone (3),
> > +as a variable, is an XSI extension \(em some systems provide the V7-co=
mpatible
> I tend to prefer the em dash to be next to (no whitespace) the enclosed
> clause.  That makes it easier to mentally associate (as in a set of
> parentheses) to the clause.  I'm not sure if it's a thing of mine, or if
> it's standard practise?

Dunno; I'd, personally never seen unspaced dashes in Polish and the vast
majority of modern English and French. Conversely, archaic documents
I've seen tend to prefer dashes touching the surrounding text directly,
so I'd assume this were regional, especially in languages genetically
close to Latin.

Replaced with a colon instead.

> > +.I tm_zone
> > +points to potentially-constant static storage and may be overriden on =
subsequent calls to
> > +.BR localtime (3)
> > +&a. (this, however, never happens under glibc).
> What is "&a."?  Is that documented somewhere?  I didn't know that
> abbreviature.

That's an archaic form of "and others" (&a. -> &al. -> et al. -> et alia),
I didn't even notice :v

Replaced with "and similar functions" (this includes localtime_r() and,
depending on the libc, gmtime*(), &c.).

Best,
=D0=BD=D0=B0=D0=B1

--22uaum2bafyactfh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmLWzagACgkQvP0LAY0m
WPE+rA//VXh/Jc6eFB7/SbH1fy3okf0GotWqEBVEk0uESYaD9IrkODPOMYmG8VuC
iX8oluoGqOnIVbKaj9FD0hkk9e3mmiBO6WiilmK2F6st6qT1m8dR2lOINIwXv3pQ
+x3yLZnD0kPChXjKPxmXVQgyzuN6giDITdkcU1eYdsxG3KpGlAuAAOw1mNut4NN3
R3+uXFe8+y7OBE8rpL1zy0+z2arBVjVO2suiv8kVpeCcW6OHKBc+fmXlNzmPrR6F
e3YyhTHKn2UIWV4s3ZLprZPLX3x+aQ5zYx13ElvNqNHVcTqrkQMwr/SsG3MAmzYr
/mn8TFQai8Pel1FJEC1ZrsbmpiaUbddqgNUM4Q9TtqfWoqIERB7fdeT6CDB/KHn0
XcmouCZxoNZdOYDOQqvFH8CFEFzwAiGUGjsBa800DSfYyvVCU86tTKVuTPxdEDu1
UZCqj1MheFrGb73U3U9egbbHzCZ3hig1L+LaHIIyJ+3OVAv0796xOD0wyycC81jk
7GKkaDN/ADo25Nv0Du8ULLhropJRnftrtjEefb7qlxyxG9FmK6/rYeTClSMFZCZR
q1YBH8vjb4DfwHzzGLWMfzoTQaqdV2wB9UB4eZk/hzWO/LCyMftsIpr5hySK3+nO
gDLs4tSVjIPUuKSKYaAYoeSIuM3k3rWpsdZVWldGHhX90OKjL4k=
=kB2c
-----END PGP SIGNATURE-----

--22uaum2bafyactfh--
