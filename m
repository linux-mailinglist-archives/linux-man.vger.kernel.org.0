Return-Path: <linux-man+bounces-594-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7141987C126
	for <lists+linux-man@lfdr.de>; Thu, 14 Mar 2024 17:21:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2787A2812C6
	for <lists+linux-man@lfdr.de>; Thu, 14 Mar 2024 16:21:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1F8767351A;
	Thu, 14 Mar 2024 16:21:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CYIi3bxD"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2ABA6FB80
	for <linux-man@vger.kernel.org>; Thu, 14 Mar 2024 16:21:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710433266; cv=none; b=DvFM2xbk3BQF1ExceZHT9xDyqLtrRog5Ljr56Q712KZHLJFndM7clzxVh4nIdCNz7uQ+Jq/SqZyi8wNam0hfpfaUe4QjmGOOavUo3UFJ6qI+FCI/DSzRZ3x+rf6Cw6jHWPiJ+GzTmMqtIiT8fG3NN+xFnKFbxAqL4jLFXJ1L83c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710433266; c=relaxed/simple;
	bh=DkUVX5YjSDLUAv6HpePGN9gpvGfZOssdu0suSj2ldhE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=EOBWmvkZ+r0P2FzsM+d3jtt/B6Z5p8KFivwcY1cipum25XlhYleosTQVxrmgVW1jZ8XkQIBK6qa5b427E4LsVuO/bXLhfqmfje8BcILxG4TOK/pkE1GbIqxXDP2Gl7N+ew/dfrXXAGXmHyGCXXjk4jq9sTx8qN9+M/Wb3esUd34=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CYIi3bxD; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B9D45C43394;
	Thu, 14 Mar 2024 16:21:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710433266;
	bh=DkUVX5YjSDLUAv6HpePGN9gpvGfZOssdu0suSj2ldhE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=CYIi3bxDOPTQYTFnxHPJQ/lKL7h/2laGHglEOgkUCx0tpIFpphjhHQzmDxMijp2ix
	 md3fx5eUBpzRRoIGWk+SiIkf/0V4c4xKJxJpKtbIfnl4iUFzLeu/vhn3BYzP0FKcsX
	 hbXbvpRlP/lDlvEKKri5xGFUDWGtdMpL6qM0Gd2z6D2Yafbk8T+ZIIJ4k/1+SaRLTQ
	 V/JB128kmj5wc7LfQMs1KQienFO8B0VGVbMsp4rIdLER2THUS0baZe88WrOJUeSeLn
	 NlvRtfgnCLUaBbf/4x4+dl1h5F7qARCcWKza6G0VvWrwj786+4DzkfG5CQOXTVImlm
	 G1TsUorzqwmsA==
Date: Thu, 14 Mar 2024 17:21:03 +0100
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 2/6] proc_pid_io.5: dewafflify
Message-ID: <ZfMj764CwDEwUtbx@debian>
References: <1513ee2073bcf0fae7bb720bcee8a8de847e5cf5.1710339990.git.nabijaczleweli@nabijaczleweli.xyz>
 <c706ab1e471f6620916d40c35bf3b01edd35a9b5.1710339990.git.nabijaczleweli@nabijaczleweli.xyz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="cPh2eKadEkdrtWbq"
Content-Disposition: inline
In-Reply-To: <c706ab1e471f6620916d40c35bf3b01edd35a9b5.1710339990.git.nabijaczleweli@nabijaczleweli.xyz>


--cPh2eKadEkdrtWbq
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Thu, 14 Mar 2024 17:21:03 +0100
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 2/6] proc_pid_io.5: dewafflify

On Wed, Mar 13, 2024 at 03:26:46PM +0100, =D0=BD=D0=B0=D0=B1 wrote:
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

Depends on patch 1.  Please rebase after you change 1.

Thanks,
Alex

> ---
>  man5/proc_pid_io.5 | 62 ++++++++++++++++++++++------------------------
>  1 file changed, 30 insertions(+), 32 deletions(-)
>=20
> diff --git a/man5/proc_pid_io.5 b/man5/proc_pid_io.5
> index 81cfdd249..f66d8c635 100644
> --- a/man5/proc_pid_io.5
> +++ b/man5/proc_pid_io.5
> @@ -30,57 +30,55 @@ .SH DESCRIPTION
>  .RS
>  .TP
>  .IR rchar ": characters read"
> -The number of bytes which this task and its waited-for children have cau=
sed to be read from storage.
> -This is simply the sum of bytes which this process passed to
> +The number of bytes returned by successful
>  .BR read (2)
>  and similar system calls.
> -It includes things such as terminal I/O and
> -is unaffected by whether or not actual
> -physical disk I/O was required (the read might have been satisfied from
> -pagecache).
>  .TP
>  .IR wchar ": characters written"
> -The number of bytes which this task and its waited-for children has caus=
ed, or shall cause to be written
> -to disk.
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
>  .BR read (2)
> +family
> +(including when invoked used by the kernel as part of other syscalls),
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
> -Attempt to count the number of bytes which this process and its waited-f=
or children really did cause to
> -be fetched from the storage layer.
> +The number of bytes really fetched from the storage layer.
>  This is accurate for block-backed filesystems.
>  .TP
>  .IR write_bytes ": bytes written"
> -Attempt to count the number of bytes which this process and its waited-f=
or children caused to be sent to
> -the storage layer.
> +The number of bytes really sent to the storage layer.
>  .TP
>  .IR cancelled_write_bytes :
> -The big inaccuracy here is truncate.
> -If a process writes 1 MB to a file and then deletes the file,
> -it will in fact perform no writeout.
> -But it will have been accounted as having caused 1 MB of write.
> -In other words: this field represents the number of bytes which this pro=
cess and its waited-for children
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
>=20



--=20
<https://www.alejandro-colomar.es/>

--cPh2eKadEkdrtWbq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmXzI+8ACgkQnowa+77/
2zKlIw//d2r3ecmNk1Ry/ZaSEQproVHQ67va/zhonMHvqVuXA8IS2jUcMYbtE5LV
3ImFmLmv/IIzd3vViLV5RcPUb9yPNgGdbtLhX/7MxWPXJVzyeaiMqToSjj7+APg3
XojmR7+la8n3uvb8BI1nk/MSZlg2wMGqWO0w1hAs1ZpOXPQmBDUfXIDyL7gRwqmW
AiQtaZEts2UF17j44fNC3sD4HRy9n9T/VqT3iy0jXDXJTgv/KVhVQ5bfxvxDUCPs
SEOerF1j1lBQrjqRR4sLS5SvnuB81KxYpNhuhzvEG/bKwB+v5zAAHSOktvWblSGw
RGdPfcYKncxfGygZMRRi7DSUtCq5ggcuvWYLSMF5osIY20MxqMrBDl4n/sY1to9d
KJLjVge2GztLHzI+9GkjDQfhq5j4bFMo/JFGdda0wFV0VprgpyLvP9T8XaFMDjTQ
AQ4pKA+xqLSOxC/veHKqPdM2V6wfT7kqTtUObNXEas5NN5O1918/EorYb9YWVngm
CH/+PMunsirTLXoh0HSIvmuCChANwYB/9AsqWFIGIZ/Yjp8pcZBtEIVeRvBJGWTg
6ntBzPjw6RO8Q7B+ldKKRlgkJckiECgXRjqMMtWAjZRFvwzUws2T+noXwDvat432
MqWSJjhHXixi3Sn1nlT5BnUfrLOGf7xFZtGa96iwGfmDXPE3UYg=
=EZ5C
-----END PGP SIGNATURE-----

--cPh2eKadEkdrtWbq--

