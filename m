Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E145F7E6A75
	for <lists+linux-man@lfdr.de>; Thu,  9 Nov 2023 13:23:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229605AbjKIMX0 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 9 Nov 2023 07:23:26 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33478 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229574AbjKIMXZ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 9 Nov 2023 07:23:25 -0500
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 72D132D55
        for <linux-man@vger.kernel.org>; Thu,  9 Nov 2023 04:23:23 -0800 (PST)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 31046C433C9;
        Thu,  9 Nov 2023 12:23:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1699532603;
        bh=udZUF6ORfv0UN9LgPJXBB51H720OLlnPCD4VD30G6hM=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=nrycLTv/KhQPqnBoG1tAtKldusn7V/96yrvLjowHbQ+TBrmOvCh/KTdsRHvW6+/Ff
         6HylZIxRKN/FO1Q9R9t7UOok1yIoyXs82yRolJsKrchbQgHERPOljKXazNqpIgV5Oq
         s0sFHXYHbT5JuA5NeIZ/wNyQzxbT2Mcxenuz8v/3m34chdSuOA6pGSez6gawcYJ2Xu
         1C6fR7Me8vVNVYZGoVE/zUIO+w7gYoUvYs8yQBFgVOi008LWkjCqziW8DdQTLWz1ZD
         c5rCGri2vy1Ov6LFV9BFMrUqxBIE3mKKeWIjdw/jKaWMkUW09y173a99n2EwjlVuR6
         RGAyEXQ8A01wQ==
Date:   Thu, 9 Nov 2023 13:23:14 +0100
From:   Alejandro Colomar <alx@kernel.org>
To:     Matthew House <mattlloydhouse@gmail.com>
Cc:     Jonny Grant <jg@jguk.org>, linux-man <linux-man@vger.kernel.org>
Subject: Re: strncpy clarify result may not be null terminated
Message-ID: <ZUzPNydLkFPEvvsa@debian>
References: <cfbd8674-fe6a-4430-95f1-ec8bde7da32e@jguk.org>
 <ZUacobMq0l_O8gjg@debian>
 <aeb55af5-1017-4ffd-9824-30b43d5748e3@jguk.org>
 <ZUgl2HPJvUge7XYN@debian>
 <d40fffcb-524d-44b6-a252-b55a8ddc9fee@jguk.org>
 <ZUo6btEFD_z_3NcF@devuan>
 <20231108021240.176996-1-mattlloydhouse@gmail.com>
 <ZUvilH5kuQfTuZjy@debian>
 <20231109031345.245703-1-mattlloydhouse@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="cnfifoe/U5f1cMaL"
Content-Disposition: inline
In-Reply-To: <20231109031345.245703-1-mattlloydhouse@gmail.com>
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--cnfifoe/U5f1cMaL
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Thu, 9 Nov 2023 13:23:14 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Matthew House <mattlloydhouse@gmail.com>
Cc: Jonny Grant <jg@jguk.org>, linux-man <linux-man@vger.kernel.org>
Subject: Re: strncpy clarify result may not be null terminated

Hi Matthew,

