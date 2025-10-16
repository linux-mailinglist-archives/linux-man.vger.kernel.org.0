Return-Path: <linux-man+bounces-4169-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 88697BE2D20
	for <lists+linux-man@lfdr.de>; Thu, 16 Oct 2025 12:33:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 69D7C4E9614
	for <lists+linux-man@lfdr.de>; Thu, 16 Oct 2025 10:33:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DDD5A1A2C11;
	Thu, 16 Oct 2025 10:33:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ih7kkxvx"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E5B732863E
	for <linux-man@vger.kernel.org>; Thu, 16 Oct 2025 10:33:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760610813; cv=none; b=FNJlEupzOZnxTFZjc5BH0d6MJWXH8Ld2BWy7Z0/cEklyseAFKZ4rkKo8/LCD8yn5V2ml3NJrXvc2UfrQ5d+mwjajGNBpzH+o6A6h2BJxbjgBWp2eJuYi8NgCwFa8wSMJW/4Azmllu96KWSAGv3yNn7KOFKeDQoXjMyXTkN3/eIE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760610813; c=relaxed/simple;
	bh=zxJF3PBDCAL3UGkL4zKizydKkwLBt0py7G8d/EGgS4k=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=lvYX0x75inKZlPgMnf/Aa5epnCU8XZriLKwNc0DfjborpERMV9LtkpCfuEL6kLYqS9zMbm6oGnQrxLKT0pM5TiTpxNXdZqfhlnjQxJCRtMUp3f2jsaTOz+NlqpLFqwc00F3g/b9nBkRDIHrgeqYvPsmmtjAw91WdKQ+S998DNkA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ih7kkxvx; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 36EA2C4CEF1;
	Thu, 16 Oct 2025 10:33:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760610813;
	bh=zxJF3PBDCAL3UGkL4zKizydKkwLBt0py7G8d/EGgS4k=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ih7kkxvxriJR/agvNMR9Hu5X2W6UnYb7OG1k9zMjtxzd0NFQHvVOLjSlaM81x+KmT
	 x8dBkgKijEheEGsvviyaF/Y2hosjNfoxDa3hJHviffLewJysktih6olF4udKTEhXAz
	 ExsrPWY7zagavJN9OosjTep9oeKGNkOuKrFAkdFCrcxt/MXc1tBUb/pTDjenI1uEih
	 pHyzmVXq6xfLS1v97DzER+QOEzZ1zBeaPdrrX0DAM1egOMl8vk3Cj9YcmUCt2L54XY
	 hlgKCBaDUIOLGYU/OyUDSjQitw1R7FdPvWpE5nTOXwu3PQii7B8u16x+DHdwYzdQnW
	 8IjMEjyZJ0pcg==
Date: Thu, 16 Oct 2025 12:33:29 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Kirill Kolyshkin <kolyshkin@gmail.com>
Cc: linux-man@vger.kernel.org, Christian Brauner <brauner@kernel.org>, 
	Oleg Nesterov <oleg@redhat.com>
Subject: Re: [PATCH v3 2/3] pidfd_open.2: add PIDFD_THREAD
Message-ID: <x5745npnfpft6hcqevfrbbsk3xue3zlmiryxf4row64ntjukqt@boixy2qahh3m>
References: <7vb3ed5qttoe6n5ozzjwqtzw5iupifozplkkhd3jjvbhy5efqy@d4ksex445ixl>
 <20251013191049.193375-2-kolyshkin@gmail.com>
 <gavot3gmd5kmwzhlyqobzp36qdtqzyt7zaqaw4lnfbfxanm6d5@amvqcybaaqbx>
 <CAGmPdrxdwVSkUh1xWnp1bbtirnJSZTiVCOCn43iMn_AKgsForg@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="2v7n4h7nxkyxn2ew"
Content-Disposition: inline
In-Reply-To: <CAGmPdrxdwVSkUh1xWnp1bbtirnJSZTiVCOCn43iMn_AKgsForg@mail.gmail.com>


--2v7n4h7nxkyxn2ew
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Kirill Kolyshkin <kolyshkin@gmail.com>
Cc: linux-man@vger.kernel.org, Christian Brauner <brauner@kernel.org>, 
	Oleg Nesterov <oleg@redhat.com>
Subject: Re: [PATCH v3 2/3] pidfd_open.2: add PIDFD_THREAD
Message-ID: <x5745npnfpft6hcqevfrbbsk3xue3zlmiryxf4row64ntjukqt@boixy2qahh3m>
References: <7vb3ed5qttoe6n5ozzjwqtzw5iupifozplkkhd3jjvbhy5efqy@d4ksex445ixl>
 <20251013191049.193375-2-kolyshkin@gmail.com>
 <gavot3gmd5kmwzhlyqobzp36qdtqzyt7zaqaw4lnfbfxanm6d5@amvqcybaaqbx>
 <CAGmPdrxdwVSkUh1xWnp1bbtirnJSZTiVCOCn43iMn_AKgsForg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAGmPdrxdwVSkUh1xWnp1bbtirnJSZTiVCOCn43iMn_AKgsForg@mail.gmail.com>

