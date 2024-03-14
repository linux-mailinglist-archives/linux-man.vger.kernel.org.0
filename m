Return-Path: <linux-man+bounces-593-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 535A087C11E
	for <lists+linux-man@lfdr.de>; Thu, 14 Mar 2024 17:19:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D793D28143F
	for <lists+linux-man@lfdr.de>; Thu, 14 Mar 2024 16:19:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B393173519;
	Thu, 14 Mar 2024 16:19:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AlzRRS8/"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7217173517
	for <linux-man@vger.kernel.org>; Thu, 14 Mar 2024 16:19:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710433182; cv=none; b=k4ufBgop72WlG+lhF03hMtrKGLG+OtwTW+NFJ3nx7jyKJvNxLti5a0bnn8Me3wOoA04zuEyNeSvfY3hzJfq4CZgMmNB9GaSJujICtv/sF9PBbiocW6xPS62ll899Rg40NEDMd88vBNAHniD52k+jsYDTXfwvP+UToLLvAcy+gPw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710433182; c=relaxed/simple;
	bh=MnxsZEKsy3SRKccEBR7ghVf2pXZMa8XJRIA8DXRgR9g=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=hH/4mwvLnmaJW8m1f2kmh3K+rMKd+ujxfnzln/EpLsqeAXEQIf/Zi76poYvq+sHNhHb2uAxZNwtEpQH7m2A7L+SCYR1KUmRe4uImF31B54m9mNkLLK8nypkpA5DgGOapqzmVT+hxx6MRJeatfIGZ4n0xzHVD5CqJyOJ7pj2BwHc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AlzRRS8/; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3FDF8C433F1;
	Thu, 14 Mar 2024 16:19:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710433181;
	bh=MnxsZEKsy3SRKccEBR7ghVf2pXZMa8XJRIA8DXRgR9g=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=AlzRRS8/7CQkgVDY7EzmAHxAa866/E0sU3+sW3TUCKF0tGTIToBg1X2937KEPT+ps
	 V2Zbl/yI9x2NV0uX/gqawAI4VXjNFGnSgAVGata1XPD0X7Lws6xsQn9lrs2C3gNJsp
	 9WWpwgDhEPvA7PVuTYEroORJJtRzGRBn5K5MCDvzMRjX5B73Q1h+ekFOnywWY0RiTX
	 b8tQ9cmhtg9dfIIoy/KADOHZ32txaeUaeI3pyGH6Bfn5qNoIRFoXChSy6O/jXzh+sw
	 JUb3MbEHeOc1jkLM1gecqb+63FsnlkmsF5Ih4brzgu5ehA49mRHdzZUOPSiETvy0Xc
	 B++V4E7176NOw==
Date: Thu, 14 Mar 2024 17:19:38 +0100
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 1/6] proc_pid_io.5: stats include children
Message-ID: <ZfMjmzvar4U1mg_K@debian>
References: <1513ee2073bcf0fae7bb720bcee8a8de847e5cf5.1710339990.git.nabijaczleweli@nabijaczleweli.xyz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="O5B+YnbxbD3OOoPs"
Content-Disposition: inline
In-Reply-To: <1513ee2073bcf0fae7bb720bcee8a8de847e5cf5.1710339990.git.nabijaczleweli@nabijaczleweli.xyz>


--O5B+YnbxbD3OOoPs
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Thu, 14 Mar 2024 17:19:38 +0100
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 1/6] proc_pid_io.5: stats include children

Hi =D0=BD=D0=B0=D0=B1,

On Wed, Mar 13, 2024 at 03:26:44PM +0100, =D0=BD=D0=B0=D0=B1 wrote:
> This file is like getrusage(2) RUSAGE_SELF + RUSAGE_CHILDREN,
> the current wording implies it's like just RUSAGE_SELF.
>=20
> Compare:
[...]

LGTM.

> Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xy=
z>
> ---
>  man5/proc_pid_io.5 | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
>=20
> diff --git a/man5/proc_pid_io.5 b/man5/proc_pid_io.5
> index 124252319..81cfdd249 100644
> --- a/man5/proc_pid_io.5
> +++ b/man5/proc_pid_io.5
> @@ -11,7 +11,7 @@ .SH DESCRIPTION
>  .TP
>  .IR /proc/ pid /io " (since Linux 2.6.20)"
>  .\" commit 7c3ab7381e79dfc7db14a67c6f4f3285664e1ec2
> -This file contains I/O statistics for the process, for example:
> +This file contains I/O statistics for the process and its waited-for chi=
ldren, for example:

