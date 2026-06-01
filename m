Return-Path: <linux-man+bounces-5642-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6O+nKtIYHmokhQkAu9opvQ
	(envelope-from <linux-man+bounces-5642-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Tue, 02 Jun 2026 01:42:10 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id AAC0E626651
	for <lists+linux-man@lfdr.de>; Tue, 02 Jun 2026 01:42:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 1C6C2300C7CB
	for <lists+linux-man@lfdr.de>; Mon,  1 Jun 2026 23:41:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 077DB365A1D;
	Mon,  1 Jun 2026 23:41:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QhdoyoH3"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCC09342C80
	for <linux-man@vger.kernel.org>; Mon,  1 Jun 2026 23:41:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780357315; cv=none; b=Fk3x/klT2ymy2gMuDdjDRuMPL76pjVqb4A0LvHI7z+eXg+0hAZRgiuQD3gltj6EaHux4kk8+bjAmTmRhgmj8UW3cCmEk9X9kIBJsKO1NxS1LgW+ocNCQ6g7eBjdmL1O/XXXvGme6lyelagg7Uo/LgUTb5/FT83427sUKLCCrFGw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780357315; c=relaxed/simple;
	bh=BDcvapnHeUUB+ghuJdncPepL5UtZXjQgyC8wD1dwLJQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=EdfjVuRnIyXA4vX1FJxpAuunpGmNeADxxLw2t31q1R1dg1MR36abx5KOizb/KIABaQywZJSYG1fu41YZ9s9d2KBMQMnLf8jHBWCUpZ98VJmeHjgmwsT/X3qd5nVkFmzubV5rADoipzjMqpY1lOFsYY/35tMz53zvLcsgtQAHC7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QhdoyoH3; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A78FC1F00893;
	Mon,  1 Jun 2026 23:41:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780357314;
	bh=yYaho2fb17roRNJm7Je2htGhE4T/MRbsXbRiy/FR468=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=QhdoyoH3RRdxvXvdMwJXNfBwch/1VO+tU3436/qxDSZeS3qlbqgqt3U8HRJynY7wY
	 Fm5JBzwClUSZ6fS8GUFi03hMPXxocHIX+H7aBdSKYi67KiSV0nc9X4VWV0Uevo7ty7
	 gi2VIrKYsl55P3Q6tF1ZbZmT62axIMYI+v/M8NsofBiMoQj/4lfP//SwyVNy8yyTjt
	 +fSuALHTMAfwROn3wsWl6O2J8CHrgZwxEIzEmfAJHUc7bzGgMbgLc29Dd1HDW93pDh
	 1FjP/Vaw/A95b0WeKx2G+O/Z66EE9WnqUhmLFFnFL00620S6jQI95ufOQrPMHJpGQ5
	 XhEGPdsq6N7tw==
Date: Tue, 2 Jun 2026 01:41:48 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Pratyush Yadav <pratyush@kernel.org>
Cc: David Hildenbrand <david@kernel.org>, 
	Daniel Verkamp <dverkamp@chromium.org>, Jeff Xu <jeffxu@google.com>, 
	Pasha Tatashin <pasha.tatashin@soleen.com>, Baolin Wang <baolin.wang@linux.alibaba.com>, 
	Hugh Dickins <hughd@google.com>, linux-man@vger.kernel.org, linux-mm@kvack.org
Subject: Re: [PATCH v2] man/man2const/F_{ADD,GET}_SEALS.2const: document
 F_SEAL_EXEC
Message-ID: <ah4YmXpL6rxHlo4r@devuan>
References: <20260529140557.1624507-1-pratyush@kernel.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="bj4mrrqlkuc6upa5"
Content-Disposition: inline
In-Reply-To: <20260529140557.1624507-1-pratyush@kernel.org>
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-5642-lists,linux-man=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,alejandro-colomar.es:url]
X-Rspamd-Queue-Id: AAC0E626651
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--bj4mrrqlkuc6upa5
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Pratyush Yadav <pratyush@kernel.org>
Cc: David Hildenbrand <david@kernel.org>, 
	Daniel Verkamp <dverkamp@chromium.org>, Jeff Xu <jeffxu@google.com>, 
	Pasha Tatashin <pasha.tatashin@soleen.com>, Baolin Wang <baolin.wang@linux.alibaba.com>, 
	Hugh Dickins <hughd@google.com>, linux-man@vger.kernel.org, linux-mm@kvack.org
Subject: Re: [PATCH v2] man/man2const/F_{ADD,GET}_SEALS.2const: document
 F_SEAL_EXEC
Message-ID: <ah4YmXpL6rxHlo4r@devuan>
References: <20260529140557.1624507-1-pratyush@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20260529140557.1624507-1-pratyush@kernel.org>

Hi Pratyush,

On 2026-05-29T16:05:55+0200, Pratyush Yadav wrote:
> From: "Pratyush Yadav (Google)" <pratyush@kernel.org>
>=20
> F_SEAL_EXEC was added in Linux v6.3. It blocks changing of the exec bits
> once added. Document it.
>=20
> Signed-off-by: Pratyush Yadav (Google) <pratyush@kernel.org>
> ---
>=20
> Notes:
>     I discovered this was missing when working on [0]. I had to look at t=
he
>     code to figure out how it was supposed to behave.
>    =20
>     Changes in v2:
>     - Re-write the documentation by hand.
>    =20
>     [0] https://lore.kernel.org/linux-mm/20260505133922.797635-1-pratyush=
@kernel.org/

