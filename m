Return-Path: <linux-man+bounces-1756-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 88DBF967469
	for <lists+linux-man@lfdr.de>; Sun,  1 Sep 2024 05:26:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B5F791C203DD
	for <lists+linux-man@lfdr.de>; Sun,  1 Sep 2024 03:26:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BBBFE28DA0;
	Sun,  1 Sep 2024 03:26:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="W1cqsu0B"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-oo1-f44.google.com (mail-oo1-f44.google.com [209.85.161.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F0F6288C3
	for <linux-man@vger.kernel.org>; Sun,  1 Sep 2024 03:25:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725161160; cv=none; b=Aw3K76/iiF5hiBQ8LmbUPCtWX8G478xz3NpuQJ5JIyRez8In9t1lckTUSAMGw9o63gwwHDcsIEBXcufNCkxdJCJ9cMhGtimxcYqngpvV0Sl5qlVqCPXe3OFWRgE/e0CKr61ENE2tMJqwp4+bddBQi7Npjxiw8gLVRQM71QB0H1I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725161160; c=relaxed/simple;
	bh=7RLoooXucP+yhDtuCWAAnWIhagB3m00Wif7+MHYnZ9U=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=FJu77Z5bhfU6y3rLCqWo/M58ndgUbBZ7yQSRDfx2E9f73o0kvXpqDGkwdlSFreiazfQ8bmazNyeB1oC9X+Lmd/nWZF2A4DRLW4LZtDrotamE9WDlbcRVpwt/RpbgPsH3+peu3oSsh+EojeMqPJyyfATkOJlk+ax7DjAv0//GRJ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=W1cqsu0B; arc=none smtp.client-ip=209.85.161.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oo1-f44.google.com with SMTP id 006d021491bc7-5dca9cc71b2so1877093eaf.2
        for <linux-man@vger.kernel.org>; Sat, 31 Aug 2024 20:25:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1725161158; x=1725765958; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=SYr5AdUQZoLgei+EYuEmsaaPO+pTxb1ffxxYynMPBhk=;
        b=W1cqsu0B3r5I4LklAw9oaQu7+vkuzgyA4wFOHZP5wSwTc1qUEIQvJWdlHHHsOQ1T1/
         UZouywinEf7jIXShoxuVbiLMle32BxJbXcLk3DOtOefisD+goUpoZihunRZ7SF1veMop
         sxKAh4t6sWG7SE0FJZ/B7XQMjNP9zJeaen0kLwWC6zpEcrIJtYEtTmrcTxIJTFdldHrF
         74c4H7gBWtDoh5BXcwo32mX91G3jgY8kYh6jLv2CtZAukWsKKz6Rp48+TljGlQAjSYeH
         g+ZWJ9GD7qwZeA3zCl5ZlwlRYP7iyevbh8urqab+yZr7t57f/2f0QXhAMpqZ+lqRN1gf
         PPOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725161158; x=1725765958;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SYr5AdUQZoLgei+EYuEmsaaPO+pTxb1ffxxYynMPBhk=;
        b=lHysnmrXbeUIEGQ8kC44jgEK8/WaBmAq0h1qiePrRO7rEPxh7YBRU50ixXkK8o5NZS
         fVvEx4RtakE8PeLHAR5dto2bCp34+bgbeaavF5ROeqhcSoh+RLa8nnYkdvhytVVcq8qN
         ELz0qjON5uZx6zL88A/M93oQkiL5hrUYo9YYXWHvwSK9p6DB44Lp5lPV4I2238BiEkQK
         nf3BNsX/wH9ReQ8Y82JzpUt7GFXLywHltDyLbmFHYo3p1PjCuteUH9JHJoUk6yCUpEM5
         +MAny7XLlYOvX6xRnFEn3XyeXSzCSFGKkrZcKxTyZ74l9gFCuMo5svnvKhWrEOZAfP2b
         gQKA==
X-Gm-Message-State: AOJu0Yw3/4rAAk2wqRBkL1aptZVh830J2XH1IDko4IJoMBuJV5u1xgtb
	5GewQMPAfH8AxzVSuxA8yQUVtu89H0eB3TWSEJTUggYFuPlSf/mXAuBPnw==
X-Google-Smtp-Source: AGHT+IEan4KR+qA+doipb6AjwjIql1kIQcKv7pstFVaq0q81Bd/Mrq/En7x3Z7WymBA1MrnIGCz1Cw==
X-Received: by 2002:a05:6870:8201:b0:277:e868:334f with SMTP id 586e51a60fabf-277e8685a4bmr520576fac.34.1725161158078;
        Sat, 31 Aug 2024 20:25:58 -0700 (PDT)
Received: from illithid ([2600:1700:957d:1d70::49])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-277abd70b51sm1584247fac.56.2024.08.31.20.25.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 31 Aug 2024 20:25:57 -0700 (PDT)
Date: Sat, 31 Aug 2024 22:25:56 -0500
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH 07/10] lirc.4: srcfix
Message-ID: <20240901032556.mmrwd27rpr3zzb5s@illithid>
References: <5bec58a0a261f834a2fc29d471b0b984822905b7.1725161054.git.g.branden.robinson@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ce3j6dj6ub2j2zrg"
Content-Disposition: inline
In-Reply-To: <5bec58a0a261f834a2fc29d471b0b984822905b7.1725161054.git.g.branden.robinson@gmail.com>


--ce3j6dj6ub2j2zrg
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: [PATCH 07/10] lirc.4: srcfix
MIME-Version: 1.0

Prepare for `MR` macro migration.

Migrate man page cross references in "SEE ALSO" section from using font
selection escape sequences to font alternation macros to set man page
cross references.

This is an oddball case where `\-` appears in the man page title and,
for no obvious reason, a nonbreaking space escape sequence was applied
between list items.  (I can _guess_ why: someone was trying to defeat
line adjustment, and didn't notice that they were trying to do so right
before a paragraph break, so adjustment wouldn't have happened anyway.)

Signed-off-by: "G. Branden Robinson" <g.branden.robinson@gmail.com>
---
 man/man4/lirc.4 | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/man/man4/lirc.4 b/man/man4/lirc.4
index ae1caafcf..2eda9a0cd 100644
--- a/man/man4/lirc.4
+++ b/man/man4/lirc.4
@@ -417,7 +417,9 @@ .SH BUGS
 .UE .
 .\"
 .SH SEE ALSO
-\fBir\-ctl\fP(1), \fBlircd\fP(8),\ \fBbpf\fP(2)
+.BR ir\-ctl (1),
+.BR lircd (8),
+.BR bpf (2)
 .P
 .UR https://www.kernel.org/\:doc/\:html/\:latest/\:userspace\-api/\:media/=
\:rc/\:lirc\-dev.html
 .UE
--=20
2.30.2


--ce3j6dj6ub2j2zrg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmbT3sQACgkQ0Z6cfXEm
bc4HNhAAmgdqpQMeXHUjM1U2MKBapweViB946LbK6A8LkcvWEjtEDrVtVTsYXp3f
4ZOi7i1oRDbz5pgdhF22cs+XJ5KrLLZajlgzGGbLz+ZctT7vvyimCg4RvJWS1ocB
t/dARJt3V9P+xWigVgcChiHdXMA2uYzgVxks5prTS2UBHI+VIgovouHLhYgmT1k8
VskI2S7jTCSq0nRwU4huWDGL+/MAdhKDKhgsmHKD0Dic3dIuG77gTa2TMlprOgzr
jM0jLdV9rjCajN0aMUhZCApwxh7JpXtxQcIN5BqxMWpwOTg5bXp9fv+DH17FpIH9
a+zVZul+NxlvnFXeMikY0c8HCC1rfUVXu+j8WH3q5ivZt0GX1uvBPsJEsNGkkBKj
Pbm4Ci4Swm1Jgi7npZbL+zVy7l1oSAqnzTZTTX8GR3tkvw9wcoZNhlTkEfqzp22o
cWGz8NDNubBNH0zydoSt+UdHnON/U9fz6IabqlCZuHWavU0eT4qvXt8DPmLVULJJ
7IjqIRQ57sqFbQDtt9XH5I+p7Jxt42h0Wu7toYZxq+r47L6MLPUQLLe7DL9KsgMl
MWITQUsKWZkKdhoSKUb1NNxcGcx7/Kti1vQsfuKZcPLvsnPUDVrWzUh74Tl3BRlQ
B66kmiHGmUIWnRohl0d2CayxbwFK2VwtPTAxLNg3t1fDd9vjH58=
=ulkQ
-----END PGP SIGNATURE-----

--ce3j6dj6ub2j2zrg--

