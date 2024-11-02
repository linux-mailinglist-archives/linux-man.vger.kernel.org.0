Return-Path: <linux-man+bounces-1827-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EC5F9B9E6B
	for <lists+linux-man@lfdr.de>; Sat,  2 Nov 2024 10:48:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9F1621C218AC
	for <lists+linux-man@lfdr.de>; Sat,  2 Nov 2024 09:48:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A49D516A94B;
	Sat,  2 Nov 2024 09:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aYBfr6Md"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 548C516726E;
	Sat,  2 Nov 2024 09:48:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730540913; cv=none; b=kKRIuOAFqqzOEnQMX3OWv1souemgEjcUSI8aQCxTw3Gl1smJD0cTCm3kOP1/f1ZArTBcE6aQdJOJLiklF8iV+v4CTNMyX0ivCq4PkqPwlBAENg0WRE9gtT2GjekTB6Wx3hLcPAe05/C6J+VXyTrQ+FFrIpGf6MKFhUHmD/dr8go=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730540913; c=relaxed/simple;
	bh=jd28hCvXGoTqrGluJ1YGAvzXlDy9P1YJIaXnpIhXrVY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cAINNJxxV9iFL5N9HPxsIpOBVu3jTnpYosJb/n7AqyIgzzn20sufozP3Oe4nBYoFZZ0qHyuFpLmUTHu5tV3bAVyeieq68xm4LYvMdGgibZWHW6+669tWO1/roi+6mu2iBh1lyqm3135ywHEPHU1qIq2zTD+fhwOrMTnpdS6cGio=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aYBfr6Md; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 299E4C4CEC3;
	Sat,  2 Nov 2024 09:48:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730540912;
	bh=jd28hCvXGoTqrGluJ1YGAvzXlDy9P1YJIaXnpIhXrVY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=aYBfr6MdRQY25x9hdTXkNbkPmhm1rXGvVexpYuulyHz5g2qu7gWS7tMPO0d0dMyEd
	 gaLs0aQX3IMZOP+YiQo9+bYWaejfxNHfFXc08tOL5fOIungIlQolZtkzaHwv2w2Dlp
	 xoqsau3zU3dXcVSQiqlBhc4zCRsvaaZCIOG956FWC/1H2K1nCiPvPbr1R+qDlF3EoF
	 TjAkyOdKQfAIXq1cB9KkbxkG8ELGhep9VlAEa6Vx3HvuErTxZfLiiA8Uby925x89Ry
	 eQE3SVwp+3D0w/sGKMXDnyDiTHypJGNuW+9h6Kr7ljUozt6u3r7e8ilVUekG2tD6YW
	 Jr6cs25a9E25w==
Date: Sat, 2 Nov 2024 10:48:16 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Ian Rogers <irogers@google.com>
Cc: "G . Branden Robinson" <g.branden.robinson@gmail.com>,
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Jonathan Corbet <corbet@lwn.net>, dri-devel@lists.freedesktop.org,
	linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-man@vger.kernel.org
Subject: Re: [PATCH v4 1/4] proc_pid_fdinfo.5: Reduce indent for most of the
 page
Message-ID: <20241102094816.rpxwjv4wnfsepg3x@devuan>
References: <20241101211830.1298073-1-irogers@google.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="77xwxs3hqc5jfuto"
Content-Disposition: inline
In-Reply-To: <20241101211830.1298073-1-irogers@google.com>


--77xwxs3hqc5jfuto
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v4 1/4] proc_pid_fdinfo.5: Reduce indent for most of the
 page
MIME-Version: 1.0

Hi Ian,

