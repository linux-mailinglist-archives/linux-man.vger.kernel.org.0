Return-Path: <linux-man+bounces-5721-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id DsQDDjpyTmq9MwIAu9opvQ
	(envelope-from <linux-man+bounces-5721-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 08 Jul 2026 17:52:26 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 834FE7284D4
	for <lists+linux-man@lfdr.de>; Wed, 08 Jul 2026 17:52:25 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="mYgzbO/W";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "linux-man+bounces-5721-lists+linux-man=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="linux-man+bounces-5721-lists+linux-man=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 403F631E9E08
	for <lists+linux-man@lfdr.de>; Wed,  8 Jul 2026 15:24:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5A4A53F12F3;
	Wed,  8 Jul 2026 15:24:22 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 162BD3F12C8
	for <linux-man@vger.kernel.org>; Wed,  8 Jul 2026 15:24:20 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783524262; cv=none; b=DsDooHu8AIDY1TY4FDHlKg4Bsj8stsNUHgzIoBPq/GBBbLleVGeo9LjFu45ccm465WyLn4SkqhYDD1nrvVSAlxau210IkSKdXgEAmGmX1DsmRppiYCSj2EW7PAEGp9RsSj7g017TPnZMH2QT7XMaufCOx2B7ocLbHzK0g7xUK4k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783524262; c=relaxed/simple;
	bh=21DeyvYzvcZ5963qVf5ZsmIGqh0a8JxVNTboiIOrWSA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=FZC4tjUQ+/+atJkw9N3aOUfjtqQj6U9iJzzokLMVPUDTkjLT4Tgyvl8lv3Ystu2cAvdIcHicu7aZJcpWKCwdxVSVijEfdLRnbWOqRHwt5t9D0FVD1jIu7x31xT1ViebIir7T9lMeqWMIOoQWGJ9I+ZY+xzqmaf+wBmtBKm/pLRk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mYgzbO/W; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 02CFD1F00A3A;
	Wed,  8 Jul 2026 15:24:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783524260;
	bh=emJJAcWbWrqnPEvbjL5JavoCFrAd9Wt9t2yARNF5FGo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=mYgzbO/WaU81H9NGYHn/iZH0hxKVbLEBYW97GAWf9aA3Y2we2RMDHdCteSk8+PAcy
	 WWuYAxfGQu8tr1muX2s6g4GESeIm869dc56a5Mo2ikL4gzKAX7hHATzsS1HoxG9SZ4
	 piF3/3QC870S/Ob0F0cURi5POsD+X3958L0trnMMeYiPwQdDKViFS6E7YKg5/gHmJp
	 hRjrFdvERAp+ltR73pxUUcIqKgpwUYS6R2G3OOxxuZZEiMcqibuIjQ4E759uVm5h3j
	 /YW2SOYs4voH7DjkjNbroDLuisOOMRZgupXX5WdcOu4b/RenTd/md0K8vXK3VqP7R9
	 hbhEjh9vayOnA==
Date: Wed, 8 Jul 2026 17:24:18 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Jan Engelhardt <jengelh@inai.de>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 1/4] console_codes.4: rephrase description for xterm's
 ESC ] 4 command
Message-ID: <ak5rQC_7g4GCVio6@devuan>
References: <20260708121458.46465-1-jengelh@inai.de>
 <ak5qEZVPKjmO2mnY@devuan>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="l7q4pb47juiwvytl"
Content-Disposition: inline
In-Reply-To: <ak5qEZVPKjmO2mnY@devuan>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-6.76 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:jengelh@inai.de,m:linux-man@vger.kernel.org,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCPT_COUNT_TWO(0.00)[2];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5721-lists,linux-man=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[devuan:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,inai.de:email,vger.kernel.org:from_smtp,alejandro-colomar.es:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 834FE7284D4


--l7q4pb47juiwvytl
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Jan Engelhardt <jengelh@inai.de>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 1/4] console_codes.4: rephrase description for xterm's
 ESC ] 4 command
Message-ID: <ak5rQC_7g4GCVio6@devuan>
References: <20260708121458.46465-1-jengelh@inai.de>
 <ak5qEZVPKjmO2mnY@devuan>
