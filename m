Return-Path: <linux-man+bounces-652-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id F3BAA87DE40
	for <lists+linux-man@lfdr.de>; Sun, 17 Mar 2024 17:08:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8D9381C20DBB
	for <lists+linux-man@lfdr.de>; Sun, 17 Mar 2024 16:08:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8F8F41CAAD;
	Sun, 17 Mar 2024 16:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aqyk6HDa"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50D2D1C695
	for <linux-man@vger.kernel.org>; Sun, 17 Mar 2024 16:08:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710691733; cv=none; b=HBawb3ltvH+w/JjzqVSONW7aZHENogddilBW8YDAmHlRfbOpErpfPzcy9BaZmgQStW/2BJjRqze5rpAQQJ/F0dL8Hyzk/YvL+fZ+fWzjdxsSIdVPiPw3BI9IzGQ9S9d9zADgRk3HjO5VCvVatQGWCqEGo/HkgltwSnzwVBSx0UI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710691733; c=relaxed/simple;
	bh=lC0KIFJak0urMg3D1DQBXRBfTf8B4c+f3wo7CCNbKZo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=lVJjbkr49n+Beu/o8CbIxg8zkKsZ432WRzAfSFjqCKikOUjO9Ilba2TBkdE1+y6btg1aAcfZMbqdxBVuVaDC4NXrvEN3yR+SXja+jFinTUu5J/BuBQxMT7lyyUToQprgQSLHOvZowBFuRGhmqSBsXaY3SroK/lxy76suU1AQgPc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aqyk6HDa; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2A291C433F1;
	Sun, 17 Mar 2024 16:08:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710691732;
	bh=lC0KIFJak0urMg3D1DQBXRBfTf8B4c+f3wo7CCNbKZo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=aqyk6HDasK1IDlj5hXgG8g6OFIm7WL4A3Ze/N8GXCnGHQpIt2Y8XaJhCbD5q2XaW/
	 O///CdHPyMNf/xc7w6AEhtUB0KObgejLyaaVxvcx16WxqQ6anBiy7DD1n9w2CkjHyQ
	 9vRsL3/MxqQgLGjTSQ2ZWBSrsll0IynUyf8BKSQNBainyp4yJQdim2r2W8A/mtqwyY
	 zQ14HMM+NtA8+C1MYFWmRxjjF6GmbM5hUPmi+u8vp/+tD9wFmEXpaaeaCAiLWLFqdH
	 U4dOLRVuIDgLat9sqg3aJYki57m6gzopUdEKFWrv1aRSevYKejW44G0MY/pyyt6n9E
	 l26OU1tzl9ncA==
Date: Sun, 17 Mar 2024 17:08:49 +0100
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v4] proc_pid_io.5: dewafflify
Message-ID: <ZfcVkspLvydKQvt-@debian>
References: <Zfb6XoFd_Xw9qa9j@debian>
 <b291be1654c235b8774f4ecc76eb1a89caea4d45.1710689860.git.nabijaczleweli@nabijaczleweli.xyz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="XY7p0+HOJ6whZvnt"
Content-Disposition: inline
In-Reply-To: <b291be1654c235b8774f4ecc76eb1a89caea4d45.1710689860.git.nabijaczleweli@nabijaczleweli.xyz>


--XY7p0+HOJ6whZvnt
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Sun, 17 Mar 2024 17:08:49 +0100
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v4] proc_pid_io.5: dewafflify

On Sun, Mar 17, 2024 at 04:37:52PM +0100, =D0=BD=D0=B0=D0=B1 wrote:
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

Hi!

Patch applied.  Thanks.

Have a lovely day!
Alex

