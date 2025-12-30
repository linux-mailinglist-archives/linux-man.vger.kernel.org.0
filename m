Return-Path: <linux-man+bounces-4590-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 769ADCE8E47
	for <lists+linux-man@lfdr.de>; Tue, 30 Dec 2025 08:28:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id E48FA3001625
	for <lists+linux-man@lfdr.de>; Tue, 30 Dec 2025 07:28:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 613A42F8BD3;
	Tue, 30 Dec 2025 07:28:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="JTLFCjuV"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-yw1-f175.google.com (mail-yw1-f175.google.com [209.85.128.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7F9628CF77
	for <linux-man@vger.kernel.org>; Tue, 30 Dec 2025 07:28:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767079683; cv=none; b=s2Bk14Hlhf+ncpLHntIZRP1Xzxqv1srLKXyDtr/V6awqCnSdUpQ0taCjoD5erMetyjaPxyuBP0MooR58qYG1UXqpDPfFhyXT6AtQOS+7wWj8LCFasr6usAlZ4epWsKtCOWk4palGIGP6k0UJ1Vqp8ZJY2UyUVzKiK01I4vfgzf8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767079683; c=relaxed/simple;
	bh=pNiIEt0sWCQb++3i1iwPXcyPY+o9rwnVAr1bz8y26+E=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=dpIv1tpqJxItA+FFppNMq6s8Ruv5DjVg1ZXSooL9JyAaOG0nCB4ep7KYGf+1dUd/z7xcji1V0XqqN0OUcXd5ar3IalPLqQKc/yISlS9gd5v/6jsAyUg68xYSyUHVDFlTeT4EUjCRi89IAmD/X9w08mpa/TBj3vNTDvKPaVnTU9I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=JTLFCjuV; arc=none smtp.client-ip=209.85.128.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yw1-f175.google.com with SMTP id 00721157ae682-79028cb7f92so15680747b3.2
        for <linux-man@vger.kernel.org>; Mon, 29 Dec 2025 23:28:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767079681; x=1767684481; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=VMV68dpoCZgAEEyzI1jTsP/kmqs5tjyMAhmzLIY6od8=;
        b=JTLFCjuVKZwsQ5cklJDQ+MBL+yY7c6XhIjNo+UtsCJn+GkPbInTBOmGwS7bPLlfTMT
         VPelOjtTgLXCzox+JHfR8xLO/796+535sFhPDznwP0tytRA5qBRcCPtUTzCgi3nHAWwu
         ni25hFJNVWNRG0f+yYLBMc4sMuwBuln5yZfEP1Odqj7lcmNnAEMX7w2Ku96pRvjym71U
         yrOhrIUWnDtratgjRMRS7kQ8X5YGtFUOvms3vjGtkW3Fd+vW2bg2+rAYjvroVhg9ww61
         DW+PavFiGuoFhVkvMSAOqzqQfVcOyft3sSuSUIfQowmzBpI32xY/GTjB1omvDWqe9LDD
         5WMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767079681; x=1767684481;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VMV68dpoCZgAEEyzI1jTsP/kmqs5tjyMAhmzLIY6od8=;
        b=i3ssVZsvkcXMk6bf9HV2dcDsPsmYhu9KYBE174c82Y81g4+sH5vRuSl3XV5YXtP2rv
         hX04gEZWFkz/uo4NMESBXQCXpjmoOmh232gTCNo74ePfLf+V6gG5SjdqeDhQ8BDN4nRG
         Io6MSn26BGsCS7233iarmrA2JfCoYe1w/2I0dK4bL/G7h7gRgSL5cmBF8xNXRemvNXS6
         CB4K3jDgnpvoeujmL6isyXu81MsoJYLCRw/y4HpdBP6fI6/5DB9jzC4P99QU8ZLcI7gs
         htPH5cHTyok7ptnkm4T/5CQ7Q2Lt9UCw/VxgmssLYcxBhmS+mD/Bz67jvjc61Wfj4WZ4
         JTdg==
X-Forwarded-Encrypted: i=1; AJvYcCUBPxNEVuoos01lv7YtJP2IIHFnlg2sml10mhiNV4KSzDMv1VnkfWhywnAJVn03tm+vkk4pNL+Seaw=@vger.kernel.org
X-Gm-Message-State: AOJu0YxAn9s9Wkafg3Ky6PRX8yFEeLV4xVhF0BDdRU60Htz/+pQFX1LI
	cZRjabN1PqvdB5vUqn+6HWcf1nLJ83z5qVYTj2cPBBTrwgSFc1NkWnKW
X-Gm-Gg: AY/fxX5+0AMPQDBjbFy6A1kxM1mn3h8VSseMawZwVsYOEtn/JRNMNIvseZ6weDxbNmX
	gEWwi1vYgyql6LnKJ/dFzIOkJD95GS7inE624PB1d0AqLaYj+aa1ByMc5YfAttTMx870l42mqzY
	BrqAdLqlha0GAgRi0QUh9660b5jVwR17+8yy7kLXZKQPlmyYR1t+f8jd9bxWjstGiivReQQYsZS
	hQZCFRykYtILjUg9mOFPd49hJhXjKLceB9TiZ2ZBZoPZtGTk2IhlFnEl9f6C6uz1TzOBaO5+8IE
	b5W3plL/6OnowXaTs6BPmN1z08CAFNVik3E0eZ6Ifvmdcq6B4FXdILUIbJuJekkoH3WwtgnRGMn
	P9SLGI+MFnEOWVbrim8+11J4lPHIsRmdtBtnvWL/dMH8cIeXcFMJ5N8TutMwl9xyhdy8ocrZMAb
	TM
X-Google-Smtp-Source: AGHT+IGVNt7R9dPQrvzrBphZymFziwEp2L0RJXbSC+bvQpiNyF/TOSDIXS8yeGljxD+GSM21/RLJew==
X-Received: by 2002:a05:690c:6388:b0:78c:6921:9447 with SMTP id 00721157ae682-78fb40068demr254115617b3.40.1767079680664;
        Mon, 29 Dec 2025 23:28:00 -0800 (PST)
Received: from illithid ([2600:1702:7cd0:e980::48])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-79042d8dcedsm10900707b3.57.2025.12.29.23.27.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Dec 2025 23:27:59 -0800 (PST)
Date: Tue, 30 Dec 2025 01:27:56 -0600
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Seth McDonald <sethmcmail@pm.me>
Cc: Collin Funk <collin.funk1@gmail.com>,
	Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org
Subject: Re: [PATCH v1 2/4] sys/man2/sysctl.2: HISTORY: wfix
Message-ID: <20251230072756.c25thnpent43mjma@illithid>
References: <cover.1767072049.git.sethmcmail@pm.me>
 <1477de655f76e1e6e85c12cb03c068b120704511.1767072049.git.sethmcmail@pm.me>
 <87zf70xxog.fsf@gmail.com>
 <pRpaTIVuHE4orVJSipNl_EnJbZVLMfPRMvPMLl2gRCXKXvpLA9uK1nqZaeQE7NfWySjyQqs1yBMjZpW9bJOToFOl81F2Bz_-koNMWm90qbo=@pm.me>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="htpnki7i4hydzdhh"
Content-Disposition: inline
In-Reply-To: <pRpaTIVuHE4orVJSipNl_EnJbZVLMfPRMvPMLl2gRCXKXvpLA9uK1nqZaeQE7NfWySjyQqs1yBMjZpW9bJOToFOl81F2Bz_-koNMWm90qbo=@pm.me>


--htpnki7i4hydzdhh
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v1 2/4] sys/man2/sysctl.2: HISTORY: wfix
MIME-Version: 1.0

At 2025-12-30T07:18:50+0000, Seth McDonald wrote:
> > [1] https://www.tuhs.org/cgi-bin/utree.pl?file=3D2.11BSD/src/man/man3/s=
ysctl.3
>=20
> That would be good to include, though we may need to first modify
> standards(7) since 2.11BSD currently isn't listed there (the earliest
> mentioned is 3BSD).

