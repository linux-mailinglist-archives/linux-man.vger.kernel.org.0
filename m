Return-Path: <linux-man+bounces-1754-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C4348967465
	for <lists+linux-man@lfdr.de>; Sun,  1 Sep 2024 05:25:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7B499281BB4
	for <lists+linux-man@lfdr.de>; Sun,  1 Sep 2024 03:25:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F003E1E89C;
	Sun,  1 Sep 2024 03:25:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="jh+SNPUw"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-oa1-f52.google.com (mail-oa1-f52.google.com [209.85.160.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E4D333D8
	for <linux-man@vger.kernel.org>; Sun,  1 Sep 2024 03:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725161134; cv=none; b=Czccof4Ren4SYaEnC7V3mIW5hfZwPcOvt3myrjwPKhXOae6eamulTGNL90BPkdRvEzqLK503ajyyhCw/t6H5c2LVnvZDnLcR2FHKZFXnEgX9G42OMMGwoqYQ2FN2A/aZZsISQilfi9HIp8PKPexIk5jsMZ67hl6CkKTtlXAsBeA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725161134; c=relaxed/simple;
	bh=LEh79nBnXcNUXZsh+p/umh6XIVJqngcdblNLE4/zQcc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=KQ2F9BLjzkpByAa9vFXFALFXewtXAH4xOwYLxjZGnTks4H5C/3PW5b2bzXzl/G4ovnUpABDxNgZx9yBIIAasS1HhSKDmAGZm1JjCi7nC+v2JY2MOGtmWqdnUtGFCjOf2C1UGQtMiSH4vjcSgy7YkXr0aiRi6WZDM4LvZieKMljQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jh+SNPUw; arc=none smtp.client-ip=209.85.160.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oa1-f52.google.com with SMTP id 586e51a60fabf-2702ed1056bso1949034fac.3
        for <linux-man@vger.kernel.org>; Sat, 31 Aug 2024 20:25:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1725161132; x=1725765932; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=jVw78dWGRwmDg6xol60QVEpMj1rj6/4nV9ceShwr5PI=;
        b=jh+SNPUwYFd6YfSf5hMHFt5HcK25mi7KMgmvFyIbPcatozO8PTFXgoARtssQFUYNFO
         1scBQ855BY9YUmOgT4h/bs18Ey5fGvy/8DyMTg8r94nE46qZoTRGEq0+3wMhiKsXV7/8
         D0TB5g7N0JwDwMnNBZx/Hitg9Lci6j+kp/DmSHsZZmzbJQjIKszBFZRcXavrQZu3W+oo
         QABRZGhr0I5Q/fq3eS1w6lys7Qafq8LMJAZMnX2zAT+cnEH7SFFKliUfJxuhvssFFH6M
         wsll7k0BpCUG+aTMEF1Dz4EV31jTTzmp3vE/xLL/rqNG0DnieBPIBWG6tDehZ1G5QOlK
         m9Iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725161132; x=1725765932;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jVw78dWGRwmDg6xol60QVEpMj1rj6/4nV9ceShwr5PI=;
        b=nKDn3OoqLAHERvsO/k50gWmydeolu5rbINjkX/EUxPN7zyCHDXYxwqmij5rxSQfuQE
         fASY/f4bCe/YV9FqbO1j8ZnE5HA98zLopZKRYtevJtp3IFYpx+VE+LWgVvehSz+UsvZN
         BTx6Xhzd6z7jJH/NKqvxZ99uqf4gKf8PhQ5b4k917qhxP9CheqWdFdF82etwj2Kd94kq
         lRDVFP04gEAQC3tToayLUprVp9bXHflIcf4P6txEJs3l3BbkIoxJGsgMXAQFZJEClBEc
         7M8lC/rstNa+nXOgrlgfgFy1uNej20BSIHH5pQ2A3uAV+hjtFSP9T0fU4WFtwU/PW5ps
         2S8A==
X-Gm-Message-State: AOJu0YzVsgAEBYsEmo9JWsWf+rL6rwepxO/D6MujTjcfB3zbHLsbw9jF
	pNss8ML1tfjV6UootxE379bmRAyTVEo2si2F3LgsFbdUrcUCZjcL
X-Google-Smtp-Source: AGHT+IFTKG2UUPSnXWG4+/HCZrjoZZ7MRO558M65AxDp3BVacNHvMb4eGydx6nRDyhpkh1SPjPoy2Q==
X-Received: by 2002:a05:6870:71c2:b0:261:211:9d14 with SMTP id 586e51a60fabf-277902dc96bmr12634981fac.37.1725161132193;
        Sat, 31 Aug 2024 20:25:32 -0700 (PDT)
Received: from illithid ([2600:1700:957d:1d70::49])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-277c86b5edesm974474fac.42.2024.08.31.20.25.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 31 Aug 2024 20:25:31 -0700 (PDT)
Date: Sat, 31 Aug 2024 22:25:30 -0500
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH 05/10] utmp.5: srcfix
Message-ID: <20240901032530.wrvbtb4wisgnkcns@illithid>
References: <5bec58a0a261f834a2fc29d471b0b984822905b7.1725161054.git.g.branden.robinson@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="nbxmzr55nlwiizqw"
Content-Disposition: inline
In-Reply-To: <5bec58a0a261f834a2fc29d471b0b984822905b7.1725161054.git.g.branden.robinson@gmail.com>


--nbxmzr55nlwiizqw
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: [PATCH 05/10] utmp.5: srcfix
MIME-Version: 1.0

Prepare for `MR` macro migration.

Migrate man page cross references in unfilled examples from using font
selection escape sequences to font alternation macros to set man page
cross references.

Signed-off-by: "G. Branden Robinson" <g.branden.robinson@gmail.com>
---
 man/man5/utmp.5 | 15 +++++++++++----
 1 file changed, 11 insertions(+), 4 deletions(-)

diff --git a/man/man5/utmp.5 b/man/man5/utmp.5
index 0139241ed..1d7291e7f 100644
--- a/man/man5/utmp.5
+++ b/man/man5/utmp.5
@@ -48,13 +48,17 @@ .SH DESCRIPTION
 #define EMPTY         0 /* Record does not contain valid info
                            (formerly known as UT_UNKNOWN on Linux) */
 #define RUN_LVL       1 /* Change in system run\-level (see
-                           \fBinit\fP(1)) */
+                           \c
+.BR init (1))\ \c
+*/
 #define BOOT_TIME     2 /* Time of system boot (in \fIut_tv\fP) */
 #define NEW_TIME      3 /* Time after system clock change
                            (in \fIut_tv\fP) */
 #define OLD_TIME      4 /* Time before system clock change
                            (in \fIut_tv\fP) */
