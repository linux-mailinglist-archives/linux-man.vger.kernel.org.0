Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9DFE57E5EB0
	for <lists+linux-man@lfdr.de>; Wed,  8 Nov 2023 20:33:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229555AbjKHTdq (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 8 Nov 2023 14:33:46 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45792 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229473AbjKHTdq (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 8 Nov 2023 14:33:46 -0500
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1235F1FFC
        for <linux-man@vger.kernel.org>; Wed,  8 Nov 2023 11:33:44 -0800 (PST)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C2E97C433C7;
        Wed,  8 Nov 2023 19:33:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1699472023;
        bh=8sDqPxR6X95pP3EUFoy52ZOGBChcalzfkMFmqce+4q4=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=HJvIDb+7bSYOo60GAVFrsnfKlnbGoBzT87/D/HFkrgqqeXCpUGOG7bcHJ+uLYNErd
         KHXGQeSv9ZplJCt0Xd5IuIzvRPouoaE5dLmJzvgcvcNpyrTDDiDIROlV5towmimbD0
         Va9OlOi7LMkfg0R6GGFmWK21j7LiPzhB2KIJwIZdR0DWRVH61vcEb7mRP3UGToCCzd
         uIcgVXX1vveq1sSWcHcW4aJHuXH6EgFZwqLIFMeBXUqt9176FLJwax6vnWW/0cTXtl
         MJMp7+S1c++S/lEjK6LG8ofjVS8A1aneDwzs3rjpjEJFJ/4Wtu1Tz/5BnLsN+DVkXq
         SkwdBxB1wiKjg==
Date:   Wed, 8 Nov 2023 20:33:34 +0100
From:   Alejandro Colomar <alx@kernel.org>
To:     Matthew House <mattlloydhouse@gmail.com>
Cc:     Jonny Grant <jg@jguk.org>, linux-man <linux-man@vger.kernel.org>
Subject: Re: strncpy clarify result may not be null terminated
Message-ID: <ZUvilH5kuQfTuZjy@debian>
References: <cfbd8674-fe6a-4430-95f1-ec8bde7da32e@jguk.org>
 <ZUacobMq0l_O8gjg@debian>
 <aeb55af5-1017-4ffd-9824-30b43d5748e3@jguk.org>
 <ZUgl2HPJvUge7XYN@debian>
 <d40fffcb-524d-44b6-a252-b55a8ddc9fee@jguk.org>
 <ZUo6btEFD_z_3NcF@devuan>
 <20231108021240.176996-1-mattlloydhouse@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="ABscj4+u0VOEJ1K4"
Content-Disposition: inline
In-Reply-To: <20231108021240.176996-1-mattlloydhouse@gmail.com>
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--ABscj4+u0VOEJ1K4
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Wed, 8 Nov 2023 20:33:34 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Matthew House <mattlloydhouse@gmail.com>
Cc: Jonny Grant <jg@jguk.org>, linux-man <linux-man@vger.kernel.org>
Subject: Re: strncpy clarify result may not be null terminated

Hi Matthew,

On Tue, Nov 07, 2023 at 09:12:37PM -0500, Matthew House wrote:
> On Tue, Nov 7, 2023 at 8:21 AM Alejandro Colomar <alx@kernel.org> wrote:
> > On Tue, Nov 07, 2023 at 11:52:44AM +0000, Jonny Grant wrote:
> > > We see things differently, I'm on the C standard side on this one. Wo=
uld any information change your mind?
> >
> > It's difficult to say, but I doubt it.  But let me ask you something:
> > In what cases would you find strncpy(3) appropriate to use, and why?
> > Maybe if I understand that it helps.
> >
> > Kind regards,
> > Alex
>=20
> Man pages aren't read only by people writing new code, but also by people
> reading and modifying existing code. And despite your preferences regardi=
ng
> which functions ought to be used to produce strings, it's a widespread (a=
nd
> correct) practice to produce a string from the character sequence created
> by strncpy(3). There are two ways of doing this, either by setting the la=
st
> character of the destination buffer to null if you want to produce a
> truncated string, or by testing the last character against zero if you wa=
nt
> to detect truncation and raise an error.

It is not strncpy(3) who truncated, but the programmer by adding a NULL
in buff[BUFSIZ - 1].  In the following snippet, strncpy(3) will not
truncate:

	char cs[3];

	strncpy(cs, "foo", 3);

And yet your code doing if (cs[2] !=3D '\0') { goto error; } would think
it did.  That's because you deformed strncpy(3) to implement a poor
man's strlcpy(3). =20


	char cs[3];

	strncpy(cs, "foo", 3);
	cs[2] =3D '\0';  // The truncation is here, not in strncpy(3).

> I'm not aware of any alternative to a strncpy(3)-based snippet for
> producing a possibly-truncated copy of a string, except for your preferred
> strlcpy(3) or stpecpy(3), which aren't available to anyone without a

The Linux kernel has strscpy(3), which is also good, but is not
available to user space.

> brand-new glibc (nor, by extension, any applications or libraries that wa=
nt

libbsd has provided strlcpy(3) since basically forever.  It is a very
portable library.  You don't need a brand-new glibc for having
strlcpy(3).

<https://libbsd.freedesktop.org/wiki/>

> to support people without a brand-new glibc, nor any libraries that want =
to
> support other platforms like Windows with only ISO C and POSIX-ish

If you program for Windows, it depends.  If you have POSIX available,
you may be able to port libbsd; I don't know.  In any case, I don't
case about Windows enough.  You could always write your own string-
copying function for Windows.

> functions); snprintf(3), which has the insidious flaw of not supporting
> more than INT_MAX characters on pain of UB, and also produces a warning if
> the compiler notices the possible truncation; or strlen(3) + min() +
> memcpy(3) + manually adding a null terminator, which is certainly more
> explicit in its intent, and avoids strncpy(3)'s zero-filling behavior if
> that poses a performance problem, but similarly opens up room for
> off-by-one errors.

More than the performance problem, I'm more worried about the
maintainability of strncpy(3).  When 20 years from now, a programmer
reading a piece of code full of strncpy(3) wants to migrate to a sane
function like strlcpy(3) or strcpy(3), the programmer needs to
understand if the zeroing was purposeful or just accidental.  Because
by using strlcpy(3), it may start leaking some trailing data if the
trailing of the buffer is meaningful to some program.

>=20
> For the sake of reference, I looked into a few big C and C++ projects to
> see how often a strncpy(3)-based snippet was used to produce a truncated
> copy. I found 18 instances in glibc 2.38, 2 in util-linux 2.39.2 (in spite
> of its custom xstrncpy() function), 61 in GNU binutils 2.41, 43 in
> GDB 13.2, 1 in LLVM 17.0.4, 7 in CPython 3.12.0, 99 in OpenJDK 22+22,
> 10 in .NET Runtime 7.0.13, 3 in V8 12.1.82, and 86 in Firefox 120.0. (Note
> that I haven't filtered out vendored dependencies, so there's a little bit
> of double-counting.) It seems like most codebases that don't ban strncpy(=
3)
> use a derived snippet somewhere or another. Also, I found 3 instances in
> glibc 2.38 and 5 instances in Firefox 120.0 of detecting truncation by
> checking the last character.

