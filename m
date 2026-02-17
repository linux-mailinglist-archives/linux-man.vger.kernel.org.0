Return-Path: <linux-man+bounces-5148-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id n9iiGFdklGkFDgIAu9opvQ
	(envelope-from <linux-man+bounces-5148-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Tue, 17 Feb 2026 13:51:35 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id C80CE14C1BC
	for <lists+linux-man@lfdr.de>; Tue, 17 Feb 2026 13:51:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id EF35B3024291
	for <lists+linux-man@lfdr.de>; Tue, 17 Feb 2026 12:51:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A9243355056;
	Tue, 17 Feb 2026 12:51:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hCRPSLxj"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C56435504D
	for <linux-man@vger.kernel.org>; Tue, 17 Feb 2026 12:51:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771332685; cv=none; b=KqNGSIGCzxxLohpvXcShcQQw2Cesi8ePWk50Y+0fIhUeG40zQ2B+NbMbotYecr64dOOMwhqEKNBK1fux5+BG/OtOXxgt2F5ikWVydmRqYEaz/hQ5+d5DulUsD4/lnhldcsVA9VjjqLQoxHJBqP/jWm7UEPw8eaF2NcOcC/OJ+K4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771332685; c=relaxed/simple;
	bh=ye2khyikktF1SFUvvW3ypeoqIyIdt/SfKEdIRecdMfA=;
	h=Date:From:To:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZFkQHekkKPYBgeTp5sRlprOcYR0lqzFUWOf3mgvFfIXkBHTkS5ivF5UaQ4zPEdPIJG8dVPLvIItG3FXZRwk76QbEm9QvgcJ2rpJyya09BpGcM/LOf6hX+kgjm+maqZbRyW9HhPJOTCoSRCMWl1V/+8+YzdikyZeu9zzrLQjO8Rw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hCRPSLxj; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8443EC4CEF7;
	Tue, 17 Feb 2026 12:51:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771332685;
	bh=ye2khyikktF1SFUvvW3ypeoqIyIdt/SfKEdIRecdMfA=;
	h=Date:From:To:Subject:References:In-Reply-To:From;
	b=hCRPSLxjpfFyBqZzqk/2h4Pj8lzL5RrJ+uks7z6iPNO7gjVahyFEgAm0sfgVHk/c4
	 ksxmzF4iA65PzCyHhC0cjIzgSfvTuxpjgUW2yOjbukKFhy/yiYtiDDG95qL4ES7GGM
	 89ZF1fkoBAohI0+c+F8P8SWK9rUzvNjs62gkBix7YSc0d60lYsqxO5ndrHnbCoIeJU
	 uHOpGBIiXJqoVb5VZ71oBOzNbpI3JlKRtPWP0YlJdrrmcn60kWNXuqDVVU/TZEgDcO
	 dP70DatIFTQuKaeo4NSrXoWumCd0kLnsp7zzBDWGrQe4M0KS1NFz412iNcvSvZwgaQ
	 w9EykZyf+EcGw==
Date: Tue, 17 Feb 2026 13:51:22 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Seth McDonald <dev@sethm.id.au>, linux-man@vger.kernel.org
Subject: Re: [PATCH v2 0/1] man/man2/*: Update history of syscalls H-M
Message-ID: <aZRjzZ6XNrudqDyH@devuan>
References: <cover.1769429341.git.sethmcmail@pm.me>
 <cover.1771232583.git.dev@sethm.id.au>
 <aZMeuDza3H4tVbgu@devuan>
 <019c6b7c-ba8d-72e1-be96-ab6e6b8eb535@sethm.id.au>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="xppw4yt3qkyiy7w7"
Content-Disposition: inline
In-Reply-To: <019c6b7c-ba8d-72e1-be96-ab6e6b8eb535@sethm.id.au>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	TAGGED_FROM(0.00)[bounces-5148-lists,linux-man=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,alejandro-colomar.es:url]
X-Rspamd-Queue-Id: C80CE14C1BC
X-Rspamd-Action: no action


--xppw4yt3qkyiy7w7
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Seth McDonald <dev@sethm.id.au>, linux-man@vger.kernel.org
Subject: Re: [PATCH v2 0/1] man/man2/*: Update history of syscalls H-M
Message-ID: <aZRjzZ6XNrudqDyH@devuan>
References: <cover.1769429341.git.sethmcmail@pm.me>
 <cover.1771232583.git.dev@sethm.id.au>
 <aZMeuDza3H4tVbgu@devuan>
 <019c6b7c-ba8d-72e1-be96-ab6e6b8eb535@sethm.id.au>
MIME-Version: 1.0
In-Reply-To: <019c6b7c-ba8d-72e1-be96-ab6e6b8eb535@sethm.id.au>

Hi Seth,

On 2026-02-17T22:37:28+1000, Seth McDonald wrote:
> Hi Alex,
>=20
> On Mon, 16 Feb 2026 at 14:57:06 +0100, Alejandro Colomar wrote:
> > I personally use Migadu <https://migadu.com/>.  I've had a very good
> > experience with them, and they're very quick in fixing any bugs I report
> > to them.  If Fastmail works fine for you, that's great!
>=20
> I'm actually quite surprised I didn't come across them.  I tried looking
> at every email provider (even considered Purelymail, which I believe is
> currently a 2-3 person project).  Migadu do look great from their
> website, so I'll keep them in mind as a good backup.
>=20
> > BTW, the ubuntu keyserver shows the existence of a non-revoked key that
> > is probably old?
> >=20
> > 	pub (4)eddsa263/82b9620e53d0a1ae2d696111c267b0020a900289 2024-12-06T06=
:53:33Z
> >=20
> > It contains two UIDs, one of which is revoked, but the other is not
> > revoked:
> [...]
> > Is it intentionaly that you revoked the UID instead of the key?
>=20
> That actually was intentional.  The two signatures on my key are of the
> keys I used with my Proton emails; I signed it to show that I'm indeed
> the same person despite the different email address.
>=20
> I added the second UID to imply that of the two keys, if someone wanted
> to send me encrypted email, they should use the one whose UID states
> "email encryption".  But since I'm no longer planning on those being my
> main email addresses, I revoked the "email encryption" UID.  But my
> Proton address does still use that key, so I didn't revoke the whole
> thing.

Ahh, makes sense.

>=20
> > > Let me know if it's still corrupt, and I'll =CC=B6k=CC=B6i=CC=B6c=CC=
=B6k=CC=B6 =CC=B6m=CC=B6y=CC=B6 =CC=B6P=CC=B6C calmly figure out
> > > what's going on.
> >=20
> > It worked.  :)
>=20
> Well that's certainly a relief!
>=20
> Btw, did the strikethrough text render correctly for you?

Yup, it looks correct on mutt(1) and neomutt(1).


Have a lovely day!
Alex

>  It renders as
> strikethrough for me on mutt(1) and vim(1), but it looks -l-i-k-e-=20
> -t-h-i-s on the lore.kernel.org archive.
>=20
> Take care,
> 	Seth McDonald.
>=20
> --=20
> E9D1 26A5 F0D4 9DF7 792B  C2E2 B4BF 4530 D39B 2D51



--=20
<https://www.alejandro-colomar.es>

--xppw4yt3qkyiy7w7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmmUZEMACgkQ64mZXMKQ
wqmJ1w/+Jw8+16dhUnRWXg3mQEQ46rhVrMzVNNIYZiLbso5Ife6Sflwne5X1nDoq
rnX3WdDmXiTk+sk+XsO82OHNoEXekmwYle2WrsH192dm3lImKXdY13Q8O0+Ea55F
QDu/C5q4b0pMAE77sgMIm/oWGgX16qWQSIvgR/Wu9ZaSKWseNjEMnkq6UcG4SoU7
PHRbLicR+df0kBMj3ewQ9LptvSQ/ImO0FdWiE7YxYgKxhL7fbiZVVdLREYCyHV7z
DOb8mi114/HE1dN3gyvRQfhQDH1awxe/ckwW7UJfYgcOXmpLCqlqzg++1M7HwEQ2
irX1iLYjReVVxMc0R/1tvfnc+V4l0fCp3iXbOkpWnS7ei96uP6K38RiWYjuaqPkF
bu+FKBRCwGj5Z8KSFYeZ75/89BF0bt6iNdPBfN1Rn+XO0zhjHuV1G5OLjq26PHEv
Pro5VDTDGW/L+bC3C9EqOM8SsAd2sCkB6txGv6KJwPShKiKIpRcqq25rLE903Qd+
sgZL7qoh9YpvA0DjEYEorraJf/I71YrpEdEgjcygpJ18wI+JNQPu/wx1fNLpD2th
UNs530jaYwAq91u+T6Lq8OVtdcyWF6C8BFs2I30dUUOtf4oyD8076Qm0WF4N6JZc
nUqNbFjaSJdRO8GgitE9EOThJpiU4tIrdChVU4tpYhdNeZph1qk=
=I+mo
-----END PGP SIGNATURE-----

--xppw4yt3qkyiy7w7--