> ---
>  man5/proc_pid_io.5 | 68 +++++++++++++++++++++-------------------------
>  1 file changed, 31 insertions(+), 37 deletions(-)
>=20
> diff --git a/man5/proc_pid_io.5 b/man5/proc_pid_io.5
> index dc75a91de..531de8c0d 100644
> --- a/man5/proc_pid_io.5
> +++ b/man5/proc_pid_io.5
> @@ -33,63 +33,57 @@ .SH DESCRIPTION
>  .TP
>  .IR rchar ": characters read"
>  The number of bytes
> -which this task and its waited-for children
> -have caused to be read from storage.
> -This is simply the sum of bytes which this process passed to
> +returned by successful
>  .BR read (2)
>  and similar system calls.
> -It includes things such as terminal I/O and
> -is unaffected by whether or not actual
> -physical disk I/O was required (the read might have been satisfied from
> -pagecache).
>  .TP
>  .IR wchar ": characters written"
>  The number of bytes
> -which this task and its waited-for children
> -have caused, or shall cause to be written to disk.
> -Similar caveats apply here as with
> -.IR rchar .
> +returned by successful
> +.BR write (2)
> +and similar system calls.
>  .TP
>  .IR syscr ": read syscalls"
> -Attempt to count the number of read I/O operations\[em]that is,
> -system calls such as
> +The number of "file read" system calls\[em]those from the
>  .BR read (2)
> +family,
> +.BR sendfile (2),
> +.BR copy_file_range (2),
>  and
> -.BR pread (2).
> +.BR ioctl (2)
> +.BR BTRFS_IOC_ENCODED_READ [ _32 ]
> +(including when invoked by the kernel as part of other syscalls).
>  .TP
>  .IR syscw ": write syscalls"
> -Attempt to count the number of write I/O operations\[em]that is,
> -system calls such as
> +The number of "file write" system calls\[em]those from the
>  .BR write (2)
> +family,
> +.BR sendfile (2),
> +.BR copy_file_range (2),
>  and
> -.BR pwrite (2).
> +.BR ioctl (2)
> +.BR BTRFS_IOC_ENCODED_WRITE [ _32 ]
> +(including when invoked by the kernel as part of other syscalls).
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
> +.I cancelled_write_bytes
> +applies to I/O already accounted-for in
> +.IR write_bytes .
>  .RE
>  .IP
>  .IR Note :
> --=20
> 2.39.2



--=20
<https://www.alejandro-colomar.es/>

--XY7p0+HOJ6whZvnt
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmX3FZEACgkQnowa+77/
2zJalA//S1cyTeb/RlGLi+MdtDgpLIZBvavqpxgQep4lMbRuXta57Y9MDUX7nW2s
1QutiWgSu8gnmvtB99Dy3PBcSCrluYgMQmIlDoz9DLNlnTDLfO9/DBKBb3MOx2q+
c2TffPx6ES4Y08O82aVzYJLUqcvXCja3mxtT1Jus+7PoymD1rE4YYa4DIBHNynSD
1+PPT8y0rgRoCTTNnWe2fwICeqQQoCSN1r39fstgQq0Id2/abtUn2X250g9ifZCf
mls2abkrHIFPIbHwg5BxtrhODyW38gA17j5vDMctV/q097qlJ9t2qgVusIgkXlsY
vv/firike+CoAybXFvx4yxsXeg2wNTv7qoxP/ppqqj85JyasfdRp296MZpWlnmrD
4TGVraZlqF+8CKJS9J6lQZMu8WnUG3lHezLYKUjf4P/odpycEpOqGKZe0wuEjXe1
7RZt8WIN2+BG3kpUYNNptbvlNDboIpqRS/tHjTyJ32/B06zX8kY+XIxSja/Eb3m7
AytfS3b35P6ZIzBoNMFv6YOpdbsSaQP+8rg2tdB6nDZkAOGxfUcH6nJkfalKUFSK
hCwaMbFIqyZ2C0enUORzPAQH4Da928L2IbbKkIWMWH4SIn2ldobtvuvqbuUl4pMR
lqZ6ixlfeDYtlSEP1zly8z8k2PZj+nSVhqgzKM86IEl1an5CDFk=
=ftj/
-----END PGP SIGNATURE-----

--XY7p0+HOJ6whZvnt--

