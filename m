Return-Path: <linux-man+bounces-637-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BF8787DD0B
	for <lists+linux-man@lfdr.de>; Sun, 17 Mar 2024 12:02:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CF8571F2128D
	for <lists+linux-man@lfdr.de>; Sun, 17 Mar 2024 11:02:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A8D3317C6C;
	Sun, 17 Mar 2024 11:01:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nabijaczleweli.xyz header.i=@nabijaczleweli.xyz header.b="KwtQfUsU"
X-Original-To: linux-man@vger.kernel.org
Received: from tarta.nabijaczleweli.xyz (tarta.nabijaczleweli.xyz [139.28.40.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2114D182BB
	for <linux-man@vger.kernel.org>; Sun, 17 Mar 2024 11:01:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=139.28.40.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710673315; cv=none; b=X2CQnBu3oyF84WvnqrYfaQMoz6ngTgdjF+a3TH7sfVXE046QW3ipd7x9rACkepRWQi1RHOfKM3RLTLQNm3eSsHnRsDrUmgrbXk3QaDzeTUr7hbTAwUNZZaiW4/bUvE+9yuOEZmmbddt665QOmR+soTl1svaBkZVY1dsky3NI8O8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710673315; c=relaxed/simple;
	bh=FFRRA3QaxOUmYz3GKhoaOrgGNam8PNQP4KyVZfJDnrg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=dytNTVfP6Fj7XQfL/pbsUg8CZ5odsEWzA24XbGBOB9si0XRDW0shSrlqquTvViXC6BoXVx13QS7jyH62e7N2nPRw/dV2YGoyWZ6zIHzUZpplvEl2nVYlYIjw29OZ4VztnJ5NzpFkg9qbdQKC0DDSC6TcA01bRDiHnX4zyrfDftI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nabijaczleweli.xyz; spf=pass smtp.mailfrom=nabijaczleweli.xyz; dkim=pass (2048-bit key) header.d=nabijaczleweli.xyz header.i=@nabijaczleweli.xyz header.b=KwtQfUsU; arc=none smtp.client-ip=139.28.40.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nabijaczleweli.xyz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nabijaczleweli.xyz
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
	s=202305; t=1710673304;
	bh=FFRRA3QaxOUmYz3GKhoaOrgGNam8PNQP4KyVZfJDnrg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=KwtQfUsUiMJQN39e7eJI+XnWRaenpC1/s3tadxZ8nUROaDFGxZgWOK1uIIG3cldSD
	 gFleokHjI18qKUvnBrtsK5NsIoB6jOGDDn5nbWdn7XZkwWoXZX79KcIvmJBEr13pLk
	 tZuLYj3CbZzy4qTUMFvodytSG+OEh3XK+2Au3dtu4CcW1anbmAWSlEo3Jr7InZBdcj
	 1f4ssA46b9xoVb5tIKOjgSKyvT/nR0Bb/VuyQHNUq2gnc66JxaBlTkWX29gfOWTAmY
	 H27O7DCL+FyoJ4/g0B21wepUsDMizm5PU8DEfOcgm0Rd+JFnYuWfkdNNSOYPXca0YA
	 Y90KtyNwoCeoQ==
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
	by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 055041414;
	Sun, 17 Mar 2024 12:01:44 +0100 (CET)
Date: Sun, 17 Mar 2024 12:01:43 +0100
From: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH v2 1/2] proc_pid_io.5: stats include children
Message-ID: <4eb567da5a26a4886478c65ee90fe73d570e291f.1710673156.git.nabijaczleweli@nabijaczleweli.xyz>
References: <1513ee2073bcf0fae7bb720bcee8a8de847e5cf5.1710339990.git.nabijaczleweli@nabijaczleweli.xyz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="auwltld5rnlz7hcm"
Content-Disposition: inline
In-Reply-To: <1513ee2073bcf0fae7bb720bcee8a8de847e5cf5.1710339990.git.nabijaczleweli@nabijaczleweli.xyz>
User-Agent: NeoMutt/20231221-2-4202cf-dirty


--auwltld5rnlz7hcm
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

This file is like getrusage(2) RUSAGE_SELF + RUSAGE_CHILDREN,
the current wording implies it's like just RUSAGE_SELF.

Compare:
  #include <fcntl.h>
  #include <signal.h>
  #include <string.h>
  #include <sys/wait.h>
  #include <unistd.h>

  void copy() {
    char buf[1024];
    int fd =3D open("/proc/self/io", 0);
    write(1, buf, read(fd, buf, sizeof(buf)));
    close(fd);
  }

  int main() {
    copy();
    copy();
    if (!fork()) {
    zero:;
      int fd =3D open("/dev/zero", 0);
      char buf[64 * 1024] =3D {};
      write(1, buf, 10000);
      for (int i =3D 0; i < 1000; ++i)
        read(fd, buf, sizeof(buf));
      _exit(0);
    }
    sleep(1);
    copy();
    wait(NULL);
    copy();
    signal(SIGCHLD, SIG_IGN);
    if (!fork())
      goto zero;
    sleep(1);
    copy();
    wait(NULL);
    copy();
  }
yielding
  rchar: 3980
  wchar: 0
  syscr: 9
  syscw: 0
  read_bytes: 2968
  write_bytes: 0
  cancelled_write_bytes: 0

  rchar: 4076
  wchar: 96
  syscr: 10
  syscw: 1
  read_bytes: 2968
  write_bytes: 96
  cancelled_write_bytes: 0

  rchar: 4175
  wchar: 195
  syscr: 11
  syscw: 2
  read_bytes: 2968
  write_bytes: 195
  cancelled_write_bytes: 0

  rchar: 65540276
  wchar: 10296
  syscr: 1012
  syscw: 4
  read_bytes: 2968
  write_bytes: 10296
  cancelled_write_bytes: 0

  rchar: 65540387
  wchar: 10407
  syscr: 1013
  syscw: 5
  read_bytes: 2968
  write_bytes: 10407
  cancelled_write_bytes: 0

  rchar: 65540498
  wchar: 10518
  syscr: 1014
  syscw: 6
  read_bytes: 2968
  write_bytes: 10518
  cancelled_write_bytes: 0

Just s/process/& and its waited-for children/ but re-broken per review.

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man5/proc_pid_io.5 | 27 ++++++++++++++++++---------
 1 file changed, 18 insertions(+), 9 deletions(-)

diff --git a/man5/proc_pid_io.5 b/man5/proc_pid_io.5
index d6eaebf5d..dc75a91de 100644
--- a/man5/proc_pid_io.5
+++ b/man5/proc_pid_io.5
@@ -11,7 +11,9 @@ .SH DESCRIPTION
 .TP
 .IR /proc/ pid /io " (since Linux 2.6.20)"
 .\" commit 7c3ab7381e79dfc7db14a67c6f4f3285664e1ec2
-This file contains I/O statistics for the process, for example:
+This file contains I/O statistics
+for the process and its waited-for children,
+for example:
 .IP
 .in +4n
 .EX
@@ -30,7 +32,9 @@ .SH DESCRIPTION
 .RS
 .TP
 .IR rchar ": characters read"
-The number of bytes which this task has caused to be read from storage.
+The number of bytes
+which this task and its waited-for children
+have caused to be read from storage.
 This is simply the sum of bytes which this process passed to
 .BR read (2)
 and similar system calls.
@@ -40,8 +44,9 @@ .SH DESCRIPTION
 pagecache).
 .TP
 .IR wchar ": characters written"
