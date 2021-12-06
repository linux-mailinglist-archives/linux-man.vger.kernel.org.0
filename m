Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DEE9846AE7C
	for <lists+linux-man@lfdr.de>; Tue,  7 Dec 2021 00:31:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1350156AbhLFXfM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 6 Dec 2021 18:35:12 -0500
Received: from 139-28-40-42.artus.net.pl ([139.28.40.42]:46188 "EHLO
        tarta.nabijaczleweli.xyz" rhost-flags-OK-FAIL-OK-OK)
        by vger.kernel.org with ESMTP id S243940AbhLFXfM (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 6 Dec 2021 18:35:12 -0500
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 6B13E1A4A;
        Tue,  7 Dec 2021 00:31:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202006; t=1638833499;
        bh=/iRcRr9C7NHQ1htANOHvuNkP5uuElxKhQP5L8HFQq4Q=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=v5sTJ+IzpUlFt2sCOQxCpu8xeoEUETfiFgH8KVy3X/wGaVB7fh3tiPmbWI1nL/Y9g
         btPhnjcDcXaSnk3hB0chJ8vHLsPybpi7H4Gjr/QspEDHv9Rt5Bw/qU6RaQU52B+6dW
         lazAOO+2ktXp+zDQwgZSeqpufksW04n3d2lNuxmgkpD/Tjm6uSMa/O6dNN+8uUWO+b
         QmMHyfNzj5C3IddMETGDQMjCMNgj9NLuNHa6qLpvncmTJqTSYYFRi9720kw3XoN/iw
         riMq0uEXvi+rz1G3vM4baINgbXccKEPiOYtUUS9NoSwLg2vjPhR6XuIeUaXC0le9hN
         7H0cUNhiQlrAA==
Date:   Tue, 7 Dec 2021 00:31:38 +0100
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     Jakub Wilk <jwilk@jwilk.net>,
        Libc-alpha <libc-alpha@sourceware.org>,
        linux-man@vger.kernel.org,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Subject: Re: [PATCH v3 3/3] system_data_types.7: note struct
 timespec::tv_nsec type for x32 and portability
Message-ID: <20211206233138.ahvjamiftceufvmj@tarta.nabijaczleweli.xyz>
References: <a6f79435-1d9c-2c12-168b-035164a3b938@gmail.com>
 <8ce5f7ace7a64a499d08228c3aeef870310a78ca.1638827989.git.nabijaczleweli@nabijaczleweli.xyz>
 <539b8054-a29e-32c0-14f0-c772543b2bb3@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="gwf5wivxvefx7evu"
Content-Disposition: inline
In-Reply-To: <539b8054-a29e-32c0-14f0-c772543b2bb3@gmail.com>
User-Agent: NeoMutt/20211029
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--gwf5wivxvefx7evu
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Dec 06, 2021 at 11:56:19PM +0100, Alejandro Colomar (man-pages) wro=
te:
> I (more or less) understand the deduction of why that happens on certain
> systems,  what I was wondering is if there's an intention behind that, or=
 if
> it's just an accident.  Why not just use plain 'long' always as POSIX says
> it should be.  I don't see the feature part of this bug.
>
> 'long' is at least 32 bits, which
> is enough for 1G.  Was there ever a good reason for glibc to use 64 bits?=
  It
> seems like a wrong decision that is maintained for consistency.   If that=
's it
> I'm in favor of mentioning it in a Bugs section (as Jakub proposed), inst=
ead
> of a Notes section.  Maybe someone from glibc may give a rationale for th=
is
> deviation from POSIX.
AFAICT, as you say, this isn't much more than a side-effect
of using the amd64 ABI and not being too careful with how it interacts
with the POSIX requirement (it's entirely feasible to re-wrap
a user-space timespec, or even use the bitfield trick glibc
already does to not have to do it), but then I'm far from an expert;
indeed, maybe someone with more glibc involvement will know.

Updating to Bugs for now, maybe we can downgrade later.

> I'd add an explicit mention that this is for glibc, since it deviates from
> the "Conforming to".
Fair enough, though I don't actually know if this is glibc-exclusive.
I assume it is, since I didn't find a timespec in the musl git
repository and the linux uapi header has the straight-forward
definition, but I can't be sure because I don't actually run
(well, even know of) any x32 musl systems I could verify this on.

> Maybe preceding the paragraph with "In/On (I never
> knew if there goes in or on) glibc," would do.
Out of those two: on (in would point to glibc internals),
but I'd actually go for "Under", here, since glibc is an over-arching
(literally) universe-defining context, rather than an add-on,
or something build your program on top of.

For my own curiosity: which preposition would you use in Spanish here?

> On 12/6/21 23:03, =D0=BD=D0=B0=D0=B1 wrote:
> > +.br
> We don't use '.br'.  In this case I think just continuing in the same
> paragraph would be fine (i.e., no break at all).
> > +In reality, the field ends up being defined as:
> Here I'd add a blank line with '.PP'.
> > +.EX
> > +.in +4
> Please, revert the order of .in and .EX.
> It's meaningless, but I prefer consistency.  See man-pages(7), which shows
> this order, and also the following:
>=20
> $ grep -rn '^\.EX$' -A1 man? | grep '\.in' | wc -l
> 2
> $ grep -rn '^\.EX$' -B1 man? | grep '\.in' | wc -l
> 1048
>=20
>=20
> One of those 2 cases was this patch.
Sure, sure, and sure

> > +#if !(__x86_64__ && __ILP32__ /* =3D=3D x32 */)
>=20
> Now I notice:
>=20
> Shouldn't this use defined()?
>=20
> #if !(defined(__x86_64__) && defined(__ILP32__) /* =3D=3D x32 */)
Eeeeh, not really? That's functionally identical but, like,
very verbose for no good reason.

> Also, I prefer to avoid complexity in mentally parsing the ifs, so I'd
> reorder it to remove the negation:
>=20
> #if defined(__x86_64__) && defined(__ILP32__)  /* =3D=3D x32 */
> 	long long tv_nsec;
> #else
> 	long      tv_nsec;
> #endif
long first made more sense when this was in-line,
but I agree, non-negated is better.

> And also note a cosmetic minor thing: at least two spaces before a commen=
t.
Sure


Updated scissor-patch below. I've also fixed some grammar errors toward
the tail-end of the (now) Bugs section.

Best,
=D0=BD=D0=B0=D0=B1

-- >8 --
There are three files that govern userspace struct timespec on glibc:
1. bits/wordsize.h, defining:
   (a) __WORDSIZE to 32 on ILP32 and 64 on LP64
   (b) on x32: __SYSCALL_WORDSIZE to 64
2. bits/timesize.h, defining
   (a) __TIMESIZE to __WORDSIZE, except on x32 where it's 64
3. bits/types/struct_timespec.h, declaring struct timespec as:
     struct timespec
     {
      __time_t tv_sec;      /* Seconds.  */
     #if __WORDSIZE =3D=3D 64 \
      || (defined __SYSCALL_WORDSIZE && __SYSCALL_WORDSIZE =3D=3D 64) \
      || __TIMESIZE =3D=3D 32
      __syscall_slong_t tv_nsec;    /* Nanoseconds.  */
     #else
     # if __BYTE_ORDER =3D=3D __BIG_ENDIAN
      int: 32;           /* Padding.  */
      long int tv_nsec;  /* Nanoseconds.  */
     # else
      long int tv_nsec;  /* Nanoseconds.  */
      int: 32;           /* Padding.  */
     # endif
     #endif
     };
   this has two side-effects: struct timespec
   (a) is always sizeof=3D=3Dtime_t+8, and
   (b) has tv_nsec as __syscall_slong_t
       *and* !is_same<__syscall_slong_t, long>
       if using LP64 syscalls on an ILP32 system, i.e. on x32.

This means, that the simplified
  struct timespec {
      time_t  tv_sec;  /* Seconds */
      long    tv_nsec; /* Nanoseconds [0 .. 999999999] */
  };
declaration is *invalid* for x32,
where struct timespec::tv_nsec is an int64_t (long long).

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man7/system_data_types.7 | 31 +++++++++++++++++++++++++++++++
 1 file changed, 31 insertions(+)

diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
index 1e6a3f74c..66c9a5d3d 100644
--- a/man7/system_data_types.7
+++ b/man7/system_data_types.7
@@ -1553,6 +1553,37 @@ Describes times in seconds and nanoseconds.
 .IR "Conforming to" :
 C11 and later; POSIX.1-2001 and later.
 .PP
+.IR Bugs :
+Under glibc,
+.I tv_nsec
+is the
+.I syscall
+long, though this affects only fringe architectures like X32,
+which is ILP32, but uses the LP64 AMD64 syscall ABI.
+In reality, the field ends up being defined as:
+.PP
+.in +4
+.EX
+#if __x86_64__ && __ILP32__  /* =3D=3D x32 */
+    long long tv_nsec;
+#else
+    long      tv_nsec;
+#endif
+.EE
+.in
+.PP
+This is a long-standing and long-enshrined
+.UR https://sourceware.org/bugzilla/show_bug.cgi?id=3D16437
+glibc bug
+.I #16437
+.UE ,
+and an incompatible extension to the standards;
+however, as even a 32-bit
+.I long
+can hold the entire
+.I tv_nsec
+range, it's always safe to forcibly down-cast it to the standard type.
+.PP
 .IR "See also" :
 .BR clock_gettime (2),
 .BR clock_nanosleep (2),
--=20
2.30.2

--gwf5wivxvefx7evu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmGunVkACgkQvP0LAY0m
WPHveQ/8CJMA3qmMdQy+xJLHfqDuE6bUkkOWWAz+qQbhqHSD45GHpxvR025/l5pa
wswGHPw55EDPresb/F9F6eQlvBxkTA5fXB91asEiID5yjSjrZImDGWvykvtaxhHv
HCpoe5oUcqkfIvSZCQBue4iGYM3oL+EGa/Oeb6FurcSk7A07X2jM+E1l7R6mfjXF
7QTRf2w/1fufVo5TgJf9iKTJVw+56gOnjlMHUiy/TnjDcaJEPew/H861ximzE+yY
TwLXO3zuqIkyEpcRc6caLo6Qtlj7DM2D3bJ9fBXbjvPhCxgDItOcDAjj+GIskPu2
QEGnF5RlWUKdMtTPYRUI/ntc+sZl0lZ1zi6pN+Wj+peELpOkX8b+CuMPK+MvwM4e
z7NtXGKxqUKn1tkxEhvU2LZ+cs8RMFrEd0fSHt3D+1iSntFwNyyAKjoJoAASiqf8
jlupq6fG0bqY/LwQdN/hs6Ttn/8OEq+0SwMCmzVcle3QvVTyX8IpkkC0qn4cdRAq
yFLcUdz5W7DIK5fuU8Z3oBEh/t8zdEndPgIGKegyCExhGuay/r0cWgsl8jEmjSZe
ebOzIT9ngawHnhlG29m3+jgruI3gkwubnIBhzAfXmuBWXDWccY06VQjUBs/T8y7t
BN5ooQ5XdRLE4XGl1XuZj6NiH2aDajflqQLjEhXfCCc3MPaOmCA=
=GIl/
-----END PGP SIGNATURE-----

--gwf5wivxvefx7evu--
