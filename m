Return-Path: <linux-man+bounces-4205-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B385C1757B
	for <lists+linux-man@lfdr.de>; Wed, 29 Oct 2025 00:24:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 182063B8228
	for <lists+linux-man@lfdr.de>; Tue, 28 Oct 2025 23:24:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0962F35502B;
	Tue, 28 Oct 2025 23:24:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OAkiXJ1m"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCBE121858D
	for <linux-man@vger.kernel.org>; Tue, 28 Oct 2025 23:24:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761693876; cv=none; b=P3Z8+z9o64X8oxh3lGvqPexLuNwOFjwxX0aF1tX00XPg54BqRsBKSZUEovs4hu+QIdKxMvHjOCuxDRU7Lf33xuG7ocBHzjRUSYWEcsk2AhtPGkksn8ZtnARG6bQNUggEy1FZoSSGl8uyvqUxxsL+ynX/+iwHVzac2ZoAf5+Fod4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761693876; c=relaxed/simple;
	bh=uK7a12tpHYxzYkfk/Z1Q02+Gv7c+JUdtZG+xKCpC5Cg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bpEiCmVp0x7lN8q8PPYEVWSoxPsV45Z57FDZ/EXkXym1nDwWrwmPILTXh7YTGKRinyETDUinT0jnDceNKasfB1x1hb/QLiWL7An0BoNIhhQSpN7xvFruSAdf8z9IHnbBnozVo03apK1ALsaFVYW30E/KkVtY7+SgLw/+VI3gsAo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OAkiXJ1m; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4CBE5C4CEE7;
	Tue, 28 Oct 2025 23:24:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761693876;
	bh=uK7a12tpHYxzYkfk/Z1Q02+Gv7c+JUdtZG+xKCpC5Cg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=OAkiXJ1mo0aRHl3KOAsD2RjrJ9OTzs5XIRB08MgP6/ka6NvpRgDsa/4hzJVagt7Pz
	 PC8o3aqt2NlJtDWNdrC4wnh4fc9K+jklhkPrNxjUM86zWwM93+PytsrPWgO099Jxgn
	 DSQqkdOKG4MciHhfVKdxnVanmX6uj3SP5fOuc3d/rz/jNBiTIRrJJjwVBOROB0hpnX
	 cZtfcVUL5m5ag+aTIWikbydFBQbxh4HYPNrtR8QSgkMnnTRrg/aCEsCoM+OmzYE3xH
	 0eUmJ0lXe1Su2docqIGmGi4WVy4csb8WwL7BAMFa4rS/r2zHQz3iJ1XwBpm33NsP2t
	 Enzi+3AxIK79g==
Date: Wed, 29 Oct 2025 00:24:32 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Wes Gibbs <wg21908@gmail.com>
Cc: linux-man@vger.kernel.org, mtk.manpages@gmail.com, 
	Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Subject: Re: [PATCH] Subject: copy_file_range.2: glibc no longer provides
 fallback after 2.30
Message-ID: <u7yt6in3t7ng6o5nq4kqrls5ldjkr7p6nnihpi7i2upg43cbcb@qm4qani52cdz>
References: <20251025221258.45073-1-wg21908@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="hevic63b6japd3ln"
Content-Disposition: inline
In-Reply-To: <20251025221258.45073-1-wg21908@gmail.com>


--hevic63b6japd3ln
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Wes Gibbs <wg21908@gmail.com>
Cc: linux-man@vger.kernel.org, mtk.manpages@gmail.com, 
	Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Subject: Re: [PATCH] Subject: copy_file_range.2: glibc no longer provides
 fallback after 2.30
Message-ID: <u7yt6in3t7ng6o5nq4kqrls5ldjkr7p6nnihpi7i2upg43cbcb@qm4qani52cdz>
References: <20251025221258.45073-1-wg21908@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20251025221258.45073-1-wg21908@gmail.com>

Hi Wes,

On Sat, Oct 25, 2025 at 06:12:58PM -0400, Wes Gibbs wrote:
> From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>

This patch doesn't have a Signed-off-by from Sebastian.  Shouldn't he
sign it?  Or am I missing something?