On Wed, Nov 08, 2023 at 10:13:39PM -0500, Matthew House wrote:
> On Wed, Nov 8, 2023 at 2:33 PM Alejandro Colomar <alx@kernel.org> wrote:
> > On Tue, Nov 07, 2023 at 09:12:37PM -0500, Matthew House wrote:
> > > Man pages aren't read only by people writing new code, but also by pe=
ople
> > > reading and modifying existing code. And despite your preferences reg=
arding
> > > which functions ought to be used to produce strings, it's a widesprea=
d (and
> > > correct) practice to produce a string from the character sequence cre=
ated
> > > by strncpy(3). There are two ways of doing this, either by setting th=
e last
> > > character of the destination buffer to null if you want to produce a
> > > truncated string, or by testing the last character against zero if yo=
u want
> > > to detect truncation and raise an error.
> >
> > It is not strncpy(3) who truncated, but the programmer by adding a NULL
> > in buff[BUFSIZ - 1].  In the following snippet, strncpy(3) will not
> > truncate:
> >
> >         char cs[3];
> >
> >         strncpy(cs, "foo", 3);
> >
> > And yet your code doing if (cs[2] !=3D '\0') { goto error; } would think
> > it did.  That's because you deformed strncpy(3) to implement a poor
> > man's strlcpy(3).
> >
> >         char cs[3];
> >
> >         strncpy(cs, "foo", 3);
> >         cs[2] =3D '\0';  // The truncation is here, not in strncpy(3).
>=20
> That's indeed a self-consistent interpretation of strncpy(3)'s function,
> but I don't think it's borne out by its formal definition, which I was
> basing my reasoning on. The current Linux man page for strncpy(3) says,
>=20
>   These functions copy the string pointed to by src into a null-padded
>   character sequence at the fixed-width buffer pointed to by dst. If the
>   destination buffer, limited by its size, isn't large enough to hold the
>   copy, the resulting character sequence is truncated.
>=20
> Notice how it "copies the string": as your string_copying(7) says, a stri=
ng
> includes both a character sequence and a final null byte. So I'd ordinari=
ly
> read this definition as saying that strncpy(3) tries to copy src up to and
> including the null byte, but produces a truncated copy of the whole string
> if the destination buffer is too small. Thus, even if the destination
> buffer contains all non-null characters in the original string, then the
> copy has still been "truncated" in this sense.

Yes, that was an inconsistency in my definition.  Thanks to DJ's
suggestion ("copies bytes from the string", that has been fixed.  Maybe
it would be even better to say "copies characters from the string".

>=20
> The ISO C definition, and by extension, the POSIX definition, make this
> interpretation even more explicit:
>=20
>   The strncpy function copies not more than n characters (characters that
>   follow a null character are not copied) from the array pointed to by s2
>   to the array pointed to by s1.
>=20
> That is, the terminating null byte is part of the copy, but not anything
> after the terminating null byte.
>=20
> So one can interpret strncpy(3) as copying a prefix of a character sequen=
ce
> into a buffer (and zero-filling the remainder), in which case you're
> correct that truncation cannot be detected. But the function is fomally
> defined as copying a prefix of a string into a buffer (and zero-filling t=
he
> remainder), in which case the string has been truncated if the buffer
> doesn't end in a null byte afterward. It's just that one may not care abo=
ut
> the terminating null byte being truncated if the user of the result just
> wants the initial character sequence.

Yes, with the ISO C definition of strncpy(3), you can detect truncation.
The problem is that while my definition of it is complete, the
definition by ISO C makes it an incomplete function (to complete its
functionallity in copying strings, you need to add an explicit '\0'
after the call).  So I prefer mine, and for self-consistency, it can't
report truncation.

>=20
> > > I'm not aware of any alternative to a strncpy(3)-based snippet for
> > > producing a possibly-truncated copy of a string, except for your pref=
erred
> > > strlcpy(3) or stpecpy(3), which aren't available to anyone without a
> >
> > The Linux kernel has strscpy(3), which is also good, but is not
> > available to user space.
> >
> > > brand-new glibc (nor, by extension, any applications or libraries tha=
t want
> >
> > libbsd has provided strlcpy(3) since basically forever.  It is a very
> > portable library.  You don't need a brand-new glibc for having
> > strlcpy(3).
> >
> > <https://libbsd.freedesktop.org/wiki/>
>=20
> That's a nice library that I didn't know about! Unfortunately, I don't
> think it's a very viable option for the long tail of small libraries I've
> referred to, which generally don't have any sub-dependencies of their own,
> apart from those provided by the platform.
>=20
> Going from 0 to 2 dependencies (libbsd and libmd) requires invoking their
> configure scripts from whatever build system you're using (in such a way
> that libbsd can locate libmd), ensuring they're safe for cross-compilation
> if that's a goal, ensuring you bundle them in a way that respects their
> license terms, and ensuring that any user of your library links to the two
> dependencies and doesn't duplicate them. At that point, rolling your own
> strlcpy(3) equivalent definitely sounds like less mental load, at least to
> me.

Yes, if you had 0 deps, it might be simpler to add your implementation.
Although it's a tricky function to implement, so I'd be careful.  If you
need to roll your own, I would go for a simpler function; maybe a
wrapper over strlen(3)+strcpy(3).

>=20
> > > functions); snprintf(3), which has the insidious flaw of not supporti=
ng
> > > more than INT_MAX characters on pain of UB, and also produces a warni=
ng if
> > > the compiler notices the possible truncation; or strlen(3) + min() +
> > > memcpy(3) + manually adding a null terminator, which is certainly more
> > > explicit in its intent, and avoids strncpy(3)'s zero-filling behavior=
 if
