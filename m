Return-Path: <linux-man+bounces-3802-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A4E6DB3E545
	for <lists+linux-man@lfdr.de>; Mon,  1 Sep 2025 15:37:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0DE261A8486A
	for <lists+linux-man@lfdr.de>; Mon,  1 Sep 2025 13:37:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C4CD330DD3A;
	Mon,  1 Sep 2025 13:36:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hBri4W+7"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83D9215C0
	for <linux-man@vger.kernel.org>; Mon,  1 Sep 2025 13:36:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756733799; cv=none; b=cc6aw/RCOEiSp7QNbdp8CeaxPpwyaXfCf3YyHUn0dh18pH6Fb/5B28CcwNLjsuer8FQyOstt+bVwoclmrqN7aJtsyj6ahUbQQwKMQmK/3hd6AjPekr1vVWdCycHAvtzUZaqpMjEwFuqc0tPYop7wE8N6rZYg8jRKn9PaQAezXDc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756733799; c=relaxed/simple;
	bh=7jtl6w8+teRr6HOSG2rxhW1pPQAhy6uaggHzxlQjALU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=KMhfeA3a29iHnHcStPAAbJCwrZ6pmS91B00kExjLmhy8x0NR17+BDyWclDhNW5dx7f2Eaae9jlogBCRtnRwK+XXBtJ7d57X8QwcMJIDfFig+lVFaURWkM5A7uW/lCCPZGQ+r6zPFicO5Wl4qTU8oTDiM1NCrXm5GoIYDQqKVdpw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hBri4W+7; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 82233C4CEF0;
	Mon,  1 Sep 2025 13:36:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756733799;
	bh=7jtl6w8+teRr6HOSG2rxhW1pPQAhy6uaggHzxlQjALU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=hBri4W+79eRFAopYmYR7ZyEfEVnHbdUy1lX4m7DHlCXWbHQqesy6R/xmwosaL5Gyi
	 IgEUZm9Oi7xx9Xy6ltuDvcu23RsyO/WwKlfTgux456zS4ULl4Vg1j71wDL4fZjD/ZO
	 /XutxTBR8P1nsBOMfPRVJYuF6yWpXVq4aV7p7F1oDsTVTRv1QyjNmAv/yEH8VHSXHr
	 5lIKyWmXRppBspEEZcb7HpicWU6IVBOQLsNAhi5Y/kr/WBz+8EDk+5IYrvGB5Yjboz
	 2BwamUL4ccGCYQvDuTfVTD48ecfWS2IeLuY7WA9jEVnRx4tsvz0ackG+l6ndbp8U/F
	 eEhgeMELPEZTQ==
Date: Mon, 1 Sep 2025 15:36:34 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page shmget.2
Message-ID: <oc52lvrotjl6e55hcdanumxeb7eqju4xg27u74sqbu5tp6bf5v@ppvvy2n2zgtp>
References: <aKsmQa-EJjkkTWB4@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="pedlwbigyybp65lc"
Content-Disposition: inline
In-Reply-To: <aKsmQa-EJjkkTWB4@meinfjell.helgefjelltest.de>


--pedlwbigyybp65lc
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page shmget.2
References: <aKsmQa-EJjkkTWB4@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
In-Reply-To: <aKsmQa-EJjkkTWB4@meinfjell.helgefjelltest.de>

On Sun, Aug 24, 2025 at 02:48:33PM +0000, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:    B<proc>(5) does not describe hugetlb_shm_group

Fixed; thanks!

>=20
> "The B<SHM_HUGETLB> flag was specified, but the caller was not privileged=
 "
> "(did not have the B<CAP_IPC_LOCK> capability)  and is not a member of th=
e "
> "I<hugetlb_shm_group> group; see the description of I</proc/sys/vm/"
> "hugetlb_shm_group> in B<proc>(5)."

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--pedlwbigyybp65lc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmi1oWEACgkQ64mZXMKQ
wqm2+hAAldr9uhL2oB0nYaiS1Oxgo0ZFdz33+zx0X7Mrl75zh8xCZafshJC9emlL
K7GyWKWvTRjQBNz9m4BhvbKeA6KeU+x8bOgXzk15XGkPoxd9Uu+/0nPiLowGqPMV
VsNI7RZ+fTKV8GZuce5tAMN1eP6br3KQv2fGZ9lBBEfQ0YA+GuPRs9bhv/vUufO+
qY3CJiiCiegFCLswaSeZLeltvuk4UBk4cBclJ6JlnO1qnNSJy7GR5yLZuE/T9M2o
p2GP/zb9l4XqHui+oDM39BXU05IhBcw7vQHNeNo8r8Wm5//sHkp3TiWKfcK/N5bE
2rphD+QNhyL4QSpDZLbqxQLbLW+LC1f4vqWClgGIu3NOuIftaBeH2yfEe3Lo7b/p
lBG1g66dosRxxjBMebWotmUHtrlgcBqp57qxR86f2z+yOg0UwRmkZ5sW/T//45GG
IpskwdRsYvZYEpfzvm0bph/wQiYez3ms3zG1AkeCIxFwpJqxFnEZs5VjRlZlmaxK
KPMfDuJf4EH5oQE5ZMTdTewPTbiA+EVSHnhsgdtaCVGcg+QustERfTy0DEajDT0z
lq1zrPQuiHJiyxs6lKBIGKKsAR2JRwl2d4/1kZvlMMrlovMr8yo8gReIcPqoEZT7
2rScj9ge7Dnmx/faaj7btajrTCTaUCuDliF9xvCErpIdZcYzpy4=
=QeRo
-----END PGP SIGNATURE-----

--pedlwbigyybp65lc--

