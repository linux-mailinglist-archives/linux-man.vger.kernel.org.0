Return-Path: <linux-man+bounces-763-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 12CB08A5DC8
	for <lists+linux-man@lfdr.de>; Tue, 16 Apr 2024 00:39:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4A4391C210F1
	for <lists+linux-man@lfdr.de>; Mon, 15 Apr 2024 22:39:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 140291272B8;
	Mon, 15 Apr 2024 22:39:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="YrrRIKY7"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ot1-f45.google.com (mail-ot1-f45.google.com [209.85.210.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E3742E852
	for <linux-man@vger.kernel.org>; Mon, 15 Apr 2024 22:39:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713220786; cv=none; b=peqUHZYSG00QjJE+YuP+xVKgLCndg90Olz1IRJWoJA/TaizOKhjuleW57auWMw3FukJx7+r99aTEIgp6aaYBWA8oHxwdUnVeWtMpQ16tu9HiDMArLwGNQprO16Pg+Gtc37V8auhI4qGJE2KMu+RcQitWpGcerqqZNY7UoLFHfV8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713220786; c=relaxed/simple;
	bh=E0+I8Bgkc1jyJoqbe4pMx42GbebYulmVF5iJb502X4g=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=fiXJmaB0FI4nqq7RPSQiMkqTammad1DEJuy7L7VBuM/hi3FuAQO9VU0KUP1P4wf9C7C0Q7tWG65V2MePaVYotmEn35Urkfcnu18vk0qzfxI28muojbWFrkI6Zsff9bPcmKLOaV75zrrZVWJ4OZTlyJ7CCtHTecXzW50CxdCDH34=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=YrrRIKY7; arc=none smtp.client-ip=209.85.210.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f45.google.com with SMTP id 46e09a7af769-6eb86aeeb2cso575386a34.3
        for <linux-man@vger.kernel.org>; Mon, 15 Apr 2024 15:39:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1713220785; x=1713825585; darn=vger.kernel.org;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=fnmGiin24/Xl6DpffOaJixPbrqA20B+d4ZU4vkLz5Bc=;
        b=YrrRIKY7jvQB9a9JQT7M2mEG9vYTWjWnU/53vAdVbGVy1PCtjpfR8JvFgnSVh9epkl
         zo0P3+n1NHu1lSzb7VY2vbIbWGzLoCi6QYiOhUWdU+ZnUFoPNJ3eUehjGEnD9WHI3szu
         iso9EVhXin8zdfZp/E2hbmfVzqvr2bkLx+rrYS1zFz14fZFPn3tcgUPqI0FzUN7lq/eZ
         Nt5C8QErJ86aR/3+XCd4wNFcaLm/rlduM+roVZlmdbryGxmgIxNtFSASFGvhX1pbgCES
         tTOzkek1fqWiysV/9jqymtaOI1ZbRqx5UFa9eo8raV0n2+x5jUtdJR9SvP4S5fKNQew4
         LpOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713220785; x=1713825585;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fnmGiin24/Xl6DpffOaJixPbrqA20B+d4ZU4vkLz5Bc=;
        b=gpybNN0q9xB/stke4IVcvdG+dDWS3PEbfQvoLdKaQQgtf/UePCBX33RldlsuoA85Xs
         GXBfLNFlXw1K8UjGGdquP7vsosTLzc1QVYdQ7WvKE5vM+53W74wo4Gn23hYJF0SBP7Jr
         z4FeNGfWn+Fm80X+2sWON0/imviDSa2Wmf65525+PKxUgf8nNBDSp9a1rFHb3oBmmASy
         zbPy/gQrZ0ruab3RS7deZojoNpETTQgpCmMsOunCtqc6VCuBcwlEuRdSndUuBFuCIvUE
         1LAJv3vLK7snlbP7Eie4LKtaeC4YyBPtwfcw05fyQ+prSdjTwhvrMu8qH8IgcG2ZyMOp
         pFYw==
X-Gm-Message-State: AOJu0YyLS/IYBcENIlRO66klXpmU6WMLa4s11BL7OBqbFJBkiyCmHp5s
	+QxJ1mTtoBqvzXfEOln/MgIoZBinTLo+glPqnLNVPcfQWU5GLGANLwmTQw==
X-Google-Smtp-Source: AGHT+IHWXjzb1ngaF4UIZgXB42jokj+PiC4hkhw9fRQ7l2LQ3YkLMdlnJqc27NCWialGz18m02L/ZA==
X-Received: by 2002:a05:6870:315:b0:22e:8539:60a0 with SMTP id m21-20020a056870031500b0022e853960a0mr12400592oaf.46.1713220784683;
        Mon, 15 Apr 2024 15:39:44 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id fr20-20020a056870f81400b002337b882e5bsm2289791oab.41.2024.04.15.15.39.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Apr 2024 15:39:44 -0700 (PDT)
Date: Mon, 15 Apr 2024 17:39:42 -0500
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH 2/3] man2/syscalls.2: srcfix
Message-ID: <20240415223942.yjb2a36a43prhhjz@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="v2seqnq2rioz4m46"
Content-Disposition: inline


--v2seqnq2rioz4m46
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Tweak input format of table text blocks to make a planned sed-driven
update simpler and more reliable.

Signed-off-by: "G. Branden Robinson" <g.branden.robinson@gmail.com>
---
 man2/syscalls.2 | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/man2/syscalls.2 b/man2/syscalls.2
index 69f24ef29..7a7d6d730 100644
--- a/man2/syscalls.2
+++ b/man2/syscalls.2
@@ -469,7 +469,9 @@ .SS System call list
 \fBname_to_handle_at\fP(2)	2.6.39
 \fBnanosleep\fP(2)	2.0
 .\" 5590ff0d5528b60153c0b4e7b771472b5a95e297
-\fBnewfstatat\fP(2)	2.6.16	See \fBstat\fP(2)
+\fBnewfstatat\fP(2)	2.6.16	T{
+See \fBstat\fP(2)
+T}
 \fBnfsservctl\fP(2)	2.2	Removed in 3.1
 \fBnice\fP(2)	1.0
 \fBold_adjtimex\fP(2)	2.0	T{
@@ -677,8 +679,7 @@ .SS System call list
 \fBsetns\fP(2)	3.0
 \fBsetpgid\fP(2)	1.0
 \fBsetpgrp\fP(2)	2.0	T{
-Alternative name for
-\fBsetpgid\fP(2) on Alpha
+Alternative name for \fBsetpgid\fP(2) on Alpha
 T}
 \fBsetpriority\fP(2)	1.0
 \fBsetregid\fP(2)	1.0
--=20
2.30.2


--v2seqnq2rioz4m46
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmYdrK4ACgkQ0Z6cfXEm
bc7O9g/+JO+UvXOWXJP+/iSAd4J/a+VF3nGTvt3onBY9fI4ZurHDV/5aSEW7EQ7A
NhnXKl8lqPerqFXPzTrNnz1lgbX7g6dKIez10DtlkFZsNjtzTH8k+qnI2J0kaFtr
+kH7lPjbgJolbVn6ZJpWkyYHVxc0nqgTeCYQ+hmL1KYdowOn/vu490YgN7BkeXFU
L1RGcFnLjv9Y9GxqzxJYp8CwDfeEbk9RTKlmP6V1AP0YarNWsdmtj2hd5H1lx1ET
RxyCuIN8Ksr+PE/02mxijRQM1J4yTldqssjarvqRosaHqBxGE2BGnsetYDkKc5kV
8A3XltMMszn2oRpQFrsXDC/l21CCi1NnGYfM8HWojfpUu/e6jPNBhMPLYEgMvyVq
GKomSzMqFG6ksk1NhLUKgDcYTRQoXn5eEnNsOhEnvl6vf9tERnuLIpICSR/BZ5lg
4O5dCh3UQWYdCZxQu1m1EeZE9x1152apUT/qRXoMrM+/fYBBsHEhWxLiRFVsuPuo
hvSfKL2Tj4Pr2RaxtjHuDCGfmZFPss3eGE4271a0dNo6vyccoCUzZbqK3+c2JwDB
ezMJSXtsFzn0Z/pavAQGWukyh+5RtsmC61p8iAdFfGvDdkiVuzBWoj6Pb35m+Lno
DK3abryy4FDt1hcYScU12rq4trClT4Jc6sWQwaswnMbTA4ViRvY=
=UPWv
-----END PGP SIGNATURE-----

--v2seqnq2rioz4m46--

