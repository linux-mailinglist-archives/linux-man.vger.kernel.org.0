Return-Path: <linux-man+bounces-640-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id BDB1487DD1D
	for <lists+linux-man@lfdr.de>; Sun, 17 Mar 2024 13:15:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 27549281370
	for <lists+linux-man@lfdr.de>; Sun, 17 Mar 2024 12:15:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9FE8CEACE;
	Sun, 17 Mar 2024 12:15:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jwmID120"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 609541C680
	for <linux-man@vger.kernel.org>; Sun, 17 Mar 2024 12:15:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710677722; cv=none; b=f+687JvP0cdw14XhZbkwh+c2DEdjRX5f9FkynUHMPOHqx+UK2ETERsRzr1R7XZdkQfrlrJDNe6D3U7uk0Wx7EAuLR7EJxceJSz0ROWxtyO7p+hL3sTDSrnxZn+UnrfLowDNcNQZoCW+/mhPLCrHSXF9PFyP8I0Sw+IRgDqHPdZo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710677722; c=relaxed/simple;
	bh=KcwwRQCZDkLLr5mgE5Rcs1DViubq8ABsGcn8TcBWDPY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=SIi5uATvpmbbjQjCwMG12kis0cNdTcmEkXUnDviHNMJ1FycDdJMKKLJymHbUIpI0cpQXUL/o6m06UYErucb4+VQbP51NPO7NztzWam4/70T0LCO2QTEUtsOxR/Ia7w/Ic0aehy7lxtIvjJ5DdR57RE3b4lRIzT0wgypDrP1ZRbk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jwmID120; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 49445C433F1;
	Sun, 17 Mar 2024 12:15:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710677721;
	bh=KcwwRQCZDkLLr5mgE5Rcs1DViubq8ABsGcn8TcBWDPY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=jwmID120lbgsNrDBsJTFek1Pdm+QfhQf+SpKHcjZwvVi4f99PlsyOZ1Gi1dt+pNTE
	 GA2RfF/PzOweg2apjzupsV0p6jTqIi9grZ1x6HiFd/nVuW6NTo6gcz5MMFJ276TEWt
	 4ivRmmwceJIDh96SB1boaLZY77quVKbAnIA2zXojodYmnsilnFq3kyXqzwIHmaaTH9
	 wmVhydyWzBSUPpwNX8piUkyuZwPEsnQvk3kuUw3yPQmPI/UlGaAdAIwbMxHoqjeb/v
	 vZyLBlv8kaOJ9vACdIPObsSpGvezXvht0JpkDGnlds2U76dodtDWA9FKvCi1THPlEj
	 46dYzmZi3+qOQ==
Date: Sun, 17 Mar 2024 13:15:18 +0100
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v2 2/2] proc_pid_io.5: dewafflify
Message-ID: <Zfbe1yFQBdLnPh4-@debian>
References: <1513ee2073bcf0fae7bb720bcee8a8de847e5cf5.1710339990.git.nabijaczleweli@nabijaczleweli.xyz>
 <518d4d8d083c4ca2aac33d5d0f518c0551a24cc8.1710673156.git.nabijaczleweli@nabijaczleweli.xyz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="CN6ligxYaTjEx1gF"
Content-Disposition: inline
In-Reply-To: <518d4d8d083c4ca2aac33d5d0f518c0551a24cc8.1710673156.git.nabijaczleweli@nabijaczleweli.xyz>


--CN6ligxYaTjEx1gF
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Sun, 17 Mar 2024 13:15:18 +0100
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v2 2/2] proc_pid_io.5: dewafflify

Hi!

On Sun, Mar 17, 2024 at 12:01:41PM +0100, =D0=BD=D0=B0=D0=B1 wrote:
> This page copies verbatim the contents of
> Documentation/filesystems/proc.rst, added wholesale in
> commit f9c99463b0cd05603d125c915e2886d55a686b82 ("[PATCH] Documentation
> for io-accounting / reporting via procfs") in 2007.
>=20
> As such, it mirrors the sensibilities of the time =E2=80=92
> writing "successful read returns" as "data pulled from storage. actually
> just the data the process gave to read(). this also means from non-regular
> files! whether the data was pulled from storage doesn't matter actually
> (obligatory cache mention)"
> for the modern reader this is just a lot of waffling
> (note also that processes give no data to read()!)
> =E2=80=92 and sensibilities of the sheepish implementer in kernel documen=
tation =E2=80=92
> "an attempt" for a well-defined kernel behaviour, mentioning the
> "current implementation", consistent mentions of specific kernel-internal
> caching mechanisms, "the big inaccuracy here".
>=20
> Re-write to be more useful and less misleading as documentation;
> the syscall enumeration is accurate for kernel v6.8, but the sysc? stats
> are also bumped by kernel_{read,write}(), which is sometimes used by too
> many syscalls in too many scenarios to usefully enumerate.
>=20
> Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xy=
z>
> ---
>  man5/proc_pid_io.5 | 69 ++++++++++++++++++++--------------------------
>  1 file changed, 30 insertions(+), 39 deletions(-)
>=20
> diff --git a/man5/proc_pid_io.5 b/man5/proc_pid_io.5
> index dc75a91de..9d1699f6a 100644
> --- a/man5/proc_pid_io.5
> +++ b/man5/proc_pid_io.5
> @@ -32,64 +32,55 @@ .SH DESCRIPTION
>  .RS
>  .TP
>  .IR rchar ": characters read"
> -The number of bytes
> -which this task and its waited-for children
> -have caused to be read from storage.
> -This is simply the sum of bytes which this process passed to
> +The number of bytes returned by successful

In this case, I think I prefer to break before "returned".
What would you do?

>  .BR read (2)
>  and similar system calls.
> -It includes things such as terminal I/O and
> -is unaffected by whether or not actual
> -physical disk I/O was required (the read might have been satisfied from
> -pagecache).
>  .TP
>  .IR wchar ": characters written"
> -The number of bytes
> -which this task and its waited-for children
> -have caused, or shall cause to be written to disk.
> -Similar caveats apply here as with
> -.IR rchar .
> +The number of bytes returned by successful
> +.BR write (2)
> +and similar system calls.
>  .TP
>  .IR syscr ": read syscalls"
> -Attempt to count the number of read I/O operations\[em]that is,
> -system calls such as
> +The number of "I/O read" system calls\[em]those from the

=46rom I/O, read only accounts for the I.  :)
Should we just say "read"?

