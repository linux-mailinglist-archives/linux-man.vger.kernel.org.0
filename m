Return-Path: <linux-man+bounces-1735-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 568B49672F6
	for <lists+linux-man@lfdr.de>; Sat, 31 Aug 2024 20:21:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1C000283517
	for <lists+linux-man@lfdr.de>; Sat, 31 Aug 2024 18:21:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9FC3413B2B8;
	Sat, 31 Aug 2024 18:21:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="MxQplBAB"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-oa1-f50.google.com (mail-oa1-f50.google.com [209.85.160.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1359923774
	for <linux-man@vger.kernel.org>; Sat, 31 Aug 2024 18:21:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725128462; cv=none; b=TMJ3hpprZWVpx1k58Ybb4GXD9iIP+Vfv29tzGT0Y0rwwHMzA9CzItevvWifwpBnnDxgmx+PGbYLLZShyJmQU1yWwcAth9Y4unN1C+5QB6UVI9LyJVpWD94+/KHTBUn7LHJr9X7mLzN/3ndiVJ8jlfG6+aVJ079OU2B8m2ijhocg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725128462; c=relaxed/simple;
	bh=SZ8k2bMF3iBK24lqzwzUjpjeDXrjz9azlGJe83frkM8=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=Ni3t8CovarGhHPVeNkrWIJ2wk5XVEYhFGYihWadTfTjo7c3de4iWrWSHnu1kPiKfrGkt+v2FHtE+ucIGkK6gLGQ8bEII5jK4gaS4MPz/E6zYeIx76lDn39yijJaiv26KrUcN9xlpIjS0XRpURd5hK18CNMYeZC0upGFJczQcpt8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=MxQplBAB; arc=none smtp.client-ip=209.85.160.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oa1-f50.google.com with SMTP id 586e51a60fabf-2704b6a6fe6so1624668fac.1
        for <linux-man@vger.kernel.org>; Sat, 31 Aug 2024 11:21:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1725128460; x=1725733260; darn=vger.kernel.org;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=iEwp+HffUUMKOtg+xBv95AFiZef9BAXpwbCbJmYyRtE=;
        b=MxQplBABYY0/35IKAISVJz06i0a+8++1rmMPksRMkNadIpd6i+Rf/MEqcPXZ/oK9mi
         fSReXTMW7CSTQRwATzxrIOPMErFhAy7HdeouTnLgOdNNC3FWvXFtHBpdpd40DDLCd0HD
         GwkQLxFBHFm9npSzJR8jlSFnQQkB1g5nLp+fCU4j+taX5WgV7SZO2BISZrsQdj/mTAmg
         0zmJsLtDewT9XzJiFHm3OTqQ+C3ecynX83cfhHDfvg92cbVGhrF2oMa5SQlPusqaagcz
         URaiY2TGG1bLdfMTSKXL4bJNLmyG9LKB6IXEnmjH6RIetNJzsBvUsNxWvCUN1OuU61W6
         IN6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725128460; x=1725733260;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=iEwp+HffUUMKOtg+xBv95AFiZef9BAXpwbCbJmYyRtE=;
        b=Zm3hNOwuavvxxioB7CJ514etivQYCguy2UU0/d1UBLOSFcrEIzXTGd5X9LXO7fInZE
         KpXGQp5QEdRzB7fpt28oZgLG/BpjcLlN0OEZDTf6C6HirjW4wG1lUdKNRu+PvXJnUOrf
         UUdsH3XhWh1BRLTmZg8Nj3a1p01MuQEZn3ixOwd1FaIFRFkYB2OzzwYXBr1Vf/+HO3Er
         lum1btvU2Dp7MlI+wABP8wbcBaBqIYolip8aV8/L6/uLeI0S/x0UAk6ze0DAEQjoA3Fu
         mipzLp/hLl50dMPuCS6aWgFtiq0sHeFIhXL9YrORtEfEIiZ3tYn31+qMW4FWzlojTwqC
         DteA==
X-Gm-Message-State: AOJu0YxXoTaUbA4zUGlKDzUMLWO9cdTMaES74Zjk39ETKUwY8saXnnf4
	cTBu9b+Cqt1v59I3CKvyKjhYPsJGrnNtyGtpzYOWBOP6YBIKzWmBrIxYlA==
X-Google-Smtp-Source: AGHT+IHj6MBjeIlXvP5QlHRX3tv+S2+x4WXkhdGJPx2QTYOwlC5PyAhfWZuhXwtQ9FKJZ4od+TO6iA==
X-Received: by 2002:a05:6870:9127:b0:26f:ddfa:3571 with SMTP id 586e51a60fabf-2779009f3e3mr11094960fac.2.1725128460115;
        Sat, 31 Aug 2024 11:21:00 -0700 (PDT)
Received: from illithid ([2600:1700:957d:1d70::49])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-277d5ed026csm364579fac.38.2024.08.31.11.20.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 31 Aug 2024 11:20:59 -0700 (PDT)
Date: Sat, 31 Aug 2024 13:20:57 -0500
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH 3/5] namespaces.7: ffix
Message-ID: <20240831182057.u6mza33uhz55j3xd@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="kffdk66t4bgdnovc"
Content-Disposition: inline


--kffdk66t4bgdnovc
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: [PATCH 3/5] namespaces.7: ffix
MIME-Version: 1.0

Let the table columns breathe again.

Signed-off-by: "G. Branden Robinson" <g.branden.robinson@gmail.com>
---
 man/man7/namespaces.7 | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/man/man7/namespaces.7 b/man/man7/namespaces.7
index 9f0fda553..cf3436f09 100644
--- a/man/man7/namespaces.7
+++ b/man/man7/namespaces.7
@@ -30,8 +30,8 @@ .SS Namespace types
 The last column is a summary of the resources that are isolated by
 the namespace type.
 .TS
-lB lB  lB       lB
-l1 lB1 lw(21n)1 lx.
+lB lB lB      lB
+l  lB lw(21n) lx.
 Namespace	Flag	Page	Isolates
 Cgroup	CLONE_NEWCGROUP	\fBcgroup_namespaces\fP(7)	T{
 Cgroup root directory
--=20
2.30.2


--kffdk66t4bgdnovc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmbTXwkACgkQ0Z6cfXEm
bc4ULA/9E0bU871m40O8KhMCJf1Wfpv26la3+Q8g7lim2mZFv9jtbsJko4oGFORv
jenTvnH6227tkvTFZ+GPywMIyysvLye9Q60hfe5vbyGyfMfG15JQ8MG2abPTJQn1
7XhzR/itqF4Y9rkSvEivrNVKi2uxnR5k8YTh395FHAjsSVZhZ8qyfmU6pzac0dKa
VeQI6kgFZrix8N6tkL8Qpc3xK7X7tDudedjfnJei9u9nwN8dn7ssj3WiYg669ekD
l39CbCzpMNIIgVX/hs5EFcyzAcsfeFlkA+sSlMsbF2TB3OzeK19x7953UaTfnNX7
Cg6g0U8KFI7XBmrCxLDiVAQuvF9mafLdgmLZ7EhhET/udl6ylGsL1Zkl789fCQ0J
dUfqLerkvCcQmKCMLaLQiQZ5sRmY9EOMQ0pZRSD4DMXGX3QeaY2vEGBTg8sK9Xt2
/T5PLXkrHzV3yiocjaKqUtRJhw9A2f6mbTvav+yLO6eMjV9OAIcW/Fs4ZdqqvxtU
adQqq0hqUh7QaU5EDiSA2pZv+Mb4XuP3x/1Zft3RH5gIntEIyVz846H5LHhy/5+P
ucNqg+wZw0d8EYmYW1X8jtmZXUjVLIAHD2UJunbnAKLrB/aVKKBfWCWyu1C8Taqq
Bii4wWBaVrLScnnv9XnuMCLDbngT6UT4bMAqp6Lb1joC9m6DBEk=
=Uy9e
-----END PGP SIGNATURE-----

--kffdk66t4bgdnovc--

