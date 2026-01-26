Return-Path: <linux-man+bounces-4961-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CMOWEUDsd2nlmQEAu9opvQ
	(envelope-from <linux-man+bounces-4961-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Mon, 26 Jan 2026 23:35:44 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B0FBE8DF8E
	for <lists+linux-man@lfdr.de>; Mon, 26 Jan 2026 23:35:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 738F530157C2
	for <lists+linux-man@lfdr.de>; Mon, 26 Jan 2026 22:35:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C2AD73093DE;
	Mon, 26 Jan 2026 22:35:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cONzs6Sq"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 872D63093CB
	for <linux-man@vger.kernel.org>; Mon, 26 Jan 2026 22:35:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769466934; cv=none; b=uDf8fSkBuO2Gplnt5FD6XIMQziFUdOOKJ/jmdkUPpPi8R6WxSfwHbRkcrldBY23wWcYM5ft3h2RDar+71Qf3AKOxbMSdz8oKYXy+u128+6KVx2Ci8VICSJuWYCswzW7rBOM1RIl6nVO+KnzvE8V99Mj+QcRNp6wn4I00QAsoA0c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769466934; c=relaxed/simple;
	bh=imL/JuwhBpSrPC3q1hcUHmJPrw7LHhnWhjiOTteL+xQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=eXjML+SZZNAIbILW0FFCYmrKAaagVROdnSE8iAZ/c0BfJaHukRvZ+ESpnTt5ShiYpUEjnmlS3FAvOTtZAI5Pdff47GAoaMM8x5jylUpfVdrlnzHkyvi+tlK+HK4FDcS17E2xXND5RZ+wZS2HU0YPKji8nWLEtrYotsIILlnjZkk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cONzs6Sq; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8BDDFC116C6;
	Mon, 26 Jan 2026 22:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769466934;
	bh=imL/JuwhBpSrPC3q1hcUHmJPrw7LHhnWhjiOTteL+xQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=cONzs6SqTcOpIh4yKkVTaSqNdFqdsGC5O5N1Y5ahEs21G82Hq3FL46d8SoQvx2gRz
	 NefCi/QcekEJ58rhsLxSurvHPUgHZXZ9Gv/9N8xFpE5tuLOVShIWQEzEqP4qP9HzI4
	 /O0JSQhAxuwQwPqruoxxlwTtd1ejOdrW6eo8iEkwDNPpZenR8TM5PO4cDw1yxsQ7uU
	 k85lO65ubV0Kd51CmY5IKK7y89KKwk+ulUygcmR3WjGz9VdK4O1F6I42yzjTRz7hAc
	 xADgahLsvom6Rpn62/TnnfGmoNY3qpw07gNZDfA984JHv1Q8G6RjlbTjzR7yrFb67f
	 uIsGiYJO+vUaQ==
Date: Mon, 26 Jan 2026 23:35:31 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Ben Kallus <benjamin.p.kallus.gr@dartmouth.edu>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man2/mmap.2: Further document MAP_GROWSDOWN
Message-ID: <aXfrneY9fxE1-pbQ@devuan>
References: <20260126181304.3312554-1-benjamin.p.kallus.gr@dartmouth.edu>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="fhu7blz4cv5tlbfe"
Content-Disposition: inline
In-Reply-To: <20260126181304.3312554-1-benjamin.p.kallus.gr@dartmouth.edu>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	TAGGED_FROM(0.00)[bounces-4961-lists,linux-man=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,alejandro-colomar.es:url]
X-Rspamd-Queue-Id: B0FBE8DF8E
X-Rspamd-Action: no action


--fhu7blz4cv5tlbfe
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Ben Kallus <benjamin.p.kallus.gr@dartmouth.edu>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man2/mmap.2: Further document MAP_GROWSDOWN
Message-ID: <aXfrneY9fxE1-pbQ@devuan>
References: <20260126181304.3312554-1-benjamin.p.kallus.gr@dartmouth.edu>
MIME-Version: 1.0
In-Reply-To: <20260126181304.3312554-1-benjamin.p.kallus.gr@dartmouth.edu>

Hi Ben,

On 2026-01-26T13:13:04-0500, Ben Kallus wrote:
> Makes 2 corrections to the page:
> 1. mmap(MAP_GROWSDOWN) returns the base address of the returned
>    mapping; not one page lower than that.
> 2. When growing a MAP_GROWSDOWN mapping, the kernel doesn't require that
>    the faulting access be within the guard page. Instead, it just needs
>    to be beneath the mapping, and not within `stack_guard_gap` of the
>    next lower mapping. By default, `stack_guard_gap` is 256.

Would you mind separating this into two patches?  Or do you think this
is better as a single one?

> ---

Would you mind signing the patch?

$ tail CONTRIBUTING.d/patches/description=20
    Trailer
	Sign your patch with "Signed-off-by:".  Read about the
	"Developer's Certificate of Origin" at
	<https://www.kernel.org/doc/Documentation/process/submitting-patches.rst>.
	When appropriate, other tags documented in that file, such as
	"Reported-by:", "Reviewed-by:", "Acked-by:", and "Suggested-by:"
	can be added to the patch.  We use "Co-authored-by:" instead of
	"Co-developed-by:".  Example:

		Signed-off-by: Alejandro Colomar <alx@kernel.org>

>  man/man2/mmap.2 | 12 +++++-------
>  1 file changed, 5 insertions(+), 7 deletions(-)
>=20
> diff --git a/man/man2/mmap.2 b/man/man2/mmap.2
> index 093b0caf1..be2b21ccc 100644
> --- a/man/man2/mmap.2
> +++ b/man/man2/mmap.2
> @@ -274,13 +274,11 @@ should check the returned address against the reque=
sted address.
>  This flag is used for stacks.
>  It indicates to the kernel virtual memory system that the mapping
>  should extend downward in memory.
> -The return address is one page lower than the memory area that is
> -actually created in the process's virtual address space.
> -Touching an address in the "guard" page below the mapping will cause
> -the mapping to grow by a page.
> -This growth can be repeated until the mapping grows to within a
> -page of the high end of the next lower mapping,
> -at which point touching the "guard" page will result in a
> +Accessing an address in the pages below the mapping will cause the mappi=
ng
> +to grow to accommodate the access.

Please use semantic newlines.  See man-pages(7).

$ MANWIDTH=3D72 man man-pages | awk '/Use semantic newlines/,/^$/'
   Use semantic newlines
     In the source of a manual page, new sentences should be started on
     new lines, long sentences should be split  into  lines  at  clause
     breaks  (commas,  semicolons, colons, and so on), and long clauses
     should be split at phrase boundaries.  This convention,  sometimes
     known as "semantic newlines", makes it easier to see the effect of
     patches, which often operate at the level of individual sentences,
     clauses, or phrases.


Have a lovely day!
Alex

> +This growth can be repeated until the mapping grows to within
> +256 pages of the high end of the next lower mapping, at which point touc=
hing
> +below the mapping will result in a
>  .B SIGSEGV
>  signal.
>  .TP
> --=20
> 2.52.0
>=20

--=20
<https://www.alejandro-colomar.es>

--fhu7blz4cv5tlbfe
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAml37DMACgkQ64mZXMKQ
wqmaGw//aQAO6LDbmqBIeqw30q14eKWUfdFBG1y07Jx77AFaCTVCJXwvscjTPzJE
W2ZoMa0jLv/4fp1+3BOKj8X/gpX/YNYrmiKVX8rZkSM4Keb/hIWVFQmU0Ldy59y8
Yb5p7DY4FDNg/Qt6qIvEsbIbYUjKNue6JWPHweln9C2kbFoyaIaLJbWnuNEP+Geo
JofCltC4Y4G+lTRroekIvhpOaA8sQ5mXbYQi5WGrK5SjYMTtgsI4LiXtCQcOFZ47
uIB/67yoc7+88zZsuinH/2E+CJH/m3LB5J8+0AKYhgj+z7OZT8oPwDn3wS1qr7v6
MNBWwTfCGwc9/rAS9q1JJaLBKgmq4Nd/cMmQ1wVRTMw9nxYA3Oxp6v5KPC2DeoWD
jH/+egpmU8eOGwS8PXJQydibTzsvrf7Jls/7XGjJDrOtNQf5XdL1OHcZ0yAjb1YC
fY1DMq5MmOR10kO/qEOk7OjgI8nzlNSDUpebxsOpoAHy8UW/lc8fxRYfSkd1xn5p
5SMFdfiBiJZfjoK9ONWCsCkCqjC0bbwWtQ+HtizswTgnKtoJwnRL4uaj9gTjAB22
NEKDm68M7XfZn3tWjAkro6d0+tlp7E5D4nUolpSJ2cyjUomODrQp8Bg9/vpWM9hT
fgEeCKDxGpQFbhXoEa4cyza6v4r2/2LQeBjvBopGfEB32ORb8oY=
=Em6H
-----END PGP SIGNATURE-----

--fhu7blz4cv5tlbfe--

