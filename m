Return-Path: <linux-man+bounces-3781-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 31800B3D3BD
	for <lists+linux-man@lfdr.de>; Sun, 31 Aug 2025 15:46:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 69DD43B59BF
	for <lists+linux-man@lfdr.de>; Sun, 31 Aug 2025 13:46:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 695462512F5;
	Sun, 31 Aug 2025 13:46:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="AF+/sE3/"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-yb1-f170.google.com (mail-yb1-f170.google.com [209.85.219.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B93381096F
	for <linux-man@vger.kernel.org>; Sun, 31 Aug 2025 13:46:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756648011; cv=none; b=FwjU37tnVn2E3ft9RSbln9wMDyhJlAmfp5O/8dg5eFxLalvmeOd5rbHGPy4ISTLimsV+4EaLN8OuZvoAtVzf/tvIvEVT52YxtHIRSNGhtYftlI2D9d+wa2RQiB3e1CTkyYICxkVZ759ZVeS/fXtXE/n7DhAzkUtesdAUiDrm7mE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756648011; c=relaxed/simple;
	bh=VnxjJ1dgcyjqrApWggIBcnB7/ZRM/CtuQT36NavwXM8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ofSg/LBbD/sG1L2qieKIakjBhqBfe6XKG7NUaSCyffa/TFMeDTAewgrpt4ctXZ5V7WnpXYu2ugMBgVaxxDcuvdU51PV9X2+v/LvJLxLdPlHv2jhl/UEi05P1zVATWu3JrOzlXxEf1hMga3GjEPnNutJiRpt1aZLJShPE7DMRu9U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=AF+/sE3/; arc=none smtp.client-ip=209.85.219.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yb1-f170.google.com with SMTP id 3f1490d57ef6-e96fbf400c0so3873198276.0
        for <linux-man@vger.kernel.org>; Sun, 31 Aug 2025 06:46:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1756648009; x=1757252809; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=7PgzwE9Hmw8q7SLX9Kcl316D5947++7eVfbLGp4yqP0=;
        b=AF+/sE3/KxA0DeDBaJJtCgmBVg0dPU1HCFv5pGcNQm5Gw+suPlnkn84rnds/kNmVYA
         0I5lqmonkwisVZ2L4JAOiUWYcgaF74B3jKe6liPiGwSbJ8jIUwOuzd+be7waXDKJHhSS
         aJOpxe8YsxD909P/4RBfmoVVq9/UtPbY0MbD0iG5nvBGZuNJxYoFBX2x6Z0CWmyNi6ZJ
         lJX49AJX/s3FZjQQbBwGHl2zxRrsSrtBOwFk3LajoIQN+9lBgl7Bqg4m4ErUZOidZbyD
         Tt5DRu2PfdcQgqXr9dskfSHceSBftYAuxzK4BTGWfZS9KXEAfv0D/yagwHDOnFC5ZSHv
         GKXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756648009; x=1757252809;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7PgzwE9Hmw8q7SLX9Kcl316D5947++7eVfbLGp4yqP0=;
        b=QWQh4CqecFT65oWqaW+dxzZeGdHlRx1tu3kSEvvsni3foEccURTXcKm/io6MwZS9rx
         7VZ23ttMNq5wlxbHBb0DUAIFcA+31XDtQKhvpPVgBG+zUri67bsYeNK7UMMenON5N7z2
         Y4FbWEGLbggj2G4vj5Z5pK7E9qZYmbAZ2qzILrYUJmWwIbDP/A2A1I1iT75p3psiLGW5
         AwBfzKG4qejTHBbT34rlid+tOVH0g63qNF/e3r8wTko+p9HS7YghjuEYVwOsswVgOIYt
         /CX8LxK4tsXlsx0SGG5uI35gFvngKo6ODm2AnGpKLoMIqGxVvAB2sq4aJbyYTUrL0KQZ
         5eEA==
X-Gm-Message-State: AOJu0Yy0JKqOmw863sbykCmooFqA8KgqwWiz7q14S1+sqiBRumt3EcuH
	tJoGV96rU64UIA+9K+GH804YeRAFgLKfb8312cOp7SWfmtZpYyRtC+zB
X-Gm-Gg: ASbGncuwi3gWh1Z/E2j30WrGFdZX6nR/s64f0PB+gZS1nkXuN1eKU3y1xUXcjSYHlZv
	7eQa2+WY9DaCjQqNilfsOMZVMN5VHIt7GAAJ4heCbzVKAT5g7zTDufv5cZ/Jp3iy+5ozYcQV7++
	+/r7ePSY7RCzPbTvNLynL67vz7XNeJciPs8tdWr/Giiatm4TagYk7miqqCQk/VrObawkW+vtwMp
	SGesHHwDbhZOK4odjjakThNbNgktNBEQOLxhVBMS1N3v+brJlWKJ9+pQPHRjIYXVt+4g41DEnj7
	KezZx/QPn7L03FPbuRokiME8Enhgj2QC7tc99asQc4OasHbbf1nnNQv5xCKLpS7GOKGrFgrHTde
	UDn41S8Fi9fwIlUGMMi2cg2c=
X-Google-Smtp-Source: AGHT+IEh5fVFfIQ/IgOy339Sayvb7uDGvUZqT6A50DKTgBKeV4zxuDwa0YDhiJB+ZzLKuYo6nEXQjg==
X-Received: by 2002:a05:690c:7106:b0:721:56e9:3601 with SMTP id 00721157ae682-72273d737c2mr65697147b3.22.1756648008597;
        Sun, 31 Aug 2025 06:46:48 -0700 (PDT)
Received: from illithid ([2600:1702:7cd0:e980::41])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-7227d62d87bsm8200097b3.17.2025.08.31.06.46.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 31 Aug 2025 06:46:47 -0700 (PDT)
Date: Sun, 31 Aug 2025 08:46:46 -0500
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: linux-man@vger.kernel.org, Alejandro Colomar <alx@kernel.org>,
	Mario =?utf-8?Q?Bl=C3=A4ttermann?= <mario.blaettermann@gmail.com>
Subject: Re: Issue in man page motd.5
Message-ID: <20250831134646.y3egc6zx7sjqqadv@illithid>
References: <aKsmTShE9A4C9Zof@meinfjell.helgefjelltest.de>
 <nvvtzeq3cy3q6kyaynyldwahfhnkkddezrjwu44mvuabuo3ow4@os4w2g2436q5>
 <aLQ1Oak6FGqE_5xX@meinfjell.helgefjelltest.de>
 <77ninsoa7bdy4jmmyehfia7o3w6yu66snf25odfpzyebh7fc2s@fqe33plw6hsn>
 <CAHi0vA9DGAuO5iPaeQ3gfg1DHuSQoLEOGkPZ8SVbLNJrtonTyw@mail.gmail.com>
 <20250831133055.2tiryu57ai6dhnlw@illithid>
 <aLRQCCoQpnTi_NFh@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="nikgjepz4ixsr3fy"
Content-Disposition: inline
In-Reply-To: <aLRQCCoQpnTi_NFh@meinfjell.helgefjelltest.de>


--nikgjepz4ixsr3fy
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: Issue in man page motd.5
MIME-Version: 1.0

At 2025-08-31T13:37:12+0000, Helge Kreutzmann wrote:
> Hello Branden,
> Am Sun, Aug 31, 2025 at 08:30:55AM -0500 schrieb G. Branden Robinson:
> > At 2025-08-31T14:56:18+0200, Mario Bl=E4ttermann wrote:
> > (Alex is still waiting on me for a revised submission of heavy
> > sed(1)-lifting to automatically rewrite (primarily) the syscalls(2)
> > page, which is gigantic and contains many cross references inside a
> > tbl(1) region.[1])
>=20
> If you can share the sed script afterwards, this would be highly
> appreciated. Maybe I can adapt it for manpages-l10n as well, this=20
> page is translated (at least partially) into 7 of our languages.

Certainly.  In fact, I've found I _have_ to share it (strictly,
them--multiple scripts must be run in series) so that Alex can run them
himself.  Attempting to submit a diff of some stages of the
transformation of syscalls(2) blows past the attachment size limit of
the linux-man mail server, even when aggressively compressed.

https://lore.kernel.org/linux-man/20240114154225.5tyuiqrgwyltqmj3@illithid/

Regards,
Branden

--nikgjepz4ixsr3fy
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmi0Uj4ACgkQ0Z6cfXEm
bc7yug//XIE5sDzOe1jFC9q3rgysUjYoJakvXGDu8486uPJOqYeCgVerwZ26u9gu
tIA/fcpUz5UA2V/UO3weARZPK1SEBxp9qVYhbaPtNo1XDHuQwn3dM6Ite1YQ3F5s
r2H3lnRApYAnZWIviSTXvp3stGSo5lp+qlTBrdZl3NgWddnGBCYoT82wQ6for7nS
Zi7jyrrxE25yFFnUJI5ZQblDV9xbcxepbF8zyEbEg/HvWFGWnuOO8PUjIqMsusKR
JLqSqqQq4cjaDkjbFmHU+LvhXLpA6/e3nmbBwV+k8Lj3vZdeYWm1JTxa3LkKunUP
4yDsSh48Y3OHk8SdOAx2GI7nbgtMIY4h9GvQ7IAHQ5bAyKWGAtxSw/Pg8kosl4iH
ewRqD5q/GYRIjmwVRLUwR8/34Fr3vaqmrvfPAuuMRFM5Ybf1KImo2k/93gzU61uA
krYb4/7fwxuYoYyCsBVdg40ZtDFU5K0XIFd37P+OjpCE/Rw1i9AolqCPPoCXTgg0
PCdOieTRFZt59QeUbme/Mc9aC6g+JldUGPLsFbYCWExZWe4EGIiVJRc9yYvt1RxT
6VWJBw9KurFWaY//LzNXhcUkPcKadFCuwb+e8hqgI/8pTY10p55/IU024SAe4zV6
GreSzRgAj6axXR1ZbonkmtGV8meLTl3T9qeNqdf43s2VGa2sVgY=
=uWtq
-----END PGP SIGNATURE-----

--nikgjepz4ixsr3fy--

