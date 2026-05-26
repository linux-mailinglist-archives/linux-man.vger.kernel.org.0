Return-Path: <linux-man+bounces-5599-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WKWxMoSVFWp9WgcAu9opvQ
	(envelope-from <linux-man+bounces-5599-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Tue, 26 May 2026 14:43:48 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 33BE95D5B83
	for <lists+linux-man@lfdr.de>; Tue, 26 May 2026 14:43:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C3D8E30067B5
	for <lists+linux-man@lfdr.de>; Tue, 26 May 2026 12:41:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 308683F9F55;
	Tue, 26 May 2026 12:41:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="azEVCv7U"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E29B93E0C58
	for <linux-man@vger.kernel.org>; Tue, 26 May 2026 12:41:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779799305; cv=none; b=UxvWIxYgSSFRs9yp0WSbER70bAC2N4dZNwwTD/9WPRt1uZCxNASfdUtxUTTydJUKAaBJDzl6LFwrA6dDrvx+dePK9i/BtmYgZ6RGW3YilcP/NqdoybXzkewXyMsMBhA/UI4G137/GU3zPWCOD5PzGpBqwOLJkOx4G7WkRewjBcE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779799305; c=relaxed/simple;
	bh=HyhCZbdbdZLDxfox8y8LqmZVbmZoE5VYz5ndqKfV6wQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qrjCIJatm91gWFLmRSjOBDPBSed0hRH9+crQ/PpjrbQEqsyV7xjr2X21eXmWsj8KceGj6VY0vszti65kYcwYb3ZepAp93USxeO1RqLnHd+LltEMHBt2CGcCTRQB7gNRyoDEqi45/1C7PTNRAckjQ/AxeYrMRuFAFGYyK0qLARlI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=azEVCv7U; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 042771F000E9;
	Tue, 26 May 2026 12:41:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779799303;
	bh=fb5xnIrUsWGgNSra9khNkL+cNHSV0yPgaXG4TLgiIag=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=azEVCv7UdADVAF9Sk6rCLyYdqvbyFkFoGfUVG7R+Y/2IXU1bUVjiN09hAeTuUimU7
	 9Pjj1M7o7UwFYIu0aFEGJise2IXnalbpjYUQcjLWioueego5gIlTeEM6G9bvdOB0u3
	 cN6xw+VCZ+NRvLBNTl9ss8ZGq1VjDPoIIxuIvAsfZk721homUmCwV3l1xRrc+JpvE+
	 p5LYKa/rGy6E3LWjkBHst4CQL/8ZlpRW1hFyL7lUpdI74eIkCb71yVQcw6FdxOkV1p
	 mp1YebGDlefoVBNxgCRL6lmiQUM82PzG9QvLOCh8dBYvNEer406/8bF4D+ZUTO/9u8
	 pf54vJ9txL5tA==
Date: Tue, 26 May 2026 14:41:39 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Mike Rapoport <rppt@kernel.org>
Cc: Kiryl Shutsemau <kirill@shutemov.name>, linux-man@vger.kernel.org, 
	linux-mm@kvack.org, akpm@linux-foundation.org, peterx@redhat.com, david@kernel.org, 
	kernel-team@meta.com
Subject: Re: [PATCH man-pages v1 0/6] userfaultfd: document read-write
 protect mode
Message-ID: <ahWU62U2Hp2dPX3R@devuan>
References: <20260525122816.1956804-1-kirill@shutemov.name>
 <ahVoUsqYBY642VLS@kernel.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="s7aflm6cuvuyxj2q"
Content-Disposition: inline
In-Reply-To: <ahVoUsqYBY642VLS@kernel.org>
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-5599-lists,linux-man=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Queue-Id: 33BE95D5B83
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--s7aflm6cuvuyxj2q
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Mike Rapoport <rppt@kernel.org>
Cc: Kiryl Shutsemau <kirill@shutemov.name>, linux-man@vger.kernel.org, 
	linux-mm@kvack.org, akpm@linux-foundation.org, peterx@redhat.com, david@kernel.org, 
	kernel-team@meta.com
Subject: Re: [PATCH man-pages v1 0/6] userfaultfd: document read-write
 protect mode
Message-ID: <ahWU62U2Hp2dPX3R@devuan>
References: <20260525122816.1956804-1-kirill@shutemov.name>
 <ahVoUsqYBY642VLS@kernel.org>
MIME-Version: 1.0
In-Reply-To: <ahVoUsqYBY642VLS@kernel.org>

Hi Mike,

On 2026-05-26T12:30:58+0300, Mike Rapoport wrote:
> On Mon, May 25, 2026 at 01:28:10PM +0100, Kiryl Shutsemau wrote:
> > This series documents userfaultfd read-write protection tracking
> > (UFFDIO_REGISTER_MODE_RWP), a working-set tracking mechanism for VM
> > guest memory landing in Linux 7.2.
> >=20
> > The matching kernel series ("userfaultfd: working set tracking for VM
> > guest memory") was sent against the mm tree:
> > https://lore.kernel.org/all/20260525113737.1942478-1-kas@kernel.org/
>=20
> The content of the docs looks fine to me.
>=20
> Leaving groff and organization to Alex :)
>=20
> Acked-by: Mike Rapoport (Microsoft) <rppt@kernel.org>

Thanks!  :)


Have a lovely day!
Alex

