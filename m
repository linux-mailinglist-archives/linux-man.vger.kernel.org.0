Return-Path: <linux-man+bounces-3296-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EA535B11219
	for <lists+linux-man@lfdr.de>; Thu, 24 Jul 2025 22:20:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CA915AC2A89
	for <lists+linux-man@lfdr.de>; Thu, 24 Jul 2025 20:19:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 84DAA22F767;
	Thu, 24 Jul 2025 20:20:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=alejandro-colomar.es header.i=@alejandro-colomar.es header.b="UeQvGfOR"
X-Original-To: linux-man@vger.kernel.org
Received: from out-172.mta0.migadu.com (out-172.mta0.migadu.com [91.218.175.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED3D59443
	for <linux-man@vger.kernel.org>; Thu, 24 Jul 2025 20:19:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753388400; cv=none; b=Pno9dTMcE3zKLS/XGxXKZuMJ0YY42Hyr62Vz9geh/Gyu0JrtvxGWjdGWwCRyAqtCP2/zDOhQ8IpOy1rIfKtBGw4qc/p6sjLD1DTZvwczJKYgNtcBkf5dlqWjWkISEs2KfSOCoK4DPP0dFLUoSNc2ewje4pWcLUAmdDqejIH3j30=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753388400; c=relaxed/simple;
	bh=grGh7rHfGBM1X6gH9Pah8ssy3n1xrIzWxxQQMWLBnq8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=DE1NqJa9Fy86xafstLur40vRT3z6+O0p9zuKTACpdQEmZs4ElFSH1GUx6zHZtHXO9bbD1pRHPgO27BK9lo97f0UOv/XUsBf4DhHeV++LIDQ/f0aml7cehMKxCtWt4QfSIezHqZekiebcav8PYIwVJsqGlFD4djdk7MLwmhI5xEw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=alejandro-colomar.es; spf=pass smtp.mailfrom=alejandro-colomar.es; dkim=pass (2048-bit key) header.d=alejandro-colomar.es header.i=@alejandro-colomar.es header.b=UeQvGfOR; arc=none smtp.client-ip=91.218.175.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=alejandro-colomar.es
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=alejandro-colomar.es
Date: Thu, 24 Jul 2025 22:19:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alejandro-colomar.es;
	s=key1; t=1753388395;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=7aYpZKiL3hNnMHDJyqCan9iWEsYe1jop3SDdRAlx4k0=;
	b=UeQvGfORMkTopQHFe1N18AMK1X5WUwEhMhweZ3fpqoiRAy3tJ74QB4Z8EY107N/x1n93GW
	SWVoWGtzioZkdKWsVEaOQiNAinmXNvlaXPB5N6TNbijB0d+4K5Hm+4xNKx5AsOHBUJz/jV
	SO2a+jkMHDCUWM1AJpjOF1JHj41gMmFmh1BwVKn1cGxacGmpDR0otRXjo84x2VzE93DjLm
	43XSS97en2/e7cZ5bCgta74qbqkFj0GocUfQ2LhaSuk0bOapLnQTFTuL78dCrQLpkm4Qwz
	+wSAyLQTu1Bq0pEkTsw725Sp2uwDFtBxfy6jci2/M74k7EflpvzZ7BHcmJan/A==
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Alejandro Colomar <une+c@alejandro-colomar.es>
To: Vincent Lefevre <vincent@vinc17.net>
Cc: Joseph Myers <josmyers@redhat.com>, 
	C Committee <sc22wg14@open-std.org>, linux-man@vger.kernel.org, alx@kernel.org
Subject: Re: [SC22WG14.32341] alx-0051r0 - don't misuse reserved identifier
 'exp'
Message-ID: <b6t3222gk43gvmubgewabutzzr24vceg6bbpnlyr7mvgwje5qz@s7y6vec2wixo>
References: <20250714222434.4D926356820@www.open-std.org>
 <dddf118f-942d-328a-6a0c-e8e67a9f5c17@redhat.com>
 <20250724191011.GL4912@qaa.vinc17.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="e4sjz5rx7qbxulgh"
Content-Disposition: inline
In-Reply-To: <20250724191011.GL4912@qaa.vinc17.org>
X-Migadu-Flow: FLOW_OUT


--e4sjz5rx7qbxulgh
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <une+c@alejandro-colomar.es>
To: Vincent Lefevre <vincent@vinc17.net>
Cc: Joseph Myers <josmyers@redhat.com>, 
	C Committee <sc22wg14@open-std.org>, linux-man@vger.kernel.org, alx@kernel.org
Subject: Re: [SC22WG14.32341] alx-0051r0 - don't misuse reserved identifier
 'exp'
References: <20250714222434.4D926356820@www.open-std.org>
 <dddf118f-942d-328a-6a0c-e8e67a9f5c17@redhat.com>
 <20250724191011.GL4912@qaa.vinc17.org>
MIME-Version: 1.0
In-Reply-To: <20250724191011.GL4912@qaa.vinc17.org>

[Just forwarding to the committee list]

On Thu, Jul 24, 2025 at 09:10:11PM +0200, Vincent Lefevre wrote:
> On 2025-07-24 18:33:47 +0000, Joseph Myers wrote:
> > On Tue, 15 Jul 2025, Alejandro Colomar wrote:
> >=20
> > > Rationale
> > > 	Since 'exp' is a library function, it is a reserved identifier,
> > > 	which should not be used as a variable / parameter name.
> >=20
> > It's only reserved with external linkage and file scope, and as a macro=
=20
> > name.  (It might still be less confusing to avoid usage in these other=
=20
> > contexts.)
>=20
> The important point is:
>=20
> > > 	7.1.3p1 says
> > >=20
> > > 		All potentially reserved identifiers (...) that are
> > > 		provided by an implementation with an external
> > > 		definition are reserved for any use.
> >=20
> > It's not "potentially reserved", but indeed "any use" seems too broad i=
n=20
> > that wording compared to the wording for actually reserved identifiers,=
=20
> > which is more specific depending on the precise nature of how the=20
> > identifier is defined.
>=20
> It is not too broad. A compiler may define the identifier as
> a builtin. For instance... GCC! The following program fails
> to compile (note that I do not even include <math.h>):
>=20
> static int exp (void)
> {
>   return 1;
> }
>=20
> int foo (void)
> {
>   return exp ();
> }
>=20
> tst.c:1:12: warning: conflicting types for built-in function =E2=80=98exp=
=E2=80=99; expected =E2=80=98double(double)=E2=80=99 [-Wbuiltin-declaration=
-mismatch]
>     1 | static int exp (void)
>       |            ^~~
> tst.c:1:1: note: =E2=80=98exp=E2=80=99 is declared in header =E2=80=98<ma=
th.h>=E2=80=99
>   +++ |+#include <math.h>
>     1 | static int exp (void)
>=20
> --=20
> Vincent Lef=C3=A8vre <vincent@vinc17.net> - Web: <https://www.vinc17.net/>
> 100% accessible validated (X)HTML - Blog: <https://www.vinc17.net/blog/>
> Work: CR INRIA - computer arithmetic / Pascaline project (LIP, ENS-Lyon)

--=20
<https://www.alejandro-colomar.es/>

--e4sjz5rx7qbxulgh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmiClWIACgkQ64mZXMKQ
wqnk3g/+LgUwCbEei/jDRxk5FoaM6p3FTzk8KJL0ht40pTle6EJSRa9j91vfdyti
0ykBLGMcOwi7tQ5aIoCG4vhZkyp5RWZsjNIIcoE2NRUiXlNFHs8jhfSsxQ9gEngC
8DyPGYHKOgRRP2T4YIz1ZtVpZ/GBMAEtTyZA8n9I70Ih+BX46TU1wL43AyhSyHHr
SY4S6KqPT16zfeQroGLQQvUQ5pMMZRksXsYUL7NhKbtULRoz51qB9Rk1hBRLig2W
GlPrdwdS5bTdLbxON5QvF2F0ttnHsAeMgcKLkMuXLJR3HrOc1JQRGGSUQOb0ILTr
W+22QzSDrV8L6XourIPV3GeXUouNWo8uUVwv9hnt0lm8fUzzeFnkzMkeuH6xZIjC
30+sa7G6aToJTnWHcstv190Vznu9pLaggHd+Affje6w530gkuQeVM7liYarDTOMo
xyE9b+QPhByKWXbKekssWglup3KL7m18vkq7fThSDY+rV3ktx0lj2ZwTF22F2EO+
JxF/9UAhe0w0Y5Pyf3Og3J5HhBprbsdne5XE362iq3LNnJ5PS4zDSGcqgoUy4mkz
zGD2jPilB4kawQtzuyB1Fg4+l98FP1gQ2jtJfvgLE9M/KBy7vgA2ENoEM2zowz2r
j6oXWV/QoH6XoF2LSjGWC//8uG8dnLzJ74VkqyL8tLnwiqAiqD0=
=U3De
-----END PGP SIGNATURE-----

--e4sjz5rx7qbxulgh--

