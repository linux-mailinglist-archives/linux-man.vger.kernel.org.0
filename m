Return-Path: <linux-man+bounces-644-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5223E87DD5D
	for <lists+linux-man@lfdr.de>; Sun, 17 Mar 2024 15:12:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 687EC1C2088F
	for <lists+linux-man@lfdr.de>; Sun, 17 Mar 2024 14:12:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 125B21BC5C;
	Sun, 17 Mar 2024 14:12:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dy2kQ6o3"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7F2A1BF27
	for <linux-man@vger.kernel.org>; Sun, 17 Mar 2024 14:12:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710684769; cv=none; b=F3OgvQYs74VHzVtlK96fn0r0hebofK2Fo19TDBumapIngv1FcoDUAn78tjU/RW+MSi8yK09uDf49l2yw0nfDeDF9qGrxS0z4dMG9JdE9LHsDno4CgkCJ4GBADZpCFIQF9IhQ3YQ2m2j7Q0KleQ2MZdEcAniF2J0hKZ0fV3uizqQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710684769; c=relaxed/simple;
	bh=RSFU0WOu3moGpNJj+nEl3GJJA0CVmRWST+hnihQZaO0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RIzEASE/xPdcQpbH+tPuGHbOf1zzgFZepvNo+475eBX5G9vIEE9KKH6ppkIL5Wml+woTSK6aYdwy7d89u3TeEXi/iO94FAbjZxLgYA0Ew01xcMZDzikK6tx/U6HTiwyGrlD5bsFSYlE8+GvEi125TBWGgktrugrqy6SSRVRBznA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dy2kQ6o3; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B78E0C433C7;
	Sun, 17 Mar 2024 14:12:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710684769;
	bh=RSFU0WOu3moGpNJj+nEl3GJJA0CVmRWST+hnihQZaO0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=dy2kQ6o3NiyMjjNIo3lCI5rXmvePxrOgnLeUMjEFUfbiLOcjfaaU3MU2ngi98fg+Z
	 5h33Ubt6/dPeFEeWiuoEwhdz4pu5HOvS8hY10SLR1nOspRfYJg/8vcg4Aybrp96S/t
	 yovE9C0O7ZrNSx9EuxcZAY3RzRQQpDJ4fUMnvPlLvuu8Tis3nRHUk2XQ/VG2Pn9vPI
	 XTeWepk4jQ/Ewvy/HDm114S2alYJ4jZFjKl5vLVms69m4oqKACVTFn+jeVRxPiVu/X
	 BwMJ7JhCajuyrCv6n9jYSHgW4q5746IvooUZgymwrNhReVPD7koSjQ6fbVQ3OtxBDH
	 bpEmItryXE6/g==
Date: Sun, 17 Mar 2024 15:12:40 +0100
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v3] proc_pid_io.5: dewafflify
Message-ID: <Zfb6XoFd_Xw9qa9j@debian>
References: <Zfbe1yFQBdLnPh4-@debian>
 <5b5a5e461deafb011c815023001424b0dbc2836f.1710682230.git.nabijaczleweli@nabijaczleweli.xyz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="L2osbAg+NStjeuMl"
Content-Disposition: inline
In-Reply-To: <5b5a5e461deafb011c815023001424b0dbc2836f.1710682230.git.nabijaczleweli@nabijaczleweli.xyz>


--L2osbAg+NStjeuMl
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Sun, 17 Mar 2024 15:12:40 +0100
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v3] proc_pid_io.5: dewafflify

On Sun, Mar 17, 2024 at 02:31:21PM +0100, =D0=BD=D0=B0=D0=B1 wrote:
[...]
>=20
> Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xy=
z>
> ---
> Hi!

Hi!

> On Sun, Mar 17, 2024 at 01:15:18PM +0100, Alejandro Colomar wrote:
> > On Sun, Mar 17, 2024 at 12:01:41PM +0100, =D0=BD=D0=B0=D0=B1 wrote:
> > > -The number of bytes
> > > -which this task and its waited-for children
> > > -have caused to be read from storage.
> > > -This is simply the sum of bytes which this process passed to
> > > +The number of bytes returned by successful
> > In this case, I think I prefer to break before "returned".
> > What would you do?
> this is a "meh" moment imo; in running text sure, maybe,
> but this is broken up by the .BR
> so it starts to devolve into 3-word-line territory which is worse