On Fri, Nov 01, 2024 at 02:18:27PM -0700, Ian Rogers wrote:
> When /proc/pid/fdinfo was part of proc.5 man page the indentation made
> sense. As a standalone man page the indentation doesn't need to be so
> far over to the right. Remove the initial tagged pragraph, move the
> "since Linux 2.6.22" to a new history subsection.
>=20
> Suggested-by: G. Branden Robinson <g.branden.robinson@gmail.com>
> Signed-off-by: Ian Rogers <irogers@google.com>
> ---
> v4. Move since to history from Alejandro Colomar's <alx@kernel.org> review
>     comment.
>=20
> ---
>  man/man5/proc_pid_fdinfo.5 | 51 +++++++++++++++++++-------------------
>  1 file changed, 25 insertions(+), 26 deletions(-)
>=20
> diff --git a/man/man5/proc_pid_fdinfo.5 b/man/man5/proc_pid_fdinfo.5
> index 1e23bbe02..ad739bd84 100644
> --- a/man/man5/proc_pid_fdinfo.5
> +++ b/man/man5/proc_pid_fdinfo.5
> @@ -8,8 +8,6 @@
>  .SH NAME
>  /proc/pid/fdinfo/ \- information about file descriptors
>  .SH DESCRIPTION
> -.TP
> -.IR /proc/ pid /fdinfo/ " (since Linux 2.6.22)"
>  This is a subdirectory containing one entry for each file which the
>  process has open, named by its file descriptor.
>  The files in this directory are readable only by the owner of the proces=
s.
> @@ -17,9 +15,9 @@ The contents of each file can be read to obtain informa=
tion
>  about the corresponding file descriptor.
>  The content depends on the type of file referred to by the
>  corresponding file descriptor.
> -.IP
> +.P
>  For regular files and directories, we see something like:
> -.IP
> +.P
>  .in +4n
>  .EX
>  .RB "$" " cat /proc/12015/fdinfo/4"
> @@ -28,7 +26,7 @@ flags:  01002002
>  mnt_id: 21
>  .EE
>  .in
> -.IP
> +.P
>  The fields are as follows:
>  .RS
>  .TP
> @@ -51,7 +49,6 @@ this field incorrectly displayed the setting of
>  at the time the file was opened,
>  rather than the current setting of the close-on-exec flag.
>  .TP
> -.I
>  .I mnt_id
>  This field, present since Linux 3.15,
>  .\" commit 49d063cb353265c3af701bab215ac438ca7df36d
> @@ -59,13 +56,13 @@ is the ID of the mount containing this file.
>  See the description of
>  .IR /proc/ pid /mountinfo .
>  .RE
> -.IP
> +.P
>  For eventfd file descriptors (see
>  .BR eventfd (2)),
>  we see (since Linux 3.8)
>  .\" commit cbac5542d48127b546a23d816380a7926eee1c25
>  the following fields:
> -.IP
> +.P
>  .in +4n
>  .EX
>  pos:	0
> @@ -74,16 +71,16 @@ mnt_id:	10
>  eventfd\-count:               40
>  .EE
>  .in
> -.IP
> +.P
>  .I eventfd\-count
>  is the current value of the eventfd counter, in hexadecimal.
> -.IP
> +.P
>  For epoll file descriptors (see
>  .BR epoll (7)),
>  we see (since Linux 3.8)
>  .\" commit 138d22b58696c506799f8de759804083ff9effae
>  the following fields:
> -.IP
> +.P
>  .in +4n
>  .EX
>  pos:	0
> @@ -93,7 +90,7 @@ tfd:        9 events:       19 data: 74253d2500000009
>  tfd:        7 events:       19 data: 74253d2500000007
>  .EE
>  .in
> -.IP
> +.P
>  Each of the lines beginning
>  .I tfd
>  describes one of the file descriptors being monitored via
> @@ -110,13 +107,13 @@ descriptor.
>  The
>  .I data
>  field is the data value associated with this file descriptor.
> -.IP
> +.P
>  For signalfd file descriptors (see
>  .BR signalfd (2)),
>  we see (since Linux 3.8)
>  .\" commit 138d22b58696c506799f8de759804083ff9effae
>  the following fields:
> -.IP
> +.P
>  .in +4n
>  .EX
>  pos:	0
> @@ -125,7 +122,7 @@ mnt_id:	10
>  sigmask:	0000000000000006
>  .EE
>  .in
> -.IP
> +.P
>  .I sigmask
>  is the hexadecimal mask of signals that are accepted via this
>  signalfd file descriptor.
> @@ -135,12 +132,12 @@ and
>  .BR SIGQUIT ;
>  see
>  .BR signal (7).)
> -.IP
> +.P
>  For inotify file descriptors (see
>  .BR inotify (7)),
>  we see (since Linux 3.8)
>  the following fields:
> -.IP
> +.P
>  .in +4n
>  .EX
>  pos:	0
> @@ -150,7 +147,7 @@ inotify wd:2 ino:7ef82a sdev:800001 mask:800afff igno=
red_mask:0 fhandle\-bytes:8
>  inotify wd:1 ino:192627 sdev:800001 mask:800afff ignored_mask:0 fhandle\=
-bytes:8 fhandle\-type:1 f_handle:27261900802dfd73
>  .EE
>  .in
> -.IP
> +.P
>  Each of the lines beginning with "inotify" displays information about
>  one file or directory that is being monitored.
>  The fields in this line are as follows:
> @@ -168,19 +165,19 @@ The ID of the device where the target file resides =
(in hexadecimal).
>  .I mask
>  The mask of events being monitored for the target file (in hexadecimal).
>  .RE
> -.IP
> +.P
>  If the kernel was built with exportfs support, the path to the target
>  file is exposed as a file handle, via three hexadecimal fields:
>  .IR fhandle\-bytes ,
>  .IR fhandle\-type ,
>  and
>  .IR f_handle .
> -.IP
> +.P
>  For fanotify file descriptors (see
>  .BR fanotify (7)),
>  we see (since Linux 3.8)
>  the following fields:
> -.IP
> +.P
>  .in +4n
>  .EX
>  pos:	0
> @@ -190,7 +187,7 @@ fanotify flags:0 event\-flags:88002
>  fanotify ino:19264f sdev:800001 mflags:0 mask:1 ignored_mask:0 fhandle\-=
bytes:8 fhandle\-type:1 f_handle:4f261900a82dfd73
>  .EE
>  .in
> -.IP
> +.P
>  The fourth line displays information defined when the fanotify group
>  was created via
>  .BR fanotify_init (2):
> @@ -210,7 +207,7 @@ argument given to
>  .BR fanotify_init (2)
>  (expressed in hexadecimal).
>  .RE
> -.IP
> +.P
>  Each additional line shown in the file contains information
>  about one of the marks in the fanotify group.
>  Most of these fields are as for inotify, except:
> @@ -228,16 +225,16 @@ The events mask for this mark
>  The mask of events that are ignored for this mark
>  (expressed in hexadecimal).
>  .RE
> -.IP
> +.P
>  For details on these fields, see
>  .BR fanotify_mark (2).
> -.IP
> +.P
>  For timerfd file descriptors (see
>  .BR timerfd (2)),
>  we see (since Linux 3.17)
>  .\" commit af9c4957cf212ad9cf0bee34c95cb11de5426e85
>  the following fields:
> -.IP
> +.P
>  .in +4n
>  .EX
>  pos:    0
> @@ -296,5 +293,7 @@ fields contain the values that
>  .BR timerfd_gettime (2)
>  on this file descriptor would return.)
>  .RE
> +.SH HISTORY
> +Since Linux 2.6.22.

