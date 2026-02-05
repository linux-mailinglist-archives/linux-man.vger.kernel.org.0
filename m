Return-Path: <linux-man+bounces-5033-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UBgSISSZhGmh3gMAu9opvQ
	(envelope-from <linux-man+bounces-5033-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Thu, 05 Feb 2026 14:20:36 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C22C6F329E
	for <lists+linux-man@lfdr.de>; Thu, 05 Feb 2026 14:20:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4C70E300D45C
	for <lists+linux-man@lfdr.de>; Thu,  5 Feb 2026 13:17:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B76E83D522A;
	Thu,  5 Feb 2026 13:17:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cSgXJAYc"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BD213D3D14
	for <linux-man@vger.kernel.org>; Thu,  5 Feb 2026 13:17:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770297458; cv=none; b=LLPh8lNXGQHL1ZH4d8jMn9Wam/n2p2iaQEZwymDxWtLvdZU0Wb2Im3veb1UIB9FxYM0df3fq5u0F8KxO9COLOr7ZgV3VEonms5jXNc/RnKFewILOFL6a40IlEVKpDRayxxL5VoppwhUXZClG9sV3dRIaWTIlBdqfUYEPJRa/rb4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770297458; c=relaxed/simple;
	bh=KpnJ6U282J32pKCVi5Xep5ARBawZ1xBznUi/FXOun4M=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=VkD8DuBr8x6beH1nqHpvyougz67GD6G9/0yCDnMQl+FmdlkCeMWLZ6CbD6bt3xMYorCiCp+yayp9CIQ09ikoJhF9lwgJvmNh5WBZHYD/FAMIxvDM+pLRm7vQcPdRIO7+1BUUnKX9XAE/ReOVx8mfnD/HRyp/xNpRtZYWtsivXnI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cSgXJAYc; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 61502C4CEF7;
	Thu,  5 Feb 2026 13:17:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770297458;
	bh=KpnJ6U282J32pKCVi5Xep5ARBawZ1xBznUi/FXOun4M=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=cSgXJAYc11wLWaBQa/liL3t+GNt4UulrsPL1wlgRuyKvO43CdshkBK/CO0H3Q0Jtv
	 cq2oBBQnzijPcqB42XazHpV/KjJa3uTjNV9B0W8OWIHtuE2HLnJYpTf81leBFnVFrW
	 eNfx1/2sLhYw32TKebYZadanmgl6NIi71XaIwdsW5OL8UztDkxaRmUfFFMiBLpTu9j
	 MqROcaFHf1SMqJkc28GMaNd6m6L/4EOITpkIHA2aKFRR3zzBb0Rp6SBp9NWKWwgRIo
	 ZDY//WsxmS962olNj5/p44rnK6XySRJQGRZQlb86n+G5a4wjb/a8ZRG28w9GGn4hxw
	 29wgmslWPo16g==
Date: Thu, 5 Feb 2026 14:17:34 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Jonathan Wakely <jwakely@redhat.com>
Cc: linux-man@vger.kernel.org
Subject: Re: aligned_alloc man page and restrictions on alignment values
Message-ID: <aYSXSY4968FXnvRZ@devuan>
References: <CACb0b4nujtK-twnRzjWmXPyJW+0uvbM_AFx3_1xFRj86yPiHFw@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="wcngliaow4t35zvl"
Content-Disposition: inline
In-Reply-To: <CACb0b4nujtK-twnRzjWmXPyJW+0uvbM_AFx3_1xFRj86yPiHFw@mail.gmail.com>
X-Rspamd-Server: lfdr
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
	TAGGED_FROM(0.00)[bounces-5033-lists,linux-man=lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,openbsd.org:email,pm.me:email]
X-Rspamd-Queue-Id: C22C6F329E
X-Rspamd-Action: no action


--wcngliaow4t35zvl
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Jonathan Wakely <jwakely@redhat.com>
Cc: linux-man@vger.kernel.org
Subject: Re: aligned_alloc man page and restrictions on alignment values
Message-ID: <aYSXSY4968FXnvRZ@devuan>
References: <CACb0b4nujtK-twnRzjWmXPyJW+0uvbM_AFx3_1xFRj86yPiHFw@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CACb0b4nujtK-twnRzjWmXPyJW+0uvbM_AFx3_1xFRj86yPiHFw@mail.gmail.com>

Hi Jonathan,

On 2026-02-05T10:05:08+0000, Jonathan Wakely wrote:
> Hi,
>=20
> I don't understand what "except for the added restriction" means in
> aligned_alloc(3) here:
>=20
>       The  obsolete  function  memalign()  allocates  size bytes and retu=
rns a
>       pointer to the allocated memory.  The memory address will be a  mul=
tiple
>       of alignment, which must be a power of two.
>=20
>       aligned_alloc() is the same as memalign(), except for the added res=
tric=E2=80=90
>       tion that alignment must be a power of two.

That was fixed (removed) in

	commit 90f18b452a7113f42ea4e222f819257e692ce57b
	Author: Alejandro Colomar <alx@kernel.org>
	Date:   Wed Dec 10 12:14:01 2025 +0100

	    man/man3/posix_memalign.3: Remove confusing exception
	   =20
	    This is already a requirement of memalign(3).  aligned_alloc(3)
	    is indeed exactly equivalent to memalign(3), since ISO C17.
	   =20
	    Fixes: 7fd1e0f2be21 (2023-05-20; "posix_memalign.3: Update aligned_all=
oc(3) to match C17")
	    Reported-by: Seth McDonald <sethmcmail@pm.me>
	    Signed-off-by: Alejandro Colomar <alx@kernel.org>

	diff --git a/man/man3/posix_memalign.3 b/man/man3/posix_memalign.3
	index 397f65aec..9c4a0bff9 100644
	--- a/man/man3/posix_memalign.3
	+++ b/man/man3/posix_memalign.3
	@@ -83,10 +83,7 @@ .SH DESCRIPTION
	 .P
	 .BR aligned_alloc ()
	 is the same as
	-.BR memalign (),
	-except for the added restriction that
	-.I alignment
	-must be a power of two.
	+.BR memalign ().
	 .P
	 The obsolete function
	 .BR valloc ()


I'm planning to do a release this or next week, FWIW.

You may also be interested in checking the diff from

	commit 5695edc7e9a3b301403aa7773b316c8d51af650c
	Author: Alejandro Colomar <alx@kernel.org>
	Date:   Mon Dec 15 15:14:48 2025 +0100

	    man/man3/aligned_alloc.3: HISTORY: Document bogus specification from C=
11
	   =20
	    Document the turbulent past of aligned_alloc(), and how libraries have
	    actually implemented it.
	   =20
	    Fixes: 7fd1e0f2be21 (2023-05-20; "posix_memalign.3: Update aligned_all=
oc(3) to match C17")
	    Reported-by: Eugene Syromyatnikov <evgsyr@gmail.com>
	    Reviewed-by: "G. Branden Robinson" <branden@debian.org>
	    Cc: Seth McDonald <sethmcmail@pm.me>
	    Cc: DJ Delorie <dj@redhat.com>
	    Cc: John Scott <jscott@posteo.net>
	    Cc: Paul Floyd <pjfloyd@wanadoo.fr>
	    Cc: <misc@openbsd.org>
	    Cc: Ingo Schwarze <schwarze@openbsd.org>
	    Signed-off-by: Alejandro Colomar <alx@kernel.org>

(I haven't pasted the diff because it's large.)

And you may also want to check other patches applied near those two.


Have a lovely day!
Alex

>=20
>=20
> Does it mean that aligned_alloc doesn't have the power of two
> restriction? If so, describing that as an "added" restriction is very
> confusing. What was it added to? It's not added to aligned_alloc if
> it's absent from aligned_alloc.
>=20
> Does it mean "aligned_alloc() is the same as memalign(), except that
> alignment need not be a power of two"? That would match my
> understanding of the C standard, which says that aligned_alloc() has
> well-defined behaviour for invalid alignments, failing by returning a
> null pointer.
>=20
> But posix_memalign also has well-defined behaviour for invalid
> alignments. POSIX requires that posix_memalign handles invalid
> alignments by returning NULL and setting errno to EINVAL. Which is
> what aligned_alloc does too. So what exactly is the restriction here?
> Does memalign have UB for invalid alignments, or does it fail and set
> EINVAL? How is that different from aligned_alloc and posix_memalign?
>=20
> Wording the linux man page in terms of "must be" and wording POSIX in
> terms of "shall be" makes it sound like you get UB if you fail to meet
> it, but as far as I can tell you just get a null pointer. The APIs are
> well-defined for invalid alignment arguments.
>=20
>=20

--=20
<https://www.alejandro-colomar.es>

--wcngliaow4t35zvl
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmmEmG4ACgkQ64mZXMKQ
wqn5sw//f1K97ODA+LXFYRp94h8kwHF4I8mBvt1DQgzYZ8cp6GUQQkdg1nmem9GG
NSANIVq4FIFkDOjCNHSjrkAXaH3h0sSoGU0TZc6rhaZ5sIGUiNV1dUcYHorXMYTH
ggUNQIeGSUkNWSpIaaaEXU6oyJbd2WF2yNnxcJbuUDugBnRlOcdW5KtL4fS6gv/+
AmzeqcnDGq+aoQJC3R98U7uk+KLcwpb6zU2IuY8bi2wu5JwLbSqXqZlw90DWTVQb
ajzJflEWGHnLU9YhWalPjvCa/6S+2Nj0OYp/SxunCnO+0ZU+XMNaaiQJJybUkm/C
lA64mq0VrED2o+Ae8SRV/4XekEmh4b0ZswCZerjar58ttjoSE+Fz0tdtilibtvA8
2gOT2m9h0XUd+4Za1TaiYm6aSt4qdc2gtFK0SRPCaSuoIGpyvtdI6utM2+MmYjB+
w0095JbRk5Fgx3+mFjciqCrmb8iGQZbLv3ufQfpkCnqSOES+fb9bYAzTubs9slQV
R6f21qgRQmPlDasmwPr5wuHJEj4xy7eox6VoU5nxsoQs3cnTX/yN3Yvk61yRAN2M
fthS7Wk7J36a5HiFpEmDt70CaxsPyzR/vR+IM0fvTX0t72PDa80PThr91gSptnjJ
xto0bEPweLve5AKhy9RY1Q1CZ7GhjN8NKeE8x9AOpxyaC+Tltn4=
=30F4
-----END PGP SIGNATURE-----

--wcngliaow4t35zvl--

