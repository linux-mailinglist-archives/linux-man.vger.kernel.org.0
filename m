Return-Path: <linux-man+bounces-2393-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A09A5A313C0
	for <lists+linux-man@lfdr.de>; Tue, 11 Feb 2025 19:09:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4088C165585
	for <lists+linux-man@lfdr.de>; Tue, 11 Feb 2025 18:09:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4FF311E3780;
	Tue, 11 Feb 2025 18:08:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="EFNAH6aR"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ot1-f48.google.com (mail-ot1-f48.google.com [209.85.210.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A87221D54FE;
	Tue, 11 Feb 2025 18:08:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739297338; cv=none; b=fM0Yk8x57EdFq7gUaBC5yGWJd7MmVCGqVJOll5ep3UXvbWLHyK3nkoxi03F++18uZ7DhOCft9ZsV3oqHvskZ8ie4ugD0XlUl5lUb4lOS49WEo5xxYcdlGpgYsByl24+qePGSEztuR5Vaoe0B3OfrN0W/TAnYud6ImomlZ/5z13E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739297338; c=relaxed/simple;
	bh=7LbPQFmnRP/DJ1wgk46u8cCxc8mi1YebeSGdFfNMozg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fjnc3keO80OPgZt4B4uq9hcDN1nFdUZC1hbyCmMxipVn6jXzKqw1Js15EUOVmJML034LByUmYraQcgOGHk2AnXDFpB2FZPhfQF0i0xNfbn4c8ZUQu7jr6HNTuY6kgUMlZ3LEa6AKluhRtyhSd+RlT02sh1vscY6nW5mE1Ao5r98=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=EFNAH6aR; arc=none smtp.client-ip=209.85.210.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f48.google.com with SMTP id 46e09a7af769-726efb912c1so20148a34.0;
        Tue, 11 Feb 2025 10:08:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739297335; x=1739902135; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=AVbIuzTXhfcOEZLUh65kwjA3PWjz3tGoHrhEq5lJUFI=;
        b=EFNAH6aRxvurHdlwcLwoz0YarRtnxR3hPmdHRPmRp+ua+BG4Ykcx6kp/Oq2J/nfIqd
         AaeI8/2D2aFKBAAUkgeov7WhxIRfqRQUiMcWkH2ctLG/TnvQOi9umJuxSvZfnYcwYwa9
         p0I6znTGC0/Da38xNGVkgjHDVD0zx/FlXctIeBgh1KAkEb4XHKtXt3koKcdYbvuimavN
         Eh4yPP3XmZlX/uKJWrkLOL8PoPa0EUOXWSBHZOrTWWIRpfASrmXu/wGkHpAXb4lKVtJC
         pD/DcRQ37ghGFTztr2tj3yttgIS/6eeW+fgwiHeFpP0k4iJbXOr1yAY/VeaB2XJcUZmt
         IKUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739297335; x=1739902135;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AVbIuzTXhfcOEZLUh65kwjA3PWjz3tGoHrhEq5lJUFI=;
        b=jx9hKhoaC+xr04xaxqwAaiX2i58EGc0T786q8QPnMpl9tfIzXnYFrHmUZjHG7iHKCx
         pWmgXhJbi74eeDKuEupkbLWFyH4Vj4xYogHySL0UWTwuuqDiRwCryJ8f5YescRz+povW
         VXq97NmLQ5tPH27Sy8p8WRnu+9iJiuKTLvSj1G/Dj7dKq/PDyGoz8zU8z+7FXfRdyaYo
         e7al+XnvtnxvMG7KawtBPFu7QxpnPhI8tO0KIjsZRfNfihgQWeqAx8Vr0Ws9B5rxCuC+
         72n3PQNiQwHII5vdoJ62SP3F8vYe1e9J2CPONfD+u41V5ETPV3ql/V5jflV+5+ucmnx1
         2udQ==
X-Forwarded-Encrypted: i=1; AJvYcCUY6NEYSeE1hCfbW13xD3bAbyX+I4su/VRdKyhguHKjnbakztUMPCP+h3wmID3ZVwO0zY6aQrEzoXzQ@vger.kernel.org, AJvYcCXXY9wa3cFZP1Q9UwdgSwHxy/JH0DblenIw18Krh78GGcEELeY/lf47kb5UxdmABnjUvbzkudvkjMs=@vger.kernel.org, AJvYcCXljzj14IuIDWc417li9MfX3X8HjaHbBNDbgIvhyprnETcxIHubre8sgSPn+o9W8hmCHviZwW34MRRNvSLEsqqYFtCnUak3@vger.kernel.org
X-Gm-Message-State: AOJu0YwSdahSJCfRsb0z34YsjS3IUO3upzDrK7Td3gkoYtgdVlwQsFmf
	qW1iPm4z5Djo9hZ4EhS0E9C3pymQhPm4lzgtH2lzJyaTA9QJbZO7
X-Gm-Gg: ASbGnctr9q7T3tKBwh1iT41H0qhiw+UDA6gsFNpOHCkjOiM2dQoRXTSns0d7As30hOq
	8NFr2V6DzFohI43fxKb2Co2ZY7qzgHbpdU4cI11UC5uo+2Rh18KAF1yO27j4qg5kqgZr3eTZsbB
	wEQTF0tUCSdviaxZkWt2muU0tUX5QojaLyPUgCfh6JsvyzyPasPm6dpiV7XJAL8hPPkSD+N4WeV
	cf0yS6APXh6Btav8lUURvoZfmWdDmT21YPDU0vthShvASlgY3vTpBMOiBZR1WKVTLw16WDrIHr5
	HsFkqw==
X-Google-Smtp-Source: AGHT+IFUjTk6R03a9mnyYvGZvOy8bIQGnyfXM4BrCVA8zbKqzdR1z48dVc8kyMlZ4/VW2D29QC+urw==
X-Received: by 2002:a05:6830:14c6:b0:721:bdd2:ae0f with SMTP id 46e09a7af769-726e80bef74mr2963206a34.12.1739297335578;
        Tue, 11 Feb 2025 10:08:55 -0800 (PST)
Received: from illithid ([2600:1700:957d:1d70::49])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-5fc544e6236sm3474460eaf.16.2025.02.11.10.08.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Feb 2025 10:08:54 -0800 (PST)
Date: Tue, 11 Feb 2025 12:08:51 -0600
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: =?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?= <mic@digikod.net>,
	=?utf-8?Q?G=C3=BCnther?= Noack <gnoack@google.com>,
	linux-security-module@vger.kernel.org,
	Tahera Fahimi <fahimitahera@gmail.com>,
	Tanya Agarwal <tanyaagarwal25699@gmail.com>,
	Daniel Burgener <dburgener@linux.microsoft.com>, tools@kernel.org,
	linux-doc@vger.kernel.org, linux-man@vger.kernel.org
Subject: Re: [PATCH 1/2] landlock: Minor typo and grammar fixes in IPC
 scoping documentation
Message-ID: <20250211180851.rfx2oubh4qwd3h32@illithid>
References: <20250124154445.162841-1-gnoack@google.com>
 <20250211.Ree5bu6Eph2p@digikod.net>
 <22olfm76rcgjfs4vrr3adtbznsnz47kaehlr3ljn6e5jkc6waq@ue7azstxlwfv>
 <20250211.ieSoo7Phe5oh@digikod.net>
 <3unkhxarmiddobfjvojx4sdpgitjld26udcagka2ocgrb6c2jc@dcg4w5yk5mut>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="arxa5i2sgqsymw5c"
Content-Disposition: inline
In-Reply-To: <3unkhxarmiddobfjvojx4sdpgitjld26udcagka2ocgrb6c2jc@dcg4w5yk5mut>


--arxa5i2sgqsymw5c
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH 1/2] landlock: Minor typo and grammar fixes in IPC
 scoping documentation
MIME-Version: 1.0

At 2025-02-11T17:13:21+0100, Alejandro Colomar wrote:
> If there's consensus in the kernel of moving to man9 docs, I'd be
> happy to help with that.  I fear that some maintainers may fear man(7)
> pages.  If you need me to give any talks to explain how to write
> man(7) source code, and show that it's easier than it looks like, I
> could do that (G=FCnther already suggested me to do so :).  Maybe I
> should give a talk at Plumbers.

Consider me a resource for this purpose as well.  I gave a talk on this
very subject at DebConf 5 (not a typo, that was 2005),[1] and have some
familiarity with the man(7) macro package, its history in various
Unices, its groff implementation, and the underlying language of the
formatter, troff/nroff, which were developed at the Bell Labs Computing
Science Research Center contemporaneously with, and by the same group
as, the Unix kernel.

Regards,
Branden

[1] https://web.archive.org/web/20071015000604/http://people.debian.org/~br=
anden/talks/wtfm/

--arxa5i2sgqsymw5c
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmerkjMACgkQ0Z6cfXEm
bc7XExAAlmQUabmzuBGFX+AzV9x3Xnr57/GbPD+ItVXJBsl0VqNCdnI1vGp1KYcM
P75rez5SBSTpUa2Wv8J4zO2Lyyl6MF5+x74FEBhZqO8+3zpQidYj8rVauMNCKF1n
htogdd/moAfj/D1ImKC/n99dxFtO1Gu1hWoDJ5NLWGwGQ6blsNKlQrmDzgFskSRJ
GSi0mFNGGLXiZcsvffeThFiuW5QaH+/WcNHslXi0Rw8ceCB98YNGWGg9vDv9s7Qc
jH1EdYORH1Z6poXIGEmzHbi/QvwJLAz1O2cufSnpiObuFgUxH526YGXvWRzA/Btp
tqKa5r6y0ZDzMvZn0uDcUfTZDVzLBmXboH2KJw6l0pJNlhCn/KkHHwp1vo4Lb02h
3wsdVZmoG9FAvlup7O5ELr+SkD89F9WR7SuNsKn0eaYZs4fd0mJ62zX1eQCqpBph
Z26EhNNeDxrSh/fBvV+pcxI+8+qURga3eu0nEiYboZA28Boze6wD0mokxXQT8DZK
N+kPM8EjRMaC4nR5rJ5Tw9sYL2f74wmu3n1SeEz9RIR7MD563dplh8yB6FKiptZJ
Ihfx+ewo33+QCkp+BK1kQuyLqTf9IwsNqGLBT2lt5SoY+FpWxSfM9i+lHG41fzrw
l9DoYI+UOM0widemvgTUS3otsWaitt0Hnv7wCmNu4Q6ZIEUKxA4=
=UyNd
-----END PGP SIGNATURE-----

--arxa5i2sgqsymw5c--

