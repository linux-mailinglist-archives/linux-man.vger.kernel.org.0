Return-Path: <linux-man+bounces-822-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D54FB8B4179
	for <lists+linux-man@lfdr.de>; Fri, 26 Apr 2024 23:44:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 90E8A282CE7
	for <lists+linux-man@lfdr.de>; Fri, 26 Apr 2024 21:44:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C4D343613E;
	Fri, 26 Apr 2024 21:44:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="mNzn0QF0"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-oi1-f172.google.com (mail-oi1-f172.google.com [209.85.167.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48BF536B17
	for <linux-man@vger.kernel.org>; Fri, 26 Apr 2024 21:44:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714167847; cv=none; b=bnw54wqnaF1gCGnmK9ewUI2TSCGb7NRBR7FS7XEEvk4IzSnpfD/bJJb4/yyFjjT5POS8HjQBhM1xRd9HnH+HbIrPJbXevOwEaMW5vVROyUaUNxlC+c4ThG9/1c9A49grOB6vLokzLn3TQxAGED0A1YC7c+F8ip2FrtFHe/VNIGE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714167847; c=relaxed/simple;
	bh=CQpMwmsUveTC1b48I5W1tJQ0L3DADpAaTJVB1ba4lt8=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=IOmnb0aki0XQEmbjHTL/TiOEbWr893HfRPkNCnIPOz3+re/V0U5J61pVpdiIOUL8h/mWw9UJ0SorpJGrAHsbyK2R49dsVkeqdUM1Y/lM6pUwbEtRbr/fMeOEh47NAmx+5LEhJ0z+ISgAug2RQ9t3NkN1TidnfBMZIrEBkTlDHEA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=mNzn0QF0; arc=none smtp.client-ip=209.85.167.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oi1-f172.google.com with SMTP id 5614622812f47-3c8317d1f25so1682523b6e.3
        for <linux-man@vger.kernel.org>; Fri, 26 Apr 2024 14:44:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1714167845; x=1714772645; darn=vger.kernel.org;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=beU63sOyFMND3X3syV6073+SqLaLzUf4HDHBUKLtNEU=;
        b=mNzn0QF0eNGddVAMoDFSE1AZbYwKavj8P6GQE1LigAs5toEu7o2bnUHUTiMwXgxCMq
         98LfjFB0OfvguCcxfBZFsxVC7TQcviUCmRTEB0npy/R2gfkXfLuel2Ybbm2FfMW03LtQ
         P+R+Imm+2q+bD0S8VV6pj8NPM+soxJTsAEhD3K/kZNaePgAY11ZlRB7l/Rjp05DfQ/aj
         eKxMQFHajjvlmQC9otmkfJFtGFDdSUOx+fQ4fv2EBh6EkyfTJU4UPKSkO/v27nSjnMQK
         RzRhPTnMMjxXL2Yo5lhJ1o2lsUQCRF9R8XX0cqjYvXVvUtAQA1bNdKQBZoQPOmiQvCRh
         ehPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714167845; x=1714772645;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=beU63sOyFMND3X3syV6073+SqLaLzUf4HDHBUKLtNEU=;
        b=GMG5OWnxS8Xky3R9Ari12HurxlcYD6hJUFZr1AWYqIOI3Zh/CHzhd0ItHoTs+iQHzJ
         5IQSifE0n8A8pNUOGn6mmfGepCaCAYQeVo4sM3NxhGF93sGGg1jSvgOT/kU0sBSDNgN+
         S+LM0aF8NeIt3Vlu+QMIAyRUdvkWkVxODT8q9G1D1znp+y2do4V7C4XPiQ4I1+gYYz0t
         hDFcblrb6CAoJ6iEfyXXWvMYOxTieobUIAzEaYEfIkfd9e9WO6qYhkrGMNcknG73oWnx
         vUtCXGhJ0MvtZd9gm1dpv66/bdOLFuX6LQPOQfFsc+eA9WGNet/nk/qwfLAXIkWb/BYS
         vY8A==
X-Gm-Message-State: AOJu0Yw8S3YPwQAPKE6rfQ2QqnBWPYUYTv14hQF3p+ZzaR7uT4tXu+9x
	onAf4fs4Dn4JVmLO0wLkuTMNuQdlkiOsF4+SEXzRuptBaLls0DO9
X-Google-Smtp-Source: AGHT+IEyhpppTvW29p9qJBIdmKgbQPsuwEGGOM15BhMroOuy9BNDx6VW6ZjVgSNwj+BmDyYqN6DstA==
X-Received: by 2002:a05:6870:c18b:b0:22e:9a3a:14c3 with SMTP id h11-20020a056870c18b00b0022e9a3a14c3mr4209183oad.17.1714167845448;
        Fri, 26 Apr 2024 14:44:05 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id vz11-20020a056871a40b00b002395a8bf92fsm3246642oab.8.2024.04.26.14.44.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Apr 2024 14:44:04 -0700 (PDT)
Date: Fri, 26 Apr 2024 16:44:03 -0500
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH 1/3] man2/syscalls.2: srcfix (1/3)
Message-ID: <20240426214403.mvskw552dm2wyaus@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ilrgp4k3zjnz3wve"
Content-Disposition: inline


--ilrgp4k3zjnz3wve
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Migrate table entries from using font selection escape sequences to font
alternation macros to set man page cross references.

This change was automatically driven by the following sed(1) script.

$ cat pre-MR-migrate-cross-references-1.sed
/^\.\\"/b
/^\\fB[^\\]*\\fP([0-9][^\]*).*T{/s/\\fB\([^\\]*\)\\fP(\([0-9][^\]*\))\(.*\)=
/T{\
=2EBR \1 (\2)\
T}\3/

Signed-off-by: "G. Branden Robinson" <g.branden.robinson@gmail.com>

---
 man2/syscalls.2 | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/man2/syscalls.2 b/man2/syscalls.2
index 7a7d6d730..979dba538 100644
--- a/man2/syscalls.2
+++ b/man2/syscalls.2
@@ -187,7 +187,8 @@ .SS System call list
 \fBchdir\fP(2)	1.0
 \fBchmod\fP(2)	1.0
 \fBchown\fP(2)	2.2	T{
-See \fBchown\fP(2) for
+See .BR chown (2)
+for
 version details
 T}
 \fBchown32\fP(2)	2.4
@@ -398,7 +399,8 @@ .SS System call list
 \fBlandlock_create_ruleset\fP(2)	5.13
 \fBlandlock_restrict_self\fP(2)	5.13
 \fBlchown\fP(2)	1.0	T{
-See \fBchown\fP(2) for
+See .BR chown (2)
+for
 version details
 T}
 \fBlchown32\fP(2)	2.4
@@ -679,7 +681,8 @@ .SS System call list
 \fBsetns\fP(2)	3.0
 \fBsetpgid\fP(2)	1.0
 \fBsetpgrp\fP(2)	2.0	T{
-Alternative name for \fBsetpgid\fP(2) on Alpha
+Alternative name for .BR setpgid (2)
+on Alpha
 T}
 \fBsetpriority\fP(2)	1.0
 \fBsetregid\fP(2)	1.0
--=20
2.30.2


--ilrgp4k3zjnz3wve
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmYsICMACgkQ0Z6cfXEm
bc5lVA/+NtB1wQ1/gzGBTEC9XFpj1PzHlfD6Q9eTDUuZ84pSQ0xjmYjDNjEhI+i4
hootmhFjndFjH8ArGV2oA8Vx/19+NFaDIAS+r2hFkqYUn9gTnL6UHLzigQWhgi4w
sKdhBdlqkwrRIyNKkYFeTgO1GDmjDMoaSky5ddChrkkERRLEA7verlSsXJAx2Tbi
phbT58FSbiVjuehybipqfnZZxs1w0H6UStsSQWlneTpc/Vp/cRpxnpbXcTw59JZF
7IaIajPZQ0L0gpXXLkXZ2/vkasG972QRNbLmN5MyHEmaucLFAXMZDsp7bM11vXBR
3AtgVP/z8UN1p98F/F+oQ3efUZgMAktPPeGu+S1KuXB3cbvWiCvBRP1l8NMJx5Iy
j+08uFtYqf9zuVybkkdKHnFI5RO1+uPvl1GlCRV57qK9boDuIFsIm+QgVPOO0yxw
hgw9oU4lsDgz61oASueueGF/8li3TZ7oBlh7jTVtIAg9C0jW79chASURILKdwYRa
vWzN9IwE3LPkJgvvtjwbnad2XRqE3l6uyzFmb8e01DFhZmMRr3335MT16TYa4VWi
vRsJLFa37LHcDeUqISCE+Qwc3AyeWeXYM5jZSpROh+3/kwDEhfDyR1ZuRHEl/cFG
YDUC7LjGRkdKIbE38oo3AIiaGwoQGXXbH/jde0lPVJCORWkGvEw=
=zPrf
-----END PGP SIGNATURE-----

--ilrgp4k3zjnz3wve--

