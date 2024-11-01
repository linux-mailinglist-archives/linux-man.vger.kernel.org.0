Return-Path: <linux-man+bounces-1810-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 00AC39B91F1
	for <lists+linux-man@lfdr.de>; Fri,  1 Nov 2024 14:24:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 239EE1C217A3
	for <lists+linux-man@lfdr.de>; Fri,  1 Nov 2024 13:24:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B767019AD5C;
	Fri,  1 Nov 2024 13:24:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BW90yfi5"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F0279479;
	Fri,  1 Nov 2024 13:24:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730467486; cv=none; b=bc8I6bWEny8fiJKwa277FKudCR82QIdMBk43oR/gG9VOlB48wJYt7AHDrMJ3DFAL1xWnVbtInbEDDKtjjNIy0a1sFbp5G/Xr8w3pOM/sshgXgsiNB1fD55jej34zvsOm0xvQPxOyg9PcKLPUKqkKh4sD2xqAhZYJh6LlKMBXYck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730467486; c=relaxed/simple;
	bh=kOPe53k3pne06Tgy9gvWlTsoJZ6eLug2mHwnHOd1KC0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RuHksoH6+G+i2GtWxKsZ1R0OQn7i5PiZlbhmmzMBe58OcbBz/FEJFXjn4RY4h6n4Y43oUbJU5BrUhjjHavwnZtnuG5CRft75AVTUJONhfsLUwYn0eaC5iZhrOdv3fmLg9NBAdH3vJK+TUvF1h3cC063ua8BnbfR7n0z7a52bXPs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BW90yfi5; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2CF1CC4CECD;
	Fri,  1 Nov 2024 13:24:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730467485;
	bh=kOPe53k3pne06Tgy9gvWlTsoJZ6eLug2mHwnHOd1KC0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=BW90yfi5VjHVGsx+qjjfpfbR/939M3+2W+t0zwt7buqUP0Ccd6n/ZHArIRu07gRUI
	 lN2TYl8hLpIZhdF5gmFUJ8gPtUQtFP5eHsdkLYLDJTjjNz7XqK5sfH3kSvLQHi6XY3
	 ybIQpcfOzWwcNotk2dPw3bXLhIj9nbjtzJyknYpsLYT5OQA1u4qzGAMLoyTV947myL
	 i1fA4ZYvxsxI2pD3UV2OO1SIutLgjPMlniZLu5IfzQpiR/FIyeClkqcZXR1lCmXF0Z
	 PQZYpDVod+b1gv4IwWE8eCl3GWFNH2gU4K8hBqt4ztmnB38yilZdEkxkGV0S5eF1Fk
	 IZuRbRBhe8aAQ==
Date: Fri, 1 Nov 2024 14:24:37 +0100
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
Subject: Re: [PATCH v2 1/3] proc_pid_fdinfo.5: Reduce indent for most of the
 page
Message-ID: <20241101132437.ahn7xdgvmqamatce@devuan>
References: <20241015211719.1152862-1-irogers@google.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="rrjrdqy252cemugf"
Content-Disposition: inline
In-Reply-To: <20241015211719.1152862-1-irogers@google.com>


--rrjrdqy252cemugf
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v2 1/3] proc_pid_fdinfo.5: Reduce indent for most of the
 page
MIME-Version: 1.0

On Tue, Oct 15, 2024 at 02:17:17PM -0700, Ian Rogers wrote:
> When /proc/pid/fdinfo was part of proc.5 man page the indentation made
> sense. As a standalone man page the indentation doesn't need to be so
> far over to the right. Remove the initial tagged pragraph and move the
> styling to the initial summary description.
>=20
> Suggested-by: G. Branden Robinson <g.branden.robinson@gmail.com>
> Signed-off-by: Ian Rogers <irogers@google.com>
> ---
>  man/man5/proc_pid_fdinfo.5 | 66 ++++++++++++++++++--------------------
>  1 file changed, 32 insertions(+), 34 deletions(-)
>=20
> diff --git a/man/man5/proc_pid_fdinfo.5 b/man/man5/proc_pid_fdinfo.5
> index 1e23bbe02..8678caf4a 100644
> --- a/man/man5/proc_pid_fdinfo.5
> +++ b/man/man5/proc_pid_fdinfo.5
> @@ -6,20 +6,19 @@
>  .\"
>  .TH proc_pid_fdinfo 5 (date) "Linux man-pages (unreleased)"
>  .SH NAME
> -/proc/pid/fdinfo/ \- information about file descriptors
> +.IR /proc/ pid /fdinfo " \- information about file descriptors"

I wouldn't add formatting here for now.  That's something I prefer to be
cautious about, and if we do it, we should do it in a separate commit.

>  .SH DESCRIPTION
> -.TP
> -.IR /proc/ pid /fdinfo/ " (since Linux 2.6.22)"
> -This is a subdirectory containing one entry for each file which the
> -process has open, named by its file descriptor.
> -The files in this directory are readable only by the owner of the proces=
s.
> -The contents of each file can be read to obtain information
> -about the corresponding file descriptor.
> -The content depends on the type of file referred to by the
> -corresponding file descriptor.
> -.IP
> +Since Linux 2.6.22,

You could move this information to a HISTORY section.

> +this subdirectory contains one entry for each file that process
> +.I pid
> +has open, named by its file descriptor.  The files in this directory

Please don't reflow existing text.  Please read about semantic newlines
in man-pages(7):

