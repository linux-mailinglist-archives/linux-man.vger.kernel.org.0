Return-Path: <linux-man+bounces-1603-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BFF0D94CE0F
	for <lists+linux-man@lfdr.de>; Fri,  9 Aug 2024 12:03:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E3AD21C22338
	for <lists+linux-man@lfdr.de>; Fri,  9 Aug 2024 10:03:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 24050194094;
	Fri,  9 Aug 2024 09:55:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="eRd4wp6m"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-oi1-f172.google.com (mail-oi1-f172.google.com [209.85.167.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80670191F9F
	for <linux-man@vger.kernel.org>; Fri,  9 Aug 2024 09:55:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723197343; cv=none; b=X+S/AM26aydspG37Xxzs+FPGbXcQ4Kr8FdvlPCBqgesCcpnrZdgvGSPPi4z15ApvJS9naq1rgWdDtogpP5IRdRgMXepI65KQNJc+1/xEohGj6HgERu7szqONSHz5zZW2GuooNAk3RDN+MS7b5GlPM0RI5x3SVMlfPym6rP+zAQA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723197343; c=relaxed/simple;
	bh=l6vNZ1q+e2pUUWr+rb3R+zmSxo6DgklRYGfOPSuDiQ0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZxS7ZV5vkf8qxXSaS9o5Y8rPUt7mXeu5XlfIvgB3H1kbztKklJaSOksEuQwev5dZgD0wqdp2ur4yLs/so3rIdjo8zkVDRQe93p3BlCt6bVPxanKS1EDFP3JeA4xWeS/6UqKB86NCVuB4S4SSXCzakz3xyAJEcLqaJtMrGj7gyns=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=eRd4wp6m; arc=none smtp.client-ip=209.85.167.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oi1-f172.google.com with SMTP id 5614622812f47-3db1e4219f8so1178390b6e.3
        for <linux-man@vger.kernel.org>; Fri, 09 Aug 2024 02:55:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1723197341; x=1723802141; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=0O/xCvEYATVl0OGPSvuKzn0iQEz1DQe9HDfzaXLtJ7Q=;
        b=eRd4wp6mnvipVhGtFecdEUnjTzE9aolFd+pigm8dlSFbzm2nwaF9iHFGYZsza00aeu
         DN0BRhh/WeTQSMqUuPTzeaqieUiv6ilC2GnHasXbXKpgfTgYrNKWPqSOhiiRhw10CJTK
         NvC/yz1WgmkcaviLjBtPKO/VPqsOP+hpBPK52hE1M/DAhQxhFIocEdBZQr1oBJVIEf3q
         v5lSx0Sqq9gI8Iyw37ydL/5nvVlti7rKXLwwVzcwZ3rWU98MFCg9iMpgH09LXZQf+Fl8
         Q6DUwykxAHkFX67FqbbjGgAKrIsj75FXb3RkD3A/qr75OqspuaBdjXtHS5YDoEaZNoKd
         NqQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723197341; x=1723802141;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0O/xCvEYATVl0OGPSvuKzn0iQEz1DQe9HDfzaXLtJ7Q=;
        b=fIejH04hq6tivQ9TJHKe9TvpMUS6zZh27hq78cOy4vsB7kWNi3NWSvcTz/P7AeexQK
         /vRZuo1rG/uqFwi7AwjRJxZt3H8p4jRvemH/9ibBlpp/nlDvb8MMVe4xPDeM2epkct4A
         +Ru0eYpvkh9Rd32ZzF3l81zQi0i1yOYLDPF2oOdGX92aCX0hz0inoPd4fh25iG+xTqyH
         y5i5c0lvdyHLhBBnTueRwBZaOsJb+H+/jzlxnl4Tq33AbGVYbRQnq894Wmg5NZqQuxxD
         CPbqh+/CfLyL0DZKkNm7iFmDteTCLJC16008pFwE2u/zZsxnXV9B3mbOFHoKihMaeiw6
         w0BA==
X-Forwarded-Encrypted: i=1; AJvYcCXXRThTyfYu8UYPyUEa+6uNVozJPx3ATdcRhchc561Swhm66Q3APeER9iKiGq/8QSWu79sa7CfWY569U6OdTzh/mEpmZ3nCyOqr
X-Gm-Message-State: AOJu0YzvzcZVCl/O1nQ0cS2DycK0kOgenHv0MN5+DUKzq5vpyG/0gwZt
	moilkqFFoYsVxeXYfXfDvf33svTt+yhFA1B+YqV4krRehWAsuR9VeACYag==
X-Google-Smtp-Source: AGHT+IFvs9pb8KotQN/VNIygnvhbeyD5QGhZi2vjIcmZDoYI8LaNtj0A85l80MkmoBboI8Esvz6B/Q==
X-Received: by 2002:a05:6808:2f08:b0:3d9:e1d1:155c with SMTP id 5614622812f47-3dc416d8085mr1143474b6e.35.1723197341476;
        Fri, 09 Aug 2024 02:55:41 -0700 (PDT)
Received: from illithid ([2600:1700:957d:1d70::48])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-3db563c427bsm5470825b6e.47.2024.08.09.02.55.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Aug 2024 02:55:40 -0700 (PDT)
Date: Fri, 9 Aug 2024 04:55:39 -0500
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: John Gardner <gardnerjohng@gmail.com>
Cc: Vincent Lefevre <vincent@vinc17.net>, linux-man@vger.kernel.org,
	groff@gnu.org
Subject: Re: [PATCH] nextup.3: minor improvements
Message-ID: <20240809095539.f3tsxycrqiqyvddd@illithid>
References: <20240807105617.GH3221@qaa.vinc17.org>
 <oa5aca4pqtnnwjopngqkouwueglyujmusnms535mgh4ipyawbk@4wonm4ymhcdv>
 <20240808025636.GE3086@qaa.vinc17.org>
 <wpkh52aryrsgp52qur6igf5uwidbhetszb4krfcfgfpyarv7yg@abea5srk4kuy>
 <20240808121603.fatotzqmtpbf2jez@illithid>
 <20240808125838.GD2669@cventin.lip.ens-lyon.fr>
 <CACRhBXPyVNN8q9pbeZSzSFj-nB1woJLWhTGw8N8yuBpJRyY6CQ@mail.gmail.com>
 <CAGcdaje1Fo_DuFf87ST8rrNCHmXx8uEzjJCwHiZ2Wf47h_O0Pg@mail.gmail.com>
 <20240809092514.GB4789@qaa.vinc17.org>
 <CAGcdajc55V7D0H2WiX5xEBcVg+mydTrvhXCKEXDpmWHZ75uj5w@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="chvnridbosr6mw2t"
Content-Disposition: inline
In-Reply-To: <CAGcdajc55V7D0H2WiX5xEBcVg+mydTrvhXCKEXDpmWHZ75uj5w@mail.gmail.com>


--chvnridbosr6mw2t
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH] nextup.3: minor improvements
MIME-Version: 1.0

Hi John,

=2E..butting in on your dialogue with Vincent again...

At 2024-08-09T19:38:48+1000, John Gardner wrote:
>> I really see a "+" underlined
>=20
> Is it visually distinct from an ordinary underscore? I merely ask now
> out of curiosity, as Brandan explained why overstriking is a no-go.

If the terminal device has sufficient vertical resolution and can be
bothered, yes.  gnome-terminal does at its default font size, at least
for me.  With xterm, using Xft fonts, I have to jack the type size up to
somewhere between 24 and 36 inclusive before they are distinguishable.

And that's not taking into account the possibility of baseline rule and
underrule (cf. under_score_) glyphs, which are things that exist in AT&T
and GNU troffs.  Neither has a Unicode code point, though, so I wouldn't
hold my breath for support in terminal emulators.

Regards,
Branden

--chvnridbosr6mw2t
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAma155MACgkQ0Z6cfXEm
bc430A/+M/jNaKSNpR6Ur9DbqYEFN6NjTR1Tt6mM8g1+ZB8DXCAkFUgFKg2+CoVm
lT0hUlbE9bjXDyHYi71XmLjcrzXKqCl3APA9/Wzpr9dFh7azhQvxslRD61KTPxC6
TNBs+2u+cjhh/OCSlDlZH8+HPBxinJvEukIg8y1KQ/EqYAf62/NwGxMU3ICcvI1n
R1ZERGNljZxO1pAPnPlOWUBrXzIYT1Y1pQSP9mpw16UOlUAG5tWGcYXwI/pLuoWP
aOtGR7qdQ6zm5iReuWVEVD2cQETYgg62jqXpk9WG5mGtDJPKflLCQs8gr4WX3fOj
E+FdgqPnt6wIhtd6u/4YtT6CToLzKqmVWv+if8hVayE8mM8Lfscm616+PRBxW372
tl0SECTA1rz04+3CqegBjxysjzhHPQjY2IQlmNmznioLBnIG0BV50rhgsCx7dCtr
/7g8ebXEcWJfQQsXqoZNlZ5Ljqz0e7ne6Q5X36nAwTeEtZ87ToQaMKh+G3KKPq0Z
yNU5coYDz1f3BcwRTylCOs5RkpAgA5INEAQFhbYziT1BG1xj07BZO37nsthzoIzX
a3F+7PuoN3fCQjXi7gnW5wBO/SQv/6dNsOhbzf84EI6a9BbkxlKlFmLMdew4L9sR
ws/QmV0hL85Fu2uy5h1oRfIevKHYgf/CjO4w0f+93oEFZH9j+kA=
=4T2T
-----END PGP SIGNATURE-----

--chvnridbosr6mw2t--

