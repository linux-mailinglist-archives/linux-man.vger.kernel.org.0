Return-Path: <linux-man+bounces-2630-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 423B7A6CD91
	for <lists+linux-man@lfdr.de>; Sun, 23 Mar 2025 01:30:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 79FB13BA916
	for <lists+linux-man@lfdr.de>; Sun, 23 Mar 2025 00:30:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 43AAC1DB154;
	Sun, 23 Mar 2025 00:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="na6z6ACA"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 020471D514A
	for <linux-man@vger.kernel.org>; Sun, 23 Mar 2025 00:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742689834; cv=none; b=pL0SGe4yD4vPrB7vP8ubOzM9W9zwMivLgKObZckcqqR1ybnW8i0TfYSSHQqM69STNa4aE/TISC+iNdOt7eyWCuBxz3RSsqMwg4taDQvkgd12bS6RsWe1P59vk8O92YpTd6vO8GwTZNOVHrWg3zNVg8p67YvCmWypF7BCRm9hiMI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742689834; c=relaxed/simple;
	bh=OofAqGVOmHxalerp7S9E3X3DZPaZT/PKxDJ+ZAHndNY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=s6wJw/TBVaH4noLzC5EoVRb9VOIMXJdI+XitugF6LEbnobDN+ZCqllXsXcs6IdIUgtRQxfKj6fJM6U9hXtq9VwA35FZavaHcgbbgSW6XRl0S7VdZiDrVNhC7XiXpHsn3CUZmO1QpychNTPK3pfnh7sdcFHpQ/Q94obbEZ5sAscg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=na6z6ACA; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AB46DC4CEEC;
	Sun, 23 Mar 2025 00:30:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742689833;
	bh=OofAqGVOmHxalerp7S9E3X3DZPaZT/PKxDJ+ZAHndNY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=na6z6ACAOJ3qBU/QFK0rGocIPZ9oqx7TwcMn27HnwrN8SipQYTDErP8pSNnEPB2+P
	 9r7O/aDgx86+k8Use4sYLKqY30QbYUFPt0UYoHKH1mTBrg3K4xWSpqJGH0gIT9Pgew
	 MM6qnyeoIrwaavoLa/zRV2vQgZR8UNVZHg1zTHzu8u+ROHMrG/cXZXng1uiM0gn6HK
	 cid52P+DnWNUVYRpZ3heGzZ8iuL0ku3ShuF74iPmnFYV0qD4TEa3glZ5srGg9MCWe/
	 ppMstVFdnri/peAI3k6irMiLrqCfVBPGMqoJhl4DOObpfTs5uftYHZy9kfX0d8gNXI
	 Nx75Rq37WqJ/Q==
Date: Sun, 23 Mar 2025 01:30:30 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org, Bruno Haible <bruno@clisp.org>
Cc: Alejandro Colomar <alx@kernel.org>
Subject: [PATCH v3 0/2] strto[u]l.3: BUGS and CAVEATS
Message-ID: <cover.1742689797.git.alx@kernel.org>
X-Mailer: git-send-email 2.47.2
References: <939641570ee1c36bfd2ef8788789b54357ed5971.1742589662.git.alx@kernel.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="mlqewsdnbqbi3pfi"
Content-Disposition: inline
In-Reply-To: <939641570ee1c36bfd2ef8788789b54357ed5971.1742589662.git.alx@kernel.org>


--mlqewsdnbqbi3pfi
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org, Bruno Haible <bruno@clisp.org>
Cc: Alejandro Colomar <alx@kernel.org>
Subject: [PATCH v3 0/2] strto[u]l.3: BUGS and CAVEATS
References: <939641570ee1c36bfd2ef8788789b54357ed5971.1742589662.git.alx@kernel.org>
MIME-Version: 1.0
In-Reply-To: <939641570ee1c36bfd2ef8788789b54357ed5971.1742589662.git.alx@kernel.org>

Hi!

