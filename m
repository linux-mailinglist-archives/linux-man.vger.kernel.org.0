Return-Path: <linux-man+bounces-5625-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6BUqN6e9GGoumwgAu9opvQ
	(envelope-from <linux-man+bounces-5625-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Fri, 29 May 2026 00:11:51 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B5D75FAD1D
	for <lists+linux-man@lfdr.de>; Fri, 29 May 2026 00:11:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 5BB4830087F3
	for <lists+linux-man@lfdr.de>; Thu, 28 May 2026 22:11:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 66C0D35E1DB;
	Thu, 28 May 2026 22:11:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cvPjDea+"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42BDA2DECBA
	for <linux-man@vger.kernel.org>; Thu, 28 May 2026 22:11:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780006293; cv=none; b=spAK72FsKS/ydDAZxBxV3y8poYgz6CRfHCph9DvkXnPdwb1iTKhjrNRMFMRDeu18qPkWqF3OklEp+Nwbm1t2Uy+F3k+7HkmlZAB6MQjWcXSMwCIUJQYT1hyiTfSkdJCXaFpcPaART3MLPzYI5M55piM5/+fx7LEoS+7AFHdEpZ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780006293; c=relaxed/simple;
	bh=+hAhEhx11Yk24Fj27le8IFYO1Q+Db7Hr1FulpVmhDTU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=pQTCKSwaSHP2RKkFquN+cQfZW/Q1LSVd7rVUrd9UbuWoGjL12dxITILcCFHu00mthfWn+8Ee1adTsvm9DPBAlKu+7gB5bI0OWnNZzFCwVBBovXphzgmWnFM57RAb+F5VwF6GiAcvq8/+AKMl1AhZqt5/N3bSLGY9pfZsbQvFrYU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cvPjDea+; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2D0CF1F000E9;
	Thu, 28 May 2026 22:11:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780006292;
	bh=AaalETSTEH0smBoyIk44K38iZTlDqQtXQAoFj4QRiz0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=cvPjDea+JKuzMAwzyht9xYVhCCC9dd5zc4EcxsxdqLtiIIRsxD29xa906eANsV2n1
	 DjkVgdIpiVxttGEkItwFeuFpIpSb5Cxp13k7vjGuupLTyRUhAbbgHZKZcnHhxuPZ4r
	 /cLTDcaHSbhLYuuXP5YLQxJlHcJX2ffHQ6QVDEVak3FDmyoSv6V+QL5qXyNtmXeqAu
	 ezZN9KZWmCuHCAAfaLMby5Y6TepG6g8U8LdacY6uNO+dL0/7R0Iy3Xyc0KaUl454FS
	 8xsaqwEhzsGDwjDVhnY7/kT5n0xVLp2cvrMwnA5WcfzeNS4VDO+DEHVDjxk6MFlGwr
	 dMvlOA2KICdaA==
Date: Fri, 29 May 2026 00:11:29 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Mark Harris <mark.hsj@gmail.com>
Cc: Carlos O'Donell <carlos@redhat.com>, 
	"Michael Kerrisk (man7.org)" <mtk@man7.org>, linux-man <linux-man@vger.kernel.org>
Subject: Re: Mangled function prototypes (phantom arguments)
Message-ID: <ahi9cQU7htXQNrhl@devuan>
References: <CAFs=pgbvWhm7KUcdyt=ELT66FNuLNjqh3Ek-1d9V6sY2npJ5jg@mail.gmail.com>
 <ahbxJGIK8Qf4AqVl@devuan>
 <CAFs=pgYAfonz99yGyoS+h76v7YrfT8=f4yg6zQFqDPgm8XfsoQ@mail.gmail.com>
 <ahcvtYzeadqmhk62@devuan>
 <CAFs=pgaaDgMULDkwrewtegogQQCZjCFqEPUEkAfKpT67rEWZ1Q@mail.gmail.com>
 <23a5740a-5de6-487d-b976-71e16205b1cf@redhat.com>
 <ahisWSsAtm8J19RX@devuan>
 <CAMdZqKER+2XNhYt6VzVUijgMPYw1_fsn3Hh-+uzLN+joqzPp0A@mail.gmail.com>
 <ahi7dckZtycvn_Ql@devuan>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="2wgeslgltg3iob3l"
Content-Disposition: inline
In-Reply-To: <ahi7dckZtycvn_Ql@devuan>
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-5625-lists,linux-man=lfdr.de];
	TO_DN_ALL(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[alejandro-colomar.es:url,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo]
X-Rspamd-Queue-Id: 8B5D75FAD1D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--2wgeslgltg3iob3l
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Mark Harris <mark.hsj@gmail.com>
Cc: Carlos O'Donell <carlos@redhat.com>, 
	"Michael Kerrisk (man7.org)" <mtk@man7.org>, linux-man <linux-man@vger.kernel.org>
Subject: Re: Mangled function prototypes (phantom arguments)
Message-ID: <ahi9cQU7htXQNrhl@devuan>
References: <CAFs=pgbvWhm7KUcdyt=ELT66FNuLNjqh3Ek-1d9V6sY2npJ5jg@mail.gmail.com>
 <ahbxJGIK8Qf4AqVl@devuan>
 <CAFs=pgYAfonz99yGyoS+h76v7YrfT8=f4yg6zQFqDPgm8XfsoQ@mail.gmail.com>
 <ahcvtYzeadqmhk62@devuan>
 <CAFs=pgaaDgMULDkwrewtegogQQCZjCFqEPUEkAfKpT67rEWZ1Q@mail.gmail.com>
 <23a5740a-5de6-487d-b976-71e16205b1cf@redhat.com>
 <ahisWSsAtm8J19RX@devuan>
 <CAMdZqKER+2XNhYt6VzVUijgMPYw1_fsn3Hh-+uzLN+joqzPp0A@mail.gmail.com>
 <ahi7dckZtycvn_Ql@devuan>
MIME-Version: 1.0
In-Reply-To: <ahi7dckZtycvn_Ql@devuan>

On 2026-05-29T00:10:23+0200, Alejandro Colomar wrote:
> Hi Mark,
>=20
> On 2026-05-28T14:43:21-0700, Mark Harris wrote:
> > > > My view was always that they were the simplest expression of the
> > > > interface that the widest possible audience could understand, and
> > > > that seems to align with Michael's view.
> > >
> > > That doesn't provide much value, IMHO.  My opinion of the SYNOPSIS is
> > > that it's a quick reminder of how a function should be used.
> >=20
> > I suggest a compromise.  Keep the array sizes, which are the part that
> > you claim adds value, and drop the forward declarations, which are the
> > part that confuses people.  So for example:
> >=20
> > ssize_t read(int fd, void buf[count], size_t count);
> >=20
> > Yes, count is used before its definition, but the goal is not to write
> > a valid function declaration; the existing one being invalid is
> > evidence of that.  It is difficult to imagine that anyone would have
> > trouble finding the definition of count without a forward declaration,
> > unless they are a compiler in which case they would also be tripped up
> > by the array-of-void.
>=20
> I considered doing that some time ago.  I am worried about something: it
> might "work" if you're unlucky.
>=20
> Let's say a relatively new programmer sees this and thinks it's valid C.
> And let's say it tries it in their own code, which may have a variable
> in scope (most likely, a global one) named 'count'.
>=20
> 	extern int count;
>=20
> 	ssize_t read(int fd, void buf[count], size_t count);
>=20
> That's going to compile, but it's not what you'd expect.

Oh well, this one won't compile, because of void.  But it would work for
other arrays, such as arrays of char.

>=20
> That's why I originally used [.count] notation.  That one if free from
> this problem.  However, GCC maintainers convinced me of using some
> syntax that is valid C (at least in the GNU dialect of it, which is the
> majoritary one anyway).
>=20
>=20
> Have a lovely night!
> Alex
>=20
> --=20
> <https://www.alejandro-colomar.es>



--=20
<https://www.alejandro-colomar.es>

--2wgeslgltg3iob3l
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmoYvZAACgkQ64mZXMKQ
wqmTtA/+LQQQ9P2BkIfFlZ+aIqT/pVq0cXeuzvXshVmAvMK0lKyKtvivpquYzAjx
Zy+935S6J2eYq2l9bFwEQ9R0q6rJ59F1FrlQbW1IPr9oaTqrFX1Do+9zo4ktk1Zl
XlpUBbXCx6Yf/IcvouOW1jkTsf5nYAj3dVLZSfPeTmfA8Zpd7LZd9E3egz1V7tlJ
5jOSsvIZTwNRx+QV18fCJQdvxr1u/jEC2sDuBqLxz5dd+4stpYGNFtQXJ11cR5KX
JpxrSXTEjxlQmHLtrrTkkIIVIOGJZ6IaL/784aj5A9aQK8kQwELgrgl1DieF73bg
WVY2HtD6wACRRbELyl/w+vpNYknMCYpgqnVFnX/C1I71ol8QWwglrZLU8S4kBYw7
e174RGHI5MeJSW36o8/Cxxs6S8l+W75ju99RmBAfAux+udH4RoFUKomsWPO43945
ikGVU28aKEplUx6WL51JjHC8tkvHx/0X1EzXrN116tm1SUbrEMF41FVOCVHgj5mk
NpHLfVdR/WFRH1YINSKZoBGzh3JsiUVS5jJohbqRmFj5kxADmUIVkhCcnqbs8e4B
ZL3knq5rbGRgkdeU6V9jYCnCkZmkwHRPUjLaYKawtRDdp591H8DxODO/1/mru8Oa
s2v0A1hf7tO1dVrm61d4+CvDL2VI68sIEasyZ7gks2RWsKYnkDg=
=Zv9V
-----END PGP SIGNATURE-----

--2wgeslgltg3iob3l--

