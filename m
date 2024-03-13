Return-Path: <linux-man+bounces-582-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 851D887A98E
	for <lists+linux-man@lfdr.de>; Wed, 13 Mar 2024 15:35:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 07A30B21E00
	for <lists+linux-man@lfdr.de>; Wed, 13 Mar 2024 14:35:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E8BFBA41;
	Wed, 13 Mar 2024 14:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nabijaczleweli.xyz header.i=@nabijaczleweli.xyz header.b="hWyzpY+1"
X-Original-To: linux-man@vger.kernel.org
Received: from tarta.nabijaczleweli.xyz (tarta.nabijaczleweli.xyz [139.28.40.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C533826AFA
	for <linux-man@vger.kernel.org>; Wed, 13 Mar 2024 14:35:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=139.28.40.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710340523; cv=none; b=QK3b8YBqpPP9QGtZy2F3o/uq0KACUp2vd70VrhuDL2VFR4PupqRIAqYO05Ezu0qR0DBxi2iYw006eK5IYoGkbBQxcLZhrLeZ638jMUdPnUQUIAgN1dKI16JSoAxKlZ/MKyZw6v5zSI0Usa6S2fBWMQ1mLVaJx7Hnm/KaBkCsZnk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710340523; c=relaxed/simple;
	bh=SdadPwWiaiNla3IRNQKcrZRshpwnr+5og0kFYUWh8O8=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=PcVBatmpnd3lZf4swYbXJqPt1CQEd73gRVdYgYlV763Mmde8m+3mGvGNmE5RsarjKYTPGppgmwp+YSVmkOj8ZCMd8oCkVpWVwq5YH4WuHXNlh3xeYtUwU4+AOmtnnF1WpOynxn4bYFofD6tcci5gI9G//W8knqaJRTLSq/yKpnk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nabijaczleweli.xyz; spf=pass smtp.mailfrom=nabijaczleweli.xyz; dkim=pass (2048-bit key) header.d=nabijaczleweli.xyz header.i=@nabijaczleweli.xyz header.b=hWyzpY+1; arc=none smtp.client-ip=139.28.40.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nabijaczleweli.xyz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nabijaczleweli.xyz
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
	s=202305; t=1710340005;
	bh=SdadPwWiaiNla3IRNQKcrZRshpwnr+5og0kFYUWh8O8=;
	h=Date:From:To:Cc:Subject:From;
	b=hWyzpY+1s5amb5u5rQwQySZZeuk0cWD5XPOP+ATmmVCF1RzhwNqRtkZPNhjG8+eLV
	 IIfrZdFwJZU0zxeU3ZZ52mcl5ANKfhA6w0ZD8n0zD+8X/qsdIynsu38HrMx6EpAi4i
	 X2qAm8S2Yk55ZZnws+8jC1I4EgIamtMGbuBiucBvgvyzv+jKzrOoOv5JzN/55REqPb
	 vIROkrJXM1sFd3t8Y0piBxrOm9JBZghsjohqq5L3bP+qcs2tJqh+wYrfkgp8INx75l
	 uK/y3O/VF1P0GuAmgtZan30GKkEypu/KoTj0AmXxcrUctP2gfwPy+fKskZcA8OJjLe
	 ZKrJzwxi7MpfQ==
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
	by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id F3B41E4A;
	Wed, 13 Mar 2024 15:26:44 +0100 (CET)
Date: Wed, 13 Mar 2024 15:26:44 +0100
From: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH 1/6] proc_pid_io.5: stats include children
Message-ID: <1513ee2073bcf0fae7bb720bcee8a8de847e5cf5.1710339990.git.nabijaczleweli@nabijaczleweli.xyz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="lva3czyjkgrwnboh"
Content-Disposition: inline
User-Agent: NeoMutt/20231221-2-4202cf-dirty


--lva3czyjkgrwnboh
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

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man5/proc_pid_io.5 | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/man5/proc_pid_io.5 b/man5/proc_pid_io.5
index 124252319..81cfdd249 100644
--- a/man5/proc_pid_io.5
+++ b/man5/proc_pid_io.5
@@ -11,7 +11,7 @@ .SH DESCRIPTION
 .TP
 .IR /proc/ pid /io " (since Linux 2.6.20)"
 .\" commit 7c3ab7381e79dfc7db14a67c6f4f3285664e1ec2
-This file contains I/O statistics for the process, for example:
+This file contains I/O statistics for the process and its waited-for child=
ren, for example:
 .IP
 .in +4n
 .EX
@@ -30,7 +30,7 @@ .SH DESCRIPTION
 .RS
 .TP
 .IR rchar ": characters read"
-The number of bytes which this task has caused to be read from storage.
+The number of bytes which this task and its waited-for children have cause=
d to be read from storage.
 This is simply the sum of bytes which this process passed to
 .BR read (2)
 and similar system calls.
@@ -40,7 +40,7 @@ .SH DESCRIPTION
 pagecache).
 .TP
 .IR wchar ": characters written"
