Return-Path: <linux-man+bounces-5617-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id J8R9K3cxGGpsgAgAu9opvQ
	(envelope-from <linux-man+bounces-5617-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Thu, 28 May 2026 14:13:43 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B12075F1EA7
	for <lists+linux-man@lfdr.de>; Thu, 28 May 2026 14:13:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 3479E3025AE6
	for <lists+linux-man@lfdr.de>; Thu, 28 May 2026 12:11:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7761F3E6DFF;
	Thu, 28 May 2026 12:11:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gTdMWha4"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23A393E639F
	for <linux-man@vger.kernel.org>; Thu, 28 May 2026 12:11:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779970300; cv=none; b=suQ6GevzoOsGpKD5ut7KXk7UuUOYTFrFmTG3yA1jqP48LPkGr19g5zk0r47nnhnqkykQzvP2miMySoISzV9BCxnI8m8umZCRMUCiZmjy00JmP+pFDernwodeVlhFLqj/sHSySf8cvHQmVWStO6jZ388EiPnQJMESGy5OHNE2C/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779970300; c=relaxed/simple;
	bh=qNCfRso9qitpPmG/sxGOyP411pzREKDoiPctgQ/QaqU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=U1RixHXhlD4oVR0OEDCQIULBDUXlfTv5H+UJENYSe7jbIIcRJ0Qe7gqSPV1LDr8hym5VewrIAzi6WMxHjKda3gYsuvie4QhEVSt0vCxHaItE3+eMgLOTLUSYiW9uIjGu9B/dwsVLVaGA1/x7jD/H8BGNIHdRSn6cwA/Xjd9dybA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gTdMWha4; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0BE521F000E9;
	Thu, 28 May 2026 12:11:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779970298;
	bh=fOvg2ATf2ueU6R3Jgx5GHXTG9wxccznih/Am3KArFqQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=gTdMWha4ghbvzHf/Hg3biX4+DxmgIM3qIXWxJL2Vm8gPqgHjH84PU/vZXVSw66d6g
	 XPIYg4kSTGNinabNyDX9hdQAbByfXcSq48u0in2IEylnzKIZ0okK6eoSR7vGIogVQ5
	 xiHvg3Ym5shtPaCwU9QZSqehPvt6me3EVpt2FE7TwRrsPeOCCo0lKqQbYO0o/Dez2U
	 VZZOeXn7lX4jdBBZ5Vv9OfvQcQtYy4nlB9GXi62px53VIzAMEVCaiaixb0GR1vgA68
	 WbsimVa5oKl68nAO1iXADUj3YH4SHJ3xSmimmrnCpf57rgNkXzJModV15xL8jGCHxX
	 QPgRJf0mNLyvQ==
Date: Thu, 28 May 2026 14:11:35 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Kang-Che Sung <explorer09@gmail.com>
Cc: linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: Re: mbrtowc(3) state after an invalid sequence "undefined" or
 "unspecified"?
Message-ID: <ahgw1XTxn7iJ6B_3@devuan>
References: <CADDzAfOZqQgVdEdn5skkkGPzUf7XiOGnmA0w7HZMkcQTpE7VKw@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="3xfvo73phkpjsyw3"
Content-Disposition: inline
In-Reply-To: <CADDzAfOZqQgVdEdn5skkkGPzUf7XiOGnmA0w7HZMkcQTpE7VKw@mail.gmail.com>
X-Spamd-Result: default: False [-2.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	SUBJECT_ENDS_QUESTION(1.00)[];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5617-lists,linux-man=lfdr.de];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,opengroup.org:url,alejandro-colomar.es:url]
X-Rspamd-Queue-Id: B12075F1EA7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--3xfvo73phkpjsyw3
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Kang-Che Sung <explorer09@gmail.com>
Cc: linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: Re: mbrtowc(3) state after an invalid sequence "undefined" or
 "unspecified"?
Message-ID: <ahgw1XTxn7iJ6B_3@devuan>
References: <CADDzAfOZqQgVdEdn5skkkGPzUf7XiOGnmA0w7HZMkcQTpE7VKw@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CADDzAfOZqQgVdEdn5skkkGPzUf7XiOGnmA0w7HZMkcQTpE7VKw@mail.gmail.com>

Hi Kang-Che,

On 2026-05-21T23:08:20+0800, Kang-Che Sung wrote:
> Hi, Alejandro (or anyone else interested),
>=20
> There's a discrepancy in the wording of the mbrtowc(3) function (and
> similarly, mbsrtowcs(3) function) between in POSIX and ISO C. It could be
> reported as an issue to POSIX (the Austin Group), and I am not sure if you
> can do that.
>=20
> In ISO C (I checked in both C99 and C23, in particular the N3220 draft),
> there's a statement that if mbrtowc() returns a (size_t)(-1) as an encodi=
ng
> error occurs, "the conversion state is unspecified".
>=20
> POSIX (see <
> https://pubs.opengroup.org/onlinepubs/9799919799/functions/mbrtowc.html>),
> for the same part it says "the conversion state is undefined".
>=20
> This wording difference matters when the "unspecified behavior" and
> "undefined behavior" are technically different. An example is how the
> mbstate_t object can be reused after an invalid sequence is encountered.
> When the state is said to be "undefined" it's implied to be not usable
> again (unless it is reset, e.g., by an `mbrtowc(NULL, "", 1, ps)` call).
> When it's "unspecified" then implementations can allow the state to be
> reused for certain encodings (possible for UTF-8, for example).
>=20
> This is something I discovered accidentally when researching the multibyte
> functions in the C standard library and how they work with an encoding li=
ke
> UTF-8.

Thanks!  I've opened this bug report:

<https://www.austingroupbugs.net/view.php?id=3D1982>


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es>

--3xfvo73phkpjsyw3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmoYMPEACgkQ64mZXMKQ
wqmrWhAAmrsmfmyyr+xR3eqvrSYFm8XCsWHquyrq9MlVI9+Q2wjcXyPJOO4X8cLf
tNxB1Lq9LRWU6Ub2tCslG8wFhsiz1h9QDL0NzrEePG4lLVfmj862D/L2dYa53Yk/
JpXAIvewFxbKGiv8Bj5O6ioNGRvT1Mk0AVbfM0TRTjd14ejFj2PLaQo+EaOXYER4
74JHYBiUJia52A1HRLFW0itVK7a8Q125/eJu8IzmNUJqXi19zrXXAmiJym66Yhk8
qaO+tNsf5F/7Ri/GN+2Hf95WkbydkgVFtAVAww7tNTAfnKRW0Cn1+6Lci2bQtMSD
/RIocWKBFOxZtFhJCxmZ5Bsw/lZmA1omkZcuFPpZHDaS+gHoWtMX7SD1bhpoCHaY
QsX1kpERV6BfjWZgGfX5byOeJCA+xnXgfiJN+TC5RuOfcqQ1ShDIloUqb0zAMoBR
qefGW3zwY9VZSZlRFPuSDQlu04/R0AQNPVGrJE8q3nG3cSvw/ddLVcCXxixUwbqP
GdrskCi1k1zBPf6wWamagkEEe04F5qhQVH6jz3lhfUxRC3HOEH8ZxpaXNt9tHmfJ
UBsZH4nj7+OoAbDRppq3pY6wZUibcbJgHeySRgLx/IrC64JRBcEJt3MThof6it6y
stgkEIhfeGrIY517rkpHn4EBMgampoFXAWtG5YOjkkh7XIe3mNI=
=Shh1
-----END PGP SIGNATURE-----

--3xfvo73phkpjsyw3--

