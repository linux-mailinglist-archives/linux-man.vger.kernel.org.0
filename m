Return-Path: <linux-man+bounces-5285-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OKP6AeuowmkyggQAu9opvQ
	(envelope-from <linux-man+bounces-5285-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Tue, 24 Mar 2026 16:08:27 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 45007317B3A
	for <lists+linux-man@lfdr.de>; Tue, 24 Mar 2026 16:08:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DEA803094240
	for <lists+linux-man@lfdr.de>; Tue, 24 Mar 2026 14:59:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1F34A3FFACC;
	Tue, 24 Mar 2026 14:59:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R49Jij+/"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D69C23FEB32
	for <linux-man@vger.kernel.org>; Tue, 24 Mar 2026 14:59:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774364378; cv=none; b=OFobhLfnvbON4zbiVn/ovHUMzK0TBPszyLMWmRUwcao8m3KzZA3oW3iKCL2Aoh0jsvpc0o0DMPkwUnXaCXTowZ1ez+bxym3aA7QtnwYHda2O6dZmvNk4D/tsgckfQVR3F/9TJZoPlt1lK1I7aWGgh6v+6AskZNJdINYXBdrLxzU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774364378; c=relaxed/simple;
	bh=q8ilaWpYI16QmqHqWb4Lz7Muq08sHmaAJ4tj1oYQ/sU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jItEIcvoqa+dtavhMLhccLUURGN5cN667tkbyjNVl7KynQz5Jx4ardwqszOogdifd94Cyzo7ePV7V+3k63SqAvroAPAAhtFiFpPVrnVyVUD08YzaiMWPbmJQDDv1nTzn2oERhgK40NIelDuPhATqYVjHiOD9EAd+gYe44hgq+rw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R49Jij+/; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D1352C19424;
	Tue, 24 Mar 2026 14:59:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774364378;
	bh=q8ilaWpYI16QmqHqWb4Lz7Muq08sHmaAJ4tj1oYQ/sU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=R49Jij+/exxeedHr4Sye+6sYLUng5cUAnoVM6NwbClwyNEoGGn7jzNiaqzwIO+r3r
	 XvYQENAzXAiX0ZE4CZtr/Rz8S1pnMAlmp0cHi10fPRae2U3oxn4UCgKAwkEvXEthy5
	 xv/nSZjvk3Wq1OYCzLzFxZSQVpyRIgELBtv7rwMBYTiXMClaVn5zIsqmkTtE9rhAT+
	 J2hWpfRQcApIhXIhLbv6VlR6G6UzqNdD1uwiAV2X4fHUpswgrFUUafTchmD3keoqCA
	 jFgaUc+Ms0kMg4dL1sXciXWW8NQlLLtEHmGDxURIlkf2o+TQtjzeTRawKoU3cXYpee
	 es+XUh951V9tQ==
Date: Tue, 24 Mar 2026 15:59:35 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Michael Moses <michael@n90x.info>
Cc: linux-man@vger.kernel.org
Subject: Re: /proc/pid/smaps name fix
Message-ID: <acKmuzd95kvGtAGr@devuan>
References: <30ED175A-5E1A-49A8-811F-3F9E99C9D881@n90x.info>
 <11ECD8BB-BA3A-47A6-A86D-DBD2089B4146@n90x.info>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="vo56hzialdpsxqkv"
Content-Disposition: inline
In-Reply-To: <11ECD8BB-BA3A-47A6-A86D-DBD2089B4146@n90x.info>
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	TAGGED_FROM(0.00)[bounces-5285-lists,linux-man=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,alejandro-colomar.es:url]
X-Rspamd-Queue-Id: 45007317B3A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--vo56hzialdpsxqkv
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Michael Moses <michael@n90x.info>
Cc: linux-man@vger.kernel.org
Subject: Re: /proc/pid/smaps name fix
Message-ID: <acKmuzd95kvGtAGr@devuan>
References: <30ED175A-5E1A-49A8-811F-3F9E99C9D881@n90x.info>
 <11ECD8BB-BA3A-47A6-A86D-DBD2089B4146@n90x.info>
MIME-Version: 1.0
In-Reply-To: <11ECD8BB-BA3A-47A6-A86D-DBD2089B4146@n90x.info>

On 2026-03-24T15:45:22+0100, Michael Moses wrote:

This is still HTML mail.


Cheers,
Alex

--=20
<https://www.alejandro-colomar.es>

--vo56hzialdpsxqkv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmnCpsoACgkQ64mZXMKQ
wqlMCQ//b995S8qjY7ZP5i+Q64pkjW0HlHhZbFL12Gs5AqTRchpnK3opFwOiCX9Q
PPq3KTYUh4rQyMnemh3O7f7EbLs8sCdfaMX19Y4LJisnZQ/3LZOgaep0VdWnzcQu
DpRLukFhloG9XEscoW98x30DtwxXF/GILaMGq/V7m9Chp869YFe/vFgjcF0PPE0c
/NljsKb1rq+UWuPEadzADcmdqootHqAkuDxoOh7g8FU9WlH3743wE1WLPVrOq/pj
c4csAYk4pLz0UwceQriuEQ5wdSvaddDNWeqa09UEUYJFuo9TbDJI+U0HWLSRgiET
JlP86hSxb9KAksrsxJMcLAZl4gIkJsFDicxsbkqhV3O5coMn/XTHxFXjuzHziRqn
rKzQLXDK5U77+AxAzQjFZIqJd9xeZCabaACcDB0C/aCDRD0lnO8/Uy08fosMCvWP
rYR35kkKaiBF6dtrhpIRqrDzOea2qV/WAq8vx1QwYgAVKS5OYWp+sy0zAuHSWrcT
JA6IZuM9MarRA8Fq1wZvizKnvBYyq65PttSlvk6vr5VMt2sma0drIJ6M5bSLT6bT
N+IAcRZr5mqMJF6x4rd6ij19yleJoX9uv8Mf1mHN5PVKmgKJ1CxNyYtVYYrr50ew
sCae3VaC4bulsumsXo3sOOkZ7t6uD+Dzgnv9bnpnTfUImqgsors=
=JvAl
-----END PGP SIGNATURE-----

--vo56hzialdpsxqkv--

