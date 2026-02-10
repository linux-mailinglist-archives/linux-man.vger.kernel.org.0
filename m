Return-Path: <linux-man+bounces-5097-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0JDICAasi2lXYQAAu9opvQ
	(envelope-from <linux-man+bounces-5097-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Tue, 10 Feb 2026 23:07:02 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id B9D7511F9D5
	for <lists+linux-man@lfdr.de>; Tue, 10 Feb 2026 23:07:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id DACB63017DFA
	for <lists+linux-man@lfdr.de>; Tue, 10 Feb 2026 22:07:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B5D54334C00;
	Tue, 10 Feb 2026 22:06:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pyhWRwyX"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78814329E5E;
	Tue, 10 Feb 2026 22:06:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770761219; cv=none; b=VkivzxSeD/FBY7uy7+tSI9oBUhXd0aquTPlvAKWyn2j5N84MMQ7nRW7UDLT8xV/WCjbJ6WXqF97VztbbTsLY4iv2S5ASRLCZd+XoYebm4qXKuHW7MipPAo/e6hIwd9BoksAyQLADrWWelb+7ZBVLdVzYu5RpC+reuo0aAWqf1OU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770761219; c=relaxed/simple;
	bh=GHjBK14iI14LKxd0WXRzuEG6VOkqTcV6Qap9Mnri8Wo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fXwhy+YQeY5LvC1kfHmrdZuOPzQ23kS9UxwxTZ6j0AGvUMvbhgW2KX5Vh3vP84FfG2NLkjNHIRP+uZtLhoLA7qTStw2tIyP0A5fxzQ8hklbd+TBilsDDd2Mr7+Ty51v671VLdnoZ6dBFUN+8oBmgLaLh/RT7071hF3WBSLr2VsQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pyhWRwyX; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BFC61C116C6;
	Tue, 10 Feb 2026 22:06:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770761219;
	bh=GHjBK14iI14LKxd0WXRzuEG6VOkqTcV6Qap9Mnri8Wo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=pyhWRwyXyDGrNQoAP4gxP0oS3EbDgUPSuFLEXp7uV2z9D3FnJm6c362Y0iygQGCBJ
	 vI4wvCnU5i0FNNYKHwOEsE+x+nk6nkV+2SFTHuZBEijMdNoNVfBiNSMkUbs9Zmgfy4
	 bAhjsqmtqtEcbvNuc12/nl+0QE2/Rz+3w4kDl+TVrZKPfDh85Qpd2tIVE/HS0fSC4p
	 /SGcsxc5kBV/rZH9lJiTuVgR0XMEMWv0LPJYjZqJmjL6+SrHbTWgbcP03IGm3+f5h9
	 4hvBGbSuT/6TcSI2ogcPOSiYGhmlwsQKYLgKxVg2xTHYuf99VITFOb6AC3BVd8QPNJ
	 6bRzBxVYfcQ6Q==
Date: Tue, 10 Feb 2026 23:06:55 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Nicolas Bouchinet <nicolas.bouchinet@oss.cyber.gouv.fr>
Cc: Xiu Jianfeng <xiujianfeng@huawei.com>, Alyssa Ross <hi@alyssa.is>, 
	Heinrich Schuchardt <xypron.glpk@gmx.de>, David Howells <dhowells@redhat.com>, 
	linux-security-module@vger.kernel.org, linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man7/kernel_lockdown.7: remove Secure Boot untruth
Message-ID: <aYurp8P0HLVdpIir@devuan>
References: <20260203195001.20131-1-hi@alyssa.is>
 <aa62e24c-537e-4141-9507-37cd0af19dfc@huawei.com>
 <aYYP23WUyydsMGyx@archlinux>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="vystg5wpjhghqurs"
Content-Disposition: inline
In-Reply-To: <aYYP23WUyydsMGyx@archlinux>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5097-lists,linux-man=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[huawei.com,alyssa.is,gmx.de,redhat.com,vger.kernel.org];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[archlinux.org:url,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,gmx.de:email,alejandro-colomar.es:url,cyber.gouv.fr:email]
X-Rspamd-Queue-Id: B9D7511F9D5
X-Rspamd-Action: no action


--vystg5wpjhghqurs
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Nicolas Bouchinet <nicolas.bouchinet@oss.cyber.gouv.fr>
Cc: Xiu Jianfeng <xiujianfeng@huawei.com>, Alyssa Ross <hi@alyssa.is>, 
	Heinrich Schuchardt <xypron.glpk@gmx.de>, David Howells <dhowells@redhat.com>, 
	linux-security-module@vger.kernel.org, linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man7/kernel_lockdown.7: remove Secure Boot untruth
Message-ID: <aYurp8P0HLVdpIir@devuan>
References: <20260203195001.20131-1-hi@alyssa.is>
 <aa62e24c-537e-4141-9507-37cd0af19dfc@huawei.com>
 <aYYP23WUyydsMGyx@archlinux>
MIME-Version: 1.0
In-Reply-To: <aYYP23WUyydsMGyx@archlinux>

Hi all,

On 2026-02-06T17:08:35+0100, Nicolas Bouchinet wrote:
> On Thu, Feb 05, 2026 at 07:48:02PM +0800, Xiu Jianfeng wrote:
> > On 2/4/2026 3:50 AM, Alyssa Ross wrote:
> > > This is true for Fedora, where this page was sourced from, but I don't
> > > believe it has ever been true for the mainline kernel, because Linus
> > > rejected it.
> >=20
> > Yeah, I also found this issue not long ago, but I haven't had time to s=
ubmit
> > a fix patch yet.
> >=20
> > >=20
> > > Link: https://bbs.archlinux.org/viewtopic.php?pid=3D2088704#p2088704
> > > Link: https://lore.kernel.org/lkml/CA+55aFzYbpRAdma0PvqE+9ygySuKzNKBy=
qOzzMufBoovXVnfPw@mail.gmail.com/
> > > Fixes: bb509e6fc ("kernel_lockdown.7: New page documenting the Kernel=
 Lockdown feature")
> > > Signed-off-by: Alyssa Ross <hi@alyssa.is>
> >=20
> > I am not sure if appropriate to add my ACK here, if needed, feel free to
> > add:
> >=20
> > Acked-by: Xiu Jianfeng <xiujianfeng@huawei.com>
> >=20
>=20
> You can also add mine too :
>=20
> Acked-by: Nicolas Bouchinet <nicolas.bouchinet@oss.cyber.gouv.fr>

Thanks!  I've applied the patch.

    Link: <https://bbs.archlinux.org/viewtopic.php?pid=3D2088704#p2088704>
    Link: <https://lore.kernel.org/lkml/CA+55aFzYbpRAdma0PvqE+9ygySuKzNKByq=
OzzMufBoovXVnfPw@mail.gmail.com/>
    Fixes: bb509e6fcbae (2020-10-16; "kernel_lockdown.7: New page documenti=
ng the Kernel Lockdown feature")
    Signed-off-by: Alyssa Ross <hi@alyssa.is>
    Message-ID: <20260203195001.20131-1-hi@alyssa.is>
    Acked-by: Xiu Jianfeng <xiujianfeng@huawei.com>
    Message-ID: <aa62e24c-537e-4141-9507-37cd0af19dfc@huawei.com>
    Acked-by: Nicolas Bouchinet <nicolas.bouchinet@oss.cyber.gouv.fr>
    Message-ID: <aYYP23WUyydsMGyx@archlinux>
    Cc: Heinrich Schuchardt <xypron.glpk@gmx.de>
    Cc: David Howells <dhowells@redhat.com>
    Cc: <linux-security-module@vger.kernel.org>
    Signed-off-by: Alejandro Colomar <alx@kernel.org>


Have a lovely night!
Alex

>=20
> Thank you in advance,
>=20
> Nicolas
>=20
> > > ---
> > >   man/man7/kernel_lockdown.7 | 3 ---
> > >   1 file changed, 3 deletions(-)
> > >=20
> > > diff --git a/man/man7/kernel_lockdown.7 b/man/man7/kernel_lockdown.7
> > > index 5090484ea..5986c8f01 100644
> > > --- a/man/man7/kernel_lockdown.7
> > > +++ b/man/man7/kernel_lockdown.7
> > > @@ -23,9 +23,6 @@ Lockdown: X: Y is restricted, see man kernel_lockdo=
wn.7
> > >   .in
> > >   .P
> > >   where X indicates the process name and Y indicates what is restrict=
ed.
> > > -.P
> > > -On an EFI-enabled x86 or arm64 machine, lockdown will be automatical=
ly enabled
> > > -if the system boots in EFI Secure Boot mode.
> > >   .\"
> > >   .SS Coverage
> > >   When lockdown is in effect, a number of features are disabled or ha=
ve their
> >=20

--=20
<https://www.alejandro-colomar.es>

--vystg5wpjhghqurs
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmmLq/8ACgkQ64mZXMKQ
wqmHDQ/9FJ2VM6HSh6nZI5Wpnd55w5GkrmHYTSsfGiZNw965agbMfqA8SrGYm6Io
DjcIvwuzY7tO2h9ixJShfMi+nKYzJisIQVv3JeDQWvPfxKr7OhMVEaGIKCKkGXRZ
LYlTBtgGF6oWRwlZjxfb3Y5jwNu3zYRzeYtG3nUKgPC0U7zFo9vQQZ8GpuZWNnG2
C1WlWU3c1616zNH2jGljQDI037jOzCY1Q70ecz1odETKK+MJCV11sLeRKW6OhVE7
/xq+P7lst2Zbg6d20NfAGd+calKLMIT4apbZhSSh3XGbJLPn81isZ7BqsvYWZuiY
jOY4bxQhD8v9Yd2P3BV1nyirW0hzI7bfb8qS5nXKwmLOPc67MwQJ13k65jJHaAoq
2PnkiaPsNMkzD9C8roxdEplimkK61IMxEK8a4Fh8HPc+HPuDeGgJEvP9Ggm5Q2tF
jKps973W52ZOkX5S5qgTOo7Tb4pSOmZQRXxVH1Amdj0bV4sB+opacPwBnD9w0kgZ
9rc3zBVUjnxvdCFHoz6iL6CWkcbOduAWAeqEATGU5oehkhitG+wV7p/oQiNJz0Re
USHiMqJBp4zHqX6/CwzDCQttUKCnvHwNLeVKhskBQ2yBo4+CFWx5jSTwfPqSgPcp
2hMZ+5xhjEbSC+G5aKIbzCo8XQCpT7yEAPw63bdM5Jd+U++CiRg=
=o7f4
-----END PGP SIGNATURE-----

--vystg5wpjhghqurs--

