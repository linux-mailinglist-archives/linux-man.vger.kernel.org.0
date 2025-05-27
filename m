Return-Path: <linux-man+bounces-3038-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B4C19AC4F08
	for <lists+linux-man@lfdr.de>; Tue, 27 May 2025 14:59:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4C0A1189FC76
	for <lists+linux-man@lfdr.de>; Tue, 27 May 2025 12:59:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9398A212B0C;
	Tue, 27 May 2025 12:59:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AelHrZl5"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5424F3FC7
	for <linux-man@vger.kernel.org>; Tue, 27 May 2025 12:59:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748350777; cv=none; b=Nyxo2QCaALcPeGlCkE1ABEI4qCwAwBirPhVEVyd/JLWXUlBE9ruIe3hp7WvfeJJTjZ5ip3xpcL4mYYqwTU2lLMt348B2K8YmaPn7EmCWSnS3FzndMRsEIAAh1Pga/xOHzAr1/viNeG0TjzVe6LnFW6cNOgcurmckgzlIbsArido=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748350777; c=relaxed/simple;
	bh=utMnSi1a+4tF4zEN+A7CCVL64HpCwtYLjW6N8nfzzkI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=sLp7PkTbvfmYAH17fcgeV96a/FlQtGItNDiPRV1RIFRlidnoSlNTr6PVltw2cxOPsvnGvhfykJv2cZurHakb1+L71JX455ZdooyTw3y6cy/YlqWgopRHtQSkguJ0l7fldE4Qy7asF0+jtU0QFNSzO9tZ9TqdINp6XQ7po17RIDs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AelHrZl5; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 26510C4CEE9;
	Tue, 27 May 2025 12:59:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748350776;
	bh=utMnSi1a+4tF4zEN+A7CCVL64HpCwtYLjW6N8nfzzkI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=AelHrZl50u5calAJRtUieyUauEbU996iN+ieJKkX6E1vkckMyYpTfilnLPgeAruQN
	 RFclcL/RWgQqvvPTGfP8IcHPRMtBtBvQk8/T/tgWkY9q98IM3MnpbfCFQxFz6NCH6n
	 NUx9ZGBfGao/3OhSwo585j0+Vr7TA2TNq1ZLPNKpmzGB9AdrVAgRoLa6WmT7deQEx9
	 PTeMAM1xiLWcjqUKkybNyEHPIRwSkKrc0t9XvgUTS5othVXlp5D3dt9dfEootLCred
	 MFydzRwa9XUAzqNbya7wEi2K9U+YBwDjfWIAUO1Rrhr4YM2TEEz+fBWEF3Lhu/BAd7
	 5tMETIMoMZFBA==
Date: Tue, 27 May 2025 14:59:32 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Carlos O'Donell <carlos@redhat.com>
Cc: =?utf-8?B?SuKCkeKCmeKCmw==?= Gustedt <jens.gustedt@inria.fr>, 
	Michael Kerrisk <mtk.manpages@gmail.com>, linux-man@vger.kernel.org, Ulrich Drepper <drepper@redhat.com>, 
	Ingo Molnar <mingo@kernel.org>, Todd Lewis <todd.lewis@gs.com>, 
	Alexandre Oliva <aoliva@redhat.com>
Subject: Re: bug in futex.2, FUTEX_CMP_REQUEUE
Message-ID: <y7p7wwufa3kbacvpp2meskbppixaxc4bmw2ytoz3b6zltfba35@pgixr6h7qvcl>
References: <20250527115303.3304206e@inria.fr>
 <s5ec3atfffzxdetxbkjgkdiarnuk2yucnpi5j3h3ppqr72mxna@ml6zpucwnbz6>
 <7d4c29a5-6836-48bd-a6c8-009264be000c@redhat.com>
 <zrwfojd3ddditnyyppbyxwmzc5xoqp32gkitffxws4gxabnvm6@bpm6xy7f2l7w>
 <30b84225-8965-44a4-8856-3ab2169ba226@redhat.com>
 <h4lrlxfbnysqmqtqsqnhlbmehds4gx6c5ldpc4guoofshs2rma@wbouybsw2q7h>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="yf7zih7bnmjp3inx"
Content-Disposition: inline
In-Reply-To: <h4lrlxfbnysqmqtqsqnhlbmehds4gx6c5ldpc4guoofshs2rma@wbouybsw2q7h>


--yf7zih7bnmjp3inx
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Carlos O'Donell <carlos@redhat.com>
Cc: =?utf-8?B?SuKCkeKCmeKCmw==?= Gustedt <jens.gustedt@inria.fr>, 
	Michael Kerrisk <mtk.manpages@gmail.com>, linux-man@vger.kernel.org, Ulrich Drepper <drepper@redhat.com>, 
	Ingo Molnar <mingo@kernel.org>, Todd Lewis <todd.lewis@gs.com>, 
	Alexandre Oliva <aoliva@redhat.com>