> > > that poses a performance problem, but similarly opens up room for
> > > off-by-one errors.
> >
> > More than the performance problem, I'm more worried about the
> > maintainability of strncpy(3).  When 20 years from now, a programmer
> > reading a piece of code full of strncpy(3) wants to migrate to a sane
> > function like strlcpy(3) or strcpy(3), the programmer needs to
> > understand if the zeroing was purposeful or just accidental.  Because
> > by using strlcpy(3), it may start leaking some trailing data if the
> > trailing of the buffer is meaningful to some program.
>=20
> I didn't see this as an issue in practice when I was reviewing all those
> existing usages of strncpy(3). The vast majority were used in the midst of
> simple string manipulation, where the destination buffer starts as
> uninitialized or zeroed out, and ultimately gets passed into a user
> expecting an ordinary null-terminated string.
>=20
> (One exception was a few functions that used strncpy(dst, "", len) to zero

Holy crap!  Didn't these programmers know bzero(3) or memset(3)?  :D

> out the buffer, which is thankfully pretty obvious. Another exception was
> the functions that actually used strncpy(3) to produce a null-padded
> character sequence, e.g., when writing a value into a section of a binary.
> But in general, I found that it's usually not difficult to tell when a
> usage is being clever enough that the null padding might be significant.)
>=20
> In fact, the greater confusion came from the surprisingly common practice
> of using strncpy(3) like it's memcpy(3), by giving it the known length of

It gets better!  :D

> the source string, or of some prefix computed through strchr(3) or simila=
r.
> This is often then followed up by strncat(3) or similar, indicating that
> the writer clearly expects the full length to have non-null characters. B=
ut
> if the length computation is separated far enough from the actual call to
> strncpy(3), then it can become unclear whether the source is actually
> expected to have any interior null bytes before the computed length. (So =
if
> a list of alternatives to strncpy(3) is ever drawn up, then I'd suggest
> that ordinary memcpy(3) be one of them.)

string_copying(7) was initially devised as a page indicating
alternatives to strncpy(3), depending on the purpose of the code.
memcpy(3) is not mentioned (except in SEE ALSO), but mempcpy(3) is,
which is essentially the same (but with a more useful return value).

> > > For the sake of reference, I looked into a few big C and C++ projects=
 to
> > > see how often a strncpy(3)-based snippet was used to produce a trunca=
ted
> > > copy. I found 18 instances in glibc 2.38, 2 in util-linux 2.39.2 (in =
spite
> > > of its custom xstrncpy() function), 61 in GNU binutils 2.41, 43 in
> > > GDB 13.2, 1 in LLVM 17.0.4, 7 in CPython 3.12.0, 99 in OpenJDK 22+22,
> > > 10 in .NET Runtime 7.0.13, 3 in V8 12.1.82, and 86 in Firefox 120.0. =
(Note
> > > that I haven't filtered out vendored dependencies, so there's a littl=
e bit
> > > of double-counting.) It seems like most codebases that don't ban strn=
cpy(3)
> > > use a derived snippet somewhere or another. Also, I found 3 instances=
 in
