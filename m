Return-Path: <linux-man+bounces-1327-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E770928C24
	for <lists+linux-man@lfdr.de>; Fri,  5 Jul 2024 18:17:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2E2141F2474C
	for <lists+linux-man@lfdr.de>; Fri,  5 Jul 2024 16:17:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 62E03535C8;
	Fri,  5 Jul 2024 16:17:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=xry111.site header.i=@xry111.site header.b="GzAB9Lix"
X-Original-To: linux-man@vger.kernel.org
Received: from xry111.site (xry111.site [89.208.246.23])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C81231E497
	for <linux-man@vger.kernel.org>; Fri,  5 Jul 2024 16:17:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=89.208.246.23
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720196258; cv=none; b=qxFaR7x+9QxvPHtVpTWx6AMNdqzgA2i6NLyEyjcWa0gixW0qgBQFtIY1Aq1U0NnD8fqEBOWno3fGUoilVtkKtsSsmEXPczRq/W3KxMs8lfCLuD7YiGMevkPRfe6lQ87I9GpHH48MWfqzkSta3x1xiSUgh71JO0nN5rj6i8GCGic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720196258; c=relaxed/simple;
	bh=49/xRNYgVuzF0pWKQq2eQ4cQnGUpI0hrs4peM/U88EE=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=YxSJcCUblX7FzHH0R4pJ0KJyynLc/LNKra/28gJG9sf+lIDDVgnbnvJkIzRWxJMMhbQpS63xMtu5glCMwJ/qzeWSF1scIcfMrB5PVXsU4rZ5rH3uT7CtlNrGISPSBeJ5euvjevcdNBA4ZR1JKPdqwSjxp+8X7ZDgJ+LwakKxdXA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=xry111.site; spf=pass smtp.mailfrom=xry111.site; dkim=pass (1024-bit key) header.d=xry111.site header.i=@xry111.site header.b=GzAB9Lix; arc=none smtp.client-ip=89.208.246.23
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=xry111.site
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=xry111.site
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=xry111.site;
	s=default; t=1720196255;
	bh=49/xRNYgVuzF0pWKQq2eQ4cQnGUpI0hrs4peM/U88EE=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
	b=GzAB9LixrDCa1tKgPbyPA0rhvSsUPj3agPtOsh8PCCd7Me4adGFNIK3A+Slc645dh
	 sjJH/zeQ0cSYZM6/c05vxE1bB4xXOeyR0/H/rjCapKyqQCy9SQwdJL278O6DJYFUij
	 zrbAA/b4FDeZafXAYnUlSXiUBdvET338bNT0adGg=
Received: from [127.0.0.1] (unknown [IPv6:2001:470:683e::1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature ECDSA (P-384) server-digest SHA384)
	(Client did not present a certificate)
	(Authenticated sender: xry111@xry111.site)
	by xry111.site (Postfix) with ESMTPSA id B8BD566FA9;
	Fri,  5 Jul 2024 12:17:33 -0400 (EDT)
Message-ID: <9ccc587324b77d12a4d16f27ce49ba840f23cd20.camel@xry111.site>
Subject: Re: [PATCH v1] Remove 'restrict' from 'nptr' in strtol(3)-like
 functions
From: Xi Ruoyao <xry111@xry111.site>
To: Alejandro Colomar <alx@kernel.org>, Martin Uecker <muecker@gwdg.de>
Cc: Jakub Jelinek <jakub@redhat.com>, libc-alpha@sourceware.org, 
 gcc@gcc.gnu.org, Paul Eggert <eggert@cs.ucla.edu>, linux-man@vger.kernel.org
Date: Sat, 06 Jul 2024 00:17:31 +0800
In-Reply-To: <d99c2f8230eec6b7244b62ca612ee949466f62aa.camel@xry111.site>
References: <20240705130249.14116-2-alx@kernel.org>
	 <38982a470643f766747b0ca06b27ca859a87b101.camel@xry111.site>
	 <wadzblkwslmjyypxjij4mvt2hy6zihncox5l3mh23vwd7lhmkh@vosxxdjdd53k>
	 <08bc01290aca2408f69a6df2088eed7697968e90.camel@gwdg.de>
	 <f3oswcupvsnxglwzp2h3pdc7k6ibuwzfhxl4zarqclwqzenn3h@jaj3ksd4foeg>
	 <b1888e9f069950be010f7d87d4a8ae6ed64b69b0.camel@gwdg.de>
	 <inr67omtoxegfmjxrj24h5fuvgthv2b7yr4v5kv2dq5oaterpl@h6clysw4s4w5>
	 <d99c2f8230eec6b7244b62ca612ee949466f62aa.camel@xry111.site>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.52.2 
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Sat, 2024-07-06 at 00:01 +0800, Xi Ruoyao wrote:
> On Fri, 2024-07-05 at 17:53 +0200, Alejandro Colomar wrote:
> > At least, I hope there's consensus that while current GCC doesn't warn
> > about this, ideally it should, which means it should warn for valid use=
s
> > of strtol(3), which means strtol(3) should be fixed, in all of ISO,
> > POSIX, and glibc.
>=20
> It **shouldn't**.=C2=A0 strtol will only violate restrict if it's wrongly
> implemented, or something dumb is done like "strtol((const char*) &p,
> &p, 0)".
>=20
> See my previous reply.

Also even if we'll introduce an over-eager warning having many
positives, there are still many possibilities besides changing the
standard to satisfy such a warning.  For example, g++ -Wdangling-
reference has many false positives (IMO it's over-eager) so a
no_dangling attribute has been added to allow suppressing it.

--=20
Xi Ruoyao <xry111@xry111.site>
School of Aerospace Science and Technology, Xidian University

