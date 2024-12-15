Return-Path: <linux-man+bounces-2146-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A1ED9F2605
	for <lists+linux-man@lfdr.de>; Sun, 15 Dec 2024 21:27:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 824961885B71
	for <lists+linux-man@lfdr.de>; Sun, 15 Dec 2024 20:27:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 07BAA190679;
	Sun, 15 Dec 2024 20:27:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nabijaczleweli.xyz header.i=@nabijaczleweli.xyz header.b="Igv1ggvD"
X-Original-To: linux-man@vger.kernel.org
Received: from tarta.nabijaczleweli.xyz (tarta.nabijaczleweli.xyz [139.28.40.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 925DA8831
	for <linux-man@vger.kernel.org>; Sun, 15 Dec 2024 20:27:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=139.28.40.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734294427; cv=none; b=UD2a66uMXfNUUzU0oqiZyWgaHqKcBShxpGKDx56EJGV0ukGSkSnsZd4b+4g0psIby1C6iOICrHrvL/VDwJ2MG87XaOSZ09R6JI1j9YYcE5L2FY41fcVCIP+2tafjca70wLktGkGLPFMr9TKgOLJBjsuq2wHVFJGP2tfTM9jdgPo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734294427; c=relaxed/simple;
	bh=dnGAwFSp5rDT8nJSw58buUXyJ76wJke3OVpmGIiBtmo=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=bJiebzVLOdDZQfQ7hKQXy05hVDH9yU0QPdFVzu9Uod7BWAS9WEB94lKP6rtzuydY4OU2Foarjtp6yx1ljBCihpw6AlbkzM6lQ2byTyvPtcn9zMsbWkWrjJWr2Uv9PPslzT53w+XmwVquxNLiSaD0KmmV802eV8zcxyCK45VQhWU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nabijaczleweli.xyz; spf=pass smtp.mailfrom=nabijaczleweli.xyz; dkim=pass (2048-bit key) header.d=nabijaczleweli.xyz header.i=@nabijaczleweli.xyz header.b=Igv1ggvD; arc=none smtp.client-ip=139.28.40.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nabijaczleweli.xyz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nabijaczleweli.xyz
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
	s=202405; t=1734293879;
	bh=dnGAwFSp5rDT8nJSw58buUXyJ76wJke3OVpmGIiBtmo=;
	h=Date:From:To:Cc:Subject:From;
	b=Igv1ggvD/lWF49jDieeoyg/XXn+mUs+sCEinIckXpMGtAjOtAl4iOhJ3tr1oPTORW
	 HoXJVuR56oG4i30hzACXdXdkfrW12ED2q0DqQQpIjkbaF8xv7Ikqa4lxmqYokbusJB
	 18jCDIqNudff2ESM7Hj/5enyBLK5aY3n3GGgGuJsI6qyD60iEM7yNCFyEfZARnW1r6
	 R1v4MdJ/IXeU6BMQhZ3ey6lk08W3YHMwLQTPf1YMsUkjblGvWlI834KCLkPDAu0GBS
	 P2yl2BzKgHMw7iBNDOw/VFqsjJW7MaanyRD0IcMvQhyOBHl/ci0pbZM0vGUqQ4ZYvv
	 RRbgX183p7lKg==
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
	by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 5ECDC1BCE;
	Sun, 15 Dec 2024 21:17:59 +0100 (CET)
Date: Sun, 15 Dec 2024 21:17:59 +0100
From: 
	Ahelenia =?utf-8?Q?Ziemia=C5=84ska?= <nabijaczleweli@nabijaczleweli.xyz>
To: alx@kernel.org
Cc: linux-man@vger.kernel.org
Subject: [PATCH] strverscmp.3: this is NOT the ordering used by ls -v
Message-ID: <pvaw3u77afqspd5vjqcke7qdmz4on7qsqbkjltis6hbpxqwwvw@tarta.nabijaczleweli.xyz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="b6alit5bmobzmhiy"
Content-Disposition: inline
User-Agent: NeoMutt/20231221-2-4202cf-dirty


--b6alit5bmobzmhiy
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Compare, given:
	#include <stdlib.h>
	#include <stdio.h>
	#include <string.h>
	int compar(const char **l, const char **r) {
		return strverscmp(*l, *r);
	}
	int main(int argc, char ** argv) {
		qsort(argv + 1, argc - 1, sizeof(*argv), compar);
		for(int i =3D 1; i <  argc; ++i)
			puts(argv[i]);
	}
yields:
	$ /bin/ls -v1 a*  # coreutils ls
	a-1.0a
	a-1.0.1a
	$ ../vers a*      # as above
	a-1.0.1a
	a-1.0a
	$ ls -v1 a*       # voreutils ls @ 5781698 with strverscmp()-equivalent so=
rting
	a-1.0.1a
	a-1.0a
compare also the results for real data like
	netstat-nat-1.{0,1{,.1},2,3.1,4{,.{1,2,3,4,5,6,7,8,9,10}}}.tar.gz

Thus, coreutils ls -v does NOT use strverscmp(3),
it uses a similar algorithm that actually properly sorts versions,
not just single numbers.

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man/man3/strverscmp.3 | 15 +++++----------
 1 file changed, 5 insertions(+), 10 deletions(-)

diff --git a/man/man3/strverscmp.3 b/man/man3/strverscmp.3
index 41bc1ddbd..7c3643860 100644
--- a/man/man3/strverscmp.3
+++ b/man/man3/strverscmp.3
@@ -25,16 +25,7 @@ .SH DESCRIPTION
 orders them
 .IR jan1 ", " jan10 ", ..., " jan2 ", ..., " jan9 .
 .\" classical solution: "rename jan jan0 jan?"
-In order to rectify this, GNU introduced the
-.I \-v
-option to
-.BR ls (1),
-which is implemented using
-.BR versionsort (3),
-which again uses
-.BR strverscmp ().
-.P
-Thus, the task of
+The task of
 .BR strverscmp ()
 is to compare two strings and find the "right" order, while
 .BR strcmp (3)
@@ -44,6 +35,10 @@ .SH DESCRIPTION
 .BR LC_COLLATE ,
 so is meant mostly for situations
 where the strings are expected to be in ASCII.
+This is not actually the ordering produced by
+.BR ls (1)
+.BR -v .
+.\" because it considers a-1.0.1a < a-1.0a; this is not what you want
 .P
 What this function does is the following.
 If both strings are equal, return 0.
--=20
2.39.5

--b6alit5bmobzmhiy
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmdfOXYACgkQvP0LAY0m
WPH51g//QtuAmsvC697641xVDJ1b0viq5kJT7dhto3W+kcwsZpEoq2blqK96ooYc
MY0ld8MqkIqQFmDquoC1Ras9CkSnfRnUf8X/N32/Ia4j22HY3wT3ZQVYYJI5BJnH
raaf5IJooyTI35qAIwKUZJBm2CXxtvHw7IIz+CFZYen81FLTqSTV+F8avgE3ITrH
xhKLcHm6GPbP0R3Nfk98wyykfCHOonRK+q3c71pzXe0uEUDs03ZhZT8IgFCjP914
11cgqlDhY0cTLLiQ7xsxoz/fDQFa8J9Cf/XGaTI8Emb2GON2EV8HnJYUIOgs1tFK
2xXznh4g+kLNW9ClRC46YslaYnsuXPy8E5LbQY4Js1luYTkaZtWZ7Fz6l454EwUJ
05olzfhx5Z2zThcsNLe8ZNPB6QqOfswSt37952f8T6TEwQ4mX5K7YlOqSyZ0wkit
0Qypm7mkaPFPiOhXUf9F4nJKK8EB2VfUIqAZCCj4WfruVkYC3E7wV27CsfOU5LlY
nZVzfwUMuWCpvEpZf4QioXTjQLtvTfmk30XJl8l0vbFpXhWiHOOjXjttxoSeNoCA
524URE8lsIspRgG2b3zCvCK83v45fiSC7ClgigRk+adOPoYPQTSuMfaaKL5mTmWs
qgMsmYf084XRTGoTph79s+VaKIb31GdcNWP1l/Ohwcb1KcJidN4=
=fS89
-----END PGP SIGNATURE-----

--b6alit5bmobzmhiy--

