Return-Path: <linux-man+bounces-820-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D4908B4173
	for <lists+linux-man@lfdr.de>; Fri, 26 Apr 2024 23:41:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id ADDA01C214BA
	for <lists+linux-man@lfdr.de>; Fri, 26 Apr 2024 21:41:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4A55636AF5;
	Fri, 26 Apr 2024 21:41:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="DO5IJeWI"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-oo1-f47.google.com (mail-oo1-f47.google.com [209.85.161.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5B3D28377
	for <linux-man@vger.kernel.org>; Fri, 26 Apr 2024 21:41:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714167667; cv=none; b=Pm396bcxTyKo8mT9dgJk3JwLxrN9/ngcRL2XpXvSaL2fW2yMFMYu4BR+jnB3dEI2OUZR/1O8Lyc2RFf8+sPMHioL8XaefbuK21/uDkmLmCybrYrp/EM7ev0kpwWW4ZOj2sPQNALywvAOpDwuKe2S079IZRrb4jb+v74wkBkespU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714167667; c=relaxed/simple;
	bh=nnROdPLd9UXx4iOSXRO3/e8gUGTAcd+hds5cEBvN+jg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cMe8E0nzDqiQCvU0b0GX9aYjk8e9XSVSr5BwCt5zTaiwUpYHlFSZr6201+YJWp/awA5WFM7rYZ+/XOzvysNB1mnssAzXYX7VartmzVFZp1CHRvqg31Idi30Su7iciOZllquT1CduK0T/H2rF2maOTMDyy/l36/OhXs48KUm685I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=DO5IJeWI; arc=none smtp.client-ip=209.85.161.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oo1-f47.google.com with SMTP id 006d021491bc7-5aa2a74c238so1745165eaf.3
        for <linux-man@vger.kernel.org>; Fri, 26 Apr 2024 14:41:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1714167665; x=1714772465; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=q4fpaljcUbsVnUN4EuJCf3AO9XTdabi0hWUQdYFVJGE=;
        b=DO5IJeWIRNy7C8mKbsXHAoJSE3TczRX7+xtTMcrm3MrVSA8XuH2pQLf0Z7bT5Pdlnb
         VYQqvYPhvdci1f/Ka3+wJwXt0MrP2IJCNYULSXl/fLnfYjQTowFQKh3mvlfbCG1wtFGd
         0LZBHqyOKgt9d4uUPlZKbrwseqYq8ENl3hZrQHcsHUDAj1j7t8/O2XslxChDg8kTIBU4
         YcgCotTgfJ+E2VA12g2wNF/jthVm3uPtZ5b9/pIZm0nN9qAt5aGoih4oEcU6+H+ucfQj
         thoNE9MHIdR7TOYiI6zKuyUz9qox8xYn2JCDhgC8ePPJvmcmjG2u0Em/8gHfuTTYPtS7
         APGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714167665; x=1714772465;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=q4fpaljcUbsVnUN4EuJCf3AO9XTdabi0hWUQdYFVJGE=;
        b=HznwYY/5rIyqoW36V5fkczZMQmS0EOqGtHE5HYNORirKMJ8Jp7+P1AifBIxvLl+5Lx
         OXH1IKOU4KSJ3rnbFneNbPPOU0uic8FTmn4JJNfxJ2cR2jlqVEVi9BVaVG3t3z4DYhZ7
         s+Y6dDHycq7mZdaoj07zVPzhKwIXrIwSC46EDWu+MLBM+ywjylAeRRcE8enNxGhV3m/D
         g9Y3f42k2X5OeHwhQp20aDQxv1kKSf2mqjoT0PJSi/75f7OP0vSKmBmX5CzAz0VaiO76
         5hhqfD7cRPeGTRY2JCtlx0VmR5wepEEHWo9/zJYy30K8F5aIkEsZT7whpa1AM0Gj0v4o
         iVtA==
X-Gm-Message-State: AOJu0Yziyo89GO1yMNh4sP6og/CNRZ9UK7DjIdYzIpgGWQwcMDJyaVQz
	GT4tWtvU+qv5VEnPYEAUiOgN+OX386AjHkylw2oktxIghxmHWK36
X-Google-Smtp-Source: AGHT+IG6tD3n/4GbODNz2iyS2ILLZXF7rcpXzJ+YznxXtyxxyj50gdBuXXEBZxqxbTexrji4F9o1Rw==
X-Received: by 2002:a4a:8c10:0:b0:5ac:9ec3:8c76 with SMTP id u16-20020a4a8c10000000b005ac9ec38c76mr4417304ooj.7.1714167664723;
        Fri, 26 Apr 2024 14:41:04 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id u7-20020a4aae87000000b005ac62af671esm3901177oon.25.2024.04.26.14.41.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Apr 2024 14:41:04 -0700 (PDT)
Date: Fri, 26 Apr 2024 16:41:02 -0500
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 3/3] man2/syscalls.2: srcfix
Message-ID: <20240426214102.6pioaplkwkbch6iw@illithid>
References: <20240415223953.dab5dgguja4ezeo6@illithid>
 <Zh-gDFAi5uqljz2L@debian>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="lshz2mx4l3vnffkn"
Content-Disposition: inline
In-Reply-To: <Zh-gDFAi5uqljz2L@debian>


--lshz2mx4l3vnffkn
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Alex,

At 2024-04-17T12:10:20+0200, Alejandro Colomar wrote:
> On Mon, Apr 15, 2024 at 05:39:53PM -0500, G. Branden Robinson wrote:
> > Migrate table entries from using font selection escape sequences to
> > font alternation macros to set man page cross references.
> >=20
> > This change was automatically driven by the following sed(1)
> > scripts, run in series.  (Due to multiple uses of branching and
> > dependent relationships between some edits, one big script would not
> > serve.)
>=20
> Would it make sense to split this into 3 patches, so that each
> corresponds to one script?  Or are the intermediate steps not good?

The intermediate steps are not useful.  For example, after the first sed
script, we have changes like this:

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

Having ".BR chown (2)" sitting out there as unformatted text (because
macro calls have to _start_ an input line) is obviously not useful.

However, I did discover that the second script was a no-op!  So I'm
dropping that (actually, replacing it) and will submit a v2.

Regards,
Branden

--lshz2mx4l3vnffkn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmYsH2YACgkQ0Z6cfXEm
bc4B0Q/8CqRptVJrfe6xoED/3hanoTjVVQgrsND8iISkQ3oiiN5kYPOUGwPxvE1D
Jm5kcgtyQrhwYUPrCZPaR4nJ0irehh1aIPIvxceqNOnjpKrp+yFwwjFYaW6UgVsU
6HFZrKHWGy2sF4rNgtwns1Nv4TFkmJZ3o9XQaif3n+EbcMEaV74ItwVH/Fqm+EcC
8PGjSNAFsWmzsrGUL0AUxcJ/Y2j42j4LPOwR6TyDtUenKRMQz90KsKnmY4oVnImz
Jmv8Z4fjGss4YXv+XMNHY5EGk0xmbzaIhdR+EeOl1wVb8O9BMvLPhGKbTnRW5p5+
8fuHztUrAxGlJ1rJcr9z9w7CBgM/mpc4GccAkspgyu0TTSg7tb01XcFK/V9RsLQL
OG0j6OB2HDYXVMUr6P0Y+uxnIShpC6ZMYoRPtsYNstrUWJNKS71zBnZFGTQ668OT
Y63EkUkR5Rn5+YH3DGwlwO/ypRGqUbgf91vAGOcCypj2fQppqhec4u6DQi6mdTXy
bYpKm+Af7XAZNtZI6Y62nVGss8psDOSseK5ikIKEYItkybDeP1xgpSNnd5LHYeAv
+HMyGpmZ6uGNJScFYXtM6oRmRmyjagXFVMzi2uTufL8UDXeD0OUg8uK/TAY3m8Rf
iJISK92PBAvdvc2Hdfr5y/KZvV8Vuq+8OA8zuhxWWSzLC/y9RBE=
=SoOh
-----END PGP SIGNATURE-----

--lshz2mx4l3vnffkn--

