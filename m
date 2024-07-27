Return-Path: <linux-man+bounces-1544-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D0A6B93E0B8
	for <lists+linux-man@lfdr.de>; Sat, 27 Jul 2024 21:30:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 66940281B5E
	for <lists+linux-man@lfdr.de>; Sat, 27 Jul 2024 19:30:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A892186E32;
	Sat, 27 Jul 2024 19:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="MZEFRZhZ"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-oi1-f178.google.com (mail-oi1-f178.google.com [209.85.167.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC083376F5
	for <linux-man@vger.kernel.org>; Sat, 27 Jul 2024 19:30:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722108633; cv=none; b=p40X9oL5LOOGiEmkNJbDi+cLGlHL1LfeVNNMVYb8a4A4KmvuxMRluonisEnhwaJxtMR5fRvTNd7K2oQfhTpCtOOEmI01C+Mlv3D8A2ydf+mdMUjIs9VTSry54aQJlmlyfso5FlGl8c8Trf1JZVdoeMkhDLNgJmKLJfn3SD+KDyk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722108633; c=relaxed/simple;
	bh=kKjddu9Q1srWwjATfpiSmkNxIlBGoRwlXOKqANA8I/0=;
	h=Date:From:To:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=UI9JdEh1U2HSujlmEQvEpDdHkfdJeR+m6lIkAoWoOdxEW4aUDTDmr0elTbCYRMcgMjorQist2GzP9EQKEVxF8b6D3lff1V5dcwbXz/POYX0P/38JLESVx1GXGQsk40mYCvtfSC9RqoEl/2ZHr1UTrB4LQfff29yc6s7ph3yxJVs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=MZEFRZhZ; arc=none smtp.client-ip=209.85.167.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oi1-f178.google.com with SMTP id 5614622812f47-3db1d0fca58so1122226b6e.3
        for <linux-man@vger.kernel.org>; Sat, 27 Jul 2024 12:30:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1722108630; x=1722713430; darn=vger.kernel.org;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=kKjddu9Q1srWwjATfpiSmkNxIlBGoRwlXOKqANA8I/0=;
        b=MZEFRZhZBe7mUF2Beu71y66E2ipFqpApUbrrDFoc4XN/rgi4k5jSzdooNzzoIU5sX2
         msLBZafvsZj6NVBAdx9ayi9P4f+/tNQ6hZaFJBw0Q5Lhuv8M63TcHuXPR/bqLtbMgPvK
         GGPag/6+tJBNTIAMQDt5EckBwFbMXa32buO4Etpdur0mp8yANvccv+XYDjz+7Bq0zQgl
         fAzTeWy1TZx3/Gfmvg1yV5+MDqm/X3heWw9Ri+8Yn99X/xkGnjkF2IkFiokJCvOF5Ev8
         dGwj1gpzSSe/YFkbTaixTr4jGQ/JUXZ/61MM/jTrvMSAmvT9J/uzTOkAhA9IIyEANOm7
         1UQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722108630; x=1722713430;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kKjddu9Q1srWwjATfpiSmkNxIlBGoRwlXOKqANA8I/0=;
        b=tQwqbbfqWV89cPZnjyAg00DBRtC5jvAMhIdzNqZJWoBcwxgW53T8cLZoHVhl32O3YA
         vzVUSE0HdLfhjvNAAzFd5BKVMcs98RBIdoMQx/uAQyV4TOQ+rmhuULhd/pDovif1n39v
         lBwcexPa7UMbHTaQt0KBuhveHJaOCzpj9Jx9vbNHvGWCXZ2eEe0nBkxc2OcRfqC7LmCW
         iPVlv6tP4W+5e2i6/mDx+rIUeP74kCyaTc6GQ1MgwQQHhIsm/Mwn/i9tZ14J27F49WLE
         60mNtGpiRq/KNmH93O088ceezevxn6IMAPtruFtyk+cJQU42xgqa/HjSB+vzAolWiN14
         72fw==
X-Gm-Message-State: AOJu0YwWyMjMVDEgxfu8BlHaPU+qBCMhYDQkePW+fTl/GForjpsGCdCt
	PzxGYqWrrUHnOxi95bvPUOsxzyJMTV8H4vwPTmN1a8FH2UwzxQTtQNYJtA==
X-Google-Smtp-Source: AGHT+IEimsK5Q96g9fAwJIdJF2Ge8G82aXvl/ELAtXUmvu0OO9O33qIaxoC5Su0ePWuMdlKvMITyrA==
X-Received: by 2002:a05:6808:2199:b0:3d9:2def:21b4 with SMTP id 5614622812f47-3db23cedd96mr4264177b6e.14.1722108630581;
        Sat, 27 Jul 2024 12:30:30 -0700 (PDT)
Received: from illithid ([2600:1700:957d:1d70::49])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-3db133fc4besm1288163b6e.9.2024.07.27.12.30.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 Jul 2024 12:30:30 -0700 (PDT)
Date: Sat, 27 Jul 2024 14:30:28 -0500
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: linux-man@vger.kernel.org, alx@kernel.org
Subject: [PATCH 0/3] man/man2/syscalls.2: srcfix (0/3)
Message-ID: <20240727193028.abn22pgfjtioyfbs@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="or4iocbq4opfbrmn"
Content-Disposition: inline


--or4iocbq4opfbrmn
Content-Type: text/plain; charset=us-ascii; protected-headers=v1
Content-Disposition: inline
Subject: [PATCH 0/3] man/man2/syscalls.2: srcfix (0/3)
MIME-Version: 1.0

This patch series prepares the Linux man-pages for migration from
font-related macro calls like `BR` to typeset man page cross references
to the `MR` macro used by groff 1.23.0 (and which originally appeared in
Plan 9 from User Space troff's man(7) package).

To read more about why `MR` exists, and its advantages over font-based
macro calls for man page cross references see the groff 1.23.0 release
notes.

https://git.savannah.gnu.org/cgit/groff.git/tree/NEWS?h=1.23.0#n237

In particular, this series converts man page cross references inside
tbl(1) tables, which have a more complex textual context (in man(7)
source) than most others.

Signed-off-by: "G. Branden Robinson" <g.branden.robinson@gmail.com>

--or4iocbq4opfbrmn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmalStQACgkQ0Z6cfXEm
bc4T2Q//RbwmmS1pac0oW1FzIY01DuI2JSyhZpFRjxM5J4cBLPpKxvZukmgSKZaS
yB8vwakWEE8s8kUKsEtjpfPueAOUfnYp2VIHp5OLKQsB7bDshYf85YhMByNAiPJT
JZuyO/wrMvVQFBGjnWTkWBG87M5ZTuH6rHRg3hyleRWVIwwiqS0B4MEfagq3hD9N
mk8H0YBi3/MXP15CtxJ0iRps+qnyfOQkzZMZLcAt6qR8QwH3hcdxoIO+kcUA8h7G
xsIXJK75f3FRbj8++Zzg27ocE+S2Oc/x1lj7pGG5pvRvAR5OTYtdZFR8iY7E3a2Y
FNpfU3e5EMjwnQGgSYBrLVf7M7C3hk4/P6WUrC8mp0Gv3croaHz3NeLLtXQ9FPSd
aFKDjUW5A5ChMN3tBMU2M8rDgnS+q+VacoSoo1C8/ITB8C+54V6ryIv3/U92uIsx
UHZXmpe+ptHerrP4q0PiR9R6xfd7Nq2n6hYMpMw08z+fz4x1bzuw2hhXByQgVbdd
vHqo2DPPynAvMd8O+sTJWqWRNoYoFPVkH7vXcNeA1VvwMCgtfb6FwFkrF8WNV8Io
d3HfUjX+nSAcsRkTawsi7P4BWvkBuOg22KfnL3PtvyZ5TeoZEo/8cWNZUr8ZFl13
3JH8Cg+Z0lZ78i5u2nqcxW+QMJ/XtIjeFOEKWsEGCxoz5lx+esU=
=XmZe
-----END PGP SIGNATURE-----

--or4iocbq4opfbrmn--