In the HISTORY section we don't add the "Since", since it's obvious.
Just

Linux x.y.z.

Have a lovely day!
Alex

>  .SH SEE ALSO
>  .BR proc (5)
> --=20
> 2.47.0.199.ga7371fff76-goog
>=20

--=20
<https://www.alejandro-colomar.es/>

--77xwxs3hqc5jfuto
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmcl9WAACgkQnowa+77/
2zK29w//R+cB0ouFZ+/E9pIYrBoa9T+TtycqsBlrD5fv4IbJtwqmJGFvvTUbpBqB
AUT9Xda02pUM7Ppj6y4ZheWTCEp9sI87iI2QVZU6QwtPRr4Qk5MGd06uiAUQzi0K
Gj95Y4l+MqIVwBdWShDWjd25B3m8V7gBtOwLTUPDBO9x2ifbLkK+MM+Mj2JWFGC9
Y2jiq3MHB/O3ohR2u5meAbmTagpatvBrhvJ9aa4LC+8Hkiiu6yRKobX/+KlJ6o9L
Pn4FVwcGh+Tm6JlRKx0Q8Y98VIjO3Pzn7tP+cetUdHbmPnUw6ml0AAS/nCdhvA8b
sSrKU565Wc/AZRHEygvNXfhXTkYNfsXkqg6YQyCgMhGlyKVWC03xN/sJtk18/vaC
HL0sOxKziIgePEHJJAihD5UMCjNsQG7yJI639OAPQUudHvpmcpLq5EYanDuxnqyz
hCwFKUcfpomYpIv255X+E6e1DmO9tfenoLUy9OaTj/b6p+XHCcm1qV/n8sVJV/ia
+2edfKupQiq1FfkqEGWP4ac2C+1vd7MvpiQy30fRGeInW3Mk/6We8wrOWNoPd/Ox
spMYCmuCJGXY/bZVEC9CYEzTsZV2GdKTxUyVQXG7cuftPtLcumC4MzGbELL5hwID
xyNHHKjP5I3M8oFoZICC4s04c/Z9j8TApe/Y7nMT7fRxvIRfFBM=
=+0ZT
-----END PGP SIGNATURE-----

--77xwxs3hqc5jfuto--

