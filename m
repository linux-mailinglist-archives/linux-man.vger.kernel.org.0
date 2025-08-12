Return-Path: <linux-man+bounces-3441-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D98D0B22501
	for <lists+linux-man@lfdr.de>; Tue, 12 Aug 2025 12:54:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C99851889EC3
	for <lists+linux-man@lfdr.de>; Tue, 12 Aug 2025 10:54:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8DF562E2F01;
	Tue, 12 Aug 2025 10:54:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WfX2LLJN"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EC4E264A7C
	for <linux-man@vger.kernel.org>; Tue, 12 Aug 2025 10:54:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754996046; cv=none; b=N40v+o6a480k2JdgVtVXRye0Oe3us9Wqzm4RoOZQlb+1GP3nRLeng16swpk/2exFkhNk5g0eMK0WxG91jCb8+RW0mV9CmM6JVGDqBVTDBWCFSne6IKgzcVwHrBY8JnjfknM+0UzIaqkZO2i4avgWrq0FLNwXl1lNw4TSEeVW5GY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754996046; c=relaxed/simple;
	bh=TtF4APNHWPn9iD7PXKv4Ti6P2TlUEumMFrwKWj3oQwM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Eaz0whCvd9DB7fDz3lIvTi1q8DMfNBP56ZbHh+XsiIwQIQArk839av4e3jzDgF6fZtlr5uSWBB0hc0Vh2lUIe/SHr+hJey1M2nzo16AtdUimwmBDT2+d3I9PFRPnsD4ZmxIDN5LTxK9ILnirfCcU/bfvK4W+4M+C2gy3a5NNwFo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WfX2LLJN; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 931B1C4CEF0;
	Tue, 12 Aug 2025 10:54:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754996045;
	bh=TtF4APNHWPn9iD7PXKv4Ti6P2TlUEumMFrwKWj3oQwM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=WfX2LLJNH6dTdm259mt2uueA/O1IiSRzOZNmk65cqHMacnTuQdw5RfBjllqlZOEcu
	 Ri99bvF6fyyBbgNrgsS4KEIlz+KJ5Y/q5KOcb7UdePwgWMBKimoaB6z7JQoqasZMxu
	 9vb6qCS2rx79YKrc18vOV0Le7g6H5a104QnLpVIBbdVt7Fqem8eQ/tdOYJqmGKEycO
	 JL+IbGdbS+ZQ3bfBo/Ghq8scUwSPE/BqsocVbzV6ndjl6zz3OBXVT+Pkw7xkSq1ob4
	 zbi/nAssh59fztwz0Qkiaqek/WZ4T9ITAEpqLv70m0CZM2cl/UNOslrFIGv8VoE+Ab
	 52YizodAtP9Gg==
Date: Tue, 12 Aug 2025 12:54:02 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Askar Safin <safinaskar@zohomail.com>
Cc: carlos <carlos@redhat.com>, enh <enh@google.com>, 
	evgsyr <evgsyr@gmail.com>, linux-man <linux-man@vger.kernel.org>, wharms <wharms@bfs.de>
Subject: Re: AW: drop ia64 from man pages?
Message-ID: <e2sgc2ccpvk4hmr544p43xncgur4v4c7tqza56aq57o5jj4f5u@ysixg2coldvm>
References: <m4f5nimdaa3u2atbebzdrlc23m7udtcxnm3fvh4gkf5lqxjkz3@d5l2muzr62kd>
 <20250809081953.972960-1-safinaskar@zohomail.com>
 <6n5kia24vp7gbofbzzt2gm2owixe4f72azygr2fxangrbvr567@qeyje3k5cknx>
 <1989ddb2277.12853400273841.3494748395747199197@zohomail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="jvhzjebua7agfujt"
Content-Disposition: inline
In-Reply-To: <1989ddb2277.12853400273841.3494748395747199197@zohomail.com>


--jvhzjebua7agfujt
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Askar Safin <safinaskar@zohomail.com>
Cc: carlos <carlos@redhat.com>, enh <enh@google.com>, 
	evgsyr <evgsyr@gmail.com>, linux-man <linux-man@vger.kernel.org>, wharms <wharms@bfs.de>
Subject: Re: AW: drop ia64 from man pages?
References: <m4f5nimdaa3u2atbebzdrlc23m7udtcxnm3fvh4gkf5lqxjkz3@d5l2muzr62kd>
 <20250809081953.972960-1-safinaskar@zohomail.com>
 <6n5kia24vp7gbofbzzt2gm2owixe4f72azygr2fxangrbvr567@qeyje3k5cknx>
 <1989ddb2277.12853400273841.3494748395747199197@zohomail.com>
MIME-Version: 1.0
In-Reply-To: <1989ddb2277.12853400273841.3494748395747199197@zohomail.com>

Hi Askar,

On Tue, Aug 12, 2025 at 02:37:20PM +0400, Askar Safin wrote:
>  ---- On Sat, 09 Aug 2025 14:49:45 +0400  Alejandro Colomar <alx@kernel.o=
rg> wrote ---=20
>  > Yep, I suspect another blackout in my town.  I'm traveling, so I won't
>  > be able to turn it back on until Monday.  :(
>=20
> I see that you don't want to remove all ia64 mentions from clone(2).
> But is it okay to at least remove mentions of archs, which were removed m=
ore than 5 years ago, such as blackfin?
> If you okay with that, I can author a patch.

If you send a patch with concrete removals, I can tell you if I agree
with them.  In principle, I could agree with some removals.  It also
depends on the feedback from other contributors; it's not just me.


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--jvhzjebua7agfujt
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmibHUMACgkQ64mZXMKQ
wqkgww/8CYuTCyY+SxYR4QgLMd7jC+hNDOVLwtEm+hJuXpxdtKrjkrO4D52zDS3g
rVQyNWW+9zd3spz5X0T0BxZmtslCFFlqD2p3lzihkQDWkphHl5Q1PT3IzbceeE/e
ZRAJadMK5EiXvkD0LokmkDEcYWTscxafQFv12iNywtA4k3DPxcYbuUYldZgWdGOb
xlI30aPZ3nFQVIjfJo/12Maek4xHab5vbR9BSCburpfJODGEvTWnjBxZ/HkQanlx
Kl15s/KaUpLhIxc17YpVUgkYxLiPMDZ6wQlYU64TkgpU/dSvRXHH+zUCMjKzl6TP
sIN1gSJxF0E32y/ObJC2UvxlmIjGgkDRx/MF9EbClmcZtPkVnAGjokAa3SdFnl7m
LLy6T32hNbNvNlR2BpORaf9SBj+D7rXuceHNg9PwzOk6ufrPZm0MwvCdhIorWAY1
veXkdrwVafRebgvM8T4GchYSAinuzMCq6igkxPpaz/Qg+ga8/JNNzqVMmlYjkwmi
nX0fU6JHjWz+9krKirirc/dLPcjh9bpqdAtzgQRwwv2OS0UQlNZMs5REhjCPWNGq
BjaXQJN+JiSVDoodRmFxtIyH+gjXH+CEXx3iEOLqdcUSN0Tve5fnYMdjqBxK8POs
mnK+3ZNRuakpoYuu5X+IEuE+W2tJELQSxckFazX/7NXguYiBVDQ=
=iZ9Y
-----END PGP SIGNATURE-----

--jvhzjebua7agfujt--