Hmm, the good part is that the diff doesn't include the first part of
the sentence.

> > > -Attempt to count the number of read I/O operations\[em]that is,
> > > -system calls such as
> > > +The number of "I/O read" system calls\[em]those from the
> > From I/O, read only accounts for the I.  :)
> > Should we just say "read"?
> Yeah, "I/O" is overloaded here; "file read" works better.
>=20
> > >  .BR read (2)
> > > +family
> > > +(including when invoked used by the kernel as part of other syscalls=
),
> > This parenthesis being there seems to imply that if the kernel calls
> > sendfile internally for $reasons (even if it doesn't at the moment), it
> > won't be counted.  I think it makes more sense at the end of the list,
> > no?
> Well, as-is it doesn't, and I reduced this to the narrowest definition
> I can prove, but I guess so, yes.
>=20
> Also just noticed "invoked used".
>=20
>  man5/proc_pid_io.5 | 67 +++++++++++++++++++++-------------------------
>  1 file changed, 30 insertions(+), 37 deletions(-)
>=20
> diff --git a/man5/proc_pid_io.5 b/man5/proc_pid_io.5
> index dc75a91de..7f840f3bb 100644
> --- a/man5/proc_pid_io.5
> +++ b/man5/proc_pid_io.5
> @@ -33,63 +33,56 @@ .SH DESCRIPTION
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
> +family
> +.BR sendfile (2),
> +.BR copy_file_range (2),
>  and
> -.BR pread (2).
> +.BR ioctl (2)
> +.BR BTRFS_IOC_ENCODED_READ [ _32 ]
> +(including when invoked by the kernel as part of other syscalls),

s/,/./

>  .TP
>  .IR syscw ": write syscalls"
> -Attempt to count the number of write I/O operations\[em]that is,
> -system calls such as
> +The number of "file write" system calls\[em]those from the
>  .BR write (2)
> +family
> +.BR sendfile (2),
> +.BR copy_file_range (2),
>  and
> -.BR pwrite (2).
> +.BR ioctl (2)
> +.BR BTRFS_IOC_ENCODED_WRITE [ _32 ]
> +(including when invoked by the kernel as part of other syscalls),

s/,/./

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

I'm not sure I understand this last sentence.  What does "this figure"
refer to exactly?

Have a lovely day!
Alex

>  .RE
>  .IP
>  .IR Note :
> --=20
> 2.39.2



--=20
<https://www.alejandro-colomar.es/>

--L2osbAg+NStjeuMl
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmX2+lgACgkQnowa+77/
2zKSxw//VOAMQfzNquG1/BAam7l4+TXSVM/NYcHoUULWC/SyUueZ66buDQEb1cRA
fRbQ82UmfizV305pP0l8H/wU2RfzzF85XFlQy6VmzPzKyfrRHlicU+mmJUbM7O3R
azGTwA1QGYFemfuRCMaq0IH7c8i7tvmM9Vzpf75S3VwpLjNXssIH0RqMOzLu/Ozh
dr95cMuQqzhwvh9nTWSuPYZFkPRaDh2+PLc4dQ61ICF1Ltyz9bHVW6qqh8DoEu00
/RbjtJmO/Mf5ZrWy1XWB9KMvq9dquojdkhwIRm/D1xSgB5m4TUscXYgJVV2KQe6z
VjVRdUIZ6QVjmJlC8Z7XzanPMDJv1dDZcLFGp8NCrs7yjoiL/RPTeC6mQyL6yMKT
HFhafvYktIStRs3lawYf1jYMxp3F2fccb+tZb5T7nz7MB7DXW1qTBnCRn2hB10OV
ewbBPL8f/aZmRCmWbdbDOdJAWirxIISFFQdzgsvcErH4pxmCnPlQtDDd+c4NGZf4
b3vQbl31rEZfEomQYvxUhJARdN195L5LOoereyuxVcJ3h6yzAYVxiUIbyyHDvbh0
7Dyxl+TB6ke/1ryjVcoZX2kuwH7VAPsYEUFjdQ8QG9rFKlGh2Ew/NP5sgns+5zmd
sBSLtQU0nz8stRJ/FyBXSBBl3PujZI/daZkwH+ueVogWJ3meZiE=
=9mN4
-----END PGP SIGNATURE-----

--L2osbAg+NStjeuMl--