-The number of bytes which this task has caused, or shall cause to be writt=
en
+The number of bytes which this task and its waited-for children has caused=
, or shall cause to be written
 to disk.
 Similar caveats apply here as with
 .IR rchar .
@@ -60,12 +60,12 @@ .SH DESCRIPTION
 .BR pwrite (2).
 .TP
 .IR read_bytes ": bytes read"
-Attempt to count the number of bytes which this process really did cause to
+Attempt to count the number of bytes which this process and its waited-for=
 children really did cause to
 be fetched from the storage layer.
 This is accurate for block-backed filesystems.
 .TP
 .IR write_bytes ": bytes written"
-Attempt to count the number of bytes which this process caused to be sent =
to
+Attempt to count the number of bytes which this process and its waited-for=
 children caused to be sent to
 the storage layer.
 .TP
 .IR cancelled_write_bytes :
@@ -73,7 +73,7 @@ .SH DESCRIPTION
 If a process writes 1 MB to a file and then deletes the file,
 it will in fact perform no writeout.
 But it will have been accounted as having caused 1 MB of write.
-In other words: this field represents the number of bytes which this proce=
ss
+In other words: this field represents the number of bytes which this proce=
ss and its waited-for children
 caused to not happen, by truncating pagecache.
 A task can cause "negative" I/O too.
 If this task truncates some dirty pagecache,
--=20
2.39.2


--lva3czyjkgrwnboh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmXxt6QACgkQvP0LAY0m
WPFryw/+NgFTXy9GK8fKBQPpfep58ZkrngU+IGgoB3n27fkctFpNW7S2z9dYJKSp
cwIqms2DV1+fbRy8YUvMIq55dn3QM7bPp5o4bWAwG5nK2PAXyxWnHRn3kp6rMnVR
OAfSpcBMpj4h40jIvoinsaNY0dgJAl7H/+wWrKoRg64+vodRi+nyymWsRDeFuugd
BvZR/fsx4OyzQuuyL3ijzkmLtsRaWe1YDBDosseJXOhzxadcHcunorBjT3BJ3MnO
xq4vXa1pjKDWbYoPAUXOCNZmuoM4dvq0QcjU0JkVMyPSpZAHLrfdMfZNBd33JmS4
fN8AqIxuYi5fJY1B7mkX7y/M7Xac9SZsHeW5kg6c8BsFFx12+DT1sLqSxfyGT79U
hzVNuj7rgskpFsdJxRrVVxNI70ldNKxduRvutwQdxx42SLI/NfCNrjm5s7Vmwly1
Cjzvgfjh5FEBHI1GOtg1oUypExezBz61dwz9xLTGCGkWeowDWc5T4M7gchxs20vN
3M4t6Ik5NMkHsPjWwhaTBLmBX0Z6TikJGHiWrMdexf/Vos7adVCOFhKJ2Tz8Q44w
1Af+0OZqzOKNrBNOl5WhngY/HySUJgVJnqvecknd5b7O1ooeeFvrgfZq5pmruywi
WsQHysxd557kf3YY6hAR+N65dJAIbHTloNcr9Bm/RTMAsHBb+Eo=
=fT/j
-----END PGP SIGNATURE-----

--lva3czyjkgrwnboh--