Hi Kir,

On Wed, Oct 15, 2025 at 05:06:29PM -0700, Kirill Kolyshkin wrote:
> On Wed, Oct 15, 2025 at 2:16=E2=80=AFPM Alejandro Colomar <alx@kernel.org=
> wrote:
> >
> > Hi Kir,
> >
> > On Mon, Oct 13, 2025 at 12:10:48PM -0700, Kir Kolyshkin wrote:
> > > PIDFD_THREAD flag for pidfd_open(2) was added in Linux 6.9 (see [1]).
> > >
> > > Add a TODO to describe the nuances of using poll/epoll/select
> > > with a pidfd referring to a process vs a thread.
> > >
> > > [1]: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.g=
it/commit/?id=3D64bef697d33b
> > >
> > > Signed-off-by: Kir Kolyshkin <kolyshkin@gmail.com>
> > > ---
> >
> > As far as I can see, the only change in v3 compared to v2 is that the
> > commit message is smaller now.  Is that correct?
>=20
> Not quite; I have answered to your earlier concern, let me quote it here:
>=20
> > >  The
> > >  .BR pidfd_open ()
> > >  system call creates a file descriptor that refers to
> > > -the process whose PID is specified in
> > > +the task whose PID is specified in
> >
> > Should this say TID (thread ID)?  Or is it correct as PID?  I don't know
> > which is appropriate here.
>=20
> So I removed the PID and TID usage:
>=20
> > > -the process whose PID is specified in
> > > +the task referenced by
>=20
> In my opinion, as the function is named pidfd_open, it's hard to remove
> the term PID entirely, but in some cases we can rephrase the text to
> not use it. This is what v3 does.
>=20
> I'm not entirely against using the term TID, but here it may result in
> even more confusion.

Ahh, thanks!  That makes sense.

I was eyeballing the two emails to find the differences, but I missed
that difference.  It's hard to do eyeball-diff.  :)

That's why I recommend contributors to use the --range-diff feature of
git-format-patch(1).  See the contributing guidelines about it (below).


Have a lovely day!
Alex

	$ cat CONTRIBUTING.d/patches/range-diff=20
	Name
		patches/range-diff - instructions for producing a range-diff

	Description
		We recommend using git-format-patch(1) to prepare the patches.
		Please use --range-diff to document the differences between
		revisions of the patch set, even in the first revision.

		To prepare a git(1) branch to be sent as a patch set (v1):

			$ git format-patch -o ./patches master..HEAD \
				--range-diff=3Dmaster -v1 \
				--cover-letter;

		The range diff will be included in the cover letter (or in a
		single patch, if there is only one):

			$ tail -n7 ./patches/v1-0000-cover-letter.patch;
			Range-diff against v0:
			-:  --------- > 1:  7ec952012 foo.3: tfix
			-:  --------- > 2:  d80376b08 bar.3: ffix
			-:  --------- > 3:  892a12470 foo.3: wfix
			--
			2.43.0

		To send a v2 after some feedback:

			$ git format-patch -o ./patches master..HEAD \
				--range-diff=3Dold_master..old_HEAD -v2 \
				--cover-letter;

		The values for 'old_master' and 'old_HEAD' can be consulted in
		the previous cover letter.  In this example, it would be
		'--range-diff=3D7ec952012^..892a12470'.

	See also
		<https://inbox.sourceware.org/gcc/ZiV5unTogyI7rPJA@debian/>