I know.  I've been rewriting the code handling strings in shadow-utils
for the last year, and ther was a lot of it.  I fixed several small bugs
in the process, so I recommend avoiding it.

>=20
> So these two snippets really are widespread, especially among the long ta=
il
> of smaller C and C++ applications and libraries that don't perform enough
> string manipulation that it warrants creating a custom set of more-
> foolproof wrapper functions (at least, in the opinion of their authors).



> Thus, since they're not going away, it would be useful for anyone reading
> the code to understand the concept behind how these two snippets work, th=
at
> the only difference between the strncpy(3)'s special "character sequence"
> and an ordinary C string is an additional null terminator at the end of t=
he
> destination buffer.

This is part of string_copying(7):

DESCRIPTION
   Terms (and abbreviations)
     string (str)
            is  a  sequence  of zero or more non=E2=80=90null characters fo=
llowed by a
            null byte.

     character sequence
            is a sequence of zero or  more  non=E2=80=90null  characters.  =
 A  program
            should  never use a character sequence where a string is requir=
ed.
            However, with appropriate care, a string can be used in the  pl=
ace
            of a character sequence.

I think that is very explicit in the difference.  strncpy(3) refers to
that page for understanding the differences, so I think it is
documented.

strncpy(3):
CAVEATS
     The  name  of  these  functions  is confusing.  These functions produc=
e a
     null=E2=80=90padded character sequence, not a string (see string_copyi=
ng(7)).