Thanks!  I've applied the patch, with a few minor tweaks:

	diff --git i/man/man2const/F_GET_SEALS.2const w/man/man2const/F_GET_SEALS.=
2const
	index f41e1748acd0..686a92fddefe 100644
	--- i/man/man2const/F_GET_SEALS.2const
	+++ w/man/man2const/F_GET_SEALS.2const
	@@ -178,13 +178,15 @@ .SH DESCRIPTION
	 while sharing that buffer on a "read-only" basis with other processes.
	 .TP
	 .BR F_SEAL_EXEC " (since Linux 6.3)"
	-If this seal is set, the execute mode bits of the file cannot be modified.
	+If this seal is set,
	+the execute mode bits of the file cannot be modified.
	 Attempting to change the execute mode bits via
	 .BR fchmod (2)
	 or similar will fail with
	 .BR EPERM .
	-This results in a memfd that is either permanently executable or
	-permanently un-executable.
	+This results in a memfd that is
	+either permanently executable
	+or permanently not executable.
	 .IP
	 Adding this seal implicitly adds
	 .BR F_SEAL_GROW ,
	@@ -193,7 +195,8 @@ .SH DESCRIPTION
	 and
	 .BR F_SEAL_FUTURE_WRITE .
	 This ensures that the executable code is not writeable.
	-All the pre-requisites to add the implied seals must be met to successful=
ly add
	+All the pre-requisites to add the implied seals must be met
	+to successfully add
	 .BR F_SEAL_EXEC .
	 .SH RETURN VALUE
	 .TP


Have a lovely night!
Alex

>=20
>  man/man2const/F_GET_SEALS.2const | 19 +++++++++++++++++++
>  1 file changed, 19 insertions(+)
>=20
> diff --git a/man/man2const/F_GET_SEALS.2const b/man/man2const/F_GET_SEALS=
=2E2const
> index 175025c10..f41e1748a 100644
> --- a/man/man2const/F_GET_SEALS.2const
> +++ b/man/man2const/F_GET_SEALS.2const
> @@ -176,6 +176,25 @@ will fail with
>  Using this seal,
>  one process can create a memory buffer that it can continue to modify
>  while sharing that buffer on a "read-only" basis with other processes.
> +.TP
> +.BR F_SEAL_EXEC " (since Linux 6.3)"
> +If this seal is set, the execute mode bits of the file cannot be modifie=
d.
> +Attempting to change the execute mode bits via
> +.BR fchmod (2)
> +or similar will fail with
> +.BR EPERM .
> +This results in a memfd that is either permanently executable or
> +permanently un-executable.
> +.IP
> +Adding this seal implicitly adds
> +.BR F_SEAL_GROW ,
> +.BR F_SEAL_SHRINK ,
> +.BR F_SEAL_WRITE ,
> +and
> +.BR F_SEAL_FUTURE_WRITE .
> +This ensures that the executable code is not writeable.
> +All the pre-requisites to add the implied seals must be met to successfu=
lly add
> +.BR F_SEAL_EXEC .
>  .SH RETURN VALUE
>  .TP
>  .B F_GET_SEALS
>=20
> base-commit: 9db8ca91f920b9aba40ed68de6b8da0ca9dbefaa
> --=20
> 2.54.0.1013.g208068f2d8-goog
>=20
>=20

--=20
<https://www.alejandro-colomar.es>

--bj4mrrqlkuc6upa5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmoeGLwACgkQ64mZXMKQ
wqlumw//R7PxIUzCmHCHyJWiab8qt4v7Y9PBVejZoH7w7WSFvfQ4jOBXwNgQ6/4l
mY4p04QrV07jGNbiEENcyOIpjVPCp/ziub5Wg8IK86jmhq+P1KGpTIEtJTNa83oO
zegeo0R469vpW2ABOOZX0L0z+NnPmQD9TwIqTNEs9QV5V0BaJY/vwFpLm1bw3hRW
Hm1QTUUk0WCP0gZQ7oHvK4U3gTff2pEfxpTPGhxQ0vSBs+c1xx0C4GE+DWb2MD2E
G5fkdVfV1ggx6xZ1z0mRBQKN0u8d745nXIOwCoA3bMBx1BL4vpxnm0610tslc0jB
6MYRIw5U6UnzqLVCBa+I3v2gCFVFj7yO6HJWZ8n0aEMJq1E0WK2nOmFNedWqi7wS
EUo0F29Eg4Gl3TVAFt8P5WdMh/czz3D1vG32B6kClEQLQ8fFyzeYd3jZZ0v7eJz5
MR0nSjaDOflJme8cLe2GEr1D0SwROc95bVv5ezUqzFhTIdyeCfzR4BsPJNQXm7Zb
WLQoy4b8IsqAU+VP486ZyLDv8/vjcGDWi/anW3ZawIPZvLopKVVmVXSNwe6heMAI
CKuQVgxq06Gfy8qJhBIISqjYZwISPJaGD3+nxx1VQbOVUzSicK7hSSZkmAOwfH77
y7ZFpXGudIHOPWjvh09z5/y7JBCo1k+9h/3f/CngXuweHounNHk=
=7Zav
-----END PGP SIGNATURE-----

--bj4mrrqlkuc6upa5--