-The number of bytes which this task has caused, or shall cause to be writt=
en
-to disk.
+The number of bytes
+which this task and its waited-for children
+have caused, or shall cause to be written to disk.
 Similar caveats apply here as with
 .IR rchar .
 .TP
@@ -60,20 +65,24 @@ .SH DESCRIPTION
 .BR pwrite (2).
 .TP
 .IR read_bytes ": bytes read"
-Attempt to count the number of bytes which this process really did cause to
-be fetched from the storage layer.
+Attempt to count the number of bytes
+which this process and its waited-for children
+really did cause to be fetched from the storage layer.
 This is accurate for block-backed filesystems.
 .TP
 .IR write_bytes ": bytes written"
-Attempt to count the number of bytes which this process caused to be sent =
to
-the storage layer.
+Attempt to count the number of bytes
+which this process and its waited-for children
+caused to be sent to the storage layer.
 .TP
 .IR cancelled_write_bytes :
 The big inaccuracy here is truncate.
 If a process writes 1 MB to a file and then deletes the file,
 it will in fact perform no writeout.
 But it will have been accounted as having caused 1 MB of write.
-In other words: this field represents the number of bytes which this proce=
ss
+In other words:
+this field represents the number of bytes
+which this process and its waited-for children
 caused to not happen, by truncating pagecache.
 A task can cause "negative" I/O too.
 If this task truncates some dirty pagecache,
--=20
2.39.2


--auwltld5rnlz7hcm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmX2zZcACgkQvP0LAY0m
WPFgUhAApp1YhK2sr7AjLteOnRUz6J0bnLsBYpeN+tyczK3XGZeMThpRz5904WsN
QrIFqDAPBpSkDaIEMstoUxXbi7ZaLzHk7fInvyal8++3KXYoWxBI2Z8uh9yZ0U31
x9qMIYcjBJNBzsbF16K7a0RYJEEWhdoFk3jCmzqyCPBX37STLUubZW9db0ZH1Iwl
wqBKxpnJKPHUCupp1LCKq57ntSxzfy3bhQPUUL/+o7LUdUVijc1/9P/04YxLLdJX
PJ5mkrjdyL2/kuo+qhQMXBS+ViJMqaiCaUKDuMbK8N6MVU0R+WvnnBaoCkb7AeVt
NRGXwx34YRIIVHNF0lnkpfAKizm9kOuWcsYAX5BClTWyiy8coP9nZd+mwtuowkYe
vYMxwDBFB0LTA9ir8fMaKbxoIzjxc7vp30v6jRAaLeidK+tC7mJ1L6IkYuO53y1h
vsbpPX8ICUBVlmIWldK9vXiZQ9asxvRB4ANqU4LYlAclAg3FTU31t8JqX/CKw2Ch
h7duskiQiGypHDgTfSas+rgj5W8cby+miLph5WimOWhSPluWSklEHsnJNULfkrAm
Xb0IRXS1UNpUTbJEaxZlAMbpzwhKCDmJPplo9DlM5dqfQPDcnrDDVMnqbbJ2lZd0
njvEZtr5VXYPuBbqVe4SjaNxX4p1niasURM/mWd5REvRDgucpjw=
=Mdx3
-----END PGP SIGNATURE-----

--auwltld5rnlz7hcm--