Please use semantic newlines.  Maybe after 'statistics'?  And then also
after the comma.  Do a similar thing in the hunks below.

Have a lovely day!
Alex

>  .IP
>  .in +4n
>  .EX
> @@ -30,7 +30,7 @@ .SH DESCRIPTION
>  .RS
>  .TP
>  .IR rchar ": characters read"
> -The number of bytes which this task has caused to be read from storage.
> +The number of bytes which this task and its waited-for children have cau=
sed to be read from storage.
>  This is simply the sum of bytes which this process passed to
>  .BR read (2)
>  and similar system calls.
> @@ -40,7 +40,7 @@ .SH DESCRIPTION
>  pagecache).
>  .TP
>  .IR wchar ": characters written"
> -The number of bytes which this task has caused, or shall cause to be wri=
tten
> +The number of bytes which this task and its waited-for children has caus=
ed, or shall cause to be written
>  to disk.
>  Similar caveats apply here as with
>  .IR rchar .
> @@ -60,12 +60,12 @@ .SH DESCRIPTION
>  .BR pwrite (2).
>  .TP
>  .IR read_bytes ": bytes read"
> -Attempt to count the number of bytes which this process really did cause=
 to
> +Attempt to count the number of bytes which this process and its waited-f=
or children really did cause to
>  be fetched from the storage layer.
>  This is accurate for block-backed filesystems.
>  .TP
>  .IR write_bytes ": bytes written"
> -Attempt to count the number of bytes which this process caused to be sen=
t to
> +Attempt to count the number of bytes which this process and its waited-f=
or children caused to be sent to
>  the storage layer.
>  .TP
>  .IR cancelled_write_bytes :
> @@ -73,7 +73,7 @@ .SH DESCRIPTION
>  If a process writes 1 MB to a file and then deletes the file,
>  it will in fact perform no writeout.
>  But it will have been accounted as having caused 1 MB of write.
> -In other words: this field represents the number of bytes which this pro=
cess
> +In other words: this field represents the number of bytes which this pro=
cess and its waited-for children
>  caused to not happen, by truncating pagecache.
>  A task can cause "negative" I/O too.
>  If this task truncates some dirty pagecache,
> --=20
> 2.39.2
>=20



--=20
<https://www.alejandro-colomar.es/>

--O5B+YnbxbD3OOoPs
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmXzI5oACgkQnowa+77/
2zJrbQ//RxAzEDLqD+FkyZq7exyeTXQJA8MQeyb+SaDpn/3HD/v6bmKRw6OBH0N9
206DC2NUP+MLvEvo6T1fNdmi5rzecG2FLxqIIuXCh6vxz9sGmUxSvZLo4t6m0ch4
UizR16viTxIbPXppOd+aKfhTNSeUMJU2+IvKydZZzAcDhE81FoHYR3SIG82cXOfr
3Ubhi6FOpqFmGhlo+F01Grf9+Xo2/P4/O6wKhL5sKCpKQDY+dtL+9zQYhYWlBX9m
wth2OepdmvjEwu977OyP72e8uwLNYZFIUgcvzAmw26AaGfZmwObP8qz95OBgKeDf
RMznydOhPctm/zuv2oH2sxFGUnydwqXKyWoEgG6PwZTMNGGXu4ffZ9xeq5RAUjYx
gOqSCynI1IJMYjRd/leDioCrGSKvc7ji7OBpFgmrgcBtm+kkzvfBFohUfE/6jbhB
dT0eEUw9OeGo9/e926y3UmpDCiSq7ygsvP16nLCDp7s9Q84X8s2nHAMR4ugQAHIA
pleDZsLMiU1nBhUavyRSvQgZEpTSdrqIIIo2lVxmBFoT7HLe3fHNAiZ3+W4bPwJM
c0IK522laU2+B5dAnd7Kto0HorHvYWKqb/hX0i6zvBN9GMJG89qD2ArZptPcG2p0
94aQkqY93FGKqxlniqmogbSrnaYQUpMYXgQFBdrH0mvEOMfDC1g=
=ti3G
-----END PGP SIGNATURE-----

--O5B+YnbxbD3OOoPs--