> > > glibc 2.38 and 5 instances in Firefox 120.0 of detecting truncation by
> > > checking the last character.
> >
> > I know.  I've been rewriting the code handling strings in shadow-utils
> > for the last year, and ther was a lot of it.  I fixed several small bugs
> > in the process, so I recommend avoiding it.
>=20
> I can't tell you about your own experience, but in mine, the root cause of
> most string-handling bugs has been excessive cleverness in using the
> standard string functions, rather than the behavior of the functions
> themselves. So one worry of mine is that if strncpy(3) ends up being
> deprecated or whatever, then authors of portable libraries will start
> writing lots of custom memcpy(3)-based replacements to their strncpy(3)-
> based snippets, and more lines of code will introduce more opportunities
> for cleverness.

Don't worry.  strncpy(3) won't be deprecated, thanks to tar(1).  ;)

>=20
> (This is also why I was confused by your support for strcpy(3) on the
> grounds that _FORTIFY_SOURCE exists. Sure, it's better than strncpy(3) in
> that its behavior isn't nearly so subtle, but _FORTIFY_SOURCE can only
> protect us from overruns, not from all the "small bugs" that might ensue
> from people becoming more clever with sizing the destination buffer with
> strcpy(3).

I don't think strcpy(3) is as propense as strncpy(3) to ask programmers
to be clever about it.  In the case of strncpy(3) it's due to it being
an incomplete string-copying function.  strcpy(3) is complete.

> Also, if it were truly a panacea, then we'd hardly have to worry
> about the problems of strncpy(3) at all, since it would detect any misuse
> of the function.)

Fortification detects overruns in writes, which is how it protects
strcpy(3).  However, fortification can't protect against overruns in
reads, which is what strncpy(3) causes due to missing null terminators.
strncpy(3) also causes off-by-one bugs (I'll detail below), which
strcpy(3) doesn't (and strlcpy(3) doesn't either).

>=20
> Probably the only way to solve the cleverness issue for good is to have an
> immediately-available, foolproof, performant set of string functions that
> are extremely straightforward to understand and use, flexible enough for
> any use case, and generally agreed to be the first choice for string
> manipulation.
>=20
> Unfortunately, probably the closest match to those criteria, especially t=
he
> availability criterion, is snprintf(3), which has the flaws of using int
> instead of size_t for most sizes, not being very performant, and not being
> async-signal-safe. Alas, it will likely remain a dream, given all the wars
> over which safer string functions have the best API. But at least
> strlcpy(3) has a pretty sound interface, if other platforms ever get arou=
nd
> to including it by default.

strlcpy(3) will be in POSIX.1-202x (Issue 8), so it's a matter of time
that it'll be widespread.

>=20
> > > the code to understand the concept behind how these two snippets work=
, that
> > > the only difference between the strncpy(3)'s special "character seque=
nce"
> > > and an ordinary C string is an additional null terminator at the end =
of the
> > > destination buffer.
> >
> > This is part of string_copying(7):
> >
> > DESCRIPTION
> >    Terms (and abbreviations)
> >      string (str)
> >             is  a  sequence  of zero or more non=E2=80=90null character=
s followed by a
> >             null byte.
> >
> >      character sequence
> >             is a sequence of zero or  more  non=E2=80=90null  character=
s.   A  program
> >             should  never use a character sequence where a string is re=
quired.
> >             However, with appropriate care, a string can be used in the=
  place
> >             of a character sequence.
> >
> > I think that is very explicit in the difference.  strncpy(3) refers to
> > that page for understanding the differences, so I think it is
> > documented.
> >
> > strncpy(3):
> > CAVEATS
> >      The  name  of  these  functions  is confusing.  These functions pr=
oduce a
> >      null=E2=80=90padded character sequence, not a string (see string_c=
opying(7)).
>=20
> My point is isn't that the difference is undocumented, but that the typic=
al
> man page reader isn't reading the man pages for their own sake, but becau=
se
> they're looking at some code, and they want to Know What It's Doing as so=
on
> as possible.

We could maybe add a list of ways people have tried to be clever with
strncpy(3) in the past and failed, and then explain why those uses are
broken.  This could be in a BUGS section.

