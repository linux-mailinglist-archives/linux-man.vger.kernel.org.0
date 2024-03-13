Return-Path: <linux-man+bounces-584-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DD38187A990
	for <lists+linux-man@lfdr.de>; Wed, 13 Mar 2024 15:35:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 43F86B23695
	for <lists+linux-man@lfdr.de>; Wed, 13 Mar 2024 14:35:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 785E54688;
	Wed, 13 Mar 2024 14:35:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nabijaczleweli.xyz header.i=@nabijaczleweli.xyz header.b="awJhAiZZ"
X-Original-To: linux-man@vger.kernel.org
Received: from tarta.nabijaczleweli.xyz (tarta.nabijaczleweli.xyz [139.28.40.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C53CD15A4
	for <linux-man@vger.kernel.org>; Wed, 13 Mar 2024 14:35:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=139.28.40.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710340524; cv=none; b=LJ2e4B0LcX2csp6kabMpMpBIruNNQ7pIhpwqq5pio+iOKfzTUo4Ezk1zf8U5y2yefd5nrKmfLKI9z4HyO1nNUGCaHXYd+AXpphtC+ouiv/qgeXzj0Bn2S5r6JilDPUHjQ6MVjLrUR4fMjqWvM/lswcErpeJdtzM+OdKVKWY9SME=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710340524; c=relaxed/simple;
	bh=EzPaO1QtfD7Pg4oSz0i93jS7J+HCuS0D134uns39u18=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=a89+5ELCzAH3sOvvs5zb9iDZPdsK3/hkHzcpzT3PVXOe4cNbAPhW5n5BMqybQAyAMfpoG26y+gXK5O1nanWLPNTfkuHd2NWPSoeJ71rfJrcgLfrRknTqsx/a/mjSKH3alva/XUtWQnFUpJNzAKOizRlG3Tf6fybgRcgBCwdO6Ms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nabijaczleweli.xyz; spf=pass smtp.mailfrom=nabijaczleweli.xyz; dkim=pass (2048-bit key) header.d=nabijaczleweli.xyz header.i=@nabijaczleweli.xyz header.b=awJhAiZZ; arc=none smtp.client-ip=139.28.40.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nabijaczleweli.xyz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nabijaczleweli.xyz
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
	s=202305; t=1710340007;
	bh=EzPaO1QtfD7Pg4oSz0i93jS7J+HCuS0D134uns39u18=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=awJhAiZZmCVA9VHfuwuEy8/cYyaOHh2ZmfW7gHQwvEgDUGcwAn7pvCJrKL5r02977
	 6qpsFuI/eassO8e5KqMGPT8oe00gBiWmOEgt0Hlnd3WLuEfUu5XPpfqce/di2YzKkh
	 0N7gnSiKt95crZfGtm//i4SbLPD7SXACpP1Tqo6PHdf8UpZ5jmNMeWVVmQ7GEBM+fN
	 2ymofJdjOIv7r3flFxYOI+Zguxyt0XPE0EtWRSyAVmCkPXvkc+hCriV4PYCP2YqfJJ
	 FK1uZsCtVhCSKGv0WBhgHFYqFjaPi6wWPyXW8YDZ5tqu8dOwC9K+UJ26e5KaIgN+gU
	 EdPLuZq2S6Rdg==
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
	by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 09253100E;
	Wed, 13 Mar 2024 15:26:47 +0100 (CET)
Date: Wed, 13 Mar 2024 15:26:46 +0100
From: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH 2/6] proc_pid_io.5: dewafflify
Message-ID: <c706ab1e471f6620916d40c35bf3b01edd35a9b5.1710339990.git.nabijaczleweli@nabijaczleweli.xyz>
References: <1513ee2073bcf0fae7bb720bcee8a8de847e5cf5.1710339990.git.nabijaczleweli@nabijaczleweli.xyz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ft27bo5nwomvqru4"
Content-Disposition: inline
In-Reply-To: <1513ee2073bcf0fae7bb720bcee8a8de847e5cf5.1710339990.git.nabijaczleweli@nabijaczleweli.xyz>
User-Agent: NeoMutt/20231221-2-4202cf-dirty


--ft27bo5nwomvqru4
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

This page copies verbatim the contents of
Documentation/filesystems/proc.rst, added wholesale in
commit f9c99463b0cd05603d125c915e2886d55a686b82 ("[PATCH] Documentation
for io-accounting / reporting via procfs") in 2007.

As such, it mirrors the sensibilities of the time =E2=80=92
writing "successful read returns" as "data pulled from storage. actually
just the data the process gave to read(). this also means from non-regular
files! whether the data was pulled from storage doesn't matter actually
(obligatory cache mention)"
for the modern reader this is just a lot of waffling
(note also that processes give no data to read()!)
=E2=80=92 and sensibilities of the sheepish implementer in kernel documenta=
tion =E2=80=92
"an attempt" for a well-defined kernel behaviour, mentioning the
"current implementation", consistent mentions of specific kernel-internal
caching mechanisms, "the big inaccuracy here".

Re-write to be more useful and less misleading as documentation;
the syscall enumeration is accurate for kernel v6.8, but the sysc? stats
are also bumped by kernel_{read,write}(), which is sometimes used by too
many syscalls in too many scenarios to usefully enumerate.

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man5/proc_pid_io.5 | 62 ++++++++++++++++++++++------------------------
 1 file changed, 30 insertions(+), 32 deletions(-)

diff --git a/man5/proc_pid_io.5 b/man5/proc_pid_io.5
index 81cfdd249..f66d8c635 100644
--- a/man5/proc_pid_io.5
+++ b/man5/proc_pid_io.5
@@ -30,57 +30,55 @@ .SH DESCRIPTION
 .RS
 .TP
 .IR rchar ": characters read"
-The number of bytes which this task and its waited-for children have cause=
d to be read from storage.
-This is simply the sum of bytes which this process passed to
+The number of bytes returned by successful
 .BR read (2)
 and similar system calls.
-It includes things such as terminal I/O and
-is unaffected by whether or not actual
-physical disk I/O was required (the read might have been satisfied from
-pagecache).
 .TP
 .IR wchar ": characters written"
-The number of bytes which this task and its waited-for children has caused=
, or shall cause to be written
-to disk.
-Similar caveats apply here as with
-.IR rchar .
+The number of bytes returned by successful
+.BR write (2)
+and similar system calls.
 .TP
 .IR syscr ": read syscalls"
-Attempt to count the number of read I/O operations\[em]that is,
-system calls such as
+The number of "I/O read" system calls\[em]those from the
 .BR read (2)
+family
+(including when invoked used by the kernel as part of other syscalls),
+.BR sendfile (2),
+.BR copy_file_range (2),
 and
-.BR pread (2).
+.BR ioctl (2)
+.BR BTRFS_IOC_ENCODED_READ [ _32 ].
 .TP
 .IR syscw ": write syscalls"
-Attempt to count the number of write I/O operations\[em]that is,
-system calls such as
+The number of "I/O write" system calls\[em]those from the
 .BR write (2)
+family
+(including when invoked used by the kernel as part of other syscalls),
+.BR sendfile (2),
+.BR copy_file_range (2),
 and
-.BR pwrite (2).
+.BR ioctl (2)
+.BR BTRFS_IOC_ENCODED_WRITE [ _32 ].
 .TP
 .IR read_bytes ": bytes read"
-Attempt to count the number of bytes which this process and its waited-for=
 children really did cause to
-be fetched from the storage layer.
+The number of bytes really fetched from the storage layer.
 This is accurate for block-backed filesystems.
 .TP
 .IR write_bytes ": bytes written"
-Attempt to count the number of bytes which this process and its waited-for=
 children caused to be sent to
-the storage layer.
+The number of bytes really sent to the storage layer.
 .TP
 .IR cancelled_write_bytes :
-The big inaccuracy here is truncate.
-If a process writes 1 MB to a file and then deletes the file,
-it will in fact perform no writeout.
-But it will have been accounted as having caused 1 MB of write.
-In other words: this field represents the number of bytes which this proce=
ss and its waited-for children
-caused to not happen, by truncating pagecache.
-A task can cause "negative" I/O too.
-If this task truncates some dirty pagecache,
-some I/O which another task has been accounted for
-(in its
-.IR write_bytes )
-will not be happening.
+The above statistics fail to account for truncation:
+if a process writes 1 MB to a regular file and then removes it,
+said 1 MB will not be written, but
+.I will
+have nevertheless been accounted as a 1 MB write.
+This field represents the number of bytes "saved" from I/O writeback.
+This can yield to having done negative I/O
+if caches dirtied by another process are truncated.
+This figure applies to I/O already accounted-for by
+.IR write_bytes .
 .RE
 .IP
 .IR Note :
--=20
2.39.2


--ft27bo5nwomvqru4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmXxt6YACgkQvP0LAY0m
WPF6ag//bReKh2r+nTtl1nMnHZZoDxe91oJqY5MX6UmBAzR+Dzg8upHMEBZCuJsK
lunGuS1SsjHsELy8BTaSG2sW8SLDxFixdD9GTZ4oQn3gZIVcRFZWipZocA7Yxab5
5HBSDBTIQTZSixhxF3YVlYUrlyYbQMjFhVaR0p2I6NDH2u8WIFpj7r4DmA75xBqI
bNII2crnYVb7cL2o332WAljQIJPmlXRnSHh/fBbiWcdaBJaO8d/mPIJ8aGuQyfL6
/9h9MzsVLL32vChfsYYzAY84daimctqAnRc5VFmXhnRvsZZAdPBf/0O9PLYMFMHq
IYzwvCLnX5mRqcFsdSxajRgGp3oPkKxZ4GxyfrqY7wLRxTUE8I3UA7TpHwtepE5m
i2S6oYQAN2vXfoeCc29gun37VMgOrV1cNQZsl/eAR6LQAUNMdKYow5TOII6w0sCy
oynF1pS2SC0ndC6a8DUG+RgFY9/jYZp/SrYwFUjJlMN5ImeVplMxAbHtnip3XkPg
wHDD//WXgFmfcT+M1Er0ZPoZIAW8s5gifEW7T0JbarMi0hJuWeBu48bktowg5LHc
3OBr8hUILRtfryUyekJobhEP47ZZfp9pwjrvOIAsRu5V495Y5O2WBuLWev9w7DsE
rS/uNNmnD5JmLESn1fcIYbzVteXDE1vh96Px3i1LLOrDanr2cNo=
=Vvlj
-----END PGP SIGNATURE-----

--ft27bo5nwomvqru4--

