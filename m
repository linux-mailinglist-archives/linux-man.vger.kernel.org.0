Return-Path: <linux-man+bounces-1691-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A24C195D849
	for <lists+linux-man@lfdr.de>; Fri, 23 Aug 2024 23:03:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 268FA1F2175B
	for <lists+linux-man@lfdr.de>; Fri, 23 Aug 2024 21:03:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 685161C824F;
	Fri, 23 Aug 2024 21:02:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AqWUnjmK"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24EBF7D401
	for <linux-man@vger.kernel.org>; Fri, 23 Aug 2024 21:02:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724446977; cv=none; b=QODgvG36aFFigloJjj2Y1yw7awiQow/0V704FUtycjvDD81SYdIEytYFMjlXY31natLuEn1WlO/RwDcIA1XiV6hoXAU5s68BWVVeJmrPIEA2+IiHGovp2OuBayqQ7YJgNn/6X1UvZzs59I3ZggK33FrAN1Ebe9+II1SeL+F/2+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724446977; c=relaxed/simple;
	bh=jRLRawjfq9fpyHeiHecj6KVqRPbt7omvRU5KJmcHoSE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NnRk6kfWDO7UkTfNkBPTnAKEd/Q0qX3dDjSzwOCKxhuHRsZ5Nu+5I7u9KtssjnX72Vp8nVwvs9udunNTF+E4o06FUyPOOhiiGzi8jC05CEB+dhR4MZcZVDOIFiRvS6yOvDLcgCBbnhBFnQ8Tr8VkAMIkzWaKTCs03j+ElN+P7LI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AqWUnjmK; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D399BC4AF09;
	Fri, 23 Aug 2024 21:02:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724446976;
	bh=jRLRawjfq9fpyHeiHecj6KVqRPbt7omvRU5KJmcHoSE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=AqWUnjmKT/bk8WnwnARmutvUpKPDK3oCtIkGcklOV/Zj6M2B8qItyDo2cvEuiVz9O
	 Jw3ZTqkzOmPQBmms+lBkoZG97tNjTUA1CSENxfB/AQUJAhCaeaMIUKPTwaAiUVos/F
	 vAURSSSEVH/RjCceOtpRGpLu2DWztEevjhMB9we4pvzEuj4iLEt0+2BiueTHhdYgVE
	 KJ/IDUyh/AD9k64z2puEbdqJsJYZEQB+UfddNa3ekyosRiTrTZCBa4H4srfwe5l0A9
	 MLRWdpGMKR31J9SdcEptw4DeG27O/4J5C5r/m13K9EKLPoBhjEj9Y3HR5jQAEEuwrj
	 1HgYs6Su2CoGQ==
Date: Fri, 23 Aug 2024 23:02:53 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Paul Eggert <eggert@cs.ucla.edu>
Cc: "Michael T. Kerrisk" <mtk.manpages@gmail.com>, 
	linux-man@vger.kernel.org
Subject: Re: [PATCH v2] ctime.3: Document how to check errors from mktime(3)
Message-ID: <2pyqkwsducytqwlgl74jgnm6msfw2dymr5ylbprpdnhmwlcddq@f35woidum6fg>
References: <664cd54a8ee998fd3a07ffc6c9e6fe9d6117620f.1724423646.git.alx@kernel.org>
 <3c04eb41-14aa-480f-bf61-b91e5a673bec@cs.ucla.edu>
 <el23ihpmltucruo3s2lbxplhkg4batoca4yumyxpz4ursbpxk2@gbfgwtcypywo>
 <e5d4aa14-415c-4214-8900-c9ab43ed1297@cs.ucla.edu>
 <6ph33wz4jbsjwejgra33yjs57535ksqbxp6fviyav2p3bhbjww@efh4fciaoycr>
 <6323db88-a8ac-43d4-aa37-a65ec89c343b@cs.ucla.edu>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="lw6vr76fklqe5ryc"
