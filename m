Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C9C474882FC
	for <lists+linux-man@lfdr.de>; Sat,  8 Jan 2022 10:58:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231430AbiAHJ6P (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 8 Jan 2022 04:58:15 -0500
Received: from 4.mo581.mail-out.ovh.net ([178.32.122.254]:36981 "EHLO
        4.mo581.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233849AbiAHJ6O (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 8 Jan 2022 04:58:14 -0500
X-Greylist: delayed 1798 seconds by postgrey-1.27 at vger.kernel.org; Sat, 08 Jan 2022 04:58:13 EST
Received: from player730.ha.ovh.net (unknown [10.109.143.183])
        by mo581.mail-out.ovh.net (Postfix) with ESMTP id 6E0AC23301
        for <linux-man@vger.kernel.org>; Sat,  8 Jan 2022 09:22:41 +0000 (UTC)
Received: from sk2.org (82-65-25-201.subs.proxad.net [82.65.25.201])
        (Authenticated sender: steve@sk2.org)
        by player730.ha.ovh.net (Postfix) with ESMTPSA id F22C925EAEB99;
        Sat,  8 Jan 2022 09:22:37 +0000 (UTC)
Authentication-Results: garm.ovh; auth=pass (GARM-95G001e5420053-e66e-47a0-a8ce-e46b1a8bb87b,
                    E73EBA98AEB195A144C17DE4F959AB65BE9739A6) smtp.auth=steve@sk2.org
X-OVh-ClientIp: 82.65.25.201
Date:   Sat, 8 Jan 2022 10:22:30 +0100
From:   Stephen Kitt <steve@sk2.org>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, Michael Kerrisk <mtk.manpages@gmail.com>
Subject: Re: [PATCH 1/9] Add a target to check example programs
Message-ID: <20220108102230.31788318@heffalump.sk2.org>
In-Reply-To: <7edd4ab8-a417-17b4-aadf-4c63293bc210@gmail.com>
References: <20220107164621.275794-1-steve@sk2.org>
        <7edd4ab8-a417-17b4-aadf-4c63293bc210@gmail.com>
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="Sig_/bA+KJz8j3Xn7JbZ.zSR/l.7";
 protocol="application/pgp-signature"; micalg=pgp-sha512
X-Ovh-Tracer-Id: 6332342551606953606
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvuddrudegfedguddthecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpeffhffvuffkjghfofggtgesghdtfeerredtjeenucfhrhhomhepufhtvghphhgvnhcumfhithhtuceoshhtvghvvgesshhkvddrohhrgheqnecuggftrfgrthhtvghrnhephefhteevkeetudffgeejveevtdelfefhkeeftdeikedtkeetudfggffgkefggedunecuffhomhgrihhnpehgihhthhhusgdrtghomhdpkhgvrhhnvghlrdhorhhgnecukfhppedtrddtrddtrddtpdekvddrieehrddvhedrvddtudenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphhouhhtpdhhvghlohepphhlrgihvghrjeeftddrhhgrrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpehsthgvvhgvsehskhdvrdhorhhgpdhrtghpthhtoheplhhinhhugidqmhgrnhesvhhgvghrrdhkvghrnhgvlhdrohhrgh
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

--Sig_/bA+KJz8j3Xn7JbZ.zSR/l.7
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Alex,

On Sat, 8 Jan 2022 02:15:47 +0100, "Alejandro Colomar (man-pages)"
<alx.manpages@gmail.com> wrote:
> On 1/7/22 17:46, Stephen Kitt wrote:
> > This is a first step to automating example program checks. It extracts
> > source snippets introduced by "Program source", assuming it's C, and
> > attempts to compile it.
> >=20
> > For now, only man pages with a single "Program source" entry are
> > processed. The compiled code isn't linked to avoid having to handle
> > library requirements (e.g. -ldl).
> >=20
> > Signed-off-by: Stephen Kitt <steve@sk2.org> =20
>=20
> I like the concept of this patch.
>=20
> However, a few things:
>=20
> - I prefer a script in ./scripts/,
>    which can be called from the Makefile.
>    I'd like to keep the Makefile simple
>    (it's already quite complex to add more stuff to it).
>=20
> - I'd like to use make(1) properly,
>    and only test programs incrementally,
>    so if a page has already been tested and it hasn't been modified,
>    it should not be retested.
>    That part should go in the Makefile, not the test itself.
>    For that, I'd chose some arbitrary dirname
>    (<./tests/example_programs/> sounds like a good candidate),
>    and touch dummy files there when a test is performed:
>=20
>=20
> builddir :=3D $(CURDIR)/build
> TESTS_example_programs :=3D $(patsubst=20
> $(MANDIR)/%,$(builddir)/%.example-programs.touch,$(MANPAGES))
>=20
> $(TESTS_example_programs): $(builddir)/%.example-programs.touch: \
>                                        $(MANDIR)/% \
>                                        Makefile \
> =20
> $(CURDIR)/scripts/check_example_programs.sh \
>                                        | $$@D)/.
> 	$(info TEST example programs:	$@)
> 	$(CURDIR)/scripts/check_example_programs $@
> 	touch $@
>=20
>=20
> Something like the above would be nice.
> That would also remove the call to mktemp(1).

Yes, that=E2=80=99s along the lines of what I was thinking too; in particul=
ar,
something like that would be necessary to handle man pages with multiple
example files (e.g. unix.7).

The main purpose of this patch was to get the conversation started and to
show how I=E2=80=99d identified the problems I was fixing in the rest of th=
e series.
I wanted to have something simple to get going, just to measure how likely =
it
was that there actually were problems in the example programs before
embarking on a more complex process ;-).

> - This expects pages to have 'Program source' just before the source.
>    Few pages do have that currently.
>    Do you have plans to standardize some convention in the man pages?
>    I'd be happy to see that.
>    I think a good approach would be to use C comments,
>    one line before the code, and one line after the code,
>    so that there's no doubts about the limits of the code
>    (we should decide the format of the comment).
>    The comment should be something not too noisy, but very reliable.
>=20
>    I think I'd also first restrict to the EXAMPLES sections,
>    even before reading that hypothetical comment (or whatever we put),
>    to avoid mistakes.

At first I=E2=80=99d tried going with troff comments in the man page source=
s, but
that doesn=E2=80=99t work because we rely on the troff *output* being corre=
ct C, not
the troff input. So we need something that can be processed from the output,
and =E2=80=9CProgram source=E2=80=9D was available for a first stab.

Ultimately though, as you say, we=E2=80=99d probably need C comments to sta=
rt and
finish the code. That would fit in nicely with a Make-based approach: we
could have one target to generate the =E2=80=9Cdependencies=E2=80=9D (C fil=
es generated from
man pages), then include that =E2=80=94 that way we=E2=80=99d only update C=
 files when the
corresponding man page changes.

> - Logs should go to stdout/stderr,
>    as in any other standard Unix command,
>    so just let the compiler print wherever it wants to print,
>    and let the user redirect them to wherever the user wants to too.
>=20
>    I know there was the groff-warnings test.  But I don't like it.
>    It's there because it predates me,
>    and I yet have to understand how and if it works,
>    and then I'll rewrite it properly.

And I was basing my code on the groff-warnings test ;-). From running a
number of variants, what I liked about this is that it provides output
(including the name of the file being processed) only when an error occurs.
If we only rely on the regular output going to stderr, we also need to outp=
ut
something for every file being processed, which clutters the output IMO.

But anyone serious about working on this could be expected to redirect the
output to a file!

For follow-up revisions of the patches, should I target
https://github.com/alejandro-colomar/man-pages instead of
https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git?

Regards,

Stephen

--Sig_/bA+KJz8j3Xn7JbZ.zSR/l.7
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEnPVX/hPLkMoq7x0ggNMC9Yhtg5wFAmHZV9YACgkQgNMC9Yht
g5wONA/+OsGDJ51jIRVcy4CdEQcuwz2LLtiI5z5ddA1aH+oFjyonxLE/OL15iahI
vZ0rVGoMw/PXQw/QDy6xkIoHzVevGffTGQMPjn0O9XcZam34/cNDK6cguKpNgpfH
Vy557zUDj8JozBPD29oZJUO1Emg5GWgbS3XqiUK4ZIn/7G+SnJe1bCEiK1jfyRy/
m3DF62+txtYU6CvSCSEol/df8l+ffGjpvIpbXBlZzQHX5lMsyLbYGkYZdchHdVDp
MKzpMha4b+0BhuYMYqiMQDLQeNPOX49D15F0UWm15a0O8X9dP+OlL5rJuwwSn4mU
MJs8PBiwU9rWPX2d0tPeZdvO8MGyqr+1OU5Z02gDnG237K2FXR1f7WW4LbgA3KOA
qZPd3wPF+vPVkK3oCl8wApKqcxXw7DlxAENrtrGh++qzxjbH49wsaC4O8qU3aEXO
Xf9eocIexz9IazudIVkWMgQ4TnQ+zq6E39/mYPdG+SFEBq5axE5hH2ka2Yle8fzs
zAGZG29JRSTYIMMrEHYUsYHTx3n1l2vqmjin2fMFr+Yhof0qhOBXhUNHwK8T02Kx
2xeGZEKnEUoCw53bny9uIOpPIQYccyCD3HllKcYwYOGK3/vs+r4CwpoXSRbxT99D
QOc3sl6ZBZjBzuFZWvfIuYHIVvhbnVC6sPaHIn6uQLKg5DgD0/Y=
=r/4w
-----END PGP SIGNATURE-----

--Sig_/bA+KJz8j3Xn7JbZ.zSR/l.7--
