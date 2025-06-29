Return-Path: <linux-man+bounces-3234-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9667FAECB2A
	for <lists+linux-man@lfdr.de>; Sun, 29 Jun 2025 05:29:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B7C963B8242
	for <lists+linux-man@lfdr.de>; Sun, 29 Jun 2025 03:28:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 57E8241C69;
	Sun, 29 Jun 2025 03:28:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d2c8A9HW"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 154C7320B
	for <linux-man@vger.kernel.org>; Sun, 29 Jun 2025 03:28:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751167738; cv=none; b=iUFxtqZzT2WQsHRWrDNvZ1QNsno3WFzyvRII6wF2GL4MlHaBr1PQuXgWyvECBKpMZytRZyctMe+1YDjvd2fxjyEh2irtp4bev7wSjrxrhDKUctZzQM9yzs6QBajLp8i/ZmlznrnUWJn+lb7QjfLpNMt94gb5kpxsVCKikugzgq4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751167738; c=relaxed/simple;
	bh=SvDu/fAlG3meUYoLURgf5uIwFrin1mCG8arjWLa7Tc0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NauBsSlhub1jLwlm2vUejdOorPUTSye9JX8k7VN4cM3nYkfNr1Ur4QaP5R2sUjUGpviBfTE5xRXiZg9TI2IA8rR1jxVYDwVJmm+f0owNZ69y/Ew8Q0Yz6bGZ+ehN/7vCqQeEXz10WdKdd6o/zOVyzmSbaBFep7z2n0VUgKcJ6Os=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d2c8A9HW; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 937D4C4CEED;
	Sun, 29 Jun 2025 03:28:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751167737;
	bh=SvDu/fAlG3meUYoLURgf5uIwFrin1mCG8arjWLa7Tc0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=d2c8A9HW4Nf+FpCKr9x8Z59QhkxVgZ1TLLqvB4gPK6uNNoLgBtKZDuoNYCO/AqK+A
	 TGGfcyGbzBLVERnAxBAdbnenhhFEK3KRusqFMmv02Z93e8GO5mBG/G0f3CesxuK7XF
	 IG+NOnD4xqAvqIy+yfW+vPKS/qwUck2daKo52vsjgYs7ht1cKTw8760prni9yfiH+R
	 u4FQuVUpdaSpv/J7V6DyjGp3WkKT7BE4MewORZm94xst1mSLyI9h4fJlP5SqFVMZod
	 REw3qpsi+N4icCdz+1CoMsB+Y1UwcW0pBNQERJgK15txatOSfpeHdpVAJ0ZM5fu7hI
	 dnwIdRznzMcWg==
Date: Sun, 29 Jun 2025 05:28:56 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Alex Saveau <asaveau@uw.edu>
Cc: linux-man@vger.kernel.org
Subject: Re: Missing futex_waitv syscall
Message-ID: <36td4r4amuzfpnvt7shcidoc36z63jhrdodtus3h65ydvb336h@yywh42rirvqb>
References: <CACbFBcykNab1TgnFb709WmBSMXte9rxAJtX1+oHW+p-PJ5MvyA@mail.gmail.com>
 <254ncd6zy5vo36yi7vxlaahhwurgn6zwehsyz4eaqasqvxhkyl@3343bg6n3blq>
 <CACbFBcxdwCuL1WVXYmtJROX+FoXAof6tpyi1mAJxMyzTsndPSQ@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="veoiilj25efanmfu"
Content-Disposition: inline
In-Reply-To: <CACbFBcxdwCuL1WVXYmtJROX+FoXAof6tpyi1mAJxMyzTsndPSQ@mail.gmail.com>


--veoiilj25efanmfu
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Alex Saveau <asaveau@uw.edu>
Cc: linux-man@vger.kernel.org
Subject: Re: Missing futex_waitv syscall
References: <CACbFBcykNab1TgnFb709WmBSMXte9rxAJtX1+oHW+p-PJ5MvyA@mail.gmail.com>
 <254ncd6zy5vo36yi7vxlaahhwurgn6zwehsyz4eaqasqvxhkyl@3343bg6n3blq>
 <CACbFBcxdwCuL1WVXYmtJROX+FoXAof6tpyi1mAJxMyzTsndPSQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CACbFBcxdwCuL1WVXYmtJROX+FoXAof6tpyi1mAJxMyzTsndPSQ@mail.gmail.com>

Hi Alex,

On Sat, Jun 28, 2025 at 11:18:51PM -0400, Alex Saveau wrote:
> Ah lol I'm unfortunately not familiar with the syscall either. I do know
> there are some docs here:
> https://www.kernel.org/doc/html/latest/userspace-api/futex2.html
>=20
> Maybe we should contact the author of that page?

Sounds good to me.


Cheers,
Alex

--=20
<https://www.alejandro-colomar.es/>

--veoiilj25efanmfu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmhgsvEACgkQ64mZXMKQ
wqmzjxAAuZ7rAGSVbMO8Lsg/7dT/toqpyiAi/xyIxSvl9Tpg+JlcSTcQsDRM+/RB
VOdGXN78vsiXg5VnwS6fHjrCqNd0v/Ea6rbNkDdqQHeN15AMgHAnKhmOwyRsUH2c
ul40NFmeTTMk5JYXyWHrZsDIAf9JvYSTjJUTKX7Y3oQCYJUIGEKesegkhSlhsio0
j3P7+7ZLIB7QK03kqxFF45vuLBkK35tFsrrR82LPGakFPscbkgVjAKHPBV8Jm8dk
ZRHzIsJXnX7G3PNvhFkIOcvXkJRjQfbWaAf5KkKp4xgnY4vqBuYG8L3mBn8tP2s3
jAjrob1PiB6pukLUKkvUA0cdE0QitlvRWS+qn6TxWnheNWfVowmh7BIywWFwE+Pw
4WKttdUDJsQV6tOKo70a/rpkbdW1gVPkgHH+nFccDthFJpSLtkFYXh5vnLKgDNbg
4c8ideaWP0L97m6SJKGdl9FCSxrpqZRliiiAqb5fdsXzXpt6IzE/8Urc3ow1Rs0/
nwCI2hCNfi+o+FqOCDxaHjuCyZc+OvW5XgMgOM+4u16Sj1dIrP6bya09yMt0ht0Q
CB4E1aFq62JQ4YWg+tUBLu+UtfuxSyfVb9NlD5oNPML3jOtapE1eT/L4L4sPGTSV
PUpC4Y8UsUgDku+O6c6jmYR0uwys0ElDlmE1JYhhKUjRD9OqcWs=
=LdkI
-----END PGP SIGNATURE-----

--veoiilj25efanmfu--