>=20
> > Have a lovely night!
> > Alex
> >
> > >  man/man2/pidfd_open.2 | 35 +++++++++++++++++++++++++++++------
> > >  1 file changed, 29 insertions(+), 6 deletions(-)
> > >
> > > diff --git a/man/man2/pidfd_open.2 b/man/man2/pidfd_open.2
> > > index 3c7c568c2..60cac6fdd 100644
> > > --- a/man/man2/pidfd_open.2
> > > +++ b/man/man2/pidfd_open.2
> > > @@ -4,7 +4,7 @@
> > >  .\"
> > >  .TH pidfd_open 2 (date) "Linux man-pages (unreleased)"
> > >  .SH NAME
> > > -pidfd_open \- obtain a file descriptor that refers to a process
> > > +pidfd_open \- obtain a file descriptor that refers to a task
> > >  .SH LIBRARY
> > >  Standard C library
> > >  .RI ( libc ,\~ \-lc )
> > > @@ -25,24 +25,32 @@ .SH DESCRIPTION
> > >  The
> > >  .BR pidfd_open ()
> > >  system call creates a file descriptor that refers to
> > > -the process whose PID is specified in
> > > +the task referenced by
> > >  .IR pid .
> > >  The file descriptor is returned as the function result;
> > >  the close-on-exec flag is set on the file descriptor.
> > >  .P
> > >  The
> > >  .I flags
> > > -argument either has the value 0, or contains the following flag:
> > > +argument either has the value 0, or contains the following flags:
> > >  .TP
> > >  .BR PIDFD_NONBLOCK " (since Linux 5.10)"
> > >  .\" commit 4da9af0014b51c8b015ed8c622440ef28912efe6
> > >  Return a nonblocking file descriptor.
> > > -If the process referred to by the file descriptor has not yet termin=
ated,
> > > +If the task referred to by the file descriptor has not yet terminate=
d,
> > >  then an attempt to wait on the file descriptor using
> > >  .BR waitid (2)
> > >  will immediately return the error
> > >  .B EAGAIN
> > >  rather than blocking.
> > > +.TP
> > > +.BR PIDFD_THREAD " (since Linux 6.9)"
> > > +.\" commit 64bef697d33b75fc06c5789b3f8108680271529f
> > > +Create a file descriptor that refers to a specific thread, rather th=
an a process
> > > +(thread-group leader). If this flag is not set,
> > > +.I pid
> > > +must refer to a process.
> > > +.P
> > >  .SH RETURN VALUE
> > >  On success,
> > >  .BR pidfd_open ()
> > > @@ -155,13 +163,28 @@ .SS Use cases for PID file descriptors
> > >  .BR select (2),
> > >  and
> > >  .BR epoll (7).
> > > -When the process that it refers to terminates,
> > > -these interfaces indicate the file descriptor as readable.
> > > +When the task that it refers to terminates and becomes a zombie,
> > > +these interfaces indicate the file descriptor as readable
> > > +.RB ( EPOLLIN ).
> > > +When the task is reaped, these interfaces produce a hangup event
> > > +.\" commit 43f0df54c96f
> > > +.RB ( EPOLLHUP ).
> > >  Note, however, that in the current implementation,
> > >  nothing can be read from the file descriptor
> > >  .RB ( read (2)
> > >  on the file descriptor fails with the error
> > >  .BR EINVAL ).
> > > +The polling behavior depends on whether
> > > +.B PIDFD_THREAD
> > > +flag was used when obtaining the file descriptor:
> > > +.RS
> > > +.IP \[bu] 3
> > > +With \fBPIDFD_THREAD\fR, the file descriptor becomes readable when t=
he task
> > > +exits and becomes a zombie, even if the thread-group is not empty.
> > > +.IP \[bu] 3
> > > +Without \fBPIDFD_THREAD\fR, the file descriptor becomes readable onl=
y when
> > > +the last thread in the thread group exits.
> > > +.RE
> > >  .IP \[bu]
> > >  If the PID file descriptor refers to a child of the calling process,
> > >  then it can be waited on using
> > > --
> > > 2.51.0
> > >
> >
> > --
> > <https://www.alejandro-colomar.es>
> > Use port 80 (that is, <...:80/>).

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--2v7n4h7nxkyxn2ew
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmjwyfkACgkQ64mZXMKQ
wqm7PBAAru/207vhO3mnrlLNOrrBHOPR6iD912HiBS51+hE8bvPfB/Xvj0JdYa6Y
cUwZ0AThjC+lNHkPfS6Immo1jfO+tD+LO9i79JcxmFl6flEdiTNoteDb3a8++dDw
9VngCQerDHkAMN/RgchD3sOBD6kLoPTEFWDelFGWgfqvOT0GtzpH4FSjR74t34Sb
XnP71srY37SDihjd/X9eqQ6VRWdgQGDRBWn312Um9L4UvkeCNPlcwfRJ2m0368N4
KslW6VnC5SHoZzTuRNCkkM1Ehg2j3WmKpfeKANNUIDwwbHLOJ3kgfLHzQmKLRgcP
KY6rMo1ZVWe+E6Fy6gvYpV4FaNyIKBLx2PQTcocWjKnJLTyztvdy3rgDXm0k9fww
zpqf53haydwIavHRZFUMYxihXjWgC4AMCXdw7m6kTwc5SZBazZnRkaC7LOZkICS0
kyOssgnOmVhrWVXMWKYWW1Og6zjMtYi62+3d1bMMp5wNmYbftM61JILcBUuVhKJO
QAJGtaEsiybntFOAchkTZuQX0IWQMzy5JzSwJtl0F3ZMWWGM0c+W+qR3sR/ZxEvp
t9Vq4OyglwdINBJDke+k/Zi4bsIFdz/nlLv/pogQ/kzjhl5jB1sXfBDWLjfeSnXc
pBEqSbTXlbpkEIBZPm26OMJ6Fod6TaKKF/RHat3ZGaSaKSXsplc=
=Ges8
-----END PGP SIGNATURE-----

--2v7n4h7nxkyxn2ew--