> If they're getting directed around elsewhere with weird
> warnings about "not a string" ("what's it going on about, I thought it was
> null-padded?"), then I worry there's a good chance that they'll instead
> bounce off the man page and try figuring it out some other way. And even =
if
> they do follow the reference, then they might have difficulty understandi=
ng
> the implications, since many people don't think of things in terms of
> formal definitions.
>=20
> > > reasonable to highlight precisely why strncpy(3)'s output isn't a str=
ing
> >
> > How about this?:
> >
> > diff --git a/man3/stpncpy.3 b/man3/stpncpy.3
> > index d4c2ce83d..c80c8b640 100644
> > --- a/man3/stpncpy.3
> > +++ b/man3/stpncpy.3
> > @@ -108,7 +108,10 @@ .SH HISTORY
> >  .SH CAVEATS
> >  The name of these functions is confusing.
> >  These functions produce a null-padded character sequence,
> > -not a string (see
> > +not a string.
> > +While strings have a terminating NUL byte,
> > +character sequences do not have any terminating byte
> > +(see
> >  .BR string_copying (7)).
> >  .P
> >  It's impossible to distinguish truncation by the result of the call,
>=20
> Yes, I'd be perfectly happy with something like that. That way, the
> scariness is far more immediate ("the output might not be terminated!?"),
> and thus more accessible to the typical reader.

Ok; I'll add that.

>=20
> > > (viz., the lack of a null terminator), instead of trying to insist th=
at its
> > > output is worlds apart from anything string-related, especially given=
 the
> > > volume of existing correct code that belies that notion.
> >
> > It is not correct code.  That code is doing extra work which confuses
> > maintainers.  It is a lot like writing dead code, since you're writing
> > zeros that nobody is reading, which confuses maintainers.
>=20
> I am really not a fan of conflating the notions of "code that is difficult
> to maintain" with "code that doesn't perform the task it is intended to
> perform". When I think about incorrect code, I think about things like
> setenv(3) that are just waiting to cause trouble in popular libraries bui=
lt
> and deployed today.
>=20
> Meanwhile, "confusing maintainers" is a very subjective notion specific to
> the both the code and the maintainers: if someone sees some code allocati=
ng
> a fresh buffer, strncpy(3)ing a string into it, slapping a terminator on
> the end, and finally passing the result into something clearly expecting a
> string, then why would they be guaranteed to be sweating bullets over
> whatever happened to rest of the fresh buffer? Especially given how
> widespread the strncpy(3) + extra null terminator pattern already is.
>=20
> Instead, it's code making use of strncpy(3) in a particularly clever way
> that I'd find confusing, and in those cases, I lie the blame squarely on
> the cleverness rather than the function itself.

I blame the definition of the function of ISO C.  Why?  Because by being
an incomplete string-copying function, it forces the programmer to be
clever about it.  You can't just use strncpy(3) and that's all; you need
to do something else, and then you do clever stuff, which ends up badly.

>=20
> > Also, I've seen a lot of off-by-one bugs in calls to strncpy(3), so no,
> > it's not correct code.  It's rather dangerous code that just happens to
> > not be vulnerable most of the time.
>=20
> So will all the custom strlen(3)+memcpy(3)-based replacements suddenly be
> immune to off-by-one bugs?

Slightly.  Here's the typical use of strlen(3)+strcpy(3):

if (strlen(src) >=3D dsize)
	goto error;
strcpy(dst, src);

There's no +1 or -1 in that code, so it's hard to make an off-by-one
mistake.  Okay, you may have seen that it has a '>=3D', which one could
accidentally replace by a '>', causing an off-by-one.  I'd wrap that
thing in a strxcpy() wrapper so you avoid repetition.=20

> Or will the vast majority of current strncpy(3)
> users be willing to either restrict their platform support or add two ext=
ra
> dependencies to their build process just to have strlcpy(3)? I'd hardly be
> inclined to think that off-by-one bugs are a particular specialty of
> strncpy(3).

They are.  Here's the typical use of strncpy(3) as a replacement:

strncpy(dst, src, dsize);
if (dst[dsize - 1] !=3D '\0')
	goto error;
dst[dsize - 1] =3D '\0';

There are many more moving parts, so more chances to make mistakes.
And you see it forces the programmer to write explicitly -1 twice.  I've
seen code that forgets to do the -1, and also code that uses -1 in the
strncpy(3) call (which makes it impossible to detect truncation).

>=20
> > > Or, to answer your question, "It's appropriate to keep using strncpy(=
3) in
> > > existing code where it's currently used as part of creating a truncat=
ed
> > > string, and it's not especially inappropriate to use strncpy(3) in ne=
w code
> > > as part of creating a truncated string, if the code must support plat=
forms
> > > without strlcpy(3) or similar, and if the resulting snippets are few =
enough
> > > and well-commented enough that they create less mental load than crea=
ting
> > > and maintaining a custom helper function."
> >
> > strncpy(3) calls are never well documented.  Do you add a comment in
> > each such call saying "this zeroing is superfluous"?  Probably not.
>=20
> By that standard, every call to a function that takes an output pointer a=
nd
> returns the number of elements written (say, readlink(2)) would need a
> comment saying "the remaining elements in this array now have undefined
> values".

No, because it does precisely what is intended.  It is when you add dead
code when you need to justify it.

> I don't think it's controversial that in many situations, we
> tacitly understand that we simply don't care about the remainder of a

While the analysis isn't very hard, it takes some time, examining all
surrounding code to make sure nothing cares about the trailing bytes.
When you have a hundred such calls, you need to make sure nobody was too
clever around any of them.

> buffer after a certain point. In the case of producing a string, that poi=
nt
> is going to be the null terminator, in the absence of on-site documentati=
on
> to the contrary; I'd label anything else as overly clever.

But again, strncpy(3) forces you to be clever.

>=20
> Meanwhile, "never" would be a strong word to describe the rate that
> strncpy(3)'s lack of null termination is documented at the call site; 30 =
of
> the 339 call sites I mentioned have an associated comment regarding null

Hmm, I should have said rarely.

Cheers,
Alex

> termination. (ICU seems to be the best library comment-wise, but even it
> doesn't place them consistently.) It's obviously far from routine in
> existing code, but it's not something that never happens.
>=20
> Thank you,
> Matthew House

--=20
<https://www.alejandro-colomar.es/>

--cnfifoe/U5f1cMaL
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVMzzIACgkQnowa+77/
2zKWsA/+MjjBkl9+tf1KsEwZZGhNOyDGZdJGe493Bm4mmo7my3wkLxxoJeJRTmj3
/nIXF3rDf8QmJ8oJd9+KrxIQvDA00Uf8G+qQpp4jzZ3c/rbezdbqvcAsguylSSiN
1F61hkG9mRzvjBaozQXXeED+L7xRP58th0y3gucoV//oYJiSsM+auWGMF1fYOpUK
BVjiHezlyGg6yNwxBrNlrIiTIRo90UuL2zdkWNdTByoeyYTRBQj8aIwnQNXLTX+Z
GaNLhLd2mY+h2goal33G97UUxAHy/9VRYKhyXUpx0MzjVC8yLk0urue2bKs1iRCy
bg4RFTtNgpzR+XM28UZ6O9dEjhEP8dXGa7E1zq0b+U/EOgYjt2EmyGFPoNdzfYJK
WKbY7/gw/ht4MXZJWvMBqcFXA/21rveKgMfCJ2wwfSVYN07aU+7G/N0ihYT5L6i5
c6600yx8bm1rNHlPvsdTRspSwSlkMpQ5Fo9RmqPSwT4PPTBuLcBboIVDkWF5nFip
yh1CEhGXcL+EzyFsK6mN+TE/BmZmucYOwlOdXBP0dh9uYjQCVR/042W0p8wkmUJy
KYXqVy8sQvl7CGi/TsmjDXLTjeymOyh8pMpOE0pdisPTNOe4R8HtxU3fl/G9jObq
8y61hs7ZhKw+de8TScM0BHr1hgQvmaakn12HjLT3C+m5KdU85ao=
=QD+5
-----END PGP SIGNATURE-----

--cnfifoe/U5f1cMaL--