MIME-Version: 1.0
In-Reply-To: <ak5qEZVPKjmO2mnY@devuan>

On 2026-07-08T17:17:57+0200, Alejandro Colomar wrote:
> Hi Jan,
>=20
> On 2026-07-08T14:14:55+0200, Jan Engelhardt wrote:
> > The \e]4 code is capable of modifying xterm's entire 256-slot palette,
> > not just the ANSI sub-portion thereof.
> >=20
> > Signed-off-by: Jan Engelhardt <jengelh@inai.de>
>=20
> Thanks!  I've applied all 4 patches.

Actually, I've only applied the first 2.  I've found some issues with
patch 4 in CI, so I've reverted it, and I also want to discuss patch 3.


Cheers,
Alex

>=20
>=20
> Cheers,
> Alex
>=20
> > ---
> >  man/man4/console_codes.4 | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >=20
> > diff --git a/man/man4/console_codes.4 b/man/man4/console_codes.4
> > index e0e88537a..28ee4c2fc 100644
> > --- a/man/man4/console_codes.4
> > +++ b/man/man4/console_codes.4
> > @@ -753,7 +753,7 @@ Set icon name and window title to
> >  T}
> >  ESC ] 1 ; \f[I]txt\f[] ST	Set icon name to \f[I]txt\f[].
> >  ESC ] 2 ; \f[I]txt\f[] ST	Set window title to \f[I]txt\f[].
> > -ESC ] 4 ; \f[I]num\f[] ; \f[I]txt\f[] ST	Set ANSI color \f[I]num\f[] t=
o \f[I]txt\f[].
> > +ESC ] 4 ; \f[I]num\f[] ; \f[I]txt\f[] ST	Set color \f[I]num\f[] (0-255=
) to \f[I]txt\f[].
> >  ESC ] 10 ; \f[I]txt\f[] ST	Set dynamic text color to \f[I]txt\f[].
> >  ESC ] 46 ; \f[I]name\f[] ST	T{
> >  Change log file to
> > --=20
> > 2.54.0
> >=20
>=20
> --=20
> <https://www.alejandro-colomar.es>



--=20
<https://www.alejandro-colomar.es>

--l7q4pb47juiwvytl
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmpOa6EACgkQ64mZXMKQ
wqlLmw//Wglw9QLUIcoa/T4TC0Mq00J5bJ/6avXQhdbG5Ec0Mwx9Si+yw7C/WoUZ
mxWs4EkWfaz8rq03j3zkgaUAXGakmcjwGzLEpZzIZxlJOhtcBI4kWrjwblh3VT8x
nDMsyeXHLbIjuRsxL8+ftPIUO39tsZCUKjfUXWH5W8oOGmPxvoLbVQFpbbpSbFW0
0lgAl63jD33o/A1kAwStTPX0SpmrS2iRM2pj24gc63DjhiFxFu7JKirIzkk2Qruh
xzArPOs+OxAxjn0e2SA+Xmdqq3qkqCcuaU1zzBhmotzg7XUdSZIEJ3yqw16RXgQR
c3hrgzcAAJONbns4/4oT6qSaQkhJMazbWfhj7E7Nh/ODi6/zl9w+noqo8MMl3r+t
9HDNHQnTHZaa+ym7EIYz4rvTn5ZfuR2OXLfiEB78KZhvOxEeUwuePq+1h2CGobbm
hOFx669dDXc3jD1+TSfReN0o9zJD5382njbDS414jCQxnZFCaTHwAvgAMCgV077y
qRv7+PVhl4LfIM950Vz63IfCdPPPhRsrzY3Ksl7BjGS3l9PPBNOBlurB1phZrok2
yfOvFGF8Rzg5mJ8V2ZgpBhclIbYPbG3YLvoBladiNsuanvb82w5dF7W98QNSDxIt
SabqppBNpkVVj7i7ib+nP36C4kCHu70PaetNRxXS3WDI0FjmjrM=
=OUYX
-----END PGP SIGNATURE-----

--l7q4pb47juiwvytl--

