Return-Path: <linux-man+bounces-5596-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6NEjLBNYFGr+MgcAu9opvQ
	(envelope-from <linux-man+bounces-5596-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Mon, 25 May 2026 16:09:23 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 5995D5CB931
	for <lists+linux-man@lfdr.de>; Mon, 25 May 2026 16:09:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id DB8513052A6C
	for <lists+linux-man@lfdr.de>; Mon, 25 May 2026 14:04:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0C788386C10;
	Mon, 25 May 2026 14:03:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hET13lkM"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A6CA4381B17
	for <linux-man@vger.kernel.org>; Mon, 25 May 2026 14:03:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779717836; cv=none; b=JxL6zdcYwawh8GO8+cbx7jH1HXWZRIK24MLmD1BJoO7EOD19ZgG100yvZr183fCZlNOG+EfZAJClqamB15id191BrH5bulUoljhln89T+8F6Q21iWwUKbBjJ+/5sMxOSbB01ZWj1uYi7aiFca0YvMpK3nO3SxeEfNyOhQ6tBT2Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779717836; c=relaxed/simple;
	bh=F+zZHdC2xGxQJVabasZc5PadfEv28Y/ZpiAetA/fOLs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MabvUH3reNVRS33SdjijRwrDlwiJnLgm+L2crqUI5LLXH6hlZ6MCf6DGhK/rk0qhqSnt7qRPNSGUWZ93kBBJOK2VhTMWHuH1DPmD8YReuQpjqBW7jib27PD/Ud/Af3i1QnseQZRQcgAQXWP4x+SWjnNOVAzxbZJtn1LNdzmplRY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hET13lkM; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 749841F00A3A;
	Mon, 25 May 2026 14:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779717835;
	bh=Q7DoLpWkhQsDtfoy7st1735ka24lO3u8V+ZEkbAqMpY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=hET13lkMDbx21nMAENnGcTDwAe0QE+nPR8JaE6Y+MjYYGjbiSfQW7cNOxXJ38BySK
	 GJwg6h0fVgZCb5G9lHChl1dCHLOBnYAWFFGJu2Q/k8R7tklG03TMKEBrkC0hWQZt6M
	 uZNC29TIOkvJ886EBV/HzMvpHsiHobPTs1TdZS1qYp240KsCAnsx1ERJu/+G2pZMQ4
	 cICzEYQ/JjubzwrlidMpwoTMIUCGLfQJVH9skXiOCAfIt7ma8baU47O5CLKnmlXMbr
	 Nx8lE7WBsaxSIILHHDf+38h/6rGXYctZ/BzZPKdlwc21Pn0qr5wV2K2hJiqqEOo4w6
	 a+I6TMbys2Z1Q==
Date: Mon, 25 May 2026 16:03:51 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Kiryl Shutsemau <kirill@shutemov.name>
Cc: linux-man@vger.kernel.org, linux-mm@kvack.org, 
	akpm@linux-foundation.org, rppt@kernel.org, peterx@redhat.com, david@kernel.org, 
	kernel-team@meta.com, Kiryl Shutsemau <kas@kernel.org>
Subject: Re: [PATCH man-pages v1 4/6] UFFDIO_API.2const: Document
 UFFD_FEATURE_RWP{,_ASYNC} and 1 << _UFFDIO_SET_MODE
Message-ID: <ahRWqj2BbBGL6wYD@devuan>
References: <20260525122816.1956804-1-kirill@shutemov.name>
 <20260525122816.1956804-5-kirill@shutemov.name>
 <ahRV5sZCUXVQ_fBs@devuan>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="wizqev5eqduf57wx"
Content-Disposition: inline
In-Reply-To: <ahRV5sZCUXVQ_fBs@devuan>
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-5596-lists,linux-man=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[alejandro-colomar.es:url,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo]
X-Rspamd-Queue-Id: 5995D5CB931
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--wizqev5eqduf57wx
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Kiryl Shutsemau <kirill@shutemov.name>
Cc: linux-man@vger.kernel.org, linux-mm@kvack.org, 
	akpm@linux-foundation.org, rppt@kernel.org, peterx@redhat.com, david@kernel.org, 
	kernel-team@meta.com, Kiryl Shutsemau <kas@kernel.org>
Subject: Re: [PATCH man-pages v1 4/6] UFFDIO_API.2const: Document
 UFFD_FEATURE_RWP{,_ASYNC} and 1 << _UFFDIO_SET_MODE
Message-ID: <ahRWqj2BbBGL6wYD@devuan>
References: <20260525122816.1956804-1-kirill@shutemov.name>
 <20260525122816.1956804-5-kirill@shutemov.name>
 <ahRV5sZCUXVQ_fBs@devuan>
MIME-Version: 1.0
In-Reply-To: <ahRV5sZCUXVQ_fBs@devuan>

On 2026-05-25T16:00:37+0200, Alejandro Colomar wrote:
> Hi Kiryl,
>=20
> On 2026-05-25T13:28:14+0100, Kiryl Shutsemau wrote:
> > Add the two RWP feature bits introduced in Linux 7.2:
> >=20
> >   UFFD_FEATURE_RWP        gates UFFDIO_REGISTER_MODE_RWP and the
> >                           UFFDIO_RWPROTECT(2const) ioctl.
> >   UFFD_FEATURE_RWP_ASYNC  in-kernel resolution of RWP faults without
> >                           delivering a notification; requires
> >                           UFFD_FEATURE_RWP to be set in the same
> >                           UFFDIO_API call.
> >=20
> > Also document 1 << _UFFDIO_SET_MODE in argp->ioctls, the
> > file-descriptor-level bit that advertises UFFDIO_SET_MODE(2const) for
> > toggling UFFD_FEATURE_RWP_ASYNC at runtime; it is independent of any
> > registered range.
>=20
> Would you mind separating these into 3 patches?  Thanks!

Actually, I retire this.  I think it makes sense as a single patch.

Cheers,
Alex

>=20
> >=20
> > The existing page intro already describes UFFDIO_API returning EINVAL
> > on unsupported feature bits and the temporary-uffd probe pattern, so
> > the new TP entries do not re-state that.
> >=20
> > Signed-off-by: Kiryl Shutsemau <kas@kernel.org>
>=20
>=20
> Have a lovely day!
> Alex
>=20
> > ---
> >  man/man2const/UFFDIO_API.2const | 29 +++++++++++++++++++++++++++++
> >  1 file changed, 29 insertions(+)
> >=20
> > diff --git a/man/man2const/UFFDIO_API.2const b/man/man2const/UFFDIO_API=
=2E2const
> > index e894114bb8e2..d2819f009f97 100644
> > --- a/man/man2const/UFFDIO_API.2const
> > +++ b/man/man2const/UFFDIO_API.2const
> > @@ -213,6 +213,28 @@ If this feature bit is set,
> >  the kernel supports resolving faults with the
> >  .B UFFDIO_MOVE
> >  ioctl.
> > +.TP
> > +.BR UFFD_FEATURE_RWP " (since Linux 7.2)"
> > +If this feature bit is set,
> > +the kernel supports read-write protection tracking, and the
> > +.B UFFDIO_REGISTER_MODE_RWP
> > +registration mode and the
> > +.B UFFDIO_RWPROTECT
> > +ioctl become available.
> > +.TP
> > +.BR UFFD_FEATURE_RWP_ASYNC " (since Linux 7.2)"
> > +If this feature bit is set,
> > +the kernel will resolve read-write protect faults in place without
> > +delivering a notification, automatically restoring page permissions and
> > +letting the faulted thread continue.
> > +This bit requires
> > +.B UFFD_FEATURE_RWP
> > +to be set in the same
> > +.B UFFDIO_API
> > +call.
> > +The async mode can also be toggled at runtime using the
> > +.BR UFFDIO_SET_MODE (2const)
> > +ioctl.
> >  .P
> >  The returned
> >  .I argp->ioctls
> > @@ -234,6 +256,13 @@ operation is supported.
> >  The
> >  .B UFFDIO_UNREGISTER
> >  operation is supported.
> > +.TP
> > +.BR "1 << _UFFDIO_SET_MODE" " (since Linux 7.2)"
> > +The
> > +.B UFFDIO_SET_MODE
> > +operation is supported.
> > +This is a file-descriptor-level ioctl and is reported once per
> > +userfaultfd, independent of any registered range.
> >  .SH RETURN VALUE
> >  On success,
> >  0 is returned.
> > --=20
> > 2.54.0
> >=20
> >=20
>=20
> --=20
> <https://www.alejandro-colomar.es>



--=20
<https://www.alejandro-colomar.es>

--wizqev5eqduf57wx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmoUVscACgkQ64mZXMKQ
wqlYNA/9EUn3OCwR6YmzZ3ps6W0TW+xsLs4Rbb9gk+093unhjHyuVe3b/DxYvrm+
s2TT+4Y3UckxORNPcUE01i72H2+CA3L34Q6QRhRlPJZxb3cvqjcUwpfsngYaoJqE
hhx/X6XgaOq6wYJWX3ZUUkm35fdC2VKO4gfNIMQvr9DbiI1iqqspAsPYM+5A5WKn
bfJ9vH3uNMqmLbvGpRbE37PhNsTMDmC/dra+NzusvNRJgy8voO24pe4YiAJ6wZ8i
GlQGKt/Larw3W7VHBU7jiCrj8iZI/XMbrtEIGgixH0EWJ1+Z5mEvobcQ8C8/0HNq
dZgug3g5aq24FoUViItQJGj8x0VuIacmKyDkZdZ5z6sxK+ecMU4somzER9dczoHV
BazpNaa59qUUEnIuY5yZNQLz2rJCYjhKuYnrk5U4dIaO4G67YG3LFSBGKzecx3rH
XSxHutsSWuQKvDcd2L+Cpj8msvUkeAbmJDaK5RA6R3DRj4UnTga0XidFQN/WU9gW
OaP4RzDb78mnJMa8y2XWAaQlEkDqEwjbN1DEprDnCtYqG5L7vk1o0fPfXu7kANfE
BbsG/WeeZLSAasGI9y1fSaXMEgTW77fZg12cOKwPUgmtLW6MQFcHp5MDv7YMAqFi
lDCrmuNPiU9cOI0P7gPd8P6sQhvA36nIfc5i7a1oVn8hMrX9r50=
=oeED
-----END PGP SIGNATURE-----

--wizqev5eqduf57wx--

