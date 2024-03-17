Return-Path: <linux-man+bounces-651-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C05587DE02
	for <lists+linux-man@lfdr.de>; Sun, 17 Mar 2024 16:38:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B4368281AF0
	for <lists+linux-man@lfdr.de>; Sun, 17 Mar 2024 15:38:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 911AB1C6B2;
	Sun, 17 Mar 2024 15:37:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nabijaczleweli.xyz header.i=@nabijaczleweli.xyz header.b="Z3mil68d"
X-Original-To: linux-man@vger.kernel.org
Received: from tarta.nabijaczleweli.xyz (tarta.nabijaczleweli.xyz [139.28.40.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F1BF1C6A4
	for <linux-man@vger.kernel.org>; Sun, 17 Mar 2024 15:37:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=139.28.40.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710689879; cv=none; b=okgaeDCeZRYQ3tJlypbF5L1bnAjaM1dkBcjnVykR18wrXSCYANjCoa6yoAu7zwd2Ve8oLBBJmajBDchVFh60oIS7k8u0b8SZxF5vVI+t6HI8v4wtg0Wy+yhRgr9jvP7BrDP+ieJ4yKRmOinbPHKo+rtgSOr9Ne4UpgEwXABD3X0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710689879; c=relaxed/simple;
	bh=VfI8hhCLRxVmaJKv6e3TdfqFBSRd4F3u9fgUU3Y518E=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=chFJeTWazR1MEfQ3rtQQVFOauqQ3LSbCmVehE7dJA8nl1Bys5YWkAIeRKOAKOzNCA7b1xO1XZxuHXRtOQe3wti92f+OJ/16+Aa5B/ix3MgMMIogoAu7rMVPyRJNr5k5RfDjxmBuPhPfG7neFqvshK0qsgca37ScjQiXLOScgtDU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nabijaczleweli.xyz; spf=pass smtp.mailfrom=nabijaczleweli.xyz; dkim=pass (2048-bit key) header.d=nabijaczleweli.xyz header.i=@nabijaczleweli.xyz header.b=Z3mil68d; arc=none smtp.client-ip=139.28.40.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nabijaczleweli.xyz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nabijaczleweli.xyz
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
	s=202305; t=1710689873;
	bh=VfI8hhCLRxVmaJKv6e3TdfqFBSRd4F3u9fgUU3Y518E=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Z3mil68dpJaW+JPbAiHWaojcGrnVjXXCk0fTUpdnV/kpjtGzqwpS/7fwzElBGRtk2
	 lUfOYNcasZO7rm6091B5YE4N+O0AXEwpHNqpAIbib9ADCMdwLvOzV9INhoTE42lDhm
	 yELEG2Cyn2ScBV+YjEYUp2ooZSF8zv6q5ugcQvOI2yAwFU/4lFa0i3xo02XwMKPjcX
	 JhG8RDnf82MKYWydtIvCPdALhpjH4n/yilbIxPj3yEbv0tcby89JDNJYsTq44Y82Ui
	 +fPNuG7EKW8qY14kC02V+yWKvvkE2MLdoAn5bPlY+Zcc/73a7l3VmfotQe4ZGTI+B1
	 z0FyqjZxnkTxg==
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
	by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id E8156161C;
	Sun, 17 Mar 2024 16:37:52 +0100 (CET)
Date: Sun, 17 Mar 2024 16:37:52 +0100
From: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH v4] proc_pid_io.5: dewafflify
Message-ID: <b291be1654c235b8774f4ecc76eb1a89caea4d45.1710689860.git.nabijaczleweli@nabijaczleweli.xyz>
References: <Zfb6XoFd_Xw9qa9j@debian>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="kcwpbcqaywdphea2"
Content-Disposition: inline
In-Reply-To: <Zfb6XoFd_Xw9qa9j@debian>
User-Agent: NeoMutt/20231221-2-4202cf-dirty


--kcwpbcqaywdphea2
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
 man5/proc_pid_io.5 | 68 +++++++++++++++++++++-------------------------
 1 file changed, 31 insertions(+), 37 deletions(-)

diff --git a/man5/proc_pid_io.5 b/man5/proc_pid_io.5
index dc75a91de..531de8c0d 100644
--- a/man5/proc_pid_io.5
+++ b/man5/proc_pid_io.5
@@ -33,63 +33,57 @@ .SH DESCRIPTION
 .TP
 .IR rchar ": characters read"
 The number of bytes
-which this task and its waited-for children
-have caused to be read from storage.
-This is simply the sum of bytes which this process passed to
+returned by successful
 .BR read (2)
 and similar system calls.
-It includes things such as terminal I/O and
-is unaffected by whether or not actual
-physical disk I/O was required (the read might have been satisfied from
-pagecache).
 .TP
 .IR wchar ": characters written"
 The number of bytes
-which this task and its waited-for children
-have caused, or shall cause to be written to disk.
-Similar caveats apply here as with
-.IR rchar .
+returned by successful
+.BR write (2)
+and similar system calls.
 .TP
 .IR syscr ": read syscalls"
-Attempt to count the number of read I/O operations\[em]that is,
-system calls such as
+The number of "file read" system calls\[em]those from the
 .BR read (2)
+family,
+.BR sendfile (2),
+.BR copy_file_range (2),
 and
-.BR pread (2).
+.BR ioctl (2)
+.BR BTRFS_IOC_ENCODED_READ [ _32 ]
+(including when invoked by the kernel as part of other syscalls).
 .TP
 .IR syscw ": write syscalls"
-Attempt to count the number of write I/O operations\[em]that is,
-system calls such as
+The number of "file write" system calls\[em]those from the
 .BR write (2)
+family,
+.BR sendfile (2),
+.BR copy_file_range (2),
 and
-.BR pwrite (2).
+.BR ioctl (2)
+.BR BTRFS_IOC_ENCODED_WRITE [ _32 ]
+(including when invoked by the kernel as part of other syscalls).
 .TP
 .IR read_bytes ": bytes read"
-Attempt to count the number of bytes
-which this process and its waited-for children
-really did cause to be fetched from the storage layer.
+The number of bytes really fetched from the storage layer.
 This is accurate for block-backed filesystems.
 .TP
 .IR write_bytes ": bytes written"
-Attempt to count the number of bytes
-which this process and its waited-for children
-caused to be sent to the storage layer.
+The number of bytes really sent to the storage layer.
 .TP
 .IR cancelled_write_bytes :
-The big inaccuracy here is truncate.
-If a process writes 1 MB to a file and then deletes the file,
-it will in fact perform no writeout.
-But it will have been accounted as having caused 1 MB of write.
-In other words:
-this field represents the number of bytes
-which this process and its waited-for children
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
+.I cancelled_write_bytes
+applies to I/O already accounted-for in
+.IR write_bytes .
 .RE
 .IP
 .IR Note :
--=20
2.39.2

--kcwpbcqaywdphea2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmX3DlAACgkQvP0LAY0m
WPEJZQ/+Ph0+DY4tfdmUmy3YCH+1SGvoAcfCZsevLG0MahLpOGFL2s1iETGXjEQ9
a/9mARDfYBvTsHd+Ti6aMj6uJpDck0V7hJdvICo8oqTtz+C0cruQ1Lv/VCummQfZ
StdpF7JWPlGnlXjl7gHnQSpFRjPiA40UjlaNSq91/6pbEuqpb+n5JPxsOFVHiEKx
1mHKsvxTwU6cXtpcy8gPclpM7styu0Xe8DaImpc4sVV6A+tFNVZSj1lwBxVDsk2T
GrRzer+NznucwKI3dZ1FRl1joR9cmRthWbKgJVaq+aoUGLB48YtZN4FrxUfbsEHO
7hLZJRKckA8mygKF0jkZJMS/knL0F22v/AVr4F0xQYbVPH1QmQYqmwORctj6c7IU
adV4Rj+jJXzz+mF596BJOGBlodrc3l8Nfz1Va9d/2gkO/eipWcQ73mUHuetgGV9T
2HAOu72qgJi2Vcyv+epuFO7V+hsjVnhgLaGxIG/iJRo1lD1cEkPS7M8ugwoDmAoG
uszqTV/Aq+y+Ctv64h4MuLsSF6cQ3oWnoPw1Kcr6RH6ljov23MG/f526yeAyCLNQ
9MDql6NJAEYMB+6FomV+sS/QexlZmOVPuie+21xpLDt/aw1JX/yy4Wbz0b0cDUHR
SA0KNZPKLlHqGbz2ML45YaETwBGBth7DIlGTxtBbOW3/PVaStUE=
=IZnq
-----END PGP SIGNATURE-----

--kcwpbcqaywdphea2--