-#define INIT_PROCESS  5 /* Process spawned by \fBinit\fP(1) */
+#define INIT_PROCESS  5 /* Process spawned by \c
+.BR init (1)\ \c
+*/
 #define LOGIN_PROCESS 6 /* Session leader process for user login */
 #define USER_PROCESS  7 /* Normal process */
 #define DEAD_PROCESS  8 /* Terminated process */
@@ -81,12 +85,15 @@ .SH DESCRIPTION
                                      messages */
     struct  exit_status ut_exit;  /* Exit status of a process
                                      marked as DEAD_PROCESS; not
-                                     used by Linux \fBinit\P(1) */
+                                     used by Linux \c
+.BR init (1)\ \c
+*/
     /* The ut_session and ut_tv fields must be the same size when
        compiled 32\- and 64\-bit.  This allows data files and shared
        memory to be shared between 32\- and 64\-bit applications. */
 #if __WORDSIZE =3D=3D 64 && defined __WORDSIZE_COMPAT32
-    int32_t ut_session;           /* Session ID (\fBgetsid\fP(2)),
+    int32_t ut_session;           /* Session ID (\c
+.BR getsid (2) ),
                                      used for windowing */
     struct {
         int32_t tv_sec;           /* Seconds */
--=20
2.30.2


--nbxmzr55nlwiizqw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmbT3qoACgkQ0Z6cfXEm
bc6awg//WzA4f/QBz3Qw3PzEMRRW+0xznDzj0U+gwO3nqIxLbtY9xBOZ1HRxUvgw
7nTYrtHUQJrQiz9yk2I9de3vE+Q97gSVMKGXSX77B6eI7pY+EdTy1qXXt0bxgTFk
c9jhhtk7ZE0RZY+9UaWHIz7JDp+owF9gUnnzc1r4WSIbV5u8M3yGvK+nh1MeprgV
0edKrEuOqi9IPquERrBQ8u93deFoBpG05lKUQfJ0k2of3219SkBdMfTs8ZlUm70W
dY3jygFznQiqMfcUEzucoY/BH/PeNmRXuLroyVztgYUSRiwqB5dXpr3L5vqpJGEc
Yr+ALI4VipGd747YJVsPxfHjaepYB1unO1RxLG9S1mPovXfoU2DTivdpxJj9xDD2
u1YiqEipBq4Fa52cD4fI3/JwL9LTTUse53dH5iOLab0QIauJIMhPyKaFKFmiuQZs
jjiSD778jqmzxKxG9l4t8gUAH9etZua1Ho4Kkiw64S7A1dc7RgUghax2W+h1q9YC
KKTC+DmajGzkI06QLmPLyQ/bi2/6L5dCuq0Y71s6fJpGaCH5T4SxsoKasZ5pvc0U
EZw9zMG+LNvX1kARi3U+1PQPFCZ/tkvq6HKAO7yMQbI9T6PO38T6e1WCDW+tPzZ1
ywrgfzfZPrDPWvU+pWQYzht+NAIhgD/PDBdJc1PBEcBEAxBxbr0=
=gYty
-----END PGP SIGNATURE-----

--nbxmzr55nlwiizqw--

