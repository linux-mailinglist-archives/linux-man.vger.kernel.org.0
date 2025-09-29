Return-Path: <linux-man+bounces-4003-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C976ABAAA53
	for <lists+linux-man@lfdr.de>; Mon, 29 Sep 2025 23:27:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7D73B3C5C42
	for <lists+linux-man@lfdr.de>; Mon, 29 Sep 2025 21:27:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0E9F7248F57;
	Mon, 29 Sep 2025 21:27:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=aarsen.me header.i=@aarsen.me header.b="H4jxyo5T"
X-Original-To: linux-man@vger.kernel.org
Received: from mout-p-202.mailbox.org (mout-p-202.mailbox.org [80.241.56.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE7A434BA4D
	for <linux-man@vger.kernel.org>; Mon, 29 Sep 2025 21:27:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=80.241.56.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759181229; cv=none; b=AcWWnKELcX7Wuw+8UaFr71h8FXTG8GVsCDmQAqmCoCNxXg3qJ9NoIa5paF8lGoMOMa6udHlXXDGQ7y0D0QIobP37DciW192Kra90PqVJTSKG/MwPrcp+J9bCxNB6Wc+ElfGbm74vAQyGrsm5sMwPUYM9qTgR0cih7VotG+i+Oiw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759181229; c=relaxed/simple;
	bh=EmNpyP/VET5So4uHHu8ZXRLic3mTXBMXgza7OVlO610=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=WXpgGGnukoAdVWqGNUHI2b2ed+aA5xl6KoxBKidgttHVQ5HxPMqbqScH+DcLaEA66K3zXpZgMeXXBprDL+H6lLckUNwvwSLG9Hrj0hXyHgrb+MOgBdBSrsAlor4YX/1DS60ZU77YrTispAUz3iM4UE9NM2KyrCgnMghzhLfvEHw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=aarsen.me; spf=pass smtp.mailfrom=aarsen.me; dkim=pass (2048-bit key) header.d=aarsen.me header.i=@aarsen.me header.b=H4jxyo5T; arc=none smtp.client-ip=80.241.56.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=aarsen.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=aarsen.me
Received: from smtp202.mailbox.org (smtp202.mailbox.org [IPv6:2001:67c:2050:b231:465::202])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-202.mailbox.org (Postfix) with ESMTPS id 4cbDm24pjYz9scX;
	Mon, 29 Sep 2025 23:26:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aarsen.me; s=MBO0001;
	t=1759181218;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=7r5vLQdkR6jMU2oEB0RodVQHsiFAr7/UDXqAJvZSP7M=;
	b=H4jxyo5T1cUSZG30picpksDVF85+N5U1edVNvKNKLG/rQowKq6rl5gcLw1vOx79NBxr2Lk
	G/9sU/IZsYCK0HFXhEU+csFf5HYho8tAjqSX7F6HSnozQq9dov0U2icwbIuUSyAHcOM60R
	ibcDki/MWcmvysyyiuzVBvVDCN0F4IUKhNOYYEBjNcSSxepIHD4dFqznYuecYFY8C0kHyg
	cYll866VtFKpfuJONa6tl8ExJpyGlevmVRyW5WDxjEwZZwFeThFrCe9RvzFqyXgH2aGdbG
	SHOuNnXj21++oji9uuXKy7oR/VXN5sq/1mP26WSOk2dY+zxy3N8lmT02soM6bw==
Authentication-Results: outgoing_mbo_mout;
	dkim=none;
	spf=pass (outgoing_mbo_mout: domain of arsen@aarsen.me designates 2001:67c:2050:b231:465::202 as permitted sender) smtp.mailfrom=arsen@aarsen.me
From: =?utf-8?Q?Arsen_Arsenovi=C4=87?= <arsen@aarsen.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: coreutils@gnu.org,  linux-man@vger.kernel.org
Subject: Re: Move GNU manual pages to the Linux man-pages project
In-Reply-To: <avcjkfibgplayxdpe4nisfpmtmlwdaubesdo6oj5qj2sxfqpsr@iypkg4k2fauv>
References: <wqfzoyixsh4l3wg7tkz3c4bjejy4wlski2s5g2pwoqiy2wg3ty@lkqy5semt757>
	<87jz1sm2t3.fsf@aarsen.me>
	<fziyxvozscytwasmhtrpjfqbmldxmggjkdm4pzo7cupxhby422@czrmkask4xsc>
	<87cy7e7hml.fsf@aarsen.me>
	<sdprfcwwtirbygpx4pqcavchf7hl3ichxjcxsr6kn6pl3f2ri6@7mshrxxpjhn3>
	<86frc5zj4i.fsf@aarsen.me>
	<avcjkfibgplayxdpe4nisfpmtmlwdaubesdo6oj5qj2sxfqpsr@iypkg4k2fauv>
Date: Mon, 29 Sep 2025 23:26:56 +0200
Message-ID: <861pnpymov.fsf@aarsen.me>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha512; protocol="application/pgp-signature"
X-Rspamd-Queue-Id: 4cbDm24pjYz9scX

--=-=-=
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi,

Alejandro Colomar <alx@kernel.org> writes:

> I'll start by importing the GNU coreutils manual pages in a branch of
> the Linux man-pages project, to be able to work on them from time to
> time, and when I have them in good shape, I'll propose their inclusion
> in GNU coreutils.git.  Does that sound good?

That's up to P=C3=A1draig, really, not me.

I just ask that you don't publish them in the interim to avoid the issue
with documentation being neglected.
=2D-=20
Arsen Arsenovi=C4=87

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iOYEARYKAI4WIQT+4rPRE/wAoxYtYGFSwpQwHqLEkwUCaNr5oF8UgAAAAAAuAChp
c3N1ZXItZnByQG5vdGF0aW9ucy5vcGVucGdwLmZpZnRoaG9yc2VtYW4ubmV0RkVF
MkIzRDExM0ZDMDBBMzE2MkQ2MDYxNTJDMjk0MzAxRUEyQzQ5MxAcYXJzZW5AYWFy
c2VuLm1lAAoJEFLClDAeosSTt9kA/RlGspdKQpWITnCzeYZ2sQQCiBKD5uYBLdS7
pGMjOgigAQDL8+JrrvgV8DX6BNWJtolAybjWetNamAnBlvhs9wVgAA==
=Kxtt
-----END PGP SIGNATURE-----
--=-=-=--