Subject: Re: bug in futex.2, FUTEX_CMP_REQUEUE
References: <20250527115303.3304206e@inria.fr>
 <s5ec3atfffzxdetxbkjgkdiarnuk2yucnpi5j3h3ppqr72mxna@ml6zpucwnbz6>
 <7d4c29a5-6836-48bd-a6c8-009264be000c@redhat.com>
 <zrwfojd3ddditnyyppbyxwmzc5xoqp32gkitffxws4gxabnvm6@bpm6xy7f2l7w>
 <30b84225-8965-44a4-8856-3ab2169ba226@redhat.com>
 <h4lrlxfbnysqmqtqsqnhlbmehds4gx6c5ldpc4guoofshs2rma@wbouybsw2q7h>
MIME-Version: 1.0
In-Reply-To: <h4lrlxfbnysqmqtqsqnhlbmehds4gx6c5ldpc4guoofshs2rma@wbouybsw2q7h>

On Tue, May 27, 2025 at 02:57:13PM +0200, Alejandro Colomar wrote:
> Hi Carlos,
>=20
> On Tue, May 27, 2025 at 08:42:27AM -0400, Carlos O'Donell wrote:
> >=20
> > Suggest:
> >=20
> > (Specifying val as INT_MAX is not useful, because it would make the
> >  FUTEX_CMP_REQUEUE  operation  equivalent  to  FUTEX_WAKE.)
> >=20
> > Suggest:
> >=20
> > (Specifying val2 as 0 is not useful, because it may make the
> >  FUTEX_CMP_REQUEUE operation equivalent to FUTEX_WAKE depending
> >  on val and val3.)
> >=20
> > What do you think?
>=20
> The 'Specifying XXX as YYY' part looks good to me.  I'll apply a patch.
> Thanks!

<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3D0ee8ef52fdb32cd1a54a781a1987291e22f010b1>

	commit 0ee8ef52fdb32cd1a54a781a1987291e22f010b1 (HEAD -> contrib, alx/cont=
rib)
	Author: Alejandro Colomar <alx@kernel.org>
	Date:   Tue May 27 14:58:09 2025 +0200

	    man/man2/futex.2: wfix
	   =20
	    Suggested-by: Carlos O'Donell <carlos@redhat.com>
	    Signed-off-by: Alejandro Colomar <alx@kernel.org>

	diff --git a/man/man2/futex.2 b/man/man2/futex.2
	index 9a15a0fdb..a5c24fe8a 100644
	--- a/man/man2/futex.2
	+++ b/man/man2/futex.2
	@@ -489,8 +489,11 @@ .SS Futex operations
	 .I val
	 are 0 or 1.
	 (Specifying
	+.I val
	+as
	 .B INT_MAX
	-is not useful, because it would make the
	+is not useful,
	+because it would make the
	 .B FUTEX_CMP_REQUEUE
	 operation equivalent to
	 .BR FUTEX_WAKE .)
	@@ -498,7 +501,10 @@ .SS Futex operations
	 .I val2
	 is typically either 1 or
	 .BR INT_MAX .
	-(Specifying the argument as 0 is not useful, because it would make the
	+(Specifying
	+.I val2
	+as 0 is not useful,
	+because it would make the
	 .B FUTEX_CMP_REQUEUE
	 operation equivalent to
	 .BR FUTEX_WAKE .)


--=20
<https://www.alejandro-colomar.es/>

--yf7zih7bnmjp3inx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmg1tzQACgkQ64mZXMKQ
wqkHJBAArJv2LR3i9hVUX6Rm3hqQb5TDHzci7JIC8Xv/0AtDL5tJM5WF+Ksgs7Fg
LD2OTUZkjNsvtLChXk7h4CdQ99lv5l/bTg4I4MmfC/tFzlHqay+J0jDEIvbvCjnj
+HIRAr5FX01u8bF2vK2NFSplq3R7PWsfefG1uXF27oLAsQ7QrHo0I56SzYrDYYvo
YEiutKMhb0zfJCmTO0XeDymtFP1FsRLbR5ugh6R+vuWJU5PcWrGiIAv7+W/fH8dg
bypbMoze+ugulBLa4Vq44ATRBL/wo2E4xEMwPP+wqdLPGtC4vOcBH7l3xmh/ztvz
KYvKCTkIw+O1nMq0wbxZlpuYixBgm0WnVuTCH0qK2WWG1N0Re2+lKWTTl68g/gT4
K56PSyabb99kw00bFPlC28FsqfGMPhClIdty0mu+SUF9YtqEvFkHD6rmLSEpSHKU
PbX4Y2YHbUBXlLQNYskRi0DnGh8ej9YI4lO4HbbfKYsAT6mqyflrNCe+/C+HVt35
PIRw5M7WvI3iCk7WDNWZzxvFF5kvq0NGHhoFkKbzotjysEl6s55pccXDPVmZxS0H
FpsLjtHTdRAZYsxoV76rr15HIzge+EvDOeBwY6Ca1o2nOSliQ9+qKNutbnxh7xnr
f0+SqU4WNTyrcPOH9fpSAmpGe/wBm2SabITf9xVKjA+q93YVc9E=
=gaI5
-----END PGP SIGNATURE-----

--yf7zih7bnmjp3inx--

