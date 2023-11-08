Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CC9767E5ECA
	for <lists+linux-man@lfdr.de>; Wed,  8 Nov 2023 20:40:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229715AbjKHTkv (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 8 Nov 2023 14:40:51 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48318 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229711AbjKHTku (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 8 Nov 2023 14:40:50 -0500
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CAB842118
        for <linux-man@vger.kernel.org>; Wed,  8 Nov 2023 11:40:48 -0800 (PST)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9542FC433C8;
        Wed,  8 Nov 2023 19:40:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1699472448;
        bh=vjzeJNX1i0LBSNCWezHbJXusITHji5qesFFzm6rN8zo=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=jHexDAiEyxIHO9CJMa4C7u2hk9q/te1jEox8Pxyjoi16j3mowG1G67iXoC0WvLbOo
         omjtwrlIQ7YN2zFEvXtArI+7v/Gl9CcMKZNIE+7kDwe0tCCcZBBAPsRyWJ4lluFlwu
         0xUZDRkhBUzYkDKMARMsZGq9LiiLxGnX2KwPZp7uuKVTarLpsncdOk2UScWGarjCJx
         I5eVZfqogtFgRpIn1ZL5aeCIzmo5biIzQcyCuO8fFZqW5Ym6WSdPW0a1XhdSqPjYb3
         KblLbCp3HWK8FpuLfAqfUL2gEcGosm47szsasnUsYLF1nEsIHysI3rwNz8qy6/C0vX
         c32ISDZZIpqug==
Date:   Wed, 8 Nov 2023 20:40:45 +0100
From:   Alejandro Colomar <alx@kernel.org>
To:     Matthew House <mattlloydhouse@gmail.com>
Cc:     Jonny Grant <jg@jguk.org>, linux-man <linux-man@vger.kernel.org>
Subject: Re: strncpy clarify result may not be null terminated
Message-ID: <ZUvkPQZiep7k5536@debian>
References: <cfbd8674-fe6a-4430-95f1-ec8bde7da32e@jguk.org>
 <ZUacobMq0l_O8gjg@debian>
 <aeb55af5-1017-4ffd-9824-30b43d5748e3@jguk.org>
 <ZUgl2HPJvUge7XYN@debian>
 <d40fffcb-524d-44b6-a252-b55a8ddc9fee@jguk.org>
 <ZUo6btEFD_z_3NcF@devuan>
 <20231108021240.176996-1-mattlloydhouse@gmail.com>
 <ZUvilH5kuQfTuZjy@debian>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="W2jrRIrEluHG0r3L"
Content-Disposition: inline
In-Reply-To: <ZUvilH5kuQfTuZjy@debian>
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--W2jrRIrEluHG0r3L
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Wed, 8 Nov 2023 20:40:45 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Matthew House <mattlloydhouse@gmail.com>
Cc: Jonny Grant <jg@jguk.org>, linux-man <linux-man@vger.kernel.org>
Subject: Re: strncpy clarify result may not be null terminated

On Wed, Nov 08, 2023 at 08:33:34PM +0100, Alejandro Colomar wrote:
> Hi Matthew,
>=20
> On Tue, Nov 07, 2023 at 09:12:37PM -0500, Matthew House wrote:
> > On Tue, Nov 7, 2023 at 8:21 AM Alejandro Colomar <alx@kernel.org> wrote:
> > > On Tue, Nov 07, 2023 at 11:52:44AM +0000, Jonny Grant wrote:
> > > > We see things differently, I'm on the C standard side on this one. =
Would any information change your mind?
> > >
> > > It's difficult to say, but I doubt it.  But let me ask you something:
> > > In what cases would you find strncpy(3) appropriate to use, and why?
> > > Maybe if I understand that it helps.
> > >
> > > Kind regards,
> > > Alex
> >=20
> > Man pages aren't read only by people writing new code, but also by peop=
le
> > reading and modifying existing code. And despite your preferences regar=
ding
> > which functions ought to be used to produce strings, it's a widespread =
(and
> > correct) practice to produce a string from the character sequence creat=
ed
> > by strncpy(3). There are two ways of doing this, either by setting the =
last
> > character of the destination buffer to null if you want to produce a
> > truncated string, or by testing the last character against zero if you =
want
> > to detect truncation and raise an error.
>=20
> It is not strncpy(3) who truncated, but the programmer by adding a NULL

Oops.  s/NULL/NUL/

> in buff[BUFSIZ - 1].  In the following snippet, strncpy(3) will not
> truncate:
>=20
> 	char cs[3];
>=20
> 	strncpy(cs, "foo", 3);
>=20
> And yet your code doing if (cs[2] !=3D '\0') { goto error; } would think
> it did.  That's because you deformed strncpy(3) to implement a poor
> man's strlcpy(3). =20
>=20
>=20
> 	char cs[3];
>=20
> 	strncpy(cs, "foo", 3);
> 	cs[2] =3D '\0';  // The truncation is here, not in strncpy(3).
>=20
> > I'm not aware of any alternative to a strncpy(3)-based snippet for
> > producing a possibly-truncated copy of a string, except for your prefer=
red
> > strlcpy(3) or stpecpy(3), which aren't available to anyone without a
>=20
> The Linux kernel has strscpy(3), which is also good, but is not
> available to user space.
>=20
> > brand-new glibc (nor, by extension, any applications or libraries that =
want
>=20
> libbsd has provided strlcpy(3) since basically forever.  It is a very
> portable library.  You don't need a brand-new glibc for having
> strlcpy(3).
>=20
> <https://libbsd.freedesktop.org/wiki/>
>=20
> > to support people without a brand-new glibc, nor any libraries that wan=
t to
> > support other platforms like Windows with only ISO C and POSIX-ish
>=20
> If you program for Windows, it depends.  If you have POSIX available,
> you may be able to port libbsd; I don't know.  In any case, I don't
> case about Windows enough.  You could always write your own string-
> copying function for Windows.
>=20
> > functions); snprintf(3), which has the insidious flaw of not supporting
> > more than INT_MAX characters on pain of UB, and also produces a warning=
 if
> > the compiler notices the possible truncation; or strlen(3) + min() +
> > memcpy(3) + manually adding a null terminator, which is certainly more
> > explicit in its intent, and avoids strncpy(3)'s zero-filling behavior if
> > that poses a performance problem, but similarly opens up room for
> > off-by-one errors.
>=20
> More than the performance problem, I'm more worried about the
> maintainability of strncpy(3).  When 20 years from now, a programmer
> reading a piece of code full of strncpy(3) wants to migrate to a sane
> function like strlcpy(3) or strcpy(3), the programmer needs to
> understand if the zeroing was purposeful or just accidental.  Because
> by using strlcpy(3), it may start leaking some trailing data if the
> trailing of the buffer is meaningful to some program.
>=20
> >=20
> > For the sake of reference, I looked into a few big C and C++ projects to
> > see how often a strncpy(3)-based snippet was used to produce a truncated
> > copy. I found 18 instances in glibc 2.38, 2 in util-linux 2.39.2 (in sp=
ite
> > of its custom xstrncpy() function), 61 in GNU binutils 2.41, 43 in
> > GDB 13.2, 1 in LLVM 17.0.4, 7 in CPython 3.12.0, 99 in OpenJDK 22+22,
> > 10 in .NET Runtime 7.0.13, 3 in V8 12.1.82, and 86 in Firefox 120.0. (N=
ote
> > that I haven't filtered out vendored dependencies, so there's a little =
bit
> > of double-counting.) It seems like most codebases that don't ban strncp=
y(3)
> > use a derived snippet somewhere or another. Also, I found 3 instances in
> > glibc 2.38 and 5 instances in Firefox 120.0 of detecting truncation by
> > checking the last character.
>=20
> I know.  I've been rewriting the code handling strings in shadow-utils
> for the last year, and ther was a lot of it.  I fixed several small bugs
> in the process, so I recommend avoiding it.
>=20
> >=20
> > So these two snippets really are widespread, especially among the long =
tail
> > of smaller C and C++ applications and libraries that don't perform enou=
gh
> > string manipulation that it warrants creating a custom set of more-
> > foolproof wrapper functions (at least, in the opinion of their authors).
>=20
>=20
>=20
> > Thus, since they're not going away, it would be useful for anyone readi=
ng
> > the code to understand the concept behind how these two snippets work, =
that
> > the only difference between the strncpy(3)'s special "character sequenc=
e"
> > and an ordinary C string is an additional null terminator at the end of=
 the
> > destination buffer.
>=20
> This is part of string_copying(7):
>=20
> DESCRIPTION
>    Terms (and abbreviations)
>      string (str)
>             is  a  sequence  of zero or more non=E2=80=90null characters =
followed by a
>             null byte.
>=20
>      character sequence
>             is a sequence of zero or  more  non=E2=80=90null  characters.=
   A  program
>             should  never use a character sequence where a string is requ=
ired.
>             However, with appropriate care, a string can be used in the  =
place
>             of a character sequence.
>=20
> I think that is very explicit in the difference.  strncpy(3) refers to
> that page for understanding the differences, so I think it is
> documented.
>=20
> strncpy(3):
> CAVEATS
>      The  name  of  these  functions  is confusing.  These functions prod=
uce a
>      null=E2=80=90padded character sequence, not a string (see string_cop=
ying(7)).
>=20
> >=20
> > In other words, strncpy(3) doesn't create a truncated string, but it
> > creates something which can be easily turned into to a truncated string,
> > and that's its most relevant quality for most of its uses in existing c=
ode.
> > Further, apart from snprintf(3), there's no other portable way to produ=
ce a
> > truncated string without manual arithmetic. Thus, I'd also find it
>=20
> Portable is relative.  With libbsd, you can port to most POSIX systems.
> Windows is another story.
>=20
> > reasonable to highlight precisely why strncpy(3)'s output isn't a string
>=20
> How about this?:
>=20
> diff --git a/man3/stpncpy.3 b/man3/stpncpy.3
> index d4c2ce83d..c80c8b640 100644
> --- a/man3/stpncpy.3
> +++ b/man3/stpncpy.3
> @@ -108,7 +108,10 @@ .SH HISTORY
>  .SH CAVEATS
>  The name of these functions is confusing.
>  These functions produce a null-padded character sequence,
> -not a string (see
> +not a string.
> +While strings have a terminating NUL byte,
> +character sequences do not have any terminating byte
> +(see
>  .BR string_copying (7)).
>  .P
>  It's impossible to distinguish truncation by the result of the call,
>=20
>=20
> > (viz., the lack of a null terminator), instead of trying to insist that=
 its
> > output is worlds apart from anything string-related, especially given t=
he
> > volume of existing correct code that belies that notion.
>=20
> It is not correct code.  That code is doing extra work which confuses
> maintainers.  It is a lot like writing dead code, since you're writing
> zeros that nobody is reading, which confuses maintainers.
>=20
> Also, I've seen a lot of off-by-one bugs in calls to strncpy(3), so no,
> it's not correct code.  It's rather dangerous code that just happens to
> not be vulnerable most of the time.
>=20
> >=20
> > Or, to answer your question, "It's appropriate to keep using strncpy(3)=
 in
> > existing code where it's currently used as part of creating a truncated
> > string, and it's not especially inappropriate to use strncpy(3) in new =
code
> > as part of creating a truncated string, if the code must support platfo=
rms
> > without strlcpy(3) or similar, and if the resulting snippets are few en=
ough
> > and well-commented enough that they create less mental load than creati=
ng
> > and maintaining a custom helper function."
>=20
> strncpy(3) calls are never well documented.  Do you add a comment in
> each such call saying "this zeroing is superfluous"?  Probably not.
>=20
> >=20
> > (As an aside, I find the remark in the man page that "It's impossible to
> > distinguish truncation by the result of the call" extremely misleading =
at
> > best, since truncation can easily be distinguished by inspecting the la=
st
> > output character.)
>=20
> Again, strncpy(3)'s truncation is impossible to detect.  What you can
> detect is that your construct that resembles strlcpy(3) truncates, which
> is a different thing.
>=20
> Thanks,
> Alex
>=20
> >=20
> > Thank you,
> > Matthew House
>=20
> --=20
> <https://www.alejandro-colomar.es/>



--=20
<https://www.alejandro-colomar.es/>

--W2jrRIrEluHG0r3L
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVL5D0ACgkQnowa+77/
2zJAgBAApNukZ6PRiwux4wp60Us96w65lB0+pKT4Nb2oAY+pKOF6tDPGAj0ABxHu
quA+1JysYJSUZPAmaa3dCwHgim/WveUoXZ5/1IeRp5XJ2fj1jL2YJVbYw1on6d0K
sPMQG37bQEDcwhP3ZzjsV6/2eXqUfxkKEDk/QNdu+ugpvSJTVHbrHjuXPAQsuZDL
OtyMj2aVJ5klpY059B/tkIsHQ9bM+PQfx6Xpk7N3t84e7JW0zdw1mGswytYK7grM
Llj5b1NIepkAfT9iCIBFel2ieYzizhf523mlmnCIRUHRmyz9sUoRRjwUtVsbxeVT
vAO3qLPFtVrKqzjfgBg7PLbhlwhHCpPzh8L2RTxfvmnfUvJhSBFDdhpRDCkDvcpt
/UqcM3i1nmxlVxt6Mn/qDe+3lgmilFVOjVxIjIrg5I/YoCB4b7csdgmwhQJvspJi
6KkD4TIET4kEghHL4pJoN6+CiLxvIEmpA2N9jpiT2LaH9zet75k901ymY9qrnOIy
JKDeTcg1QivvX2YMPbg144qE9OmxyZWc+dXMvIbZwLbX61bAHrhkQJWCUieehM2R
rgLgZBQZNbNvP0AF+plGqGcyLRMJSj/Qb0QGGw9l4nyeBM8WMaWIZXpKnLw097YF
sdPye18THtoLm4dFf3IJZ6jfgPTku02jXltOD3mxCRqOcAIwYRk=
=qskM
-----END PGP SIGNATURE-----

--W2jrRIrEluHG0r3L--