>  .BR read (2)
> +family
> +(including when invoked used by the kernel as part of other syscalls),

This parenthesis being there seems to imply that if the kernel calls
sendfile internally for $reasons (even if it doesn't at the moment), it
won't be counted.  I think it makes more sense at the end of the list,
no?

Cheers,
Alex

P.S.: I restored /^Just/ in the other commit message.

> +.BR sendfile (2),
> +.BR copy_file_range (2),
>  and
> -.BR pread (2).
> +.BR ioctl (2)
> +.BR BTRFS_IOC_ENCODED_READ [ _32 ].
>  .TP
>  .IR syscw ": write syscalls"
> -Attempt to count the number of write I/O operations\[em]that is,
> -system calls such as
> +The number of "I/O write" system calls\[em]those from the
>  .BR write (2)
> +family
> +(including when invoked used by the kernel as part of other syscalls),
> +.BR sendfile (2),
> +.BR copy_file_range (2),
>  and
> -.BR pwrite (2).
> +.BR ioctl (2)
> +.BR BTRFS_IOC_ENCODED_WRITE [ _32 ].
>  .TP
>  .IR read_bytes ": bytes read"
> -Attempt to count the number of bytes
> -which this process and its waited-for children
> -really did cause to be fetched from the storage layer.
> +The number of bytes really fetched from the storage layer.
>  This is accurate for block-backed filesystems.
>  .TP
>  .IR write_bytes ": bytes written"
> -Attempt to count the number of bytes
> -which this process and its waited-for children
> -caused to be sent to the storage layer.
> +The number of bytes really sent to the storage layer.
>  .TP
>  .IR cancelled_write_bytes :
> -The big inaccuracy here is truncate.
> -If a process writes 1 MB to a file and then deletes the file,
> -it will in fact perform no writeout.
> -But it will have been accounted as having caused 1 MB of write.
> -In other words:
> -this field represents the number of bytes
> -which this process and its waited-for children
> -caused to not happen, by truncating pagecache.
> -A task can cause "negative" I/O too.
> -If this task truncates some dirty pagecache,
> -some I/O which another task has been accounted for
> -(in its
> -.IR write_bytes )
> -will not be happening.
> +The above statistics fail to account for truncation:
> +if a process writes 1 MB to a regular file and then removes it,
> +said 1 MB will not be written, but
> +.I will
> +have nevertheless been accounted as a 1 MB write.
> +This field represents the number of bytes "saved" from I/O writeback.
> +This can yield to having done negative I/O
> +if caches dirtied by another process are truncated.
> +This figure applies to I/O already accounted-for by
> +.IR write_bytes .
>  .RE
>  .IP
>  .IR Note :
> --=20
> 2.39.2



--=20
<https://www.alejandro-colomar.es/>

--CN6ligxYaTjEx1gF
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmX23tYACgkQnowa+77/
2zK8aw/+IPCRAxeCynsnFwlMgeROX1/zkqTdmV/XmWx2vVOFPICD4kq0Yv3vzv4N
5JppCdzx0wRgCQecwreGGyux5zGKdJqLNajIj0k7SdMHGLspSFxDW9rieKizGdm1
SBFOluuB7n3+xMVFyVgbfwFGvEYEBVbxKGb3TSM1iOpdFCNza4OpAwE+bfgIOmJn
voh5fO6OPbakpKpfTy5hFBkk3Y/AymyboZJfQrCEziCIUgDJddmIYQTcJWR+LQxM
7GUsHzFBY5Xhwrvpyo1Gzqu5teonUTU9tb3YhQA2vAh/tfvL8eOYpI0fD6mR76F7
s1yaRJoYQiDCE4i1aw3EIOfpibf7yDHT2pleQNSiKM7TIov13KG+eUz7tLD++OOQ
ZCBgT6mcGrG5499526jBsZyWfQr2unv1uvTI9pqT7VaYtNjYDW11FeXJV+8graaM
2MWQ6MaPyKKX3Xf/b+MsNG/fImI1wSQgV4wIGAi6Vbr02xcNJQhU4wF5MWOI3Dhs
4VV51SBtn+TahK9IdMkD9um0FZe5Z5w3mTrN0DId8zEogFmwj5KBqsLgtOHgKG+k
FHc9X0t9RImSqpoeU8aaTFWx2Lyls7ScuXJYpdEY+/957Jr+3WsZzvTl4rLEeQ0u
P6mgHC3AP4qI6bcbDIBEUJZ0yWHguzclKdC9PkO+ecj/IekbgyQ=
=9KWe
-----END PGP SIGNATURE-----

--CN6ligxYaTjEx1gF--

