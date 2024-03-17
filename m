Return-Path: <linux-man+bounces-636-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5359F87DD0A
	for <lists+linux-man@lfdr.de>; Sun, 17 Mar 2024 12:02:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BD6C72813DE
	for <lists+linux-man@lfdr.de>; Sun, 17 Mar 2024 11:01:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1B04B1772F;
	Sun, 17 Mar 2024 11:01:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nabijaczleweli.xyz header.i=@nabijaczleweli.xyz header.b="hD9dk573"
X-Original-To: linux-man@vger.kernel.org
Received: from tarta.nabijaczleweli.xyz (tarta.nabijaczleweli.xyz [139.28.40.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3857417BDC
	for <linux-man@vger.kernel.org>; Sun, 17 Mar 2024 11:01:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=139.28.40.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710673314; cv=none; b=p3nggKlnLrDIwmVvJsjJFzXZbNWKVEj0mVeHmhbbWHD9wM4hVm7H8ocCMlenUC/c0IPHwNpMa50BnE6whQqWTRglGW4392xtgPOHRXO6aqD/FPNupgy6CO3iRwMTIduURH5HBakMzz9wux/U+ydaO9Xz/g09A8zgDVIN8tV/8Yk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710673314; c=relaxed/simple;
	bh=Gtdc071guYL4MveiE8cHFSxbj2vSz6PgI44hAeDdfnU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=nQVqbhieRCneO7DocxBxIklUSqwC6olyjt1WQ6Ve3ztdyes/UwhxPaWlJzO56NiYERLJTrQ2LhfwGYjIUNUgAdKTCdO4G6UlDaexNkPmCfiodHtK93mAP3f4a/dOLmuZpCGXyHlzc3x3xk8xJ6JM87xI27aQszE52YRJTq8E30g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nabijaczleweli.xyz; spf=pass smtp.mailfrom=nabijaczleweli.xyz; dkim=pass (2048-bit key) header.d=nabijaczleweli.xyz header.i=@nabijaczleweli.xyz header.b=hD9dk573; arc=none smtp.client-ip=139.28.40.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nabijaczleweli.xyz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nabijaczleweli.xyz
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
	s=202305; t=1710673301;
	bh=Gtdc071guYL4MveiE8cHFSxbj2vSz6PgI44hAeDdfnU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=hD9dk573Q+yKzaF09Pxrw7ogN73m88G2TiLLmiwc/xxtql6hdLVmnYayUxuKubEvD
	 OBWhr18j+dMUPy+bmAMtEnOKIfZX4eN50+BhDQxwEggj1IMdD4iEwXDlrXir2G6dqw
	 SNEbBgZ619wUTzMNqQsyEc12+vtC9GVkopCuYdQpdoVLzeyzBGmz0NR/mvd2qGq57q
	 8GHNqYoQoYS+991cYTjE5S54GQxtHmHBIIOeOviVO8HlQB83g8a9Lbo3AFE1TAAzpT
	 IqAaqtNJ/tIZS+vurXoEGJnNC3xeb/YDi36o30dIXrVFy01kSssrLlEEkZBO60sO8Y
	 JJFCMK4QIYkOA==
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
	by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 43E971410;
	Sun, 17 Mar 2024 12:01:41 +0100 (CET)
Date: Sun, 17 Mar 2024 12:01:41 +0100
From: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH v2 2/2] proc_pid_io.5: dewafflify
Message-ID: <518d4d8d083c4ca2aac33d5d0f518c0551a24cc8.1710673156.git.nabijaczleweli@nabijaczleweli.xyz>
References: <1513ee2073bcf0fae7bb720bcee8a8de847e5cf5.1710339990.git.nabijaczleweli@nabijaczleweli.xyz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="hrs7ljqfeq7euekr"
Content-Disposition: inline
In-Reply-To: <1513ee2073bcf0fae7bb720bcee8a8de847e5cf5.1710339990.git.nabijaczleweli@nabijaczleweli.xyz>
User-Agent: NeoMutt/20231221-2-4202cf-dirty


--hrs7ljqfeq7euekr
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
 man5/proc_pid_io.5 | 69 ++++++++++++++++++++--------------------------
 1 file changed, 30 insertions(+), 39 deletions(-)

diff --git a/man5/proc_pid_io.5 b/man5/proc_pid_io.5
index dc75a91de..9d1699f6a 100644
--- a/man5/proc_pid_io.5
+++ b/man5/proc_pid_io.5
@@ -32,64 +32,55 @@ .SH DESCRIPTION
 .RS
 .TP
 .IR rchar ": characters read"
-The number of bytes
-which this task and its waited-for children
-have caused to be read from storage.
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
-The number of bytes
-which this task and its waited-for children
-have caused, or shall cause to be written to disk.
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
+This figure applies to I/O already accounted-for by
+.IR write_bytes .
 .RE
 .IP
 .IR Note :
--=20
2.39.2

--hrs7ljqfeq7euekr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmX2zZQACgkQvP0LAY0m
WPEehQ//R5hgcUGRPmHi+flVTVX8wqVDaElAIIh2oZsGy6t0l++lFEI7VinWipvt
svlGLXhS+Xblx9CcUQQ7Ol0HP3K7L0JLKvuA/EyzP3On3kTbPBLYT3crAv95RSge
4hGwFQ/yG4qgmzu3pZdHk5+Sk+G+ZHrC1YXOj32ZVfXUp0dNTbgN+lHA3ECEKu8m
0vv6QV2joAtBczLAlCSl+NDYK1xCuySlXvq/iUkJbmO11dM/320YC3Y/ScVyeka7
DKo3iHR2mk6rhovYEIF4kYSmzNG0tyQaMp5NHqFZTVkyGnnhU8Wg3dIvlelxxEHx
xH+sZpLMrKl+aikIAdc+GG25P6UwCttsQhskZ9ip8NxCUuOzGWhVLndCpED9HWc2
BqmdIUmGIuUI7Fu0L9B6rp3P5KsbJAQV0c0kshO2X3tUkU8MXfil83/lmsQ8UN88
gHqEM+QCjwesE+/mVlefcN8/Z3ubAQW9NiY5gAQTWpDHnAZwSkkPwWlOb36xLypp
FhDiTH6abJTbs2oQuUgS8ZByijA0FDCddN7qiZgor/vS1MPd1zdhMw+j8EKITy2v
6xzdP5s26Xp07SatOzcvVZVmugpiSn2Cq2+qic/IM9+VZhODKEEdcheatZGjabO0
SBGLU7WVT2I5IzhTg2SoydY8QdN1Cy4hHWKktfKQi3p+B2S4r5E=
=6r0S
-----END PGP SIGNATURE-----

--hrs7ljqfeq7euekr--

