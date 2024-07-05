Return-Path: <linux-man+bounces-1323-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F4F2928C02
	for <lists+linux-man@lfdr.de>; Fri,  5 Jul 2024 17:55:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EC8BD1F25D2F
	for <lists+linux-man@lfdr.de>; Fri,  5 Jul 2024 15:55:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6512B61FC5;
	Fri,  5 Jul 2024 15:55:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=xry111.site header.i=@xry111.site header.b="Fr6O0Oks"
X-Original-To: linux-man@vger.kernel.org
Received: from xry111.site (xry111.site [89.208.246.23])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B910A14AA0
	for <linux-man@vger.kernel.org>; Fri,  5 Jul 2024 15:55:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=89.208.246.23
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720194926; cv=none; b=CHIOFGUOHBKdT752MIYodMHLkGS1mEwB+tKk1vWoQBw1sdGSkATj654t3p4XIJHjcR27pNpBJbqdh3X+pz3VPu3cxMPDs2RwSmfnKAFCG+ggTKFOFlCth/t9wpwdCy5XFuQNfmP96gxtKNwbIfVUtqOuzuHn7eLb+0DYr5UBPW8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720194926; c=relaxed/simple;
	bh=IUgyFRtVbWCH0YL0sr+STCwHgNs4I2TNRKosa6VCJs0=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=akm5u7Bx+jp2RqNrywZ1CKy6Udc8jECeycwpKFFb6b7mMY6bCfWIfVrTvL9DBbddkIQvq6HBhmqbIkNGtAUpOPlbXF+gZ6Jcb+7ydNyEL0kjyp1/iZw0UlPwAidIsFSZQvpsaeYJRJJJArqdt7Nup+769CrmjwjH7fQr77d19Jw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=xry111.site; spf=pass smtp.mailfrom=xry111.site; dkim=pass (1024-bit key) header.d=xry111.site header.i=@xry111.site header.b=Fr6O0Oks; arc=none smtp.client-ip=89.208.246.23
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=xry111.site
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=xry111.site
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=xry111.site;
	s=default; t=1720194915;
	bh=IUgyFRtVbWCH0YL0sr+STCwHgNs4I2TNRKosa6VCJs0=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
	b=Fr6O0OkskC5iiHorbo6n/0pVf/jVQztB40ll4Y169dVk+wG6uV7696pK/wQRXdad6
	 0AkKZQF1Fvzi0PrLP6o+Pn+s4mrB9iZIwkwLOZtZOFIPOVc2OgiAy8WBNVKSnlHM3q
	 8jxaWV2qhV3+nrEqg3uagL2bYtPGyXUHLtvgxNFY=
Received: from [IPv6:240e:358:11fb:d500:dc73:854d:832e:4] (unknown [IPv6:240e:358:11fb:d500:dc73:854d:832e:4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature ECDSA (P-384) server-digest SHA384)
	(Client did not present a certificate)
	(Authenticated sender: xry111@xry111.site)
	by xry111.site (Postfix) with ESMTPSA id 4C52066B00;
	Fri,  5 Jul 2024 11:55:10 -0400 (EDT)
Message-ID: <3a93d77304ae0f6aa0453eff4813ecc000f2365a.camel@xry111.site>
Subject: Re: [PATCH v1] Remove 'restrict' from 'nptr' in strtol(3)-like
 functions
From: Xi Ruoyao <xry111@xry111.site>
To: Alejandro Colomar <alx@kernel.org>, Martin Uecker <muecker@gwdg.de>
Cc: Jakub Jelinek <jakub@redhat.com>, libc-alpha@sourceware.org, 
 gcc@gcc.gnu.org, Paul Eggert <eggert@cs.ucla.edu>, linux-man@vger.kernel.org
Date: Fri, 05 Jul 2024 23:55:05 +0800
In-Reply-To: <f3oswcupvsnxglwzp2h3pdc7k6ibuwzfhxl4zarqclwqzenn3h@jaj3ksd4foeg>
References: <20240705130249.14116-2-alx@kernel.org>
	 <38982a470643f766747b0ca06b27ca859a87b101.camel@xry111.site>
	 <wadzblkwslmjyypxjij4mvt2hy6zihncox5l3mh23vwd7lhmkh@vosxxdjdd53k>
	 <08bc01290aca2408f69a6df2088eed7697968e90.camel@gwdg.de>
	 <f3oswcupvsnxglwzp2h3pdc7k6ibuwzfhxl4zarqclwqzenn3h@jaj3ksd4foeg>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.52.2 
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Fri, 2024-07-05 at 17:23 +0200, Alejandro Colomar wrote:
> > strtol does have=C2=A0 a "char * restrict * restrict" though, so the
> > situation is different.=C2=A0=C2=A0 A "char **" and a "const char *"
> > shouldn't alias anyway.=20
>=20
> Pedantically, it is actually declared as 'char **restrict' (the inner
> one is not declared as restrict, even though it will be restricted,
> since there are no other unrestricted pointers).

So how's the following implementation of strtol (10-based, no negative
number handling, no overflow handling, ASCII-only) wrong?

long int my_strtol(const char *restrict nptr, char **restrict endptr)
{
  long ret =3D 0;

  while (isdigit(*nptr))
    ret =3D ret * 10 + (*nptr++ - '0');

  *endptr =3D (char *)nptr;
  return ret;
}

There's no dumb thing, there's no restrict violation (unless it's called
in a stupid way, see below), and there **shouldn't** be a -Wrestrict
warning.

If you do

char *x =3D NULL;
strtol((char *)&x, &x, 10);

it'll violate restrict.  Nobody sane should write this, and it's warned
anyway:

t.c: In function 'main':
t.c:6:28: warning: passing argument 2 to 'restrict'-qualified parameter
aliases with argument 1 [-Wrestrict]
    6 |         strtol((char *)&x, &x, 10);
      |                ~~~~~~~~~~  ^~

--=20
Xi Ruoyao <xry111@xry111.site>
School of Aerospace Science and Technology, Xidian University

