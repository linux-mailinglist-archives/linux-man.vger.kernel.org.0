Return-Path: <linux-man+bounces-5095-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2KVQNrOoi2kqYAAAu9opvQ
	(envelope-from <linux-man+bounces-5095-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Tue, 10 Feb 2026 22:52:51 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 39F7011F8D8
	for <lists+linux-man@lfdr.de>; Tue, 10 Feb 2026 22:52:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9F5163029E68
	for <lists+linux-man@lfdr.de>; Tue, 10 Feb 2026 21:52:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 17852329E58;
	Tue, 10 Feb 2026 21:52:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z+yZYE2+"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDC1E1C5D5E
	for <linux-man@vger.kernel.org>; Tue, 10 Feb 2026 21:52:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770760368; cv=none; b=erir0KAa7RIzAuK5cAcQS1b8tZULM/W/xG3TCoCpJBwzEXAstLabSB5N3VMNbw/VCRgH+P712cliooDJj68/KLVRwi69rVbMvkr/ZLKpX2U4r32bWy59uKInkGFRAuk4oA+oFHmHyQtzcQJlrEuZiI/rA0HhS5eekmX2sQHOvKM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770760368; c=relaxed/simple;
	bh=AyGbMMssfjBdcwwFE6a1qXOqNq3wkygGdkuukhZCxxY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=TiFOf4GpPEARdl0wwNXuWVXtkgvhJf9VTtyrkyNeZw8NV1yBpWxPsj/4184Uu6BrjsrhgisfOQmyJ/sgs8nd0Y9CGv6C4wbqR8ck61u6syMtwo77x0e0gCvVO3w2hHanIhFtPutJzFo/EMHS4roJlaJOvR9/fYtHE8nnKphrXeA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z+yZYE2+; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9DB30C116C6;
	Tue, 10 Feb 2026 21:52:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770760367;
	bh=AyGbMMssfjBdcwwFE6a1qXOqNq3wkygGdkuukhZCxxY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Z+yZYE2+F/5nceSU68TaPgQ/sP62Q1lNyOsyy8z6pdzDTVZaqBAkLkxJWXtH3DR8t
	 Td+qCrc0fCHSlL8rc9xeecx9Eta7XAjDXCrepg2vhF5xbs0+TDubQqjoRA7KJOM4aE
	 MvRTGH1Kug7jf/owgE3ALJX/xMtwDPXXp5FSskaCpr+zJ3XIMp1SgFA/MrX4H0mXer
	 Ug+un5TaN0xVsEdrI4nE27ijywyNCsOPkuWFqTTBX0iFPkEHKzvbYLW8LbGiGoYoZt
	 MAZkWtCJYi3DWDdwGC7mbjiIcoIzCtaJ4EA3a6NplDX83fZXnMMecWajFaEyVRT3mZ
	 hGhYbEMX/jNQA==
Date: Tue, 10 Feb 2026 22:52:44 +0100
From: Alejandro Colomar <alx@kernel.org>
To: "Dmitry V. Levin" <ldv@strace.io>
Cc: Marco Cavenati <Marco.Cavenati@eurecom.fr>, linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man2/ptrace.2: Add PTRACE_SET_SYSCALL_INFO, update
 struct ptrace_syscall_info
Message-ID: <aYuneXoqJ_VPCFbw@devuan>
References: <20260121155550.281916-1-Marco.Cavenati@eurecom.fr>
 <20260121165639.GB6261@strace.io>
 <aYuRZuZIQCMw1gqP@devuan>
 <20260210205347.GA31604@strace.io>
 <aYuggAXkgFO22QI2@devuan>
 <20260210214145.GA1335@strace.io>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="dmxgrfaa275inyyg"
Content-Disposition: inline
In-Reply-To: <20260210214145.GA1335@strace.io>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5095-lists,linux-man=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,alejandro-colomar.es:url,strace.io:email]
X-Rspamd-Queue-Id: 39F7011F8D8
X-Rspamd-Action: no action


--dmxgrfaa275inyyg
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: "Dmitry V. Levin" <ldv@strace.io>
Cc: Marco Cavenati <Marco.Cavenati@eurecom.fr>, linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man2/ptrace.2: Add PTRACE_SET_SYSCALL_INFO, update
 struct ptrace_syscall_info