>=20
> > =3D=3D New UAPI documented =3D=3D
> >=20
> >   UFFDIO_REGISTER_MODE_RWP    registration-mode bit (UFFDIO_REGISTER.2c=
onst)
> >   UFFD_FEATURE_RWP            capability bit          (UFFDIO_API.2cons=
t)
> >   UFFD_FEATURE_RWP_ASYNC      async resolution        (UFFDIO_API.2cons=
t)
> >   UFFDIO_RWPROTECT            install/remove RWP      (new page)
> >   UFFDIO_SET_MODE             runtime mode toggle     (new page)
> >   UFFD_PAGEFAULT_FLAG_RWP     new pagefault.flags bit (userfaultfd.2)
> >   PAGE_IS_ACCESSED            PAGEMAP_SCAN bit        (kernel docs only)
> >=20
> > =3D=3D Series layout =3D=3D
> >=20
> >   1. userfaultfd.2: overview, registration mode entry, new pagefault
> >      flag, VERSIONS line, and an "Userfaultfd read-write protect mode"
> >      section.
> >   2-3. New UFFDIO_RWPROTECT.2const and UFFDIO_SET_MODE.2const pages.
> >   4. UFFDIO_API.2const: UFFD_FEATURE_RWP, UFFD_FEATURE_RWP_ASYNC,
> >      and 1 << _UFFDIO_SET_MODE.
> >   5. UFFDIO_REGISTER.2const: UFFDIO_REGISTER_MODE_RWP and
> >      1 << _UFFDIO_RWPROTECT.
> >   6. ioctl_userfaultfd.2: reference the two new ioctls.
> >=20
> > Order: new pages first so the cross-references in patches 4-6 link
> > to pages that already exist.
> >=20
> > Kiryl Shutsemau (5):
> >   UFFDIO_RWPROTECT.2const: New page
> >   UFFDIO_SET_MODE.2const: New page
> >   UFFDIO_API.2const: Document UFFD_FEATURE_RWP{,_ASYNC} and 1 <<
> >     _UFFDIO_SET_MODE
> >   UFFDIO_REGISTER.2const: Document UFFDIO_REGISTER_MODE_RWP and 1 <<
> >     _UFFDIO_RWPROTECT
> >   ioctl_userfaultfd.2: Reference UFFDIO_RWPROTECT and UFFDIO_SET_MODE
> >=20
> > Kiryl Shutsemau (Meta) (1):
> >   userfaultfd.2: Add read-write protect mode
> >=20
> >  man/man2/ioctl_userfaultfd.2          |   4 +
> >  man/man2/userfaultfd.2                | 152 +++++++++++++++++++++++++-
> >  man/man2const/UFFDIO_API.2const       |  29 +++++
> >  man/man2const/UFFDIO_REGISTER.2const  |  21 ++++
> >  man/man2const/UFFDIO_RWPROTECT.2const | 117 ++++++++++++++++++++
> >  man/man2const/UFFDIO_SET_MODE.2const  |  95 ++++++++++++++++
> >  6 files changed, 414 insertions(+), 4 deletions(-)
> >  create mode 100644 man/man2const/UFFDIO_RWPROTECT.2const
> >  create mode 100644 man/man2const/UFFDIO_SET_MODE.2const
> >=20
> >=20
> > base-commit: 9a4bfd0e50745c2649b6291db40b58e37c9c1c6b
> > --=20
> > 2.54.0
> >=20
>=20
> --=20
> Sincerely yours,
> Mike.

--=20
<https://www.alejandro-colomar.es>

--s7aflm6cuvuyxj2q
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmoVlP0ACgkQ64mZXMKQ
wqlIxQ/+Ik3Y8zXspj0OoDAJ16EC/DlAdAhwjb470LalLeCvqKodBi3kdXlVm8o1
bCnpCmjpwPIvPDzNWt7QgqAV98jtwicpGHkQwfcFxjk4ma4MBxq8U8flCb6OfUyL
y5FPgo2dYOwMiN2GlM3ftNzOPHun4v3KfOapinVytkd/fg5ExhqFzT/RVJC9Z7h5
8R/VY6ifDpn4mUs+tp67aXO4zyihU4kkA9RiII90k2j+K52ddl6HcllH8vkOQGF8
t3pPG+P45s/7BZPLprasQokts103CrMbLpHI+VcI7ALuGR/IsTg4KOBKY6EVovkw
mUeGQBBZm8msRWp3IRjNyPxjEKzAacIJYbFRnVi8MVFF3bMPNhFLzObY/whL4Ap9
iJfi+tfxb9VDiGygHr4rWmfbfJ04CIrv5TTbNscZISDGbZpb6xE7koayRzyaA0L7
LF4T7G2ciF/G7GVznpjbH+lTgWSuqCxnyhTeAjiTZSIJ/SMG+oAqQqFDUtji3cIR
aQ4Pk/UmN8SFk9yDUZH2xjds2o6HrKpPVNWvLQzQ8c6mBVMQgM81U+gVovzBVAA/
cP4psa8TZZdi99M4ChZ+aZ7abmmoziHY1Bz+wFeM0HPYxvnPQdADCCLfk0lVTkx5
G2pZadXCYt647qrM+g3/uCyIOV+gk+EfwhTzN+Vf9kNi8m4ONxs=
=DebK
-----END PGP SIGNATURE-----

--s7aflm6cuvuyxj2q--

