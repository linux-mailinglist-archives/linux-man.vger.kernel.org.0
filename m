Return-Path: <linux-man+bounces-5038-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CGC6Le69hGmd5AMAu9opvQ
	(envelope-from <linux-man+bounces-5038-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Thu, 05 Feb 2026 16:57:34 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 1751BF4D6E
	for <lists+linux-man@lfdr.de>; Thu, 05 Feb 2026 16:57:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6D2A2305D6CB
	for <lists+linux-man@lfdr.de>; Thu,  5 Feb 2026 15:53:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 01EE342B740;
	Thu,  5 Feb 2026 15:53:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EKiiyiLM"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B819642983F
	for <linux-man@vger.kernel.org>; Thu,  5 Feb 2026 15:53:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770306813; cv=none; b=q3Acb0lMvdKxgFIH9zJEtCwUD1vEKVMl2KkE2mnUytKE/ZELKxEHAWejJpXE8J66lvdHQWjZfKA3geJiH9xHec+m/fnhX6xYQc/sHHjgGm//GyeTLV/G/27ldnVm4XWIkIDebNoO3Fnc8VDmBN6ylVflqlmxwyRIjgq1CUpeL20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770306813; c=relaxed/simple;
	bh=dYfYTfwsDafF6XueNJ9aSo1tbvVFGzwzM7cvfm1qR7Y=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=en8QanfpkNsMtaWiBgqbo1cYK+J7dVilNUpPazKoWdyptRJ2S5m9NXaFAke5ioUtzXLXwqy1jNkJ0tPoY8e+ErkE3wf5AwjafP3nEMEORy0oSCfcnR88KUPdkG+hgMQ3QV+miKOM5SfPKzTodZG4Xhk+Onkhq8YmaWOXHSxtHdc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EKiiyiLM; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8D9A5C4CEF7;
	Thu,  5 Feb 2026 15:53:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770306813;
	bh=dYfYTfwsDafF6XueNJ9aSo1tbvVFGzwzM7cvfm1qR7Y=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=EKiiyiLMRwO/vICC8HJFqV6uQdDp/Fn7nwImOAOHZMLYOZww21aCkr5sRo6nq8fU2
	 JuWu7g2TwgtrZhgKqfyR0SYO/r2m4E29ZY6fMkE3JykjbBl6rJTAmGDUFOtQ53d6gr
	 9YtLzCCwhVdx/N9xHFaHm03jv7OHKvI9d0C7uC2BL9aY/r4QURIjt3pa7COj0+8RMm
	 Cc7IwFsPlFGniirkfAdi+K6zAOydWFdo/Z2TlRdfyuN1ayGDQZVgB6p0w37dF2onBO
	 qQjdHGSx0WcYntxihQK9q81r3CPXQRhgPUPbMLwx6PELPrd9goZdkYi+SVlOOhR6xI
	 S6KQ/xzajBYdw==
Date: Thu, 5 Feb 2026 16:53:30 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Carlos O'Donell <carlos@redhat.com>
Cc: Jonathan Wakely <jwakely@redhat.com>, linux-man@vger.kernel.org
Subject: Re: aligned_alloc man page and restrictions on alignment values
Message-ID: <4cqhak4mye43xtmfoc44nya3eyhvxeyq44y35eu4djnakjnlrq@2utokgcosyev>
References: <CACb0b4nujtK-twnRzjWmXPyJW+0uvbM_AFx3_1xFRj86yPiHFw@mail.gmail.com>
 <aYSXSY4968FXnvRZ@devuan>
 <CACb0b4mDZx9YrpFDCmoSHvjvZpHaHMsauwzcBR-JYib0467hUw@mail.gmail.com>
 <3210db06-d56a-45e5-9d54-618b16940cb2@redhat.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="5de7nfdsdzhjubxz"
Content-Disposition: inline
In-Reply-To: <3210db06-d56a-45e5-9d54-618b16940cb2@redhat.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5038-lists,linux-man=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 1751BF4D6E
X-Rspamd-Action: no action


--5de7nfdsdzhjubxz
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Carlos O'Donell <carlos@redhat.com>
Cc: Jonathan Wakely <jwakely@redhat.com>, linux-man@vger.kernel.org
Subject: Re: aligned_alloc man page and restrictions on alignment values
Message-ID: <4cqhak4mye43xtmfoc44nya3eyhvxeyq44y35eu4djnakjnlrq@2utokgcosyev>
References: <CACb0b4nujtK-twnRzjWmXPyJW+0uvbM_AFx3_1xFRj86yPiHFw@mail.gmail.com>
 <aYSXSY4968FXnvRZ@devuan>
 <CACb0b4mDZx9YrpFDCmoSHvjvZpHaHMsauwzcBR-JYib0467hUw@mail.gmail.com>
 <3210db06-d56a-45e5-9d54-618b16940cb2@redhat.com>
MIME-Version: 1.0
In-Reply-To: <3210db06-d56a-45e5-9d54-618b16940cb2@redhat.com>

Hi Carlos,

On Thu, Feb 05, 2026 at 10:23:54AM -0500, Carlos O'Donell wrote:
> On 2/5/26 8:55 AM, Jonathan Wakely wrote:
> > On Thu, 5 Feb 2026 at 13:26, Alejandro Colomar <alx@kernel.org> wrote:
> > >=20
> > > Hi Jonathan,
> > >=20
> > > On 2026-02-05T10:05:08+0000, Jonathan Wakely wrote:
> > > > Hi,
> > > >=20
> > > > I don't understand what "except for the added restriction" means in
> > > > aligned_alloc(3) here:
> > > >=20
> > > >        The  obsolete  function  memalign()  allocates  size bytes a=
nd returns a
> > > >        pointer to the allocated memory.  The memory address will be=
 a  multiple
> > > >        of alignment, which must be a power of two.
> > > >=20
> > > >        aligned_alloc() is the same as memalign(), except for the ad=
ded restric=E2=80=90
> > > >        tion that alignment must be a power of two.
> > >=20
> > > That was fixed (removed) in
> >=20
> > Oh great, thanks! I was only looking at the Fedora man-pages, I should
> > have checked git first.
> As the Fedora man-pages maintainer I'll chime in here briefly.
>=20
> Fedora man-pages is currently pinned to 6.13, which is the last
> release that contains the required copyright notices.
>=20
> Will the next release of man-pages include the changes discussed
> here to restore copyright notices?

Yup; I'm working on that, and expect to finish it this or next week,
which is why I plan to release this or next week.


Have a lovely day!
Alex


P.S.:  Carlos, I remember needing you to review a patch from a guy that
discussed with you.  Do you have that in your TODO list?  That was a few
months ago.


>=20
> https://lore.kernel.org/linux-man/b6prio6ck56jekesw5v5gmmzrkfqdtjqwaq5jzg=
ugkhy7tznc6@jhag73ju3qq3/
>=20
> --=20
> Cheers,
> Carlos.
>=20
>=20

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--5de7nfdsdzhjubxz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmmEvPkACgkQ64mZXMKQ
wqmm8w/7BIw4GgHUGGAeGSmz3NDettPCE04Qv5EjodH4sltWa3d/zrIF6wMbBHI8
eeEJ3zGs3BRED5hEq3Fq0uScGXWribrzqvmJeHBOxe/u0EL0SG3QmtlZqMpkdJjz
DYRWSWJ0Oi6kIg+WA+A64rTJtAZ08u6r1z3Ys19aewfcQWmPagADfREbsZNdlcOY
xhbsNJBMXX6TnmsNjAcubnVUNAUNC/T1SdiCuf9/PnFCVy0HnY7j9RxAwHA3e7CP
E0VtkUzqfH7Hd0BwcR2KT9UwJ0xQiK6FoZUJ5/9JGUMm8MG7jqOdBAxMqVyGk5Ku
qjm+cybvxR9jMuP+hDl8xNF2gzxrVF9ZsLmKwSpetHmYe8/5TcytWOFRPh0BpVyV
QEm4j4foUpSMw+Mf+q5wvST8opCkAw3EnLKgZYda/s8Z1KW9R59rImxRcQ+WWQC7
7YozCbpdC8fcsb61Hqaw5I/G1d1HkI/l56vmvCC54mjvujoo4cbtTdhqKpenjdIa
2Cpmzzg/5JCqVZo+1uML5MTVwgGw1mZHlYKdzfG24FxbxqfWlIH9Boi6YryjPHqg
924LoqIdvwyrcyrAJEvJ+eDMjoj3U2q25BHJ0BLSkzw34uEZzd4yZR2Ewy3xl09G
AoKHCbUoyBLchm4836luZI4zcLrnmGaO5Ooyg9dpyapQfQhZQqY=
=pmFc
-----END PGP SIGNATURE-----

--5de7nfdsdzhjubxz--

