Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4EB632DF6FC
	for <lists+linux-man@lfdr.de>; Sun, 20 Dec 2020 23:08:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728323AbgLTWIJ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 20 Dec 2020 17:08:09 -0500
Received: from 7.mo177.mail-out.ovh.net ([46.105.61.149]:34240 "EHLO
        7.mo177.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727740AbgLTWII (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 20 Dec 2020 17:08:08 -0500
X-Greylist: delayed 383 seconds by postgrey-1.27 at vger.kernel.org; Sun, 20 Dec 2020 17:08:08 EST
Received: from player716.ha.ovh.net (unknown [10.108.35.13])
        by mo177.mail-out.ovh.net (Postfix) with ESMTP id 0AB0514B2E9
        for <linux-man@vger.kernel.org>; Sun, 20 Dec 2020 23:01:02 +0100 (CET)
Received: from sk2.org (82-65-25-201.subs.proxad.net [82.65.25.201])
        (Authenticated sender: steve@sk2.org)
        by player716.ha.ovh.net (Postfix) with ESMTPSA id 6C655194A6848;
        Sun, 20 Dec 2020 22:00:55 +0000 (UTC)
Authentication-Results: garm.ovh; auth=pass (GARM-100R003df47d4bf-8fc5-404e-860e-80c8d5619ddc,
                    B6E58838008068FDF3022E22B316484108BE3B31) smtp.auth=steve@sk2.org
X-OVh-ClientIp: 82.65.25.201
Date:   Sun, 20 Dec 2020 23:00:53 +0100
From:   Stephen Kitt <steve@sk2.org>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        Christian Brauner <christian.brauner@ubuntu.com>,
        Giuseppe Scrivano <gscrivan@redhat.com>,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3] close_range.2: new page documenting close_range(2)
Message-ID: <20201220230053.733f3036@heffalump.sk2.org>
In-Reply-To: <e2ece8dc-9379-0e56-bbfa-ffc5f6b5ca2c@gmail.com>
References: <20201218165815.6963-1-steve@sk2.org>
        <e2ece8dc-9379-0e56-bbfa-ffc5f6b5ca2c@gmail.com>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 boundary="Sig_/fRt+fLRzLUwZyTg/GIF=MWN"; protocol="application/pgp-signature"
X-Ovh-Tracer-Id: 14528049448548322774
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedujedrvddttddgudeifecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpeffhffvuffkjghfofggtgesghdtreerredtvdenucfhrhhomhepufhtvghphhgvnhcumfhithhtuceoshhtvghvvgesshhkvddrohhrgheqnecuggftrfgrthhtvghrnhepjeekffdvhfejkeffudekhedvtddvhfeiheehvdehkeetkedufeejffeuueevvddvnecukfhppedtrddtrddtrddtpdekvddrieehrddvhedrvddtudenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphdqohhuthdphhgvlhhopehplhgrhigvrhejudeirdhhrgdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomhepshhtvghvvgesshhkvddrohhrghdprhgtphhtthhopehlihhnuhigqdhmrghnsehvghgvrhdrkhgvrhhnvghlrdhorhhg
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

--Sig_/fRt+fLRzLUwZyTg/GIF=MWN
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi Alex,

On Sat, 19 Dec 2020 15:00:00 +0100, "Alejandro Colomar (man-pages)"
<alx.manpages@gmail.com> wrote:
> Please see some comments below.
> It's looking good ;)

Thanks for your review and patience!

> On 12/18/20 5:58 PM, Stephen Kitt wrote:
> > This documents close_range(2) based on information in
> > 278a5fbaed89dacd04e9d052f4594ffd0e0585de,
> > 60997c3d45d9a67daf01c56d805ae4fec37e0bd8, and
> > 582f1fb6b721facf04848d2ca57f34468da1813e.
> >=20
> > Signed-off-by: Stephen Kitt <steve@sk2.org>
> > ---
> > V3: fix synopsis overflow
> >     copy notes from membarrier.2 re the lack of wrapper
> >     semantic newlines
> >     drop non-standard "USE CASES" section heading
> >     add code example
> >=20
> > V2: unsigned int to match the kernel declarations
> >     groff and grammar tweaks
> >     CLOSE_RANGE_UNSHARE unshares *and* closes
> >     Explain that EMFILE and ENOMEM can occur with C_R_U
> >     "Conforming to" phrasing
> >     Detailed explanation of CLOSE_RANGE_UNSHARE
> >     Reading /proc isn't common
> >=20
> >  man2/close_range.2 | 266 +++++++++++++++++++++++++++++++++++++++++++++
> >  1 file changed, 266 insertions(+)
> >  create mode 100644 man2/close_range.2
> >=20
> > diff --git a/man2/close_range.2 b/man2/close_range.2
> > new file mode 100644
> > index 000000000..f8f2053ac
> > --- /dev/null
> > +++ b/man2/close_range.2
> > @@ -0,0 +1,266 @@
> > +.\" Copyright (c) 2020 Stephen Kitt <steve@sk2.org>
> > +.\"
> > +.\" %%%LICENSE_START(VERBATIM)
> > +.\" Permission is granted to make and distribute verbatim copies of th=
is
> > +.\" manual provided the copyright notice and this permission notice are
> > +.\" preserved on all copies.
> > +.\"
> > +.\" Permission is granted to copy and distribute modified versions of
> > this +.\" manual under the conditions for verbatim copying, provided th=
at
> > the +.\" entire resulting derived work is distributed under the terms o=
f a
> > +.\" permission notice identical to this one.
> > +.\"
> > +.\" Since the Linux kernel and libraries are constantly changing, this
> > +.\" manual page may be incorrect or out-of-date.  The author(s) assume=
 no
> > +.\" responsibility for errors or omissions, or for damages resulting f=
rom
> > +.\" the use of the information contained herein.  The author(s) may not
> > +.\" have taken the same level of care in the production of this manual,
> > +.\" which is licensed free of charge, as they might when working
> > +.\" professionally.
> > +.\"
> > +.\" Formatted or processed versions of this manual, if unaccompanied by
> > +.\" the source, must acknowledge the copyright and authors of this wor=
k.
> > +.\" %%%LICENSE_END
> > +.\"
> > +.TH CLOSE_RANGE 2 2020-12-08 "Linux" "Linux Programmer's Manual"
> > +.SH NAME
> > +close_range \- close all file descriptors in a given range
> > +.SH SYNOPSIS
> > +.nf
> > +.B #include <linux/close_range.h>
> > +.PP
> > +.BI "int close_range(unsigned int " first ", unsigned int " last ,
> > +.BI "                unsigned int " flags );
> > +.fi
> > +.PP
> > +.IR Note :
> > +There is no glibc wrapper for this system call; see NOTES.
> > +.SH DESCRIPTION
> > +The
> > +.BR close_range ()
> > +system call closes all open file descriptors from
> > +.I first
> > +to
> > +.I last
> > +(included).
> > +.PP
> > +Errors closing a given file descriptor are currently ignored.
> > +.PP
> > +.I flags
> > +can be 0 or set to one or both of the following:
> > +.TP
> > +.B CLOSE_RANGE_UNSHARE
> > +unshares the range of file descriptors from any other processes,
> > +before closing them,
> > +avoiding races with other threads sharing the file descriptor table.
> > +.TP
> > +.BR CLOSE_RANGE_CLOEXEC " (since Linux 5.10)" =20
>=20
> |sort
>=20
> I prefer alphabetic order rather than adding new items at the bottom.
> When lists grow, it becomes difficult to find what you're looking for.
>=20
> CLOEXEC should go before UNSHARE.

