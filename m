Return-Path: <linux-man+bounces-490-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 7425086D701
	for <lists+linux-man@lfdr.de>; Thu, 29 Feb 2024 23:49:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 08BAB1F23DB4
	for <lists+linux-man@lfdr.de>; Thu, 29 Feb 2024 22:49:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 660FE433B6;
	Thu, 29 Feb 2024 22:49:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oWV8IcBd"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2727116FF47
	for <linux-man@vger.kernel.org>; Thu, 29 Feb 2024 22:49:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709246965; cv=none; b=rx5Y/uT6IkXs/zANSZgbrclZu720unvQoCfQWwl8yZSmMI6R8cA9gM2YWfQJG5iGM4WAZ5szTPDehdDTSbCO79L7bXBbvAlTf70x6MGPCD+yDkjFuoKVK3FdIUyKf81Xs3XAskjoJ2AlL5fblYYCjp2vehPWsuuGoQkYcfWEohg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709246965; c=relaxed/simple;
	bh=ZzEgJT1S+iXXlYw8ggAhA/RPw8TWRkSX95J0mi3c9Zc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=vAsw+QlS510YVUpUBbA5+toorxFuB+UI5U7MrCgxcQMgPTFmeg7/Y7WDI4EV6aFNYlZz66eRyS/WOvUeRJMnxmfvW199aqAGKU8MCjIRjStWqyuwONNaaO1krVF+E1VN/VPfv8GBg5WDFPyDiIVtbzX8Sf59FEgRek04pp9m/EI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oWV8IcBd; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 07A17C433C7;
	Thu, 29 Feb 2024 22:49:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709246964;
	bh=ZzEgJT1S+iXXlYw8ggAhA/RPw8TWRkSX95J0mi3c9Zc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=oWV8IcBdwB/ECJbrVfveAGSEKeYfOftq1N06ZcHM2YPs3ltihHw26NNtlGSFkWcav
	 GMN5C2/0dU9PqmG85Xo4GE927WxBXH/zN0SG+qT0utGkApj9jKXmcXQXlkfHcDZ7CT
	 VdPJqmq0VkIheXbz4qNtvfED11jyJrNVve4TSMUHtbfspUTz4BZyYkLagXQ++X0Mlb
	 p8wfGwhpte5DS3/J86HVkENp+YAnLq9qigR0rmJVgEq2KLTcaAQSmzGNSnFLxVAU2C
	 MzflLLpRNISQKRsIDOjiTs94LJUO2Yrdp4BRO7r8LtOYau73mzG3DvA6KnACbQAvZJ
	 jYJDWDBI4uVdg==
Date: Thu, 29 Feb 2024 23:49:21 +0100
From: Alejandro Colomar <alx@kernel.org>
To: enh <enh@google.com>
Cc: linux-man <linux-man@vger.kernel.org>
Subject: Re: _Fork()
Message-ID: <ZeEJ8QeRhVRDs4Mv@debian>
References: <CAJgzZopUo5eHBBqJBnsw9AnuDVypzf7GM9vyK5a-btqsZ6Sevg@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="iu8hc7zliPx/iSJU"
Content-Disposition: inline
In-Reply-To: <CAJgzZopUo5eHBBqJBnsw9AnuDVypzf7GM9vyK5a-btqsZ6Sevg@mail.gmail.com>


--iu8hc7zliPx/iSJU
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Thu, 29 Feb 2024 23:49:21 +0100
From: Alejandro Colomar <alx@kernel.org>
To: enh <enh@google.com>
Cc: linux-man <linux-man@vger.kernel.org>
Subject: Re: _Fork()

Hi Elliott,

On Thu, Feb 29, 2024 at 02:12:12PM -0800, enh wrote:
> (apologies for the post without a patch but...)

No worries.  :)

> fyi, i noticed that there's no reference to _Fork() anywhere. i'd send
> a patch, but given that vfork() has a page to itself, i'm assuming
> just adding a paragraph to fork(2) isn't the plan?

Hmmm, I didn't know about the existence of _Fork().  It looks like
_Exit(3) and exit(3), right?  Maybe we could write a page based on
_Exit(3).  What do you think?

Have a lovely night!
Alex=20

--=20
<https://www.alejandro-colomar.es/>
Looking for a remote C programming job at the moment.

--iu8hc7zliPx/iSJU
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmXhCfEACgkQnowa+77/
2zKmIxAAqOn3kmAKtrKBu38uAhbnDX3gvN8oh5pJxEuBtSKARErcrt8LQuQK8ZN8
Et51eIHXM/bTjWLDITypDV02TxZPsWJMTtYGNp7MQj5lQwJhyw7t9Qmz1xjoPzEl
FXAYpcIoqDOLw65PNQG54whXOa8NDiu+WpHaAs6/vBnnv8e1DtX4Msxd4yobH1cY
1KmISqNydlEyw965uhAC9c6Cm4GwraZGAdIVia44Upmd40CFzo6LNh0FI2SVwV1j
BCnQkuMtvCtAWLs95bgMCJA6Jzv/QP8AW2MvvNUEZmHCqHiW9hKRId7n+ZHAuo0y
Aae31QE0/y/Pffe1W4HJK3TmmdpWGLoQTEIh/oEGDzCzAaYmK23GnRRM3B8P9wcc
5xPkjQ86PrhrMIxZwKbpVxUu0BsqlB8OISovRJS828VL7JtwB4Xh4YeT0Uci3fY/
Z4og6rPbHAclhajmZJqoAytUchUh+rVEMXsl4k/m2T3b/9GeBw5fRiEKW7zlatsp
ulHJ7yVyDnU0rT6Bd9ardHAn+y/GR+JKtJbv70639VBOj/aQybhD3rFpXdix9MDI
c4MgRAnsdFZKN4Xy9P8HErSuWhl7IESbXP3h6Byu6iJGawY9Yg27tEpZm7clVkC1
YfcQrTc0WwbvsCgUtrO2JSkNpiEsB8WeTXSw9DDOcURQhnreHuo=
=wNJE
-----END PGP SIGNATURE-----

--iu8hc7zliPx/iSJU--

