Return-Path: <linux-man+bounces-5223-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iM5rJAMvnmmkTwQAu9opvQ
	(envelope-from <linux-man+bounces-5223-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 25 Feb 2026 00:06:43 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 03BF218E0B3
	for <lists+linux-man@lfdr.de>; Wed, 25 Feb 2026 00:06:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 0EAFF3010275
	for <lists+linux-man@lfdr.de>; Tue, 24 Feb 2026 23:05:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D5DDE304BBC;
	Tue, 24 Feb 2026 23:05:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RrGGQhN6"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 997B72FFDE2
	for <linux-man@vger.kernel.org>; Tue, 24 Feb 2026 23:05:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771974336; cv=none; b=HqlUsiOURxSxluyomAe1MnJRF8fxeEwoRo2y3VxyfZz8ojO4z9IAhgqd8IWhxuCDGH1S2354QfKL10vNmjwcIRFx9QA7rrRdhY9q6IAQHz9VEr7doObII8VZcL0l9mpTpL6ckTUP6aXWXIp3RzT8c2/jdCdH2O7sWpVaaPeD3LY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771974336; c=relaxed/simple;
	bh=ZdZDIVI2lzxNUH3FjfFLsPLr4Uk2ICkDIe3dRH15D4o=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jGrCNUIUOcw93yrbOZ33D913a4xd+lHwsvay24SEy4A80ZUucF1biGPn+6RtgR/b1NR7eSYZjNQnFLoKLLeas3SmsUgkQ/xRml0rUKS6xDKigMr6djQpYAW0HbTqoL6HgCS58AE2yHDi+ZQIDSY4Hld4n4d/gvCNkoTGtN+qR1M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RrGGQhN6; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A7BD4C116D0;
	Tue, 24 Feb 2026 23:05:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771974336;
	bh=ZdZDIVI2lzxNUH3FjfFLsPLr4Uk2ICkDIe3dRH15D4o=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=RrGGQhN6CI4udGdtn6ztSzNNJZWIhNGgr5DXpfLSK1QF+4l4M3TLA8UyyQ9tuFcHD
	 mV2w3qKwW3FSKGrl+70FK1vAWghroy3FRGxohX+q2ZzZZuFws/pqLjLdrSAUF0OsU2
	 xseczUHd/OCwRecGrJ6BFQfu+VjSbh7pGOTAGw0YDSQcqh2Z2tXybLk8xEFNpGfYFn
	 O1Y33MvxsEPXerJIOIuKTVIsnT1qLxeY4zmp2eokLoAl1NrSi5R1Gf4duQYtDb+son
	 PRuvfIOLopI8BsmaU1PWDvztU5X9nNqf8JYN5PTYdMjQQJ1aHlGpifvWYxco/YPvy5
	 IBR90dp6wgaNw==
Date: Wed, 25 Feb 2026 00:05:33 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Paul Eggert <eggert@cs.ucla.edu>
Cc: linux-man@vger.kernel.org
Subject: Re: QChar and QVoid for strchr(3), memchr(3), et al.
Message-ID: <aZ4uoYdrTOidHhmh@devuan>
References: <aZ2xBQcy7mMEXW_b@devuan>
 <67824728-313a-4f73-be2c-ad41697925b5@cs.ucla.edu>
 <aZ4YhDCzMOnokXH9@devuan>
 <c66fb0f4-5814-4979-a556-b480c5222ba8@cs.ucla.edu>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="7xom6zhbn7xg24qc"
Content-Disposition: inline
In-Reply-To: <c66fb0f4-5814-4979-a556-b480c5222ba8@cs.ucla.edu>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	TAGGED_FROM(0.00)[bounces-5223-lists,linux-man=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 03BF218E0B3
X-Rspamd-Action: no action


--7xom6zhbn7xg24qc
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Paul Eggert <eggert@cs.ucla.edu>
Cc: linux-man@vger.kernel.org
Subject: Re: QChar and QVoid for strchr(3), memchr(3), et al.
Message-ID: <aZ4uoYdrTOidHhmh@devuan>
References: <aZ2xBQcy7mMEXW_b@devuan>
 <67824728-313a-4f73-be2c-ad41697925b5@cs.ucla.edu>
 <aZ4YhDCzMOnokXH9@devuan>
 <c66fb0f4-5814-4979-a556-b480c5222ba8@cs.ucla.edu>
MIME-Version: 1.0
In-Reply-To: <c66fb0f4-5814-4979-a556-b480c5222ba8@cs.ucla.edu>

Hi Paul,

On 2026-02-24T15:04:03-0800, Paul Eggert wrote:
> On 2026-02-24 13:31, Alejandro Colomar wrote:
> > How would you document strchr(3)?
>=20
> I'd do what the standard does rather than reinvent this particular wheel.

So, you'd use QChar?


Cheers,
Alex

--=20
<https://www.alejandro-colomar.es>

--7xom6zhbn7xg24qc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmmeLr0ACgkQ64mZXMKQ
wqkKVg//enIdhV9MIreK1Vc2lAOcRw2BC1oYNMmkMwz+NTvs8lT0c0h2yW9R9J0y
y8bpCQEqTvgUjFtL/6nIwqhfPkmphiQ7gQ3Wup7GZQFHOCps+DIOPhkCRYiMv/yh
UsFnXuMxzuXoeyVsJpjkF3PgOWM5xvVm0Q+SwLeAatasW6B35qPeBKcoD5yXNKzj
5UVJTEHTsU5wY3HWUh69g5CXw/6Y+x+fIJSKiaDYB2KwsymTko0oDt41tLA9ycqn
aNPAYoQV/0TveDP48rsHbSBmNFQE++yC/iK9C5YPmzX6q5LGPRKm77GFy7l7ZMFK
9p2gGP3qPs27uqe4XGByDE5IpmNzhFP4nRxlsfMAS0j3/AQ1FcP9zllKSzaqAavr
WIxHTSDoW2z7t53zyE3DekLvn31XOpqmTH19xPAANgUqBJeStSvdQiKuXG+DZ7st
3JzMGkrpTWHdze9hbG1TGiC95qs+gKePRMTDKnxmhOnwXO5Sz/QHPH9lACOPXFUz
gbJvtuwi1IXUJOUqt8TwdDSuBtAxkTzySKGlQLaSAun0qxy9BvC/VGH70ZsGSWSn
AXOVKOvFftaddXihLeZ8gJVGOUI+iCdY9/m6aaJdZSZX+8laz0ETbINxOfrIdR7i
qCpUSfwAMcc+yeBaCu5KRRdBny4yS+KRjfcEuWf8/x9/Ty+NX0A=
=fCVF
-----END PGP SIGNATURE-----

--7xom6zhbn7xg24qc--