> Update the documentation to note that glibc no longer provides a
> user-space fallback for copy_file_range() when the system call is
> not available, as of glibc 2.30. Applications must now handle ENOSYS
> themselves.
>=20
> Fixes: https://bugzilla.kernel.org/show_bug.cgi?id=3D220489
> Signed-off-by: Wes Gibbs <wg21908@gmail.com>
> ---
>  man/man2/copy_file_range.2 | 12 +++++++++---
>  1 file changed, 9 insertions(+), 3 deletions(-)
>=20
> diff --git a/man/man2/copy_file_range.2 b/man/man2/copy_file_range.2
> index e9e9e9945..5146c0d11 100644
> --- a/man/man2/copy_file_range.2
> +++ b/man/man2/copy_file_range.2
> @@ -202,10 +202,16 @@ that was also backported to earlier stable kernels.
>  .SH STANDARDS
>  Linux, GNU.
>  .SH HISTORY
> -Linux 4.5,
> -but glibc 2.27 provides a user-space
> -emulation when it is not available.
> +Linux 4.5.
> +Before glibc 2.30, the glibc wrapper function provided a user-space

Could you please specify the initial version of glibc that wraps it?

> +fallback implementation when the kernel did not implement this
> +system call. Since glibc 2.30, that fallback has been removed; the

Please use semantic newlines.  See man-pages(7):

$ MANWIDTH=3D72 man man-pages | sed -n '/Use semantic newlines/,/^$/p'
   Use semantic newlines
     In the source of a manual page, new sentences should be started on
     new lines, long sentences should be split  into  lines  at  clause
     breaks  (commas,  semicolons, colons, and so on), and long clauses
     should be split at phrase boundaries.  This convention,  sometimes
     known as "semantic newlines", makes it easier to see the effect of
     patches, which often operate at the level of individual sentences,
     clauses, or phrases.

> +function now fails with ENOSYS if the kernel lacks support for
> +.BR copy_file_range ().

The contents of the paragraph look good to me.

> +.\" Fallback introduced in glibc 2.27:
>  .\" https://sourceware.org/git/?p=3Dglibc.git;a=3Dcommit;f=3Dposix/unist=
d.h;h=3Dbad7a0c81f501fbbcc79af9eaa4b8254441c4a1f
> +.\" Fallback removed in glibc 2.30:
> +.\" https://sourceware.org/git/?p=3Dglibc.git;a=3Dcommit;h=3D50c6ee3e74e=
08b8205f18dfb2830e9ec1bcf2ad4

This link gives me

	404 - Unknown commit object

Can you please check?


Have a lovely night!
Alex

>  .SH NOTES
>  If
>  .I fd_in
> --=20
> 2.48.1
>=20
>=20

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--hevic63b6japd3ln
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmkBULAACgkQ64mZXMKQ
wqnZVg//ZGEaFV6IrVflVoE6aJgNiTXzkrCr3kxoP0BRopmDtiKQ0meOekpXS+3D
yykynsVa++aGEpx56uvC/EvcxFf0QCYZs9wA+ZemDkADsOopD32rPPPKi25Z5uG3
fVwzzACovxig9tTpAqzoeWTzv/6b9fRpJEcku62IHRqGkIJ3TYZSUhLwSyy3sQFS
QZXMIx4DB2VzQcLdTARS4H4YAbmNVbSthnld/MiV0zlnRgfXp8OQYVMoQ5MzBd/U
bDO/KTu2X5lL4j7sJ5co/ayILD4meEjgbCdzpRyOz6THRaNn3h+/Ydc8vOrco9M5
TaELI1iXnwcTA3JU6mO48Hw1np0r2fW2nXWO1AdAsqQgUA34Ok3YbkpaNmtpe0Bn
G7T4jfEmQ3lM/SaCBDQ8QqHYiZDXaEhcGipswxs2Gs+K7aP1NwZLDsKJv7ef65zL
biGkJjqf9bEG8XCjyr+xFmqaCM9haJbgACTSF0sgXzvwKs1zuGSHH40ybRzkDt7T
K6m2Lpm2/OtH5pfAODJBYCQz+mlos3CqGMjyJzLfYqlFh0vzqn8PaZLbfNkSFQKQ
oNAoReiTlZ22HwRmA8JYHL6oj8g+z10uotxwHfeINmkIT+NM1QTEqvI4Kkj9GedO
hLtfKGolzWMLeWdS0QGMLe4iSvdcZeF+pgU166EdLnM4S9NBkF8=
=BU14
-----END PGP SIGNATURE-----

--hevic63b6japd3ln--