That makes sense.

> > +sets the close-on-exec bit instead of immediately closing the file
> > +descriptors. =20
>=20
> [
> sets the close-on-exec bit instead of
> immediately closing the file descriptors.
> ]

Is this for semantic reasons, or to balance the lines and make them easier =
to
read in the roff source?

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
> > +.\" 278a5fbaed89dacd04e9d052f4594ffd0e0585de
> > +.SS Closing all open file descriptors =20
>=20
> The comment with the commit would be better inside the section it refers
> to, so:
>=20
> [
> .SS Closing all open file descriptors
> .\" 278a5fbaed89dacd04e9d052f4594ffd0e0585de
> ]

Indeed!

> > +To avoid blindly closing file descriptors in the range of possible
> > +file descriptors, =20
>=20
> [
> To avoid blindly closing file descriptors
> in the range of possible file descriptors,
> ]
>=20
> > +this is sometimes implemented (on Linux) by listing open file
> > +descriptors in =20
>=20
> [
> this is sometimes implemented (on Linux)
> by listing open file descriptors in
> ]
>=20
> > +.I /proc/self/fd/
> > +and calling
> > +.BR close (2)
> > +on each one.
> > +.BR close_range ()
> > +can take care of this without requiring
> > +.I /proc
> > +and with a single system call, =20
>=20
> s/with/within/
>=20
> > +which provides significant performance benefits.
> > +.\" 60997c3d45d9a67daf01c56d805ae4fec37e0bd8
> > +.SS Closing file descriptors before exec =20
>=20
> [
> .SS Closing file descriptors before exec
> .\" 60997c3d45d9a67daf01c56d805ae4fec37e0bd8
> ]
>=20
> > +File descriptors can be closed safely using
> > +.PP
> > +.in +4n
> > +.EX
> > +/* we don't want anything past stderr here */
> > +close_range(3, ~0U, CLOSE_RANGE_UNSHARE); =20
> > +execve(....);> +.EE =20
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
> > +if the unshared range extends past the current maximum number of file
> > +descriptors allocated in the caller's file descriptor table =20
>=20
> [
> if the unshared range extends past
> the current maximum number of file descriptors allocated
> in the caller's file descriptor table
> ]
>=20
> > +(the common case when
> > +.I last
> > +is
> > +.BR ~0U ), =20
>=20
> Literal values are not (usually) formatted.
>=20
> [
> .I last
> is ~0U),
> ]
>=20
> > +the kernel will unshare a new file descriptor table for the caller up
> > +to =20
>=20
> [
> the kernel will unshare a new file descriptor table for the caller up to
> ]
>=20
> > +.IR first .
> > +This avoids subsequent close calls entirely;
> > +the whole operation is complete once the table is unshared.
> > +.\" 582f1fb6b721facf04848d2ca57f34468da1813e
> > +.SS Closing files on \fBexec\fP =20
>=20
> [
> .SS Closing files on \fBexec\fP
> .\" 582f1fb6b721facf04848d2ca57f34468da1813e
> ]
>=20
> > +This is particularly useful in cases where multiple
> > +.RB pre- exec
> > +setup steps risk conflicting with each other.
> > +For example, setting up a
> > +.BR seccomp (2)
> > +profile can conflict with a
> > +.B close_range =20
>=20
> .BR close_range ()
>=20
> > +call:
> > +if the file descriptors are closed before the seccomp profile is set =
=20
>=20
> .BR seccomp (2)
>=20
> > +up, =20
>=20
> Please, split at a different point.
>=20
> > +the profile setup can't use them control their closure; =20
>=20
> I don't understand what you wanted to say.  them?

