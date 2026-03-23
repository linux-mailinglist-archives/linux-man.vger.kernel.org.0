Return-Path: <linux-man+bounces-5284-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AAbDCQ58wWknTgQAu9opvQ
	(envelope-from <linux-man+bounces-5284-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Mon, 23 Mar 2026 18:44:46 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E6782FA54F
	for <lists+linux-man@lfdr.de>; Mon, 23 Mar 2026 18:44:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B86C230512AD
	for <lists+linux-man@lfdr.de>; Mon, 23 Mar 2026 16:14:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F5C73BE647;
	Mon, 23 Mar 2026 16:13:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jDypOM8t"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A3883BADA2
	for <linux-man@vger.kernel.org>; Mon, 23 Mar 2026 16:13:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774282416; cv=none; b=alVBfUni59UH0za5EgtBPJZDJmmzisoqZn7f+oEWp9IYn6bEf0TZy+lZzWNFi6PSYdrybslijObYy9rJLWLJ4DOxm581+1EbTy03u0qvT3nlu46GKP+Sh2DT32Z9neiYVwyBiJvMOF6V0WmcqyZsfyk69YniIijCk+kcMGq+x84=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774282416; c=relaxed/simple;
	bh=n0PzqRzpPA8jA4OUKug3LXoUJfybZH6YqmV1Ui7/sZo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=oXk7GngGinXZjBXUctpi325RVJYt8WVPOTo5U1etA3LUyJ2dd/Pfs8JozN+PqVKRsdOREYtHecj8tznnPXU/lJ+nab4ccIE0Q6BzuPs04vywtrQ4oMem7rO+2K3mtTw+QpDxOXtIMeatML9QfwdbemM6HxP16cvbfgx5C2dYzZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jDypOM8t; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2C6E3C2BCB3;
	Mon, 23 Mar 2026 16:13:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774282415;
	bh=n0PzqRzpPA8jA4OUKug3LXoUJfybZH6YqmV1Ui7/sZo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=jDypOM8tF1rIKl3XkONQlqNsubnfOmOwzpBf0XUg1kwFNAd+Wp08xxT1VLk0I5Q2g
	 IZD2C8Eb7k4qN2vSI/EomrocsUNZB9W8xwW2wevZRhO2irMnEfMUNG6GjowtchtUrN
	 OXmI0EwCdCL2uWtRsJM+btKqlUGWgweArQoz/cuTsYUnY515LjWgnkWRWv9wYt8VMe
	 iYm6XuwA7y44LkdtFgug3ADK7dfPJRD1/GpdDpaMlzYdjgjj278jKBWJiKfh86aUVQ
	 KGD2Xt0WN+2MlDgT34GCzHCBXQpE443QGVMqrrUlvRfVO9xaa/l8Bel6aL7FO8BI9v
	 lg+e7ruo1bgdw==
Date: Mon, 23 Mar 2026 17:13:32 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Michael Moses <michael@n90x.info>
Cc: linux-man@vger.kernel.org
Subject: Re: /proc/pis/smaps name fix
Message-ID: <acFmj1JZ-dtG2yq9@devuan>
References: <30ED175A-5E1A-49A8-811F-3F9E99C9D881@n90x.info>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="vbcxoiaztexfnl25"
Content-Disposition: inline
In-Reply-To: <30ED175A-5E1A-49A8-811F-3F9E99C9D881@n90x.info>
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	TAGGED_FROM(0.00)[bounces-5284-lists,linux-man=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,alejandro-colomar.es:url]
X-Rspamd-Queue-Id: 7E6782FA54F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--vbcxoiaztexfnl25
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Michael Moses <michael@n90x.info>
Cc: linux-man@vger.kernel.org
Subject: Re: /proc/pis/smaps name fix
Message-ID: <acFmj1JZ-dtG2yq9@devuan>
References: <30ED175A-5E1A-49A8-811F-3F9E99C9D881@n90x.info>
MIME-Version: 1.0
In-Reply-To: <30ED175A-5E1A-49A8-811F-3F9E99C9D881@n90x.info>

Hi Michael,

On 2026-03-23T14:59:00+0100, Michael Moses wrote:


Could you please send the email in plain text?  The mailing list rejects
HTML messages.


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es>

--vbcxoiaztexfnl25
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmnBZqwACgkQ64mZXMKQ
wqkgMw//Qf0TXKaGhVFDoa3RjYneK59W7AO3+4z8P5GPUSEuGzJnyjy2OcUepy2Z
DfHVZBjXGcNCLzUobdCbhw4hxzSWCuB2jj9emzG2RqflY6nIowxCFcdmpgXwNRFc
bhRuWq0RlZnRoCoaQ2/mCT1y3mrSepHCn+XCa/S93QrEh1AB1NQ7Xh1PoR8fMe/c
L6FsXEZfRma/KJ8V5gbwiICynpaBUVDe+K6T6lZo+Hh6+8sTIsZ6EKl1sXmtIDJf
7dQ0a61ld49CVxWaS+5bqNP6O1CSlPuwV0vm/xLQh4tuR+j8Wz+Ij4c+hiDiYkJj
wMbgSq3t1DTlXb+1QFeV4cj6ywH6PxMywttrzOc+zeWx5p/msg1qx3jt751eKiMf
iKtnoChrSGZXhzmxR1fTI570UZuoW7iufaI21O183mSOOT42wo+LDL6NHtjhPWzv
4mZCqwnCeEbhy8Q29jFt5jlRTkkJBjtygnpLU4KW9imGsN3atl7SmAyFADB16We3
EcFbA0o7pUBV4cUp0LziB3VBVOfKL2zRNRsxsHex8FRaNPuwUG9vnofPtzqI9Txn
sSmudzlnMlO/6KinMoj0kLcpJ5rUqYtPjj6HtwtBYMF1cpyDtMSm3TeARXQZUoWe
w3bJOiTG3HNw+hhm1+3XIRywVNtX0AgKJ557hEJ63RAQRrB939M=
=QM6y
-----END PGP SIGNATURE-----

--vbcxoiaztexfnl25--

