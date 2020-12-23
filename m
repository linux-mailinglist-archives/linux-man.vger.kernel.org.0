Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 553E32E22F5
	for <lists+linux-man@lfdr.de>; Thu, 24 Dec 2020 01:24:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727850AbgLXAVz (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 23 Dec 2020 19:21:55 -0500
Received: from 10.mo4.mail-out.ovh.net ([188.165.33.109]:46330 "EHLO
        10.mo4.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727754AbgLXAVz (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 23 Dec 2020 19:21:55 -0500
X-Greylist: delayed 16800 seconds by postgrey-1.27 at vger.kernel.org; Wed, 23 Dec 2020 19:21:52 EST
Received: from player729.ha.ovh.net (unknown [10.108.35.215])
        by mo4.mail-out.ovh.net (Postfix) with ESMTP id 02FA825D62F
        for <linux-man@vger.kernel.org>; Wed, 23 Dec 2020 20:33:42 +0100 (CET)
Received: from sk2.org (82-65-25-201.subs.proxad.net [82.65.25.201])
        (Authenticated sender: steve@sk2.org)
        by player729.ha.ovh.net (Postfix) with ESMTPSA id D14D01998742E;
        Wed, 23 Dec 2020 19:33:35 +0000 (UTC)
Authentication-Results: garm.ovh; auth=pass (GARM-100R003c40b052f-6eb0-4cb6-9757-ec6aa81b0749,
                    B22B5ECD272A742FD8B69EBC4CA2EEA784988800) smtp.auth=steve@sk2.org
X-OVh-ClientIp: 82.65.25.201
Date:   Wed, 23 Dec 2020 20:33:29 +0100
From:   Stephen Kitt <steve@sk2.org>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>,
        Christian Brauner <christian.brauner@ubuntu.com>,
        Giuseppe Scrivano <gscrivan@redhat.com>,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5] close_range.2: new page documenting close_range(2)
Message-ID: <20201223203329.71a94a3b@heffalump.sk2.org>
In-Reply-To: <174e60ee-aaad-ed16-186e-d199014dfc0c@gmail.com>
References: <20201221194656.22111-1-steve@sk2.org>
        <174e60ee-aaad-ed16-186e-d199014dfc0c@gmail.com>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 boundary="Sig_/uWTqlZog+MHZlqiB/OPHkoj"; protocol="application/pgp-signature"
X-Ovh-Tracer-Id: 11211148323014331773
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedujedrvddtjedguddvjecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpeffhffvuffkjghfofggtgesghdtreerredtjeenucfhrhhomhepufhtvghphhgvnhcumfhithhtuceoshhtvghvvgesshhkvddrohhrgheqnecuggftrfgrthhtvghrnhepveelvdeufedvieevffdtueegkeevteehffdtffetleehjeekjeejudffieduteeknecukfhppedtrddtrddtrddtpdekvddrieehrddvhedrvddtudenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphdqohhuthdphhgvlhhopehplhgrhigvrhejvdelrdhhrgdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomhepshhtvghvvgesshhkvddrohhrghdprhgtphhtthhopehlihhnuhigqdhmrghnsehvghgvrhdrkhgvrhhnvghlrdhorhhg
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

--Sig_/uWTqlZog+MHZlqiB/OPHkoj
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Michael,

On Tue, 22 Dec 2020 21:36:28 +0100, "Michael Kerrisk (man-pages)"
<mtk.manpages@gmail.com> wrote:
> On 12/21/20 8:46 PM, Stephen Kitt wrote:
[...]
> > +Errors closing a given file descriptor are currently ignored.
> > +.PP
> > +.I flags
> > +can be 0 or set to one or both of the following: =20
>=20
> Better, I think:
> "flags is a bit mask containing 0 or more of the following:"

Indeed, thanks!

> > +.TP
> > +.BR CLOSE_RANGE_CLOEXEC " (since Linux 5.10)" =20
>=20
> s/5.10/5.11/ ?

Oops, yes, 5.11.

> > +sets the close-on-exec bit instead of =20
>=20
> s/close-on-exec bit/file descriptor's close-on-exec flag/

Noted.

> > +immediately closing the file descriptors.
> > +.TP
> > +.B CLOSE_RANGE_UNSHARE
> > +unshares the range of file descriptors from any other processes,
> > +before closing them,
> > +avoiding races with other threads sharing the file descriptor table.
> > +.SH RETURN VALUE
> > +On success,
> > +.BR close_range ()
> > +returns 0.
> > +On error, \-1 is returned and
> > +.I errno
> > +is set to indicate the cause of the error.
> > +.SH ERRORS
> > +.TP
> > +.B EINVAL
> > +.I flags
> > +is not valid, or
> > +.I first
> > +is greater than
> > +.IR last .
> > +.PP
> > +The following can occur with
> > +.B CLOSE_RANGE_UNSHARE
> > +(when constructing the new descriptor table):
> > +.TP
> > +.B EMFILE
> > +The per-process limit on the number of open file descriptors has been
> > reached +(see the description of
> > +.B RLIMIT_NOFILE
> > +in
> > +.BR getrlimit (2)).
> > +.TP
> > +.B ENOMEM
> > +Insufficient kernel memory was available.
> > +.SH VERSIONS
> > +.BR close_range ()
> > +first appeared in Linux 5.9.
> > +.SH CONFORMING TO
> > +.BR close_range ()
> > +is a nonstandard function that is also present on FreeBSD.
> > +.SH NOTES
> > +Glibc does not provide a wrapper for this system call; call it using
> > +.BR syscall (2).
> > +.SS Closing all open file descriptors
> > +.\" 278a5fbaed89dacd04e9d052f4594ffd0e0585de
> > +To avoid blindly closing file descriptors
> > +in the range of possible file descriptors,
> > +this is sometimes implemented (on Linux)
> > +by listing open file descriptors in
> > +.I /proc/self/fd/
> > +and calling
> > +.BR close (2)
> > +on each one.
> > +.BR close_range ()
> > +can take care of this without requiring
> > +.I /proc
> > +and within a single system call,
> > +which provides significant performance benefits.
> > +.SS Closing file descriptors before exec
> > +.\" 60997c3d45d9a67daf01c56d805ae4fec37e0bd8
> > +File descriptors can be closed safely using
> > +.PP
> > +.in +4n
> > +.EX
> > +/* we don't want anything past stderr here */
> > +close_range(3, ~0U, CLOSE_RANGE_UNSHARE);
> > +execve(....);
> > +.EE
> > +.in
> > +.PP
> > +.B CLOSE_RANGE_UNSHARE
> > +is conceptually equivalent to
> > +.PP
> > +.in +4n
> > +.EX
> > +unshare(CLONE_FILES);
> > +close_range(first, last, 0);
> > +.EE
> > +.in
> > +.PP
> > +but can be more efficient:
> > +if the unshared range extends past
> > +the current maximum number of file descriptors allocated
> > +in the caller's file descriptor table
> > +(the common case when
> > +.I last
> > +is ~0U),
> > +the kernel will unshare a new file descriptor table for the caller up =
to
> > +.IR first .
> > +This avoids subsequent close calls entirely; =20
>=20
> s/close/.BR close (2)/

Noted.

> > +the whole operation is complete once the table is unshared.
> > +.SS Closing files on \fBexec\fP
> > +.\" 582f1fb6b721facf04848d2ca57f34468da1813e
> > +This is particularly useful in cases where multiple
> > +.RB pre- exec
> > +setup steps risk conflicting with each other.
> > +For example, setting up a
> > +.BR seccomp (2)
> > +profile can conflict with a
> > +.BR close_range ()
> > +call:
> > +if the file descriptors are closed before the
> > +.BR seccomp (2)
> > +profile is set up,
> > +the profile setup can't use them itself,
> > +or control their closure;
> > +if the file descriptors are closed afterwards,
> > +the seccomp profile can't block the
> > +.BR close_range ()
> > +call or any fallbacks.
> > +Using
> > +.B CLOSE_RANGE_CLOEXEC
> > +avoids this:
> > +the descriptors can be marked before the
> > +.BR seccomp (2)
> > +profile is set up,
> > +and the profile can control access to
> > +.BR close_range ()
> > +without affecting the calling process.
> > +.SH EXAMPLES
> > +The following program is designed to be execed by the second program
> > +below. =20
>=20
> I have some specific comments below, but a more general comment
> to start with: why use two programs here? It seems to add complexity
> without demonstrating anything that couldn't also be demonstrated
> with a simpler single program, or have I missed something?

I based the example on the test code in the kernel and the examples from
execve(2), since close_range(2) is mostly useful in preparation for an
execve(2) call.

> > +It lists its open file descriptors:
> > +.PP
> > +.in +4n
> > +.EX
> > +/* listopen.c */
> > +
> > +#include <stdio.h>
> > +#include <sys/stat.h>
> > +
> > +int
> > +main(int argc, char *argv[])
> > +{
> > +    struct stat buf;
> > +
> > +    for (int i =3D 0; i < 100; i++) {
> > +        if (!fstat(i, &buf)) =20
>=20
> I kind of prefer "fstat(...) =3D=3D 0"

Ah yes, that makes sense.

> > +            printf("FD %d is open.\en", i);
> > +    }
> > +
> > +    exit(EXIT_SUCCESS);
> > +)
> > +.EE
> > +.in
> > +.PP
> > +This program executes the command given on its command-line,
> > +after opening the files listed after the command
> > +and then using
> > +.BR close_range ()
> > +to close them:
> > +.PP
> > +.in +4n
> > +.EX
> > +/* close_range.c */
> > +
> > +#include <fcntl.h>
> > +#include <linux/close_range.h>
> > +#include <stdio.h>
> > +#include <stdlib.h>
> > +#include <sys/stat.h>
> > +#include <sys/syscall.h>
> > +#include <sys/types.h>
> > +#include <unistd.h>
> > +
> > +int
> > +main(int argc, char *argv[])
> > +{
> > +    char *newargv[] =3D { NULL };
> > +    char *newenviron[] =3D { NULL };
> > +
> > +    if (argc < 3) {
> > +        fprintf(stderr, "Usage: %s <command-to-run> <files-to-open>\en=
",
> > argv[0]); =20
>=20
> Line too long. Please break it up so that it renders well on
> an 80-column terminal.
>=20
> Or, alternatively:=20
>=20
>         fprintf(stderr, "Usage: %s <command> <file>...\en", argv[0]);

Noted.

> > +        exit(EXIT_FAILURE);
> > +    }
> > +
> > +    for (int i =3D 2; i < argc; i++) {
> > +        if (open(argv[i], O_RDONLY) =3D=3D -1) {
> > +            perror(argv[i]);
> > +            exit(EXIT_FAILURE);
> > +        }
> > +    }
> > +
> > +    if (syscall(__NR_close_range, 3, ~0U, CLOSE_RANGE_UNSHARE) =3D=3D =
-1) { =20
>=20
> Line too long.
>=20
> Alternatively, what about s/CLOSE_RANGE_UNSHARE/0/? Or it
> considered best practice to always use CLOSE_RANGE_UNSHARE?

In this particular context it=E2=80=99s not required, but I would argue tha=
t it=E2=80=99s
better to use _UNSHARE in general =E2=80=94 it avoids the risk of forgettin=
g to add
it in long-lived code which ends up using threads at some point...

> > +        perror("close_range");
> > +        exit(EXIT_FAILURE);
> > +    }
> > +
> > +    execve(argv[1], newargv, newenviron);
> > +    perror("execve");
> > +    exit(EXIT_FAILURE);
> > +}
> > +.EE
> > +.in
> > +.PP
> > +We can use the second program to exec the first as follows:
> > +.PP
> > +.in +4n
> > +.EX
> > +.RB "$" " make listopen close_range" =20
>=20
> Perhaps we don't really need the preceding line?

I was following the examples in execve(2) which show how to build the
programs.

> > +.RB "$" " ./close_range ./listopen /dev/null /dev/zero"
> > +FD 0 is open.
> > +FD 1 is open.
> > +FD 2 is open.
> > +.EE
> > +.in
> > +.PP
> > +Removing the call to
> > +.BR close_range ()
> > +will show different output,
> > +with the file descriptors for the named files still open.
> > +.SH SEE ALSO
> > +.BR close (2)
> >=20
> > base-commit: b5dae3959625f5ff378e9edf9139057d1c06bb55 =20

Thanks,

Stephen

--Sig_/uWTqlZog+MHZlqiB/OPHkoj
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEnPVX/hPLkMoq7x0ggNMC9Yhtg5wFAl/jm4kACgkQgNMC9Yht
g5xpNg/9HEV0DjwPTqJj4icH3TlxVTL3Qln1esFW71ArKi/+I3weQZbLiNhVkX1P
APSnf1WnU8s5LCDMVCGLzQaSXaJGNa7XdI+/251geNhWuC0E79HirW7SKv0kd0fO
BYFEGNSVJsdbiE7x8RELva+xUsIh+VO5wePXumL1sAlpc6G0JydqZkR7m88M8+9X
Uls3U9PGilUIPc1n28+LCAi9TyU/b+UEcwtXY97FeJXdnAGLUSaNkLmAheywZERn
1Ho/jP7J8PPliBSc+0h9urgH1DgkHZXZBUwxWpm1mqKto7Kf4lD3laqy26L43qdl
juIj9GdRymLns+HG5tjtPoL1rNmW3oy6BBHXV34aDFbeDvdyZZ3kGi1DHuddwj/j
MFycT5EZm8FFj7DL5MDkS0ARodzrbpuxAHozLBgCV4BixJ5jSTUGHumIJv4fLlnU
zj/DkXn/hOzpbrsLMQdFq3CY3E5pT9SgC9cM99yItEfaLWg8At1Hf5ONyBaDnj+3
a8QilYeJ7qHwDd6IzxzQQhEXcj17WqK79rrMqAOc7z4m6lcCVRojnwd24At5plbo
EZMBbzMJJ0XuLBaeKpGPSTprnJFMjE2u48VLtm2AhwKoy19v+J49W/f6N4loVqlC
c6v9QqSeAUDwZlJL2pXk28rjYaIBEXlAe7h+MB6Up+De5arDH/c=
=cvcg
-----END PGP SIGNATURE-----

--Sig_/uWTqlZog+MHZlqiB/OPHkoj--
