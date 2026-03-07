Return-Path: <linux-man+bounces-5249-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qJOLH3KqrGldsgEAu9opvQ
	(envelope-from <linux-man+bounces-5249-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Sat, 07 Mar 2026 23:45:06 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 20EC422DDBA
	for <lists+linux-man@lfdr.de>; Sat, 07 Mar 2026 23:45:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 82385300B459
	for <lists+linux-man@lfdr.de>; Sat,  7 Mar 2026 22:45:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A15A630BBA9;
	Sat,  7 Mar 2026 22:45:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fHbRYPoQ"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6555F2DB798
	for <linux-man@vger.kernel.org>; Sat,  7 Mar 2026 22:45:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772923503; cv=none; b=MKBuG52sUb1LlPl7i1tSr55WAYYO4t/Vrf4S5ci5wwcihrAoBbj0CGHLLGCY2cUFScyu2FMVmWGF6hV52zo1c97PSLnESNrZZcCxkKQ7jKrsGd+Ihgbet0iHe5i3h93QmlKWaxgXkI/eGBUrZsGAQ0ToDHt1SPS/WVRm8/ywVO0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772923503; c=relaxed/simple;
	bh=RlNRM3RKakuANeUPaw0P5D//bYk2/c1xId+UhNjutGw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=pp4biHAP3U6iUbCaWS7qIgxt3vceApuzDoBd2SkKsOIVRWitYElzsx+PpKAMVede11cXn36UBPehvN/4FEgJWnnuAYnah/Qa2cL/KD+OREPgk3q8ZvwxiHn7mD6WcEba/XzdEezCwAgvDes9yv452Jwb0MHHeo1XicYlpYyEZ90=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fHbRYPoQ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1949DC19422;
	Sat,  7 Mar 2026 22:45:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772923503;
	bh=RlNRM3RKakuANeUPaw0P5D//bYk2/c1xId+UhNjutGw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=fHbRYPoQ0HCFjJPtRpAA2/7Q65fGp2To4EgBeEJxnbQoIB7dMje0B3DD56u/9Knax
	 EkXLxXsBPNEMOdJ8T0TU8WsKKbIdH5Qs+z+WFbwicUFgiQP0ojNHG7Avyj27RzwaNZ
	 TdZHJXkSSCyfjTIpJy8Hh4XvRCbV3o+pUh4zMfpZr9U98BgO+oSK7MvLrgjzjzQPZ9
	 jcWuM1mbOAgdTWajXkI7zWi9ztbwytySRXAKuIIYCtNhLwO5jQsHLjsaXp9j1dCo/K
	 Yx9HGYRB/vLKl0WRqE5384R/ltcWwd/xHi/Cp9SxrkJwD8lxvJkFmBOvcqv4iTNQcY
	 +iIZ3vpTsb8ug==
Date: Sat, 7 Mar 2026 23:44:57 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Paul Eggert <eggert@cs.ucla.edu>
Cc: bugzilla-daemon@kernel.org, linux-man@vger.kernel.org
Subject: Re: [Bug 221186] New: clock_gettime CLOCK_TAI is incorrectly
 specified
Message-ID: <aaypYglgM4po78Kh@devuan>
References: <bug-221186-11311@https.bugzilla.kernel.org/>
 <aaw8SLhwjSGR0X4m@devuan>
 <d3b5a021-9299-466c-b939-c54143034e86@cs.ucla.edu>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="iiuq67hxbyxzpruv"
Content-Disposition: inline
In-Reply-To: <d3b5a021-9299-466c-b939-c54143034e86@cs.ucla.edu>
X-Rspamd-Queue-Id: 20EC422DDBA
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5249-lists,linux-man=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-0.959];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,alejandro-colomar.es:url]
X-Rspamd-Action: no action


--iiuq67hxbyxzpruv
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Paul Eggert <eggert@cs.ucla.edu>
Cc: bugzilla-daemon@kernel.org, linux-man@vger.kernel.org
Subject: Re: [Bug 221186] New: clock_gettime CLOCK_TAI is incorrectly
 specified
Message-ID: <aaypYglgM4po78Kh@devuan>
References: <bug-221186-11311@https.bugzilla.kernel.org/>
 <aaw8SLhwjSGR0X4m@devuan>
 <d3b5a021-9299-466c-b939-c54143034e86@cs.ucla.edu>
MIME-Version: 1.0
In-Reply-To: <d3b5a021-9299-466c-b939-c54143034e86@cs.ucla.edu>

Hi Paul,

On 2026-03-07T12:59:10-0800, Paul Eggert wrote:
> On 2026-03-07 06:56, Alejandro Colomar wrote:
> > BTW, Paul, would you mind reviewing this bug report and suggestion?
>=20
> Although it's a start, we should add more detail about TAI and leap secon=
ds,
> and the neighboring area could use some cleanup too. Proposed patch
> attached.

Thanks a lot!  I've split the patch into several atomic patches,=20
minimally amended, and pushed.

51a4b682 (2026-03-07; "man/man2/clock_getres.2: CLOCK_TAI: Modernize leap-s=
econds documentation")
ffcf7de8 (2026-03-07; "man/man2/clock_getres.2: Clarify what "TAI" stands f=
or.")
0676ddff (2026-03-07; "man/man2/clock_getres.2: wfix")
78a707b1 (2026-03-07; "man/man2/clock_getres.2: Some clocks behave differen=
tly if the system is suspended")
47e30f8e (2026-03-07; "man/man2/clock_getres.2: Clarify when clocks are ind=
irectly settable")


Have a lovely night!
Alex


--=20
<https://www.alejandro-colomar.es>

--iiuq67hxbyxzpruv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmmsqmkACgkQ64mZXMKQ
wqkIeA/8CKASpyNILYoi5RytVmGH3BZ6um2ZS6tVFKkQbSczdRjKTCUhXmj8hwSw
ev+bqrh6iiKzfsaIyq7w0Pjn6A60YQveBvTmsGoZk1z+5ry3kxzneo6VP/Ml1uMa
lW8kzX4VXa4S60dvdGquaMc1BntALpLu/4Af+Id4XplTdIQQCChkTLKBrC+CroCZ
6BQGLCOwi3aUmM09adcl0DSBUp7sz0RzCdBzpSlJpoq+kDUv/rkMOZSpeD7T8BSF
A871fa1owZDK0CgBM4+uc9BzahQUaqoOcpF9un0YQEz1VIU6a4t8rnhLnMmoavbR
aelM/xc4ZHCFo8o4Iob/IfrYA/TYtKmfgSiSX/Xxz9yoIIdwx0nxLcltV1vexi3X
brPwdJsaHqfS9UqZRbGIxpWRg6BDiUp/PJeUPqSFnN238gMkipOwqFZdb9ZHoGyK
dp6eBBqLQz2ebiYEWnsCzfvLhOqd609PHBtL5+O2idMFbUbBvpITOVxUm69c0Ez8
iIG79t+boAJyWtdhoTfTlI2OR9uWUr00jitlobVP0gkArRfSTjsRERTZfdWnEV52
IVyqZMEenko3hLVfFjsdCu8qdxT89vHeimVaCUFeogVeSa4T076mF2zELVwWyCP0
SLhIfHqMPkfsPTgIQeBTsYB7TvmGJAoynVWxH0Ixa03B5AHC4HQ=
=hgSv
-----END PGP SIGNATURE-----

--iiuq67hxbyxzpruv--

