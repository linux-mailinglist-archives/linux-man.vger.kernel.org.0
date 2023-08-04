Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7E0947703D1
	for <lists+linux-man@lfdr.de>; Fri,  4 Aug 2023 17:03:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230259AbjHDPDN (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 4 Aug 2023 11:03:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43282 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230131AbjHDPDM (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 4 Aug 2023 11:03:12 -0400
Received: from tarta.nabijaczleweli.xyz (tarta.nabijaczleweli.xyz [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 7568D49C6
        for <linux-man@vger.kernel.org>; Fri,  4 Aug 2023 08:03:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202305; t=1691161384;
        bh=ARuiVJolGxKpKVotpLk1JeehkQhsa9aVDkZdkCCjzRI=;
        h=Date:From:To:Subject:References:In-Reply-To:From;
        b=Ufwatwb7YhCEzjk4eCzyRYqxmFxHIc4imuaU/YZL+VjHKA6TgNXXGOe63gtQVPXJC
         kXBEVEy4c7SVT1S+3mw57KT65pk7ZcOWro5q9dWZ/cMl1MAmqNPH6MWSnSVVLSUstE
         PxAE4WAjdKNk00Vbu/Shl42zpQUT7Fhny5Gkod35PYJGXdvdJtXPaqaH7F/b0n9J19
         z01RmeTtUTbFMtPw8WPtly624jNWeqADQPNGTh7OzGSyrlq51iXcYOXwq3Mvkzbw2z
         /7DwbcNGfILI7EwiL9sFIyIYwbiKfHFc6YtCObiTQRayPRKNkd5H9RdaSoBFfyx3WE
         4b0UdpDny7PrA==
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 9BEBA48DE;
        Fri,  4 Aug 2023 17:03:04 +0200 (CEST)
Date:   Fri, 4 Aug 2023 17:03:03 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     Guillem Jover <guillem@hadrons.org>,
        Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org
Subject: Re: [PATCH] fsync.2: no writability requirements, must operate on
 directories
Message-ID: <5lp4wlvjlptmb6iklqi57qgznrnwkvntlykadli3xnarevhmrz@x23swc6t3qap>
References: <oc67sum2hk73gl7oim7kitbqac6gcursqcxf6j2qjxzzdzgbxq@afirbuozty2f>
 <4aa54e57-6601-088f-f143-23846af2b783@kernel.org>
 <mwgvw3rh3tv6v3vhwf3osw7s6rs4hmfuapbycnqkk57anpqpsp@qoevitjgkjod>
 <ZMzN6jovzyly8tjC@thunder.hadrons.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="v3nqurfxqulgfd5g"
Content-Disposition: inline
In-Reply-To: <ZMzN6jovzyly8tjC@thunder.hadrons.org>
User-Agent: NeoMutt/20230517
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_PASS,SPF_PASS,URIBL_BLOCKED,URI_HEX autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--v3nqurfxqulgfd5g
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

On Fri, Aug 04, 2023 at 12:07:38PM +0200, Guillem Jover wrote:
> On Thu, 2023-08-03 at 16:20:10 +0200, =D0=BD=D0=B0=D0=B1 wrote:
> > On Thu, Aug 03, 2023 at 03:22:50PM +0200, Alejandro Colomar wrote:
> > > > diff --git a/man2/fsync.2 b/man2/fsync.2
> > > > index 1043e6a1b..9ced40b28 100644
> > > > --- a/man2/fsync.2
> > > > +++ b/man2/fsync.2
> > > > @@ -155,12 +155,6 @@ .SH VERSIONS
> > > >  .\" POSIX.1-2001: It shall be defined to -1 or 0 or 200112L.
> > > >  .\" -1: unavailable, 0: ask using sysconf().
> > > >  .\" glibc defines them to 1.
> > > > -.PP
> > > > -On some UNIX systems (but not Linux),
> > > > -.I fd
> > > > -must be a
> > > > -.I writable
> > > > -file descriptor.
> > > But that's still true.  HP-UX and AIX had that issue.  I'd move
> > > that paragraph to HISTORY, and say "some old UNIX systems".
> > Apparently still true on AIX, fsync(2) "Last Updated: 2023-03-24"
> > (https://www.ibm.com/docs/en/aix/7.3?topic=3Df-fsync-fsync-range-subrou=
tine)
> > says
> >   Note: The file identified by the FileDescriptor parameter must be open
> >   for writing when the fsync subroutine is issued or the call is
> >   unsuccessful. This restriction was not enforced in BSD systems. The
> >   fsync_range subroutine does not require write access.
> > and
> >   EBADF  The FileDescriptor parameter is not a valid file descriptor
> >          open for writing.
> Yes. Also from current dpkg git HEAD on "AIX power8-aix 2 7 00F9C1964C00":
>   checking whether fsync works on directories... no
> out of:
>   https://git.dpkg.org/cgit/dpkg/dpkg.git/tree/m4/dpkg-funcs.m4#n28
>=20
> > So this purely-nominal restriction is likely to go away because
> > Issue 8 requires directories to be fsync()able. It appears that classic
> > UNIXes https://www.austingroupbugs.net/view.php?id=3D672 (comment 00014=
99)
> > simply had no need for fsync() on directories and thus we=20
> That's still not released though? And after skimming over the proposed
> changes, I'm not sure they match reality either on Linux? For example,
> the current amount of fsync() done by dpkg for all filesystem objects
> (not just the db it had always historically done) was precisely to
> avoid 0-sized files that it was getting on abrupt system termination
> at least on ext3 and ext4(?). (I'm not sure whether this has improved
> since then though, but at the time the Linux filesystem developers
> pretty much said this was a problem with userland code as developers
> were "writing buggy code".)
Fair cop I s'pose, the directory wording is new in Draft 3.
You should probably post to austin-group-l@ if you think they don't
match reality under Linux.

> My intention when I mentioned the currently documented behavior in 2012,
> was to help other people that might stumble over this portability issue.
> If the current documentation is not clear, then let's improve it. But
> this update seems more confusing than helpful to me, in addition of
> being wrong as there's no current POSIX version that forbids this.
It's muddled by coupling it to the directory semantics which are clearly
still in flux.

I read, fsync():
36407  ERRORS
36408  The fsync( ) function shall fail if:
36409    [EBADF] The fildes argument is not a valid descriptor.
36410    [EINTR] The fsync( ) function was interrupted by a signal.
36411    [EINVAL] The fildes argument does not refer to a file on which thi=
s operation is possible.
36412    [EIO] An I/O error occurred while reading from or writing to the f=
ile system.
36413  In the event that any of the queued I/O operations fail, fsync( ) sh=
all return the error conditions
36414  defined for read( ) and write( ).

36417  APPLICATION USAGE
36418  The fsync( ) function should be used by programs which require modif=
ications to a file to be
36419  completed before continuing; for example, a program which contains a=
 simple transaction
36420  facility might use it to ensure that all modifications to a file or =
files caused by a transaction are
36421  recorded.

36422  An application that modifies a directory, for example, by creating a=
 file in the directory, can=20
36423  invoke fsync( ) on the directory to ensure that the directory=E2=80=
=99s entries and file attributes are
36424  synchronized. For most applications, synchronizing the directory=E2=
=80=99s entries should not be
36425  necessary (see XBD Section 4.11, on page 98).

I read, fdatasync():
31161  ERRORS
31162  The fdatasync( ) function shall fail if:
31163    [EBADF]  The fildes argument is not a valid file descriptor.
31164    [EINVAL] This implementation does not support synchronized I/O for=
 this file.
31165  In the event that any of the queued I/O operations fail, fdatasync( =
) shall return the error
31166  conditions defined for read( ) and write( ).

31169  APPLICATION USAGE
31170  Note that even if the file descriptor is not open for writing, if th=
ere are any pending write
31171  requests on the underlying file, then that I/O will be completed pri=
or to the return of fdatasync( ).

31172  An application that modifies a directory, for example, by creating a=
 file in the directory, can=20
31173  invoke fdatasync( ) on the directory to ensure that the directory=E2=
=80=99s entries are synchronized,=20
31174  although for most applications this should not be necessary (see XBD=
 Section 4.11, on page 98).

Synchronized I/O Data Integrity Completion:
2599  For the purpose of this definition, an operation that reads or search=
es a directory is considered to
2600  be a read operation, an operation that modifies a directory is consid=
ered to be a write operation,
2601  and a directory=E2=80=99s entries are considered to be the data read =
or written.

As being able to f[data]sync() directories being required if the system
supports the Synchronised I/O option or the File Synchronisation option.


The first paragraph in fdatasync() APPLICATION USAGE appears in
Issue 8 2016, which cites
  https://www.austingroupbugs.net/view.php?id=3D501
which fixes an editorial error by matching fdatasync() and aio_fsync()
to fsync() in making EBADF only for invalid fds.

So, prior to Issue 8, fsync() and fdatasync() are allowed to EINVAL
if they get a directory (maybe in Issue 8 as well, sure, doesn't matter),
but they are /not/ allowed to EBADF if the fd is not writable
(for fdatasync() since 2016 by accident, and
 for fsync() since it was released in Issue 3).

Thus, it's obvious to me that yes, the SysVr4 interface and HP-UX/AIX
interfaces /are/ fundamentally broken and have /always/ been
fundamentally broken, and that the actual semantics for fsync()ing
directories, while defined in Issue 8 Draft 3, are irrelevant here.

> > Replace the FUD that says that some UNIXes require the fd to be writabl=
e:
> > they /must not/ and this confuses users:
> >   https://101010.pl/@eater@cijber.social/110824211348995583
> > with mentioning explicitly that HP-UX and AIX (by name) are just broken.
> To me whether this is supposed to conform to some historic semantics
> does not seem very relevant when making code portable, and when that
> contradicts the specific system explicit documentation and behavior.
> And then "FUD" seems completely out of line here (even though I didn't
> write that man page update), and incorrect, because there _are_ such
> systems in existence=E2=80=A6
Well, eater was denied progress out of fear of unportability due to
uncertainty in the documentation, so, intentional or not, well.

The correct way of spelling this is
"HP-UX and AIX are broken and need fd to be opened for writing"
and generalising this to a vague "some UNIX systems"
is just needlessly hostile to the user.

v3 in followup.

Best,

--v3nqurfxqulgfd5g
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmTNEycACgkQvP0LAY0m
WPF90RAAlwJbFatSoUseJLlkyrlTdH2f1oU+qIKbADsaDKCNejOobg7h+M9ottjL
8NIL/mCYfRjvLjsvniGOFMkJkzvTYc3SrZTvGt616M7tpREqZHVksO9jGxAqlFe8
3FWQXv3odNHaQ+62409CjNLQe3NoNIqyBl+Gia2VXfU1R/BXqFhv0JUie/LoKf97
97kyzeHUnBL51ipJZUn26YMCL4i5VSC4hWhVvXngT6OsJ03iLGH6JknbyTXdEX46
iPFQ3yZOFLlkZv847DzJfRmbAXAq1adnZExS64I5BDjR6Uum2tp9bdDS3U0GL/oy
7F816ddNeCuVt9JVrVtfjkdCdSVDb3+gDxnEajZ/JiqoEkG+5qyhOAwvelqzXhgU
nsf07mfg9pMbs/MfOyrLmm77QLnoNYdE10PFXvY3Vtwm4aW8+6oN/BQfbABcoM/B
nKnLZGujo5+I0G4FTEPlRWHrLH/BxLcznkF0uRLcl1ATVMjflrGz9ODzAINPB6gW
DvgaXD3wA4tn3OcyLogrnWx8RSvTFB1n8ge8/GO1+qFbbE9T8ZPYrW6MuDWgEzmP
2pd+bE0w3FxzuH1piA2LKs0sBxfYgLW1VBeWZd3C0K+ycz8y0RiBXd8eOofDhZTT
PIq2aZNFDfWYkZXy0D8Ux70sSM/kzi8WKixypNd+n7nKdhuyNFk=
=ceoe
-----END PGP SIGNATURE-----

--v3nqurfxqulgfd5g--
