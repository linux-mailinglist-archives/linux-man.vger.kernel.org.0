Return-Path: <linux-man+bounces-5319-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mAcWHdI32WkjnggAu9opvQ
	(envelope-from <linux-man+bounces-5319-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Fri, 10 Apr 2026 19:48:02 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id D6E0D3DB2E6
	for <lists+linux-man@lfdr.de>; Fri, 10 Apr 2026 19:48:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id CC7123013B69
	for <lists+linux-man@lfdr.de>; Fri, 10 Apr 2026 17:48:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 27C163B9D94;
	Fri, 10 Apr 2026 17:47:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="adpGY1NR"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE4A031282C
	for <linux-man@vger.kernel.org>; Fri, 10 Apr 2026 17:47:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775843277; cv=none; b=LVb8zPe6Wqw1/mnk/7+339VglJbef/PI68BX7sPBjiYzOY+G8mzfJQxz7IglUNNT/TU6+GrL1N7J7hbC77kJ7w6TDXGBSXWX9mro6GDIeLIJSih7BOddnQBH77DqzYrwfGLQFwZjK26BdHIqnSDSz4lwO/V3CbZ6/jU+kh+T/X8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775843277; c=relaxed/simple;
	bh=H7Cg/GFhrgMGApwC19WuO+kcB5k9xKhvIWY/Awbi7jc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ev3k/sx48gM01zZetYh+hQzXL9NfdZvONXeFT+IfVUrdEqsemCbQnZaDoZd/Va5kosgSihRDa8cixMbsmKEVS7Kz3aYueNE/wS/grKUykFabQ7+jdNxLbJXdCInApYnZ9F0iqhPufpwp+0TkdFu2aRxIntsStdMQD8vwVe/XD/c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=adpGY1NR; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 41656C19421;
	Fri, 10 Apr 2026 17:47:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775843277;
	bh=H7Cg/GFhrgMGApwC19WuO+kcB5k9xKhvIWY/Awbi7jc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=adpGY1NRCE6fxIdDYGkxEso+dfk9fxvjso3HN0RN+rptz9hrW3w0hIKyn8SPoSijF
	 5Wjy4AEmxjoeJkVhE69QFQ5ZRCGKJQDXzatEjmbYRseV73mEBVsxqxjKF3luw3/l6W
	 kRQj2YMzktDdUabLr9BVvit2vIqmqckur6aIg5zzsGUKCNiMhlL4bap+8f8WR5mAuh
	 vNRhnwZNb9DEaLg1gPk2W/fE9QiEaigJGLpf79j6qMpSxkmIZDTVDMKkP5smi4ndW/
	 KldyArOTrmo5m1Kp/OGFOuYU+o1Zoa3okQBN3spEeanOaL1gYZm2uXbs2S7DQL1SgA
	 neDMbdDKwupSw==
Date: Fri, 10 Apr 2026 19:47:48 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Zeno Endemann <zeno.endemann@mailbox.org>
Cc: linux-man@vger.kernel.org
Subject: Re: Missing error values in ftruncate and fallocate man pages?
Message-ID: <adk2_jjPuyuQVbKI@debian>
References: <e53daaf2-3658-4645-ba29-fa488bec5ed8@mailbox.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="faiwb7npkehmjzhe"
Content-Disposition: inline
In-Reply-To: <e53daaf2-3658-4645-ba29-fa488bec5ed8@mailbox.org>
X-Spamd-Result: default: False [-2.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	SUBJECT_ENDS_QUESTION(1.00)[];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5319-lists,linux-man=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWO(0.00)[2];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[linux-man];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,alejandro-colomar.es:url]
X-Rspamd-Queue-Id: D6E0D3DB2E6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--faiwb7npkehmjzhe
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Zeno Endemann <zeno.endemann@mailbox.org>
Cc: linux-man@vger.kernel.org
Subject: Re: Missing error values in ftruncate and fallocate man pages?
Message-ID: <adk2_jjPuyuQVbKI@debian>
References: <e53daaf2-3658-4645-ba29-fa488bec5ed8@mailbox.org>
MIME-Version: 1.0
In-Reply-To: <e53daaf2-3658-4645-ba29-fa488bec5ed8@mailbox.org>

Hi Zeno,

On 2026-04-10T18:52:29+0200, Zeno Endemann wrote:
> Hello,
>=20
> I noticed that the man page for truncate(2) does not list the error codes
> ENOSPC and EDQUOT, but I would think those should be potentially possible
> when actually expanding a file (may depend on file system?).
>=20
> Similarly, fallocate(2) also does not list EDQUOT (ENOSPC is there howeve=
r).
> Finally, posix_fallocate(3) has no EDQUOT as well, and EIO also seems to =
be
> missing for this one.
>=20
> Or am I overlooking something?

Sounds plausible.  If you could either perform some experiments or show
the relevant kernel sources that make it possible, we could know for
sure.  If you find out it's possible, would you mind sending a patch?


Have a lovely day!
Alex

>=20
> Thanks,
> Zeno Endemann
>=20
>=20

--=20
<https://www.alejandro-colomar.es>

--faiwb7npkehmjzhe
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmnZN70ACgkQ64mZXMKQ
wql/ng//T92uSrdJuPM22HxE+UoF1MAl2R8SBg5huOFIzP30+jfctV0mUP3ITYss
NJQWLDrYbY09O37ZnVCiDk/dQuf2NTNxxMas5OBhfnwNMYNDO+77TdUsNbQ27NH9
JHsmY6CsH4ugEQtkP8RWOHJPTBHg65qfHImGV9gcabdpTxPB1yCm30jH92lPDv74
zpEQK/5dzQ9oDc1B30IZ2EtiRtarrJSljzM1PxVvLA7oP/h+G69Uw3khYjxyx65K
xPdTy1NORwrogRKo/JsXZUoA/IGYk9vHCe9VzPIMIA0qOeoQlRNFYg1dWUaM/Ajg
cdn37A6flKAXl4aRIlbOtojxY1QPS0WwWJ0aB6cna3u+TT4Br5u2my91JYdWDO+o
uH9L5EexyUFzpyGy/M03gAblg9SAknm7N4bXDSXbr/ANJKKgCr9N5m2UYrFddl2Y
a2CxOYbUp4huexI5HfXfNqWpR8GmakczMOUS/ybxzPpPWXFqoJE89btDxfKv+QMn
1H3o04BybjRlbyglB5x7pB3M7uk8jAyiNeDAa4iy+9XFyhGPxCpDAVXPlZnLdMJP
F6vr5CZvyjN1qcCPbXw81L3gsjwkpmyiGgysESyN7fySaWouz4FwVo+OHtfVGY5h
13g0mpGdPZr02eWK2mwbG3CLBmRBEa8tdSjaWtpItBm2kO/0G8o=
=Eg0m
-----END PGP SIGNATURE-----

--faiwb7npkehmjzhe--

