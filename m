Return-Path: <linux-man+bounces-1974-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B31019D0342
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 12:25:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 724232836D2
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 11:25:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA8BA14900E;
	Sun, 17 Nov 2024 11:24:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fqUyiFxT"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69305145FE8
	for <linux-man@vger.kernel.org>; Sun, 17 Nov 2024 11:24:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731842699; cv=none; b=KvkT/D6AylDbrZhR9DkmaAwDpDbxKxaYPSAC04YMPnaLezC89MtqyIsbdcaZqdZQQUvjbU07JTMm7oVz+QKSiTMkAZnjtokG38uI6gWKcuBQfAb8nzj4TN/wPa5kFgl2XgYBIHEeNufMI4+zPiGcUL9BaXsD+qlRK0rFMlRzxR4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731842699; c=relaxed/simple;
	bh=MboQyU4MkSAWuZm9Q1l1LAd6UYtmEkRshIC/L41VLDU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=oIk12cb3CCRZJxoz/TqOq/8GpvW1X/izkrugYUOMBCidre86eJm9xYQwhwe9DRWonIWiu03JIz21idTM7aS9TKQTukYEqRearb8lRJ+IN8v8cJsc8fopFtpDj4nEITZnOsC67bZkONs8D0iWT8WwxKI3lgyHSiont9QBFPu5L70=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fqUyiFxT; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 331B3C4CECD;
	Sun, 17 Nov 2024 11:24:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731842699;
	bh=MboQyU4MkSAWuZm9Q1l1LAd6UYtmEkRshIC/L41VLDU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=fqUyiFxTHX2YRXsOuknj6QqgVltZIVi+VNF608tqEUfOKy1uC9pz6PlIst4lzYbGV
	 Nrsdpnrk6Jf//IEC0Ory1VsMzpxWDM+6Rvhx7hqJOxaW+5lF+Q3PvMzSCZgkcUs4pr
	 6wL2O6GBa3Dt65S8aoIydMZ3wulXoS7yJgqv9lAMSDZ23CJnK0wcL79gD09Qzdoot4
	 4tXaCjOhST94KcJ4TuPccIwir63o5u6grN/4ErXBhTb0bGWX3cNEkbtmUl2/0nTkjH
	 v1/h5a31KZwelQ5hvln9Zi2lc8/khHoG+uq9L0uNNW7e/t8hNXwWjZxCaRVoQyKlTE
	 Ms6BwRy7kykLw==
Date: Sun, 17 Nov 2024 12:24:56 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page proc_pid_fd.5
Message-ID: <rkahavnoaq6iryfg26isqi7rwncw57ihenyvlzwxzt4b5qmbma@vo6iu4jdvm4d>
References: <ZznJftO2LwVxlMV0@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="5uqv43eeuow52zsf"
Content-Disposition: inline
In-Reply-To: <ZznJftO2LwVxlMV0@meinfjell.helgefjelltest.de>


--5uqv43eeuow52zsf
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page proc_pid_fd.5
References: <ZznJftO2LwVxlMV0@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
In-Reply-To: <ZznJftO2LwVxlMV0@meinfjell.helgefjelltest.de>

[CC +=3D Branden]

Hi Helge,

On Sun, Nov 17, 2024 at 10:46:22AM GMT, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:    Inode -> I<inode>?
>=20
> "type:[inode]\n"

I've applied the following patch:

	commit f3ac823f7501910031855c1f6e640f0dc5e295bb (HEAD -> contrib)
	Author: Alejandro Colomar <alx@kernel.org>
	Date:   Sun Nov 17 12:23:48 2024 +0100

	    proc_pid_fd.5: ffix
	   =20
	    Reported-by: Helge Kreutzmann <debian@helgefjell.de>
	    Cc: "G. Branden Robinson" <branden@debian.org>
	    Signed-off-by: Alejandro Colomar <alx@kernel.org>

	diff --git a/man/man5/proc_pid_fd.5 b/man/man5/proc_pid_fd.5
	index 2e3341ad8..903063e82 100644
	--- a/man/man5/proc_pid_fd.5
	+++ b/man/man5/proc_pid_fd.5
	@@ -24,7 +24,7 @@ .SH DESCRIPTION
	 .IP
	 .in +4n
	 .EX
	-type:[inode]
	+.IB type :[ inode ]
	 .EE
	 .in
	 .IP
	@@ -50,7 +50,7 @@ .SH DESCRIPTION
	 .IP
	 .in +4n
	 .EX
	-.RI anon_inode: file-type
	+.BI anon_inode: file-type
	 .EE
	 .in
	 .IP

If anyone has comments, please let me know.

Have a lovely day!
Alex


--=20
<https://www.alejandro-colomar.es/>

--5uqv43eeuow52zsf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmc50ocACgkQnowa+77/
2zItkA/+N8pWTQBTHvtU51ryS9hp8eSYkCUS3415MVvevnHo8u6qz+6mz+T1hEb9
MPQZKYpTWLqwcY3c0ZuuI0IU7ecvShUrsCVrrvn85ZjdmSekOKIspWq/1oOnYDRn
7mrpN3iVeYMh9Ah7CO/a1o/46N/OqswDwQGcHUW4yBmu1JiK+XVvz67Axvqkcffk
XtRuzJtUp+Bvno3P0v1NSCjUciIcnlcjTDz8QIrMD67REarV15YxmtkXoST76dAc
0qxq9rUIZgG6vzKObtgQtsfCfexDpLGOsVSh39nErsopJr6LFBrx7Z+qAIV7Jrs8
FuW1l9jBmQs18ByyzE1gIF0YbIAx1fq+h52W6zJGPWBuQqTCw9/wsJ+dB1AgPBoq
sYUaFOIfgUCcFAS3zCuh3bI+9SkaHWhpoJguylzUjjf/Juny9vwep9fP+lEmbIy1
xMFENjR21wl9uto2XtAiUIzlHBOlFqiMUCTfAhnLWRqm7QjtVIZQSi9eBgA5K54C
OQnczzypm5zkrhbtpg13/NaBaBJXN0tPyBip5RRLeXvAv5geuzTORupaqppfN70d
O7Y/FkESGWgAAvS320NmF4H30yPkShlfXk639OHo1baxyxL/J4XEib+ZMh2TqVKc
KtMWI0iaqYmGEvuupkpAgh1B7/Qk79+tSMQSJkd0pRtZHZB8olc=
=F6gM
-----END PGP SIGNATURE-----

--5uqv43eeuow52zsf--