Oops, I meant "the profile setup can't use them itself, or control their
closure".

>=20
> > +if the file descriptors are closed afterwards,
> > +the seccomp profile can't block the
> > +.B close_range =20
>=20
> .BR close_range ()
>=20
> > +call or any fallbacks.
> > +Using
> > +.B CLOSE_RANGE_CLOEXEC
> > +avoids this:
> > +the descriptors can be marked before the seccomp profile is set up, =20
>=20
> .BR seccomp (2)
>=20
> > +and the profile can control access to
> > +.B close_range =20
>=20
> .BR close_range ()
>=20
> > +without affecting the calling process.
> > +.SH EXAMPLES
> > +The following program is designed to be execed by the second program
> > +below.
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
> > +    int i; =20
>=20
> We use C99 declarations for loop indices.
>=20
> > +    struct stat buf;
> > +
> > +    for (i =3D 0; i < 100; i++) { =20
>=20
>     for (int i =3D 0; i < 100; i++) {
>=20
> > +        if (!fstat(i, &buf))
> > +            printf("FD %d is open.\n", i); =20
>=20
> s/\\/\\e/
>=20
> see: d1a719857b7eb68f5e5c1c965089038dee683240
>=20
> I sometimes forget to fix those after copying the program to the page.
> My solution is to copy the rendered text from the man page to a file
> and then compile, and those errors become obvious ;)

Ah yes, good catch. I was looking into automating checks for the source code
included in man pages throughout the project, but that throws a spanner in
the works!

>=20
> > +    }
> > +
> > +    exit(EXIT_SUCCESS);
> > +)
> > +.EE
> > +.in
> > +.PP
> > +This program executes the command given on its command-line after
> > +opening the files listed after the command,
> > +and then using =20
>=20
> s/using/uses/
>=20
> > +.B close_range =20
>=20
> .BR close_range ()
>=20
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
> > +    int i; =20
>=20
> dd
>=20
> > +
> > +    if (argc < 3) {
> > +        fprintf(stderr, "Usage: %s <command-to-run> <files-to-open>\n",
> > argv[0]); =20
>=20
> s/\\/\\e/
>=20
> > +        exit(EXIT_FAILURE);
> > +    }
> > +
> > +    for (i =3D 2; i < argc; i++) { =20
>=20
>     for (int i =3D 2; i < argc; i++) {
>=20
> > +        if (open(argv[i], O_RDONLY) =3D=3D -1) {
> > +            perror(argv[i]);
> > +            exit(EXIT_FAILURE);
> > +        }
> > +    }
> > +
> > +    if (syscall(__NR_close_range, 3, ~0U, CLOSE_RANGE_UNSHARE) =3D=3D =
-1) {
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
> > +.RB "$" " make listopen close_range"
> > +.RB "$" " ./close_range ./listopen /dev/null /dev/zero"
> > +FD 0 is open.
> > +FD 1 is open.
> > +FD 2 is open.
> > +.EE
> > +.in
> > +.PP
> > +Removing the call to
> > +.B close_range =20
>=20
> .BR close_range ()
>=20
> > +will show different output, with the file descriptors for the named
> > +files still open. =20
>=20
> [
> will show different output,
> with the file descriptors for the named files still open.
> ]

Thanks, I'll send a v4 with all the fixes above.

Regards,

Stephen

--Sig_/fRt+fLRzLUwZyTg/GIF=MWN
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEnPVX/hPLkMoq7x0ggNMC9Yhtg5wFAl/fyZUACgkQgNMC9Yht
g5xFZBAAidkwTET2IWumCyIGRVKnjmz2Fh2rlVXbhlRPIEsylpZkCQYl9od18ETg
MTG6sv5GbA1ZO6zdAqbgvj0ex5L0tlMJrAA45yn10Q4aC43ykroJ7Sz5j9BZBpue
cWASz4powcFfV19Vdk/Aj0zgYN3L1xJtwHGOSMzhK3v3QadO/2dEfO9J3Pim+UcW
cRTGrZuuGYEvCEcCm59Ea0v3s8oSealdyQkkseNyWmVgdcejEKhU1Bdbu84w4OZ+
0Qs0T2MJ+Dy/HEBK9CwmCNLBRHVXDkYtYvtFkcubL48kf3jLbjoNwda4B4LO6qaO
YESShB4040udOcBORA5U53fxuVSVMQUFmqvRvEAUeiEBAM+bn5Kil9fZrgVrPzK7
Twx3rNxgQ4AiqelIVhnQ/OmklrG8drl01bcNDCWK5evQ58TYJmAsjcbSUUXG+zTO
o7p9WZtWJnJVbt6JATM6I3H+YCQk4zceMXIdzFCkZ6sy3SebzQjKIIUG/JuXcqgw
4xml4as1cXWtZPg6//W99FnMZ8qNl7I8YyJ19obDY33nrqOSmsfyuqkAFdwBByUS
un+/UrLK/RehtfiZHuX8qXXiEixw0nVYPrTZkHgOK1GZ/omHlCVgJ+JyLESagrvi
cN2gIKriZy5aN50lmTQRyjQ6an1bsMY9dC9YtR8NSx45u1MMPIU=
=ytE6
-----END PGP SIGNATURE-----

--Sig_/fRt+fLRzLUwZyTg/GIF=MWN--
