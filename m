Return-Path: <linux-man+bounces-2344-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B093A26455
	for <lists+linux-man@lfdr.de>; Mon,  3 Feb 2025 21:19:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 795521885776
	for <lists+linux-man@lfdr.de>; Mon,  3 Feb 2025 20:19:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EFAF420B202;
	Mon,  3 Feb 2025 20:19:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bhVZDR4R"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD3571FAC42
	for <linux-man@vger.kernel.org>; Mon,  3 Feb 2025 20:19:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738613973; cv=none; b=p1NnltwEfDAIFzZpnsyicLMQ2thMCh2PY1B29CKYBLpdNdkQIVV6o2EBKRmFabFJ+MbzdvWm5SEmYwG3hkEvDdetNuc1fuwvye7p0pjWRfoyW4dhkFSdReOC6r7s71uHCyzy7dzRJnwQ1GnqBWbWu31Hpetru+C8qDyJHimd9aQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738613973; c=relaxed/simple;
	bh=mVRmMFrU6b3z1xNcxsyjZeGnoW8Wpkeuk/s0i9FGSoQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=pKuOyIrj0n8SeuRDx/he/NLfM5gw9VJH9PPDXd5I22NkZON2Ru36vZonJeeHIHvDdXqthJ9UsFZAGtEIL5ClZMXGUuXXixyUHUe6TmrCzVH6psUzXcGYuPbSOqBCnbFnU6rDCIOzS1f3qba9SwzvZnOBHViCrTAUFOVPEEy8OSE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bhVZDR4R; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7505AC4CED2;
	Mon,  3 Feb 2025 20:19:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738613973;
	bh=mVRmMFrU6b3z1xNcxsyjZeGnoW8Wpkeuk/s0i9FGSoQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=bhVZDR4RQP1FIisfK2/qiWodTq9VdUYbogiFB1e25wuRmu3z2/1LaOiP3uWO0iNca
	 BuuUmEpzhE4Ky6FW7PajWtuBteMoUDvrJUWC4PkkZ90R8GvWI8+WKYr1/lrv8MRx14
	 nU41V9sBIdZbXhwqibcHkDp18oDOaVDox1jmAJC9v6ewowcGEbxddgc3hPsYegRRUW
	 fEWC709dajiXwBStUmN6rP+5312/CXkoTAa61Mr+sCSmm5Ck2MqVIXg3VP4RqGEjKE
	 uQSLpu+7834tF26lqDW8Ft22p/k0LF32QhdlY2f9cvPUHtaZk8Fufq5yPSA6rbEXtN
	 TvXRxWGxeMTmg==
Date: Mon, 3 Feb 2025 21:19:22 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Chen Linxuan <chenlinxuan@uniontech.com>
Cc: linux-man@vger.kernel.org, 
	"Eric W . Biederman" <ebiederm@xmission.com>
Subject: Re: [PATCH v2] man/man2/clone.2: Use munmap() to free child stack
Message-ID: <6jkx6sg4rdwhw47ydijeivyttrl5segr5oh3x2r7kae26uktvt@k2eb73ra53rh>
References: <A6B3C875B683B1DD+20250203153004.70234-2-chenlinxuan@uniontech.com>
 <kqygul7gjkbgwwx7hror3hwqrfirndwp2epklmulalua3w7nnc@tjxq6jlocia2>
 <10536DCF452BDFA7+78a925684e5575b2e1577c874fdfbeb902d2ce58.camel@uniontech.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="5ggblvba3hb4lo5h"
Content-Disposition: inline
In-Reply-To: <10536DCF452BDFA7+78a925684e5575b2e1577c874fdfbeb902d2ce58.camel@uniontech.com>


--5ggblvba3hb4lo5h
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Chen Linxuan <chenlinxuan@uniontech.com>
Cc: linux-man@vger.kernel.org, 
	"Eric W . Biederman" <ebiederm@xmission.com>
Subject: Re: [PATCH v2] man/man2/clone.2: Use munmap() to free child stack
References: <A6B3C875B683B1DD+20250203153004.70234-2-chenlinxuan@uniontech.com>
 <kqygul7gjkbgwwx7hror3hwqrfirndwp2epklmulalua3w7nnc@tjxq6jlocia2>
 <10536DCF452BDFA7+78a925684e5575b2e1577c874fdfbeb902d2ce58.camel@uniontech.com>
MIME-Version: 1.0
In-Reply-To: <10536DCF452BDFA7+78a925684e5575b2e1577c874fdfbeb902d2ce58.camel@uniontech.com>

Hi Chen,

On Tue, Feb 04, 2025 at 12:13:02AM +0800, Chen Linxuan wrote:
> > This is too complex for an example program.  A goto alternative might be
> > easier.
>=20
> I am agree, but I couldn't figure out a simple way to implement this.
> Do you have any suggestion?

I have applied a patch adding the munmap(2) call after the error
handling of clone(2).  It wasn't worth trying something complex here,
IMO.
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3D00b0a007208d8bbbde0caff15f7bf95dc4e03319>

Thanks the report and the suggested patches!


Have a lovely night!
Alex

--=20
<https://www.alejandro-colomar.es/>

--5ggblvba3hb4lo5h
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmehJMoACgkQnowa+77/
2zJjiQ/+JfWw49c9jRA65HWXS1/nGtOUjtFoAC5QsHfn3Xg3gQlHhn256UNjiurH
wRrGeh6Ahpd6S68B/gS29jvovWaA3X4jKzeJx74Wv7UkM1HqswRv15Cona8ddIA3
3FBrkJ7Iu0gJRxCK8w4OWzh8QkkKCNxz5zCMH2xYx1NIBXMX+Gx5nZIzkwZdPods
lQqfCFRhDiT2LfaGE/k6CckH+6eNhdq6ijux6MoTZ+YDuUXOgMfwq1j+eTU+c7EH
4vXtkmJoxX0LoLCV6jAfhYsBcynKGhWGllt78RmqRzjRHYtzAVBGMXATAhVznkIz
FVnGill88Mu5Gs7CNMQehz/4QVg+55swnWqlvrrSSMeofiqsPPTUms02VYFCx9m1
vGI3fKPcrCAQE6aypvhmeVU/JrdzsFQWqOl7uTmn/NqBMnZ0ynUENbV9tRMIqK9n
DpkhIolJwofwE82HhTn+2wJ7skhUDzR/h8pnAhvspL6yQDoIHXDJSRR0JtdweMQo
oOZqEy2VLnuc9ulZYhynCVjwpk4BzzEYKi6ukixWqaSJzymvvrk3S/QVocPMbx39
wI8t6mnqr93lM2A2qko91nD0blOQR++ZP5vbiPlaKrxP1pAx8lrI7/FIFBJV9ArZ
7mIoOyQQTnUWwgtwoLsv6LJqSd4N0iUFW3v44A5Q94nycEpXwUQ=
=wFRv
-----END PGP SIGNATURE-----

--5ggblvba3hb4lo5h--

