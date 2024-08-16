Return-Path: <linux-man+bounces-1625-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A830D955362
	for <lists+linux-man@lfdr.de>; Sat, 17 Aug 2024 00:35:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 289AB1F21FFE
	for <lists+linux-man@lfdr.de>; Fri, 16 Aug 2024 22:35:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6C18D1459F7;
	Fri, 16 Aug 2024 22:35:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nabijaczleweli.xyz header.i=@nabijaczleweli.xyz header.b="XAEa06TH"
X-Original-To: linux-man@vger.kernel.org
Received: from tarta.nabijaczleweli.xyz (tarta.nabijaczleweli.xyz [139.28.40.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6073C146591
	for <linux-man@vger.kernel.org>; Fri, 16 Aug 2024 22:35:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=139.28.40.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723847734; cv=none; b=gKQ9zdXFAyFEWc17HObifUg2qacGTc6rmPoyEJS7ZASeNHTv/rDvFiFGmsD3NTagjrIpIyHrqGBgwXWJpyD/b0Nlfk0GrgDm67tyvhBJ1rQaAgYxwvMjnUCO+LvDXGMfMN8KiIgplaBYMBLpKyeZW9gv73LZo8tFpaGhBnsz6VI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723847734; c=relaxed/simple;
	bh=UarNtiAS4ndYdnVOzsVpG/ZY+dxrFNh3lb8m6LyvxYQ=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=WR6agp+IRT6I90B+m6IioW0f/gdjT4bMcbSxDKI0bspS5pyNmbqeZMREgHLY1Y9YmaKu72IKEot09HsXD2Pu4emu3Aa5We4blNroJ6qsQ4huI4J4/e1bPQbBHR9+tyWKRTlrADxwcfe8Zrvjd0F8UU7/yGOY3Z5IJA7VYxCHQYI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nabijaczleweli.xyz; spf=pass smtp.mailfrom=nabijaczleweli.xyz; dkim=pass (2048-bit key) header.d=nabijaczleweli.xyz header.i=@nabijaczleweli.xyz header.b=XAEa06TH; arc=none smtp.client-ip=139.28.40.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nabijaczleweli.xyz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nabijaczleweli.xyz
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
	s=202405; t=1723847728;
	bh=UarNtiAS4ndYdnVOzsVpG/ZY+dxrFNh3lb8m6LyvxYQ=;
	h=Date:From:To:Cc:Subject:From;
	b=XAEa06THWMY7lRABOuSxZLM4iq/U01omMLDkmCoq29webjQAgAUUcrIvnlczFAORK
	 9tkq3rJ4yExqoDdsRH9jIIsUIfchSfHjG1HKzjMU9fZptvQN7MaDGrVSCjNBjMp0ib
	 MHuSefzzUhFy3tZZK1VGtBLGQtHxeImR+BiHTie8gQu1kcbt55zAwuvTFA7LO7DkHU
	 yTNFuz3p6z2B0LUOgdIFzseH6R9inkVgSZrMClw4Mxw8gaWdHfDamqm8MhBUPPlpXK
	 jDiWENXAxz3Y43ezXYo3VEDub/p0AcX/3V/qWn+I6ac1IgH6xdid9OjXug9EnTYdA/
	 36StwGwaI7Iqw==
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
	by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id EF179BEE4;
	Sat, 17 Aug 2024 00:35:27 +0200 (CEST)
Date: Sat, 17 Aug 2024 00:35:27 +0200
From: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To: alx@kernel.org
Cc: linux-man@vger.kernel.org
Subject: [PATCH v2] bdflush.2, syscalls.2: bdflush was removed
Message-ID: <ynknns52cczu2bxtazbmub3xxe62a2hajkod2qephnby5dqt7o@tarta.nabijaczleweli.xyz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="kox4lfomr5f77x5r"
Content-Disposition: inline
User-Agent: NeoMutt/20231221-2-4202cf-dirty


--kox4lfomr5f77x5r
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

There's no point documenting this syscall at any point in time,
because it changed constantly. A post-mortem summary I believe to be
comprehensive is included below.

The #include <sys/kdaemon.h> was removed in glibc 2.23:
    commit eed3e1eb79bcfa9b52609fd875fa2d522e2d6bce
    Author: Joseph Myers <joseph@codesourcery.com>
    Date:   Mon Dec 14 22:52:15 2015 +0000

    Make obsolete syscall wrappers into compat symbols (bug 18472).

    * bdflush: in Linux 2.6, does nothing if present.

    [...]
    generated for such aliases.  Those five syscalls are then made into
    compat symbols (obsoleted in glibc 2.23, so future ports won't have
    these symbols at all), with the header <sys/kdaemon.h> declaring
    bdflush being removed.  When we move to 3.2 as minimum kernel version,
    the same can be done for nfsservctl (removed in Linux 3.1) as well.
    [...]

Appears in 1.1.3
(func=3D0  turns the calling process into the bdflush daemon,
 func=3D1  return sync_old_buffers();,
 func>=3D2 is parameters):
    Author: Linus Torvalds <torvalds@linuxfoundation.org>
        Import 1.1.3

    +/* This is the interface to bdflush.  As we get more sophisticated, we=
 can
    + * pass tuning parameters to this "process", to adjust how it behaves.=
  If you
    + * invoke this again after you have done this once, you would simply m=
odify
    + * the tuning parameters.  We would want to verify each parameter, how=
ever,
    + * to make sure that it is reasonable. */
    +
    +asmlinkage int sys_bdflush(int func, int data)
    +{

bdflush() is just a kernel thread, and func 0 is just return 0; since 1.3.5=
0:
    Author: Linus Torvalds <torvalds@linuxfoundation.org>
        Import 1.3.50

    -       /* Basically func 0 means start, 1 means read param 1, 2 means =
write param 1, etc */
    +       /* Basically func 1 means read param 1, 2 means write param 1, =
etc */
            if (func >=3D 2) {
                    i =3D (func-2) >> 1;
                    if (i < 0 || i >=3D N_PARAM)
    @@ -1930,13 +1845,32 @@ asmlinkage int sys_bdflush(int func, long data)
                    bdf_prm.data[i] =3D data;
                    return 0;
            };
    +
    +       /* Having func 0 used to launch the actual bdflush and then nev=
er
    +       return (unless explicitly killed). We return zero here to
    +       remain semi-compatible with present update(8) programs. */
    +
    +       return 0;
    +}
    +
    +/* This is the actual bdflush daemon itself. It used to be started from
    + * the syscall above, but now we launch it ourselves internally with
    + * kernel_thread(...)  directly after the first thread in init/main.c =
*/
    +
    +int bdflush(void * unused) {

func 1 is actually exit(0) since 2.3.23pre1:
    Author: Linus Torvalds <torvalds@linuxfoundation.org>
        Import 2.3.23pre1

                if (func =3D=3D 1) {
    +               /* do_exit directly and let kupdate to do its work alon=
e. */
    +               do_exit(0);
    +#if 0 /* left here as it's the only example of lazy-mm-stuff used from
    +        a syscall that doesn't care about the current mm context. */

fund!=3D0 is a return 0 since 2.5.12:
    Author: Andrew Morton <akpm@zip.com.au>
    Date:   Mon Apr 29 23:52:10 2002 -0700

        [PATCH] writeback from address spaces

        [ I reversed the order in which writeback walks the superblock's
          dirty inodes.  It sped up dbench's unlink phase greatly.  I'm
          such a sleaze ]

        The core writeback patch.  Switches file writeback from the dirty
        buffer LRU over to address_space.dirty_pages.

        - The buffer LRU is removed

        - The buffer hash is removed (uses blockdev pagecache lookups)

        - The bdflush and kupdate functions are implemented against
          address_spaces, via pdflush.

        [...]

Deprecated since 2.5.52:
    Author: Andrew Morton <akpm@digeo.com>
    Date:   Sat Dec 14 03:16:29 2002 -0800

        [PATCH] deprecate use of bdflush()

        Patch from Robert Love <rml@tech9.net>

        We can never get rid of it if we do not deprecate it - so do so and
        print a stern warning to those who still run bdflush daemons.

Removed outright in 5.15-rc1:
    commit b48c7236b13cb5ef1b5fdf744aa8841df0f7b43a
    Author: Eric W. Biederman <ebiederm@xmission.com>
    Date:   Tue Jun 29 15:11:44 2021 -0500

        exit/bdflush: Remove the deprecated bdflush system call

        The bdflush system call has been deprecated for a very long time.
        Recently Michael Schmitz tested[1] and found that the last known
        caller of of the bdflush system call is unaffected by it's removal.

        Since the code is not needed delete it.

        [1] https://lkml.kernel.org/r/36123b5d-daa0-6c2b-f2d4-a942f069fd54@=
gmail.com

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
First two applied.

As for the errors: those are equally as varying as the behaviours,
and a general summary of "some of them" or "all of them at some point"
is equally as meaningless and useless as the main DESCRIPTION was.

If you're unfortunate enough to care about bdflush(2) (no one is),
the same applies for the errors (though, if I'm reading=20
  https://lkml.kernel.org/r/36123b5d-daa0-6c2b-f2d4-a942f069fd54@gmail.com
right, update(8) du jour didn't care about them either,
so much so it still works with the syscall removed).

 man/man2/bdflush.2  | 104 +++++++++++---------------------------------
 man/man2/syscalls.2 |   3 +-
 2 files changed, 28 insertions(+), 79 deletions(-)

diff --git a/man/man2/bdflush.2 b/man/man2/bdflush.2
index 8627a42..5b5ed16 100644
--- a/man/man2/bdflush.2
+++ b/man/man2/bdflush.2
@@ -12,91 +12,39 @@ .SH SYNOPSIS
 .nf
 .B #include <sys/kdaemon.h>
 .P
-.BI "[[deprecated]] int bdflush(int "  func ", long *" address );
-.BI "[[deprecated]] int bdflush(int "  func ", long " data );
+.BI "int bdflush(int "  func ", long " data );
 .fi
 .SH DESCRIPTION
-.IR Note :
-Since Linux 2.6,
-.\" As noted in changes in the 2.5.12 source
-this system call is deprecated and does nothing.
-It is likely to disappear altogether in a future kernel release.
-Nowadays, the task performed by
-.BR bdflush ()
-is handled by the kernel
-.I pdflush
-thread.
+This system call used to turn the calling process into the
+.I bdflush
+daemon,
+or tune it,
+or flush the "old buffers".
+It then progressively lost all of that functionality.
 .P
-.BR bdflush ()
-starts, flushes, or tunes the buffer-dirty-flush daemon.
-Only a privileged process (one with the
-.B CAP_SYS_ADMIN
-capability) may call
-.BR bdflush ().
-.P
-If
-.I func
-is negative or 0, and no daemon has been started, then
-.BR bdflush ()
-enters the daemon code and never returns.
-.P
-If
-.I func
-is 1,
-some dirty buffers are written to disk.
-.P
-If
-.I func
-is 2 or more and is even (low bit is 0), then
-.I address
-is the address of a long word,
-and the tuning parameter numbered
-.RI "(" "func" "\-2)/2"
-is returned to the caller in that address.
-.P
-If
-.I func
-is 3 or more and is odd (low bit is 1), then
-.I data
-is a long word,
-and the kernel sets tuning parameter numbered
-.RI "(" "func" "\-3)/2"
-to that value.
-.P
-The set of parameters, their values, and their valid ranges
-are defined in the Linux kernel source file
-.IR fs/buffer.c .
-.SH RETURN VALUE
-If
-.I func
-is negative or 0 and the daemon successfully starts,
-.BR bdflush ()
-never returns.
-Otherwise, the return value is 0 on success and \-1 on failure, with
-.I errno
-set to indicate the error.
+See
+.I fs/buffer.c
+in the kernel version you're interested in to see what it actually does th=
ere.
 .SH ERRORS
-.TP
-.B EBUSY
-An attempt was made to enter the daemon code after
-another process has already entered.
-.TP
-.B EFAULT
-.I address
-points outside your accessible address space.
-.TP
-.B EINVAL
-An attempt was made to read or write an invalid parameter number,
-or to write an invalid value to a parameter.
-.TP
-.B EPERM
-Caller does not have the
-.B CAP_SYS_ADMIN
-capability.
+.B ENOSYS
+(this system call is unimplemented)
 .SH STANDARDS
 Linux.
 .SH HISTORY
-Since glibc 2.23, glibc no longer supports this obsolete system call.
+This system call was introduced in Linux 1.1.3,
+became effectively obsolete in Linux 1.3.50,
+mostly useless in Linux 2.3.23,
+entirely useless in Linux 2.5.12,
+officially deprecated in Linux 2.5.52,
+and removed outright in Linux 5.15.
+.P
+Sometimes, if
+.I func
+was even,
+.I data
+actually represented a pointer.
+.P
+The header and prototype were removed in glibc 2.23.
 .SH SEE ALSO
 .BR sync (1),
 .BR fsync (2),
diff --git a/man/man2/syscalls.2 b/man/man2/syscalls.2
index 7a7d6d7..56bbb59 100644
--- a/man/man2/syscalls.2
+++ b/man/man2/syscalls.2
@@ -170,7 +170,8 @@ .SS System call list
 \fBatomic_cmpxchg_32\fP(2)	2.6.34	m68k only
 \fBbdflush\fP(2)	1.2	T{
 Deprecated (does nothing)
-since 2.6
+since 2.6,
+removed in 5.15
 T}
 \fBbind\fP(2)	2.0	T{
 See notes on \fBsocketcall\fP(2)
--=20
2.39.2

--kox4lfomr5f77x5r
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAma/1C0ACgkQvP0LAY0m
WPHdIA/9GAbwCHRDQ+4UpjE0k9XfUkg2KRDoKnUnbkBRoBnUsBeZvs6lwDA0G8cK
mWHqe7pOfM/iJYL1hsAOmrlSd/U9TBo5WJFC6L2SbQ8WqVwaPw/vxwAWJnFbQn/g
mLxICm8niciZlYRtI9gZ7gk2GMMQJi58dz0yq8slcNUo5au3T5Xo8eiiTqEXrb6p
zx//qeESJSfa+Av71LJE76afJA6denvI8O4BIb4N2gksKfA5jzje2zMniw4Gudug
wYpmhU8oI1wyTCE8NBj6laqXVNoPjpBodMOGZAi+AK7uj/OYMww9Lv6KPldslw+F
LcXxlVs3FCNFnhwfXpapdfSqhWujUz5DRITpalk+8SADhUfsFas0rwuQT2gOEj+L
JzzRk2sZTtUC5k82BVBrzYpvDiaBFKnD0YFn+Fp8i82JXKHPHYMM5UC1CpjFyr59
mxaS0YN7fyK2FHSyQi6/M8mJ1Dz4pMXfiV58WvrBapUimBkOtH8WHksLY14zKNlN
wkCEv+/+r7+Q2ub5jeCJBUKcte/+NQpDnWBfzLqjBFDJ7vTu1oxI/1Q1tIzFWRaO
ykGa1K+q5jMQslsEqDfgyjtBa8gPP4fGWp4JHGGzZDwJ0hEJ860PmJJ5Q9XmpZry
ueW9W0LDR4S/hfvPyPrgOj7DdUGFfncDPcH+7j2z63e+c+p0eOU=
=qtt9
-----END PGP SIGNATURE-----

--kox4lfomr5f77x5r--