Here's v3, suggesting alnum(3) instead of isxdigit(3), and also making
the wording slightly more precise, since not all negative numbers are
accepted; only some (I don't feel like explaining it with details; it's
easier to just say it's a bug to be workarounded).  Add a link.


Cheers,
Alex

Alejandro Colomar (2):
  man/man3/strto[u]l.3: BUGS: Signed numbers and white space are not
    rejected
  man/man3/strtol.3: CAVEATS: Clarify how to perform range checks

 man/man3/strtol.3  | 20 ++++++++++++++++++++
 man/man3/strtoul.3 | 19 ++++++++++++++-----
 2 files changed, 34 insertions(+), 5 deletions(-)

Range-diff against v2:
1:  8faa6a809 ! 1:  3c456a1a0 man/man3/strto[u]l.3: BUGS: Signed numbers an=
d white space are not rejected
    @@ Metadata
      ## Commit message ##
         man/man3/strto[u]l.3: BUGS: Signed numbers and white space are not=
 rejected
    =20
    +    Link: <https://stackoverflow.com/questions/60955490/strtoul-what-i=
s-the-correct-return-value-for-very-negative-strings>
         Reported-by: Bruno Haible <bruno@clisp.org>
         Signed-off-by: Alejandro Colomar <alx@kernel.org>
    =20
    @@ man/man3/strtoul.3: .SH CAVEATS
     -value.
     +.SH BUGS
     +.SS Signed numbers
    -+Negative values
    ++Some negative values
     +are considered valid input and
     +are silently converted to
     +.IR "\%unsigned\ long" .
     +.SS White space
     +These functions silently accept leading whitespace.
    -+.SS isxdigit(3)
    ++.SS isalnum(3)
     +One should call
    -+.BR isxdigit (3)
    ++.BR isalnum (3)
     +before
     +.BR strtoul ()
     +to reject white space and/or a sign.
2:  b5244e62c =3D 2:  020b468a3 man/man3/strtol.3: CAVEATS: Clarify how to =
perform range checks

base-commit: e921861a3d30cfc5f9263747a4e64a68e488288c
--=20
2.47.2


--mlqewsdnbqbi3pfi
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmffViYACgkQ64mZXMKQ
wqmdTRAAlQ2X+COK8/ZDYRfJSHqUwtAQKc9YalQop4daB5nLvIcrAncP6lSf27Gj
YYOhBYYNrPFkrb8S1lfVsFFtu0ATg8KF2PyEbCdFFmud4ffM9eCGp7+2fPt5LIpF
yRzJvmPRR48pfof6uA5t9CB3Tp+5baq1VLEc2zRRHeChjGXq4Y376U15MRnJYjkq
274k8j2jmK8aS3beSbGpaeyLNsQ6wVSVNqWq3LJSMXOkHFfGorb/4acrBYQzl7Lg
NZuACDCZbp4GCBvRUJMVlsL/aCj+evtchuve5FvG2TEztX94hzSD/P5DrvgQUN24
TqTT8Yf7ykxWt2aecrdlkDylO4hKNYOdzhDnAijl32mm8fSZf9pZBx1JyvchdWL6
dLHLXRlCgh51zXMASVMx9Ou4t/C6yN6BHn4SPncwU/oQcveRYv/qx0qdZPk9U8jW
BvikYxv5QcxScnWMnliin/RGpYQag+wfZFnAQV+KArYiwaoK2rbzJlgd55tCKN2S
zpLK6fMUmZnKaMtJZVQaaS7Ps6fmsRQ4NK+z0MJaWw23Cfe7GjMfRUjHPxzMSD1/
f/A2n6s6c0hclriBwMZx6OHu+SLm+C6oJtiiXbS2HDVNfvcWlAkF7aOGO7rsHO0/
lrzQ/YdrBLbW8XNKOiDSHCSIVCkXx+jJGJuCr4cex5H6K3GrdvQ=
=9p9a
-----END PGP SIGNATURE-----

--mlqewsdnbqbi3pfi--

