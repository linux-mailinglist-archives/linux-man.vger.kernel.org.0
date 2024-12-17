Return-Path: <linux-man+bounces-2167-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DD3B9F50B6
	for <lists+linux-man@lfdr.de>; Tue, 17 Dec 2024 17:18:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 54934171986
	for <lists+linux-man@lfdr.de>; Tue, 17 Dec 2024 16:15:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E68AB1F8929;
	Tue, 17 Dec 2024 16:07:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nabijaczleweli.xyz header.i=@nabijaczleweli.xyz header.b="KF6hTUk1"
X-Original-To: linux-man@vger.kernel.org
Received: from tarta.nabijaczleweli.xyz (tarta.nabijaczleweli.xyz [139.28.40.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A23871F4E50
	for <linux-man@vger.kernel.org>; Tue, 17 Dec 2024 16:07:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=139.28.40.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734451635; cv=none; b=Tg22ZyMcczF/sSf/sbaMvlmEzz/cvUR2LC7rNF6J6oBdr4YEy/IwERxBroLbrAiXd5JWE02ednhw0QzOwBoSsb68yHxoGKsjBl/Db7EvHIWDs+f4KppwKZ7ty5qQR3qQy6AHNkD633F9oXbaZNTcM6lbgr3sESmno1FLgjQlzQs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734451635; c=relaxed/simple;
	bh=uArxnEHvYS5J77n/yX3K1rXdWzG/l4SdJgLUCOS6aB8=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=TdN092k1OJ3mZ47CnKl7uohd38ZX9tCouENS1wQn6bFXhjGPIUVbbiB8SBHN+KDsq+GQ73Jwzj2AenJ44SLjosm0ZScCw0TEof6ey01bGRZtylACJzewcGb291+205Afx8vpcoXnR1nDnaykIXeFRAkOI6iMHnXjH0PMhUKsfEc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nabijaczleweli.xyz; spf=pass smtp.mailfrom=nabijaczleweli.xyz; dkim=pass (2048-bit key) header.d=nabijaczleweli.xyz header.i=@nabijaczleweli.xyz header.b=KF6hTUk1; arc=none smtp.client-ip=139.28.40.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nabijaczleweli.xyz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nabijaczleweli.xyz
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
	s=202405; t=1734451622;
	bh=uArxnEHvYS5J77n/yX3K1rXdWzG/l4SdJgLUCOS6aB8=;
	h=Date:From:To:Cc:Subject:From;
	b=KF6hTUk15m2Czc/ArvV/ybNbRHpgJph0adc3LhXmC+gHn0vGk1wn60j4TtA/6mmy5
	 T1VZM9a0ZYhcaUKvIqaL1maJ1TUO+Kr7LjDnOYYvd92J52PvVZzqsImBvbCg6ow7zk
	 bMTDUCnBCnNUcJU31DPFxXyX3ZZ7b+hfjnJJUXRXWqN2x+J0P7q6yJo6U8BgmGhOPQ
	 dnU9xRMM8pZX4Lwrdo14xBCmcArj1dLotuCyYZfp5G2qq5L6C3bpgBh9sqYeFNfCig
	 KN9SXp4hiZAI055q6RCaGmLMHuvevUwdn8/DxTDohNZr4hGh47KKjwIyTQB+vHTKJo
	 QTBSXIJGiDJ3Q==
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
	by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 462941678;
	Tue, 17 Dec 2024 17:07:02 +0100 (CET)
Date: Tue, 17 Dec 2024 17:07:02 +0100
From: 
	Ahelenia =?utf-8?Q?Ziemia=C5=84ska?= <nabijaczleweli@nabijaczleweli.xyz>
To: alx@kernel.org
Cc: linux-man@vger.kernel.org
Subject: [PATCH] getopt.3: remove _<PID>_GNU_nonoption_argv_flags_ description
Message-ID: <k57itvvrwcyzpgojoh6y4qe7gagkt4tuof6w6gcfpzpjg6juo7@tarta.nabijaczleweli.xyz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="bd3m5j6rgq5qgvfk"
Content-Disposition: inline
User-Agent: NeoMutt/20231221-2-4202cf-dirty


--bd3m5j6rgq5qgvfk
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Per <https://sourceware.org/git/?p=3Dglibc.git;a=3Dcommitdiff;h=3Dbf079e19f=
50d64aa5e05b5e17ec29afab9aabb20>:
* this was set by bash 2.0 (1996-12)
  (implemented in glibc b07c5668f672125074dd5b0b658145e1544120be)
* it's no longer set by bash 2.01 (1997-06) because it was bad
* glibc disabled this with no way to enable it in 2001-08
  (518a0dd201c48a5c15d73c1919c304a9f8f5e3c1)
* glibc removed it in 2017 bf079e19f50d64aa5e05b5e17ec29afab9aabb20

So this was experienced by people for 5 months at best,
and could remotely be experienced for 3 years
(if you somehow wanted this bad behaviour and added it into your shell),
over 20 years ago. No modern reader (or, frankly, non-modern reader)
has ever used this, or could use it, really.

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man/man3/getopt.3 | 9 ---------
 1 file changed, 9 deletions(-)

diff --git a/man/man3/getopt.3 b/man/man3/getopt.3
index 67c3ec9b3..686862d30 100644
--- a/man/man3/getopt.3
+++ b/man/man3/getopt.3
@@ -318,15 +318,6 @@ .SH ENVIRONMENT
 .B POSIXLY_CORRECT
 If this is set, then option processing stops as soon as a nonoption
 argument is encountered.
-.TP
-.B _<PID>_GNU_nonoption_argv_flags_
-This variable was used by
-.BR bash (1)
-2.0 to communicate to glibc which arguments are the results of
-wildcard expansion and so should not be considered as options.
-This behavior was removed in
-.BR bash (1)
-2.01, but the support remains in glibc.
 .SH ATTRIBUTES
 For an explanation of the terms used in this section, see
 .BR attributes (7).
--=20
2.39.5

--bd3m5j6rgq5qgvfk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmdhoaUACgkQvP0LAY0m
WPGDVQ//V0iMF1/SHyoJLP+TwsIMT1NH6pMdANKdY49LvBUSiQX0GgFEGOEWym1y
sVLEpTbShqNy6KCaq7qrQ47PKIuMVupnwgszqpuASHN0AZ3aaBMZnShjf8QFyvO9
eSntWjuxiWSWk1t4W38r8PDYxcF17MHsr4a0Z4dajPUn7kDHQHR7lJecNM+z1mAv
Fe5AsvXpbdZrCR8mcfo5Hh0AFTbp8DUrmoBvEm7oy8/XqiBL94r2f3u+WRppmsdl
Cz9MMoGXmEpEQGfQbpuDgHu8S+i9hmP9DanxiPyTq/JdjwZ3q+Sn4sEfe4QLaEbg
J8NAPb714qUGMXWDFomKUTTkRdWwagrHHk8JdpEnhDBOL376eK1WCde61xiQGIWU
lC3LfVEyyIdC+jb/FK1RlBIaMFGKO8jCqzZhTZbBhYq2EAOWCskhnWzD6Dp3Z5BK
Uby2EMy2i7Q9SZMOTeaAPOJ4nW2x012WB9Cev8nxIl6tehBCAd+NvcQGQ+KLhi1v
/j6oWhgajLCKUnS2tW0oWdZ37iDy13Lvqn32wvoS6VtY9hxZeXIYj2f1KogQvVgq
UEQCWkObZKOAFyb0RbCyvYbwULbxFKb/qp6bs/9bgaKC7DhfmPHS+Y7GsbrIbi1K
e9o8Yr7Ycd2S86XxwcHxL9z6oQHnenefzEtAXW+7HXoKpfgElMQ=
=UW56
-----END PGP SIGNATURE-----

--bd3m5j6rgq5qgvfk--