Content-Disposition: inline
In-Reply-To: <6323db88-a8ac-43d4-aa37-a65ec89c343b@cs.ucla.edu>


--lw6vr76fklqe5ryc
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Paul Eggert <eggert@cs.ucla.edu>
Cc: "Michael T. Kerrisk" <mtk.manpages@gmail.com>, 
	linux-man@vger.kernel.org
Subject: Re: [PATCH v2] ctime.3: Document how to check errors from mktime(3)
References: <664cd54a8ee998fd3a07ffc6c9e6fe9d6117620f.1724423646.git.alx@kernel.org>
 <3c04eb41-14aa-480f-bf61-b91e5a673bec@cs.ucla.edu>
 <el23ihpmltucruo3s2lbxplhkg4batoca4yumyxpz4ursbpxk2@gbfgwtcypywo>
 <e5d4aa14-415c-4214-8900-c9ab43ed1297@cs.ucla.edu>
 <6ph33wz4jbsjwejgra33yjs57535ksqbxp6fviyav2p3bhbjww@efh4fciaoycr>
 <6323db88-a8ac-43d4-aa37-a65ec89c343b@cs.ucla.edu>
MIME-Version: 1.0
In-Reply-To: <6323db88-a8ac-43d4-aa37-a65ec89c343b@cs.ucla.edu>

Hi Paul,

On Fri, Aug 23, 2024 at 01:55:19PM GMT, Paul Eggert wrote:
> On 2024-08-23 13:43, Alejandro Colomar wrote:
> > strftime("%s") would be interesting, but it accepts a struct tm, not a
> > time_t
>=20
> That's not a problem, since mktime effectively returns a struct tm as well
> as a time_t.
>=20
> You should not use strftime with %s, though, since that might not work on
> some platforms during fall-back periods. You can use strftime with "%Y-%m=
-%d
> %H:%M:%S %z".

That still does not allow to see the return value of mktime, which I
think is interesting in the example (for example, it exemplifies how a
valid date can return -1).  It also shows the different return values
when different tm_isdst values are passed for the same date.  I'll keep
the printf(3).

Cheers,
Alex

--=20
<https://www.alejandro-colomar.es/>

--lw6vr76fklqe5ryc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmbI+P0ACgkQnowa+77/
2zJZAA/9Hvl6g8aQMp2IT5+1x1qET8I6qMjU4Z+maNUe+ni1pBtcsxpbiDpa0glB
+tQslVsHRI4lhmaQZP5/8JsjE55QAj6RI3C420RrZ29X7KxzCbwFFtZbI99pcq67
YK5KNMuGi/zLCmpzzRD2PKjl891RcakDwQM7swu1Macjb3h2/A0Co8ut7TYdIcjq
RBsT81CxVhCW6ByHxBoF4dASPSqotsar9zju6PDz6ekhS1OHF3NvRMJHYluKRW5v
DFASLKBsehxqaiCU6vLFnUoJP1AQw5KgUFTixVOkNWg5CB+nUJImRARvFGrdD4Tg
RqJ9W0CN/2B7UNFnXlf3UKsuPC3ZzYxgwP+0cIOGwm+7vzd00N0zVP5fCUTxlfG2
8bLwpyblMQLTjcK6dITVIcgcAX05rSHAyboxwuId0DNesuAlRCNg4Bt100C+avjj
xiaNORv6ZxE/bQdUNcAQ5tbgDDDG013LPirJV+OwRm5grATYsvgijCYjXJILrx7A
N66pY35F+1+4Mw4b4UZQEz2FPcUEyrUG4f6mI1YBDC+PbeJCp0Do7k3/2LexGGmz
sxaRIxLMgiXwtrx3OY28CGsMqgtVOzIEb5rThPcihsWNZegWuJl6Ehp8onzuejXf
MvwcOzYurXMIHmuCo8s+RS6ltDEV9TgarJxjuKY5x0cAE9ZdUew=
=HWo5
-----END PGP SIGNATURE-----

--lw6vr76fklqe5ryc--

