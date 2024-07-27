Return-Path: <linux-man+bounces-1541-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 22DA693E0B4
	for <lists+linux-man@lfdr.de>; Sat, 27 Jul 2024 21:27:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 52C271C20CA7
	for <lists+linux-man@lfdr.de>; Sat, 27 Jul 2024 19:27:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1603E185E6A;
	Sat, 27 Jul 2024 19:27:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="kNloRXUB"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-oo1-f43.google.com (mail-oo1-f43.google.com [209.85.161.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 722FF11C83
	for <linux-man@vger.kernel.org>; Sat, 27 Jul 2024 19:27:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722108469; cv=none; b=PhGeo7YJKV2MF3VGYhi6t49MP4k60kEHzJFH872b22SViGYoqWfA5p+bXXWyToTaWEO0m5P2mxeIqbka6dG0gRNNQDq2Vb7a3EOp2dMZSqvU/h1SD53JfxUGE/ZjMqqS8jfMjLSL28O75Lo0sONyPuivQdtpUjFyxUkfGd+rMD4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722108469; c=relaxed/simple;
	bh=EJUNucdVevGymRcOIuaHW9wsTbF0YJqY0ahzBGkIrq0=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=VNar4x8J5pSLDJN/bi4bRWj0A2vw8o/x5LVrX/ovhCbtJB+4khzEiL4wl1DAZesfJIn3GAIAw+5MRscNmhG2W30HqBF1LVdKJhFQ7zmzLIW7JcivAi3lNC69kdfjcYeWm0zCNJplpYXZ1rXr/jGruppmNE9/pcARMyYQ++oVWAA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=kNloRXUB; arc=none smtp.client-ip=209.85.161.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oo1-f43.google.com with SMTP id 006d021491bc7-5d5b1e33fa8so1183683eaf.3
        for <linux-man@vger.kernel.org>; Sat, 27 Jul 2024 12:27:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1722108467; x=1722713267; darn=vger.kernel.org;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Rpr4LK9P4NyqCUnIJxVbZfLSW2SHts+uC0dJvKL3I90=;
        b=kNloRXUB1PZD1EBlzbwqBaDPHaGUp3gmMHftlv8iZZoQdyjcZNOIBK4c7uT2Ig/mrb
         IK7AR5m/0PtHlgIcv+PW5lM4IVH8JgZKSKdj1MUZ34qicafw41x2b2bhU/10Qg96P5Dc
         TuBbeL4lOMZSLSNrt8QZWwxVljKnDXVyqSFuegWs/FntrvHRw68AG+9fYq6p6h54WLtm
         D5eTwmijqBQ70cCN+FVOcYp61BLDG3sDWsaalA2o+8x5gbcNg1jyDaltzaBi7gljABPU
         fzll+J7cUZaBf3qOTPx1Ygb5PnacvtyBoe1M5M/TGM1XF/xTkvHa38U9bi2kL0CEH4BV
         FqNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722108467; x=1722713267;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Rpr4LK9P4NyqCUnIJxVbZfLSW2SHts+uC0dJvKL3I90=;
        b=WK3S2hq3wTX6eHQp18lcVnnQJT9/kO1CdB9bGKnD9psBQyT7t7/D0NJmwKfRhHXh7E
         8tpad7y07gXLTQonyz0RR4+4ZGVq+sRofskHQqbtLnbN9jML2o1qy7+JmMcBsSBnd7Q9
         lmJAUhjStfSz1mxcd0IkpFHJEkmIB6aYf8futXX4nbEadhwKSRDZgxCVQP4V4eGCeb31
         YmwXHGHuJeH4I0+RUZy1+x4DyBlRHGG05snI/XxI1pXcpnI4ch0/Gk1SlylqelWCitMw
         4pPXy6g1yn7IakNuC64IMXvvh8LULBUjXlwxtF24s110SHJi3dg7EGvw6XXrEwnh/THC
         Rl8w==
X-Gm-Message-State: AOJu0YwFNAA2VrlupbOB4g9qR+9kQlHJIQKv6jRTqfnxNn9y2yksUiWK
	3Sa7yZfsLLP7AlpWKNyEW5HttYE/ujT5Mft8NohvzZWg+JsToHgmzNqzPg==
X-Google-Smtp-Source: AGHT+IGMWknrccr+L/P3xuvlzToGmI7cLLR6O080Y6Nm07c40QHJmaEYNgWdxQt41AgK1hbR+jcliA==
X-Received: by 2002:a05:6870:b69f:b0:260:ed20:dc8f with SMTP id 586e51a60fabf-267d4d12e18mr4385476fac.3.1722108467131;
        Sat, 27 Jul 2024 12:27:47 -0700 (PDT)
Received: from illithid ([2600:1700:957d:1d70::49])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-2653cfcf9b2sm1178438fac.8.2024.07.27.12.27.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 Jul 2024 12:27:46 -0700 (PDT)
Date: Sat, 27 Jul 2024 14:27:45 -0500
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH 1/3] man/man2/syscalls.2: srcfix (1/3)
Message-ID: <20240727192745.lt2oo34hw3limkls@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="n3w4pfrts4hqyosx"
Content-Disposition: inline


--n3w4pfrts4hqyosx
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: [PATCH 1/3] man/man2/syscalls.2: srcfix (1/3)
MIME-Version: 1.0

Migrate table entries from using font selection escape sequences to font
alternation macros to set man page cross references.

This change was automatically driven by the following sed(1) script.

$ cat fix-syscall-table-1.sed
\# Rewrite man page cross references inside tbl(1) text blocks to use
\# man(7) macros instead of troff(1) font selection escape sequences.
/^\.\\"/b
/T{$/,/^T}/s/ \\fB\([a-z0-9_][a-z0-9_]*\)\\fP\(([0-9][a-z]*)\) /\
=2EBR \1 \2\
/

Signed-off-by: "G. Branden Robinson" <g.branden.robinson@gmail.com>
---
 man/man2/syscalls.2 | 12 +++++++++---
 1 file changed, 9 insertions(+), 3 deletions(-)

diff --git a/man/man2/syscalls.2 b/man/man2/syscalls.2
index 7a7d6d730..c8afd537b 100644
--- a/man/man2/syscalls.2
+++ b/man/man2/syscalls.2
@@ -187,7 +187,9 @@ .SS System call list
 \fBchdir\fP(2)	1.0
 \fBchmod\fP(2)	1.0
 \fBchown\fP(2)	2.2	T{
-See \fBchown\fP(2) for
+See
+.BR chown (2)
+for
 version details
 T}
 \fBchown32\fP(2)	2.4
@@ -398,7 +400,9 @@ .SS System call list
 \fBlandlock_create_ruleset\fP(2)	5.13
 \fBlandlock_restrict_self\fP(2)	5.13
 \fBlchown\fP(2)	1.0	T{
-See \fBchown\fP(2) for
+See
+.BR chown (2)
+for
 version details
 T}
 \fBlchown32\fP(2)	2.4
@@ -679,7 +683,9 @@ .SS System call list
 \fBsetns\fP(2)	3.0
 \fBsetpgid\fP(2)	1.0
 \fBsetpgrp\fP(2)	2.0	T{
-Alternative name for \fBsetpgid\fP(2) on Alpha
+Alternative name for
+.BR setpgid (2)
+on Alpha
 T}
 \fBsetpriority\fP(2)	1.0
 \fBsetregid\fP(2)	1.0
--=20
2.30.2


--n3w4pfrts4hqyosx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmalSjAACgkQ0Z6cfXEm
bc4Izw/9GYIK5ESgNVSlBAkdY4lLQFeoPePgq/gtTRrcJCgBih+hMKBakxwAPD+U
XRNvJUA4giFRSLHG8efiET4avISG4AoHP7ugDMLOq23nuDcIrqZ4l7DwPTtBZCAc
H47DRpiRzlknWeuUdDze2mGkoTtewzdJDwzKVmLayYKwG26Qd/M29MpG8TZPhD5/
YVsA4yUuqRah8c/iaMiNwTBb4BjYARL/HYRWIyUi6MuU2htjwFPtyash/tvUgtIu
JCSPLCgIOELib0o8Ms1jf8uvMUAnTJl2GvJESxuHoVH4XhUTsuV9eb2CrMNhaJCO
ki4Mt85JoLQ/Zc4azH8odIIx/az/TjBkxi6GT8zir+IYhKIQp0Os4krnYY5oNUCT
Zf+EYxOz0Q9pEt10mWXiDrtta38xLvO0Wq2/WvwwyLMBwKlm2mL9Kz8PiPtbiOjF
oDkwBQ2/R6MjiexEkwaJooV4mUs5TO2RdODQ+P1PiKgKMpwVEzunoZsZIZndOmxt
3jcEQK72vUMVDE6tK7om+8EO6i+8D+wJ6CUSQhJ3m3JFaAcKgZNCwhTT37+2mp5q
P94e7peT2qqtPcqPd97dhTPAWKCoULmQ8Vkhbll3NKtWk6hw3g73S8p0NW8PIjoQ
f82E6Ez//dyuMuQ6axUxcKSmEISBsTpqX4VfFMuQCwaN03W0xAw=
=1zD2
-----END PGP SIGNATURE-----

--n3w4pfrts4hqyosx--