>=20
> In other words, strncpy(3) doesn't create a truncated string, but it
> creates something which can be easily turned into to a truncated string,
> and that's its most relevant quality for most of its uses in existing cod=
e.
> Further, apart from snprintf(3), there's no other portable way to produce=
 a
> truncated string without manual arithmetic. Thus, I'd also find it

Portable is relative.  With libbsd, you can port to most POSIX systems.
Windows is another story.

> reasonable to highlight precisely why strncpy(3)'s output isn't a string

How about this?:

diff --git a/man3/stpncpy.3 b/man3/stpncpy.3
index d4c2ce83d..c80c8b640 100644
--- a/man3/stpncpy.3
+++ b/man3/stpncpy.3
@@ -108,7 +108,10 @@ .SH HISTORY
 .SH CAVEATS
 The name of these functions is confusing.
 These functions produce a null-padded character sequence,
-not a string (see
+not a string.
+While strings have a terminating NUL byte,
+character sequences do not have any terminating byte
+(see
 .BR string_copying (7)).
 .P
 It's impossible to distinguish truncation by the result of the call,


> (viz., the lack of a null terminator), instead of trying to insist that i=
ts
> output is worlds apart from anything string-related, especially given the
> volume of existing correct code that belies that notion.

It is not correct code.  That code is doing extra work which confuses
maintainers.  It is a lot like writing dead code, since you're writing
zeros that nobody is reading, which confuses maintainers.

Also, I've seen a lot of off-by-one bugs in calls to strncpy(3), so no,
it's not correct code.  It's rather dangerous code that just happens to
not be vulnerable most of the time.

>=20
> Or, to answer your question, "It's appropriate to keep using strncpy(3) in
> existing code where it's currently used as part of creating a truncated
> string, and it's not especially inappropriate to use strncpy(3) in new co=
de
> as part of creating a truncated string, if the code must support platforms
> without strlcpy(3) or similar, and if the resulting snippets are few enou=
gh
> and well-commented enough that they create less mental load than creating
> and maintaining a custom helper function."

strncpy(3) calls are never well documented.  Do you add a comment in
each such call saying "this zeroing is superfluous"?  Probably not.

>=20
> (As an aside, I find the remark in the man page that "It's impossible to
> distinguish truncation by the result of the call" extremely misleading at
> best, since truncation can easily be distinguished by inspecting the last
> output character.)

Again, strncpy(3)'s truncation is impossible to detect.  What you can
detect is that your construct that resembles strlcpy(3) truncates, which
is a different thing.

Thanks,
Alex

>=20
> Thank you,
> Matthew House

--=20
<https://www.alejandro-colomar.es/>

--ABscj4+u0VOEJ1K4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVL4o4ACgkQnowa+77/
2zLuRA//WKSdYxD9bTPgZjM1CEVqYGhGrD5XSBCmIgP6qOOhz6INe1os54LX3Lpr
OhEAJr/JAW125aWSHdq9aAYSZUs2rtnr/b8Ows1qS+T1ScdX70BneIVRGs7k9wdd
j3FV5zTolh8UXVodvx/DhjB5maXKSQI4+ogI6mva6QBmYgBFgGL3Mq949H+u0g43
fUxQxLNO7f5LaVi8a7lGzBL399qIDR3Wzpu5v0EzuIKx52j1dl17RVx9qL79ZMyj
krJT+V0BMXW6Re6HC5Gcnn0uEs620F3F3A5AbUfliRkkq1r1dfsvQEaQDF0R1KdI
VOiW7KNF7FqxXhkIEa2mHleNVIhioBL5ZsOB639V7Cq44Lfckb87gpYVyTnrmp07
7/UVPXyKGcdj3rjHmj5ptJ52LdYok+1c1nhSDLdb4pEBxM1MYv8NIo5FJDgLb/hX
+cwRMZyRQdoB1E1ajXHItX8bsNBNnSF3rNwZc1rfWeQhVRSah/kIcBuMKrxDqwmY
LcC3YYgRAAyw5tnqfBkyStYbLgkhI/t3XtDOld2JPhmPE7giEi8Cz5aMgWgBRRGZ
sG3YVFT3STeljKbPXi37tAJBLVCmwNKvzFygsjWJN87foWpIc0r7ndV0rZPpjNaJ
bllgLqlhQoX4gVkLBtN+6ifMILP+iOlDVNhP1a8uY9EV1QPdF4g=
=l/Y9
-----END PGP SIGNATURE-----

--ABscj4+u0VOEJ1K4--