Message-ID: <aYuneXoqJ_VPCFbw@devuan>
References: <20260121155550.281916-1-Marco.Cavenati@eurecom.fr>
 <20260121165639.GB6261@strace.io>
 <aYuRZuZIQCMw1gqP@devuan>
 <20260210205347.GA31604@strace.io>
 <aYuggAXkgFO22QI2@devuan>
 <20260210214145.GA1335@strace.io>
MIME-Version: 1.0
In-Reply-To: <20260210214145.GA1335@strace.io>

On 2026-02-10T23:41:45+0200, Dmitry V. Levin wrote:
> On Tue, Feb 10, 2026 at 10:20:02PM +0100, Alejandro Colomar wrote:
> > Hi Dmitry,
> >=20
> > On 2026-02-10T22:53:47+0200, Dmitry V. Levin wrote:
> > > > > Looks good, thanks!
> > > >=20
> > > > Should I take that as a Reviewed-by?
> > >=20
> > > Feel free to add:
> > >=20
> > > Reviewed-by: Dmitry V. Levin <ldv@strace.io>
> >=20
> > Thanks!  I'll quote it, if you don't mind, as name-addreess pairs can't
> > contain an unquoted '.' --git(1) misbehaves on the '.', unless they
> > fixed it recently--.
> >=20
> > 	Reviewed-by: "Dmitry V. Levin" <ldv@strace.io>
> >=20
> > Is that okay?
>=20
> I've been using the unquoted format for a while, but the quoted one
> is fine as well.

I've tried to reproduce it now, and they seem to have fixed it.  When
the patch is read by git-send-email(1) and it gets the addresses from
the trailer of the patch, it previously would have transformed
	Dmitry V. Levin <ldv@strace.io>
into
	Dmitry V.  Levin <ldv@strace.io>
Some depdenency (a library) of git(1) interpreted the '.' as ending
a sentence.  I've tried now, and it transforms
	Dmitry V. Levin <ldv@strace.io>
into
	"Dmitry V. Levin" <ldv@strace.io>
thus doing the right thing.  However, I expect some software might still
misbehave.  I remember having reproduced the bug not so long ago (maybe
one year?).


Cheers,
Alex

>=20
> Thanks,
>=20
>=20
> --=20
> ldv
>=20

--=20
<https://www.alejandro-colomar.es>

--dmxgrfaa275inyyg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmmLqKwACgkQ64mZXMKQ
wqlztg//f2aFuU9h0mrsWm/M3oF3GMnoyPpilWXDS97+ge+jQEjV47QPVQG3HYKo
BHBoOMK0mrYN9zbkYWhAlsUFCujMpjDSSWOVIpLJuIIRXqwnfnLkNQ7Fy8naIMHy
sRQHHuy7ntGwN+qkkve0D+OmtvOZoRZWo8r6sMS05mtEMleC63zoe8xWqNt/CRvt
0WPuys8ysa4mI4/J4JeUXxM/AMeAynddOL3tSI9R4K31qTJJe8QALaz6Nh93tHzj
wnjS7WiZsaXMySs9QSx8C47oAYPCq1GwOiwqpxrZrVQ9I5wlnNNzRip7BUcDEK58
mRrrntaUB+mi32/j5vV0Va9I3mouNL6uDpmEkLOseh0z/O6r/Sxq/oAOe9NXfIpl
/+Q1kOjHMAUJSQwFTz5A6jgTgl8P9ibzGNbVTvPSsmtb5v3PtmJpJbxUqQSGxDEg
JoTgBsLpHYbSC2PBDN94yhTOk8HetvWYpXFsPRjM9RFhkZWE2XXeQuK4Of+X+gDu
iAsU70oaZEJUYREeXD0U2Vw2rgcIfunFNmVIO39w1lju7sgLMp50tmobV9OLaFJz
hST1VbShYT1xrv9+X7cO7D+0+dgTpEPrL0hP3JUHKjJr1vKKdH5GLFbNMU5HEnhc
ktGS09BDeQBfXMJQaxiLzUChzPihBI23kAzYC8cspfMwsKHdHJM=
=8IJB
-----END PGP SIGNATURE-----

--dmxgrfaa275inyyg--

