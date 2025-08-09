Return-Path: <linux-man+bounces-3419-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AFD48B1F443
	for <lists+linux-man@lfdr.de>; Sat,  9 Aug 2025 12:49:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C91F516F1BD
	for <lists+linux-man@lfdr.de>; Sat,  9 Aug 2025 10:49:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 458131EBA1E;
	Sat,  9 Aug 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wu0dXpCB"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06CF73C17
	for <linux-man@vger.kernel.org>; Sat,  9 Aug 2025 10:49:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754736593; cv=none; b=iA1JFhcGVNQ4sxIyf8ICtsCshwhZmSkxs7Ihlf3OuAXAEUWatsesZlCScQVA9objCwuMP0cHm8hkEPYJh+vY3p15I8XoDimVmDu9yUbCjr8lBGoODcs4fKD47/uv017ay6XpgC83Q+zvhKMe0Bfpnn24pF8v6stVuedONoldxx8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754736593; c=relaxed/simple;
	bh=c6wqqAF0VlCbTcUtPIf9ijTb8KwfURF7szXZVetNJGM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qT9wtpq9q35YbhdY+qffWCj+1xoUgCkRxfA7d/PZxE5lRIBma/PBVEOvhh9bi0485IxC9LRWS7aSpqkyQHHrWOeaS9STDJNyMEjmHxFP/1KKfS0iu8vGxXUOxdFZfo4RNLct08DQqZ0y8lRoyi5CUqIucQIvWtJw6qmVBaJ6msk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wu0dXpCB; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C3EA1C4CEE7;
	Sat,  9 Aug 2025 10:49:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754736592;
	bh=c6wqqAF0VlCbTcUtPIf9ijTb8KwfURF7szXZVetNJGM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Wu0dXpCBhzxscMBanka38q7nDDf197RYQi5JQv9LQCmi1J1257Zab1vOGPVYcC4sY
	 2TpsM3juVZNTHbMuZxg1krEWAybcFlUkXS4XY2Gmo3D/cMDuFp9OUirPzWXW7fuFsG
	 JOsRovewP6y1yoPU1yFE1Lx6D3MoU1bFPlpU9Y52gT4hYc07tQvLojiVGsf5tITkA6
	 nYC4pUGLJEYBazUipTD9yUx6F86PQVDFeK/yZ0jesJhWyFjBdOIqlJrWyHb9NQApv2
	 i0hcm3K2QnQkRjJDFlbBMnorJRIS6gdK/WnrlTNFe348+g7PIp3yQ1JSkQs+Tr98aN
	 +nYkV0JtBYk6Q==
Date: Sat, 9 Aug 2025 12:49:45 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Askar Safin <safinaskar@zohomail.com>
Cc: carlos@redhat.com, enh@google.com, evgsyr@gmail.com, 
	linux-man@vger.kernel.org, wharms@bfs.de
Subject: Re: AW: drop ia64 from man pages?
Message-ID: <6n5kia24vp7gbofbzzt2gm2owixe4f72azygr2fxangrbvr567@qeyje3k5cknx>
References: <m4f5nimdaa3u2atbebzdrlc23m7udtcxnm3fvh4gkf5lqxjkz3@d5l2muzr62kd>
 <20250809081953.972960-1-safinaskar@zohomail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="cphtaqqnahx4kk7j"
Content-Disposition: inline
In-Reply-To: <20250809081953.972960-1-safinaskar@zohomail.com>


--cphtaqqnahx4kk7j
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Askar Safin <safinaskar@zohomail.com>
Cc: carlos@redhat.com, enh@google.com, evgsyr@gmail.com, 
	linux-man@vger.kernel.org, wharms@bfs.de
Subject: Re: AW: drop ia64 from man pages?
References: <m4f5nimdaa3u2atbebzdrlc23m7udtcxnm3fvh4gkf5lqxjkz3@d5l2muzr62kd>
 <20250809081953.972960-1-safinaskar@zohomail.com>
MIME-Version: 1.0
In-Reply-To: <20250809081953.972960-1-safinaskar@zohomail.com>

Hi Askar,

On Sat, Aug 09, 2025 at 11:19:53AM +0300, Askar Safin wrote:
> > I've pushed this commit to my branch:
> > <https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git=
/commit/?h=3Dcontrib&id=3Dc0e5ca37b2a562b9e7b9e39fc9091ea7f2693d62>
>=20
> The link is broken. I get connection timeout.

Yep, I suspect another blackout in my town.  I'm traveling, so I won't
be able to turn it back on until Monday.  :(


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--cphtaqqnahx4kk7j
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmiXJ8gACgkQ64mZXMKQ
wqkPHRAAvRR3eCn1LAL/sXunrFKnEczY6uScEXMbiEbjR1GxpTwZ949Xpfeskb8c
lFQRdgpalI+hCR8byyTKW1Ph3wKG0Ze44R7MaNd1yxAuTnqy9BZSj8V1TpdswUtV
tp6aOHVI2Z1h+YXBAn0ffgmASTRRG53Wf4+HQ/jkYvIklpn8PDKLMvzioUcaMknj
6STya7XzGWR9oytGK0o5elKQLP7HvvalXBGt6J5ttYOh06OpK7pKetXnC16/XdVG
5Akr3qYJB8mMusPwwqnpjt685OqMlDLhB/XWUFhvsrLm/pL1HWHvzWXBzPq20Mxr
sJug4kEwDysf6sfAs7Bhzqf/T174IZBEhfVrY6KOhhNjTC20EFFUnq/i9tEPgcs7
7w+UXnKEEpdvb7tHXncZJjJ11PWmC+fbkZuNRB8zk8aEZhrAzsJoAff1Bx5jsAgd
Mzsm+l+jtKyxV4YMin+fz3kg9cVXrakjiX/NaH1xc9P19um3Zq0U3WowqRCIZy6s
gZ40Z8/UPp71xFmHbeGmylZi++ICCLfhVfWzoQlE8sce8FFfsceAEJ020bth9gL0
9h0XVUaSwToH8emPWVLmD21rlm0e0hRnFLYnGmwHv4+NLEKHFjhQa6IMeCzHDY2w
Arnz7vKG9OKHo4hAVfQSxVMIm4jwkrDOV+ZtUIbvRsE7q2x+pU4=
=T+4B
-----END PGP SIGNATURE-----

--cphtaqqnahx4kk7j--