$ MANWIDTH=3D72 man man-pages | sed -n '/Use semantic newlines/,/^$/p'
   Use semantic newlines
     In  the  source of a manual page, new sentences should be started
     on new lines, long sentences should be split into lines at clause
     breaks (commas, semicolons, colons, and so on), and long  clauses
     should be split at phrase boundaries.  This convention, sometimes
     known  as  "semantic newlines", makes it easier to see the effect
     of patches, which often operate at the level of  individual  sen=E2=80=
=90
     tences, clauses, or phrases.

Have a lovely day!
Alex

> +are readable only by the owner of the process.  The contents of each
> +file can be read to obtain information about the corresponding file
> +descriptor.  The content depends on the type of file referred to by
> +the corresponding file descriptor.
> +.P
>  For regular files and directories, we see something like:
> -.IP
> +.P
>  .in +4n
>  .EX
>  .RB "$" " cat /proc/12015/fdinfo/4"
> @@ -28,7 +27,7 @@ flags:  01002002
>  mnt_id: 21
>  .EE
>  .in
> -.IP
> +.P
>  The fields are as follows:
>  .RS
>  .TP
> @@ -51,7 +50,6 @@ this field incorrectly displayed the setting of
>  at the time the file was opened,
>  rather than the current setting of the close-on-exec flag.
>  .TP
> -.I
>  .I mnt_id
>  This field, present since Linux 3.15,
>  .\" commit 49d063cb353265c3af701bab215ac438ca7df36d
> @@ -59,13 +57,13 @@ is the ID of the mount containing this file.
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
> @@ -74,16 +72,16 @@ mnt_id:	10
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
> @@ -93,7 +91,7 @@ tfd:        9 events:       19 data: 74253d2500000009
>  tfd:        7 events:       19 data: 74253d2500000007
>  .EE
>  .in
> -.IP
> +.P
>  Each of the lines beginning
>  .I tfd
>  describes one of the file descriptors being monitored via
> @@ -110,13 +108,13 @@ descriptor.
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
> @@ -125,7 +123,7 @@ mnt_id:	10
>  sigmask:	0000000000000006
>  .EE
>  .in
> -.IP
> +.P
>  .I sigmask
>  is the hexadecimal mask of signals that are accepted via this
>  signalfd file descriptor.
> @@ -135,12 +133,12 @@ and
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
> @@ -150,7 +148,7 @@ inotify wd:2 ino:7ef82a sdev:800001 mask:800afff igno=
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
> @@ -168,19 +166,19 @@ The ID of the device where the target file resides =
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
> @@ -190,7 +188,7 @@ fanotify flags:0 event\-flags:88002
>  fanotify ino:19264f sdev:800001 mflags:0 mask:1 ignored_mask:0 fhandle\-=
bytes:8 fhandle\-type:1 f_handle:4f261900a82dfd73
>  .EE
>  .in
> -.IP
> +.P
>  The fourth line displays information defined when the fanotify group
>  was created via
>  .BR fanotify_init (2):
> @@ -210,7 +208,7 @@ argument given to
>  .BR fanotify_init (2)
>  (expressed in hexadecimal).
>  .RE
> -.IP
> +.P
>  Each additional line shown in the file contains information
>  about one of the marks in the fanotify group.
>  Most of these fields are as for inotify, except:
> @@ -228,16 +226,16 @@ The events mask for this mark
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
> --=20
> 2.47.0.rc1.288.g06298d1525-goog
>=20

--=20
<https://www.alejandro-colomar.es/>

--rrjrdqy252cemugf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmck1pUACgkQnowa+77/
2zI8FQ/8D9EPYu4wju/TAVHgaKGIEfcv/qsDaMh52KMkW/6Lkj81laXLzfEk5zPw
yMYKELHyhvNZe8ZjL94BKFRmX1wE4MJBtMy/a8FVwIGdsY3+Odla55NMWlj6pk9Z
OH3c3QaSP9US1OdSoXf61bt3v6nwL3pyUtoCm5ZMGRmCIOy4rLZnWhfAwBexL0jE
/EM56KjB0aENn8wLOtgz+vNuPVrXQHMIQ9b/+p3Ymu1gPi8Jpou2Cmzk3smnYnQi
B0sgaAkVXnUJwhmCH7hwzuVXrKkHzOMbVrfgJzU7ONOXPJyn7LBdMF2oR9/BzpcG
Jgn2UJ7n+hffD35M10MzdW5HFgPo/NTdWEp4SCaZE0u2Lg2PUJUl3nnsmFm56Jqb
VNqdF9aMdYT/WNJhZY/QpDjkZwXeo3xd4uLWaxImzx3IYkQMsiQ178hNKPYu3j/V
qG8AhgHnyHTGUBDGKZazKB+sZgXKLyfORuFE0KqvJi34ZzCxZ/tPX5szJYyd5iR5
O0HUDeCrwmFRnxFqlGnJD43uuVrPq/tVoMN8xTVbRRoKmTlidhZHUaz5+jOjjRBI
s1p4fppcGF3aFTeslQsT3umhKtE8U1xYOqYdk96JpVsznjU/je073TQeiT2eaMSH
YecF07tEWELQiWbr79B/hQ+1Doi8vhseJPb15kl7OuXTzNfUZqQ=
=KPYY
-----END PGP SIGNATURE-----

--rrjrdqy252cemugf--

