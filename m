Return-Path: <linux-man+bounces-4892-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sPIoAmf6cGmgbAAAu9opvQ
	(envelope-from <linux-man+bounces-4892-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 21 Jan 2026 17:10:15 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BBAE59B61
	for <lists+linux-man@lfdr.de>; Wed, 21 Jan 2026 17:10:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 928B4A05A18
	for <lists+linux-man@lfdr.de>; Wed, 21 Jan 2026 14:54:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0C5FA47D951;
	Wed, 21 Jan 2026 14:44:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZIygLg1K"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C000C2D3225
	for <linux-man@vger.kernel.org>; Wed, 21 Jan 2026 14:44:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769006679; cv=none; b=oNvpMGIkfgIKSt3qkeq02DXFNw0+80qNwsNqs0wwIRBUteLu5YvTYATJANN6j0xgZfXqXeGR4Re0Tetffpv12k+k8WSvX2OoY+4OSsRzpFostuIRMlhThIOZa157bJMPv8daVe1bGUbI9J/gdKRYNuJilgPACL5pG6LveBuozjc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769006679; c=relaxed/simple;
	bh=ogedk8T9yLeYVPe0VwQEOM8d4845NSBItrd0idZKCTo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=d8NNUNBDdG4l0/ZMMOojVBTFoEm7gTWPQZ1glxMhnNWK6XQBRCwcRF1Whmezuk9zHgZptbdkIyFsM/KtZH0GpiUvEKfsnKyNO9bo3S7tcGGJ8pRERXUOC4tA5mcGRToxEkdBNI2njWUFpySRyDK+P1hfzryKJGEVR/FZTAXATCI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZIygLg1K; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AB529C2BC9E;
	Wed, 21 Jan 2026 14:44:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769006679;
	bh=ogedk8T9yLeYVPe0VwQEOM8d4845NSBItrd0idZKCTo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ZIygLg1KmiGrL50wigp/tqNeFEvuWtmLuZZY9K3wA/xR9Rt6RNcb8gUOqZhRQq+CL
	 qNSdaeZ/JxRDYoSrETcJz87jC+I3GsLsAcJbcNOpRoMscrZ2kfa/aDDAO+CFoGm9sC
	 35kp2QBchYbLj7ASsEwaa96pjnDmuwY9h2wMxtHO/rAfWlL404XTcWU8uMMpPAsX/M
	 BbjqrI4Ov/NNzwIdABjGqDBVhbvliiARoYyispECGX+n+Pmzb1SR0xTLZg2WhPF8fj
	 xwBeFjaH+Rsc2DNj/Tp+IoM4tBMqtE4Gfh1SKr5pQHGcf8kFp3Dd3wHsOUlo+l6lN1
	 EeLu8kfGoSvow==
Date: Wed, 21 Jan 2026 15:44:36 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: Re: History of const in C++, C89, and POSIX.1-1988 (was: [PATCH v1
 02/19] man/man2/access.2: HISTORY: Specify different)
Message-ID: <aXDlwT8ya6kKcJvN@devuan>
References: <cover.1768822707.git.sethmcmail@pm.me>
 <d87c7800e0f556efefaf5972294fb6a149bf02d1.1768822707.git.sethmcmail@pm.me>
 <aW7aOgFHOdCSiwUH@devuan>
 <aW9xYhsFpNxlo3C5@McDaDebianPC>
 <aW96GgzoYUurH5FS@devuan>
 <aXBuVeyTXLZ67TmH@McDaDebianPC>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="sfil7b44axtxqu24"
Content-Disposition: inline
In-Reply-To: <aXBuVeyTXLZ67TmH@McDaDebianPC>
X-Spamd-Result: default: False [-3.56 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-4892-lists,linux-man=lfdr.de];
	DMARC_POLICY_ALLOW(0.00)[kernel.org,quarantine];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCPT_COUNT_TWO(0.00)[2];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[kernel.org:+];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:7979, ipnet:2605:f480::/32, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[dfw.mirrors.kernel.org:rdns,dfw.mirrors.kernel.org:helo]
X-Rspamd-Queue-Id: 8BBAE59B61
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--sfil7b44axtxqu24
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: Re: History of const in C++, C89, and POSIX.1-1988 (was: [PATCH v1
 02/19] man/man2/access.2: HISTORY: Specify different)
Message-ID: <aXDlwT8ya6kKcJvN@devuan>
References: <cover.1768822707.git.sethmcmail@pm.me>
 <d87c7800e0f556efefaf5972294fb6a149bf02d1.1768822707.git.sethmcmail@pm.me>
 <aW7aOgFHOdCSiwUH@devuan>
 <aW9xYhsFpNxlo3C5@McDaDebianPC>
 <aW96GgzoYUurH5FS@devuan>
 <aXBuVeyTXLZ67TmH@McDaDebianPC>
MIME-Version: 1.0
In-Reply-To: <aXBuVeyTXLZ67TmH@McDaDebianPC>

Hi Seth,

On Wed, Jan 21, 2026 at 06:12:45AM +0000, Seth McDonald wrote:
[...]
> So if I understand correctly, because function prototypes were first
> specified in C89, programs written about 1988-1990 for compatability
> with POSIX.1-1988 likely didn't use function pointers in the way my
> example did.  In that case, I would agree that this change from 'char*'
> to 'const char*' is too inconsequential to document here.

Yes.

> But I do still find it an interesting clue as to how these different
> standards developed in tandem with one another.  Perhaps we could
> still consider noting it in standards(7)?  Since that page already
> documents how some systems/standards influenced each other in their
> historical development.

Yes, a line saying that POSIX.1-1988 was heavily influenced by the
development of C89 would be good, I think.


Cheers,
Alex

--=20
<https://www.alejandro-colomar.es>

--sfil7b44axtxqu24
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmlw5lQACgkQ64mZXMKQ
wqlOXBAAmC0uaYwnJ8t07p9twFMDxkImsVfl0ftWdJlcitKCvLSBUUPmcFkvxc6c
XmZq1IO/1Wu6YQrImyh2b1t/crpX5zFz9S2VKdPkTbLJxfbx8CTR8lc7r+t85Kut
wqFoXd20i8ghxTpRxWEP30syqYNHS2W0eGngJE/2JVJHc8m4iI+dVrF8Au+6SWi7
SHX7zA7sM7oOGbOh6nzL90+sY9M4m69I2B0e4iBKymtmYhaS9HwB0XmSP47x3pSb
gir4pX0K/ZhWM0mJyQS/oXmmVfn6pC+v/WbCjyu6hmpzb0lEj9y/ma4mZsqEPolF
LWaUqHK/F/zjN40KtoAkMwqpjSdTJi4Bmthle5qkm2CA1+xwx/ceIUKqgIZzAeyN
PVaIjie2akxozU6iJ6YQUai6jgEPgvhzXnUXHc/orG6NoebImg1JlX5/5jJh45YH
1F1zjJHhv+PmKR3fRlJTpr6LefD9+197+1zA1utvuqbqZO77oy5kWd9kuE8NS6de
tAfotw6KXzNODCv9QAIq4kyclFo5fwL/xzZ2UwQxpfgW97fXh9w82uzV4sUyoF4n
DHQguOy6Huw89kaFfCg0C76oJXdACbKPZR5kpka8YLoZhJg5W0beKnxBijisNUin
NenJ2+Axro6QHYSF+j71/xwODJj/nf23PrMNlW/iWspXzR7KBZ4=
=Tp0L
-----END PGP SIGNATURE-----

--sfil7b44axtxqu24--