The date on that file, 1993, strongly suggests a backport from the
then-getting-finalized 4.4BSD (which settled out over the course of 1994
and into 1995 depending on whether one considers the "Encumbered" or
"Lite" versions mandated by the settlement of the USL v. BSDI lawsuit).

4.3BSD, by contrast, dates to 1986.  See my previous mail.

So in that sense, a sysctl()-bearing 2.11BSD is more recent than 4.3BSD.

I suggest the Linux man-pages project not attempt to track the
provenance or timeline of 2.11BSD features.  It's too much work.

Regards,
Branden

--htpnki7i4hydzdhh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmlTfvwACgkQ0Z6cfXEm
bc4L0g/6A1jS9T/bTHBXASf68ewPYzZA20wzsJXbGstt2MAzDZT16/G+pO3ivQRb
Gxx/VGjzPgj/W7YhsT1EYVLfqnbaOkuZrSBLmXPDZcOEOGDnBzZBjI6ZuSlQjzs2
aOB0EW3Fq8WH7rbAyob64IogVzqWjh0G79yowdx0GNVxtoUHuWq697AdMkLdGhIR
dQv3e0gg/X/hR1dR/qL6v/sLOffbwq6gCs4QMZO3eoIgJ9bAbnq6pzErSPf3TzBi
hOXQ2JqAI7VL2ICvNNXoIt2eXW3CHMFp/wWOA34mO3Vhy9YhiuMrd/FyP4hjvqe6
jacH2w6EwiauY6yp/rRG0GIMWxGjQGAcJ3Zh8mxAp+Sv0Cuj7cEwcbmu01Qb7sAZ
Zath0c6nG2sA8dPqblQgxbp9NGrzUzTFXnRo3Li/CEeMqUANw5b+A+4yfwWqM5+m
warEvi/WaYn7h80rZ5p6HXk7PSbusr5+D6fA3nR2kbd5uyuAlxN9PV+Y4IYy/Wvf
W9XiPF3De2QnZXpBJllpjDydl8Qq2/eS2Buwi/6uf9ARDJukEgPC1/yIuDrOcRCX
Tzv0dmeBKr17TvaH2N2pkg3PAquQC4QHydSgv95KrN89ZSwmc0cbi4DeJe0iCUu7
r0M7bxOb5GI24azz+rlm+yViwYywMOBUsQIfEutLAvm5PiCvmDs=
=BLkP
-----END PGP SIGNATURE-----

--htpnki7i4hydzdhh--

