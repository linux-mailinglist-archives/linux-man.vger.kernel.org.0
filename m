Return-Path: <linux-man+bounces-4033-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id B55CDBB526B
	for <lists+linux-man@lfdr.de>; Thu, 02 Oct 2025 22:48:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 5E91F341DC6
	for <lists+linux-man@lfdr.de>; Thu,  2 Oct 2025 20:48:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AB8FC1B424F;
	Thu,  2 Oct 2025 20:48:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Aa9YMv9Z"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-yw1-f175.google.com (mail-yw1-f175.google.com [209.85.128.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B98379DA
	for <linux-man@vger.kernel.org>; Thu,  2 Oct 2025 20:48:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759438094; cv=none; b=kX6odXVa+V9TPmGx2uCpLZxZxzLsYwXd5q8BYHuvJdeUHBRzjmniTA24FMrfCoXtr+pIOrXnOWIvC9HOjYHzfp7Zo5T7wsvY8FLwaIW4Nuf6C9PqFyZdBpfolsqSlR3zu1jtMWU19fefLOpbKl3ypP3bFIwEf17m69Yi1s1htSg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759438094; c=relaxed/simple;
	bh=CMyrE1TGk0oxCF8iXmmKC29V9mHIgVUULA5irHVK1gY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=aeOEmpklWfnnYTQccwPeXEyAbMNKEhJdAeIMWsFwdkfYyKltt6aN6dQEp36OF4rrAdxMd4Wla1DEmxDI6afVMRGzfSnwQgfoXADrnrVK6FK2IgyijzQg8YcdrPeFf/6gl0BcLj64lJzWVVZjpl081bLwi13tBjUPVpomKvtw3Pc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Aa9YMv9Z; arc=none smtp.client-ip=209.85.128.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yw1-f175.google.com with SMTP id 00721157ae682-72ce9790acdso16826987b3.0
        for <linux-man@vger.kernel.org>; Thu, 02 Oct 2025 13:48:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759438091; x=1760042891; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=CMyrE1TGk0oxCF8iXmmKC29V9mHIgVUULA5irHVK1gY=;
        b=Aa9YMv9ZXrrR1X3w19IiY5fToRrML6wFeJoYNlfAy+aRWngm8g2z/yFrjhmxwC3Chp
         NdRJJ9SCC3WsGXnWieFIvwKE3/H4ww2HrVQJAz1b5ZfphwqptxoFMOulSopa806ztO11
         9ZIOtBXvmRd7QlTMR7IjfB2j3hT7h1ib1BXCHX5OTRmmsMzSv3BPUMDH4ikNEdZw6Vfg
         27ydUbjSaT1Gyf5yq6qK3FvG6G04LubtdM2N4Nym4lVizwTX/0DhQyGAbak4Z2ijNAhz
         DQbwKi4qw5rvoybrigdcu67ktqQ4Vua2wU+/RHGW1IPCkeKb3+smT6AYBODoQxchB0Ax
         e1lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759438091; x=1760042891;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CMyrE1TGk0oxCF8iXmmKC29V9mHIgVUULA5irHVK1gY=;
        b=esEIgBO4L3fzV2cj1xwKMjHWY6vLTTJ/jXwa8CBbMnxZro4NM1+OHlOu2Aky1sXQ/G
         Y+zv10KLADWFjWqPCDgB4L10GTLrdIuiiCOlci/PBZK8YClAQE9uaGHXVHE96XXuTCb2
         cbEVXA5OjrzhUNZkEZBaU2rM7RZyqx3LXbGP/NmAf167qpBGps4Htuq/KEC+h+6XXdib
         7z0C1WlfaFqL1sCpWzE6o9lZUuriBGvRhjo02SG8K2uzdZJ6vXwRvz0vGNnSsQ1NtJ2Y
         gw6WbYhYqqMXEeMI7pffwa9vY/a67vOEH3w0KyQ6ks34sGGvY9lSxAOMXyWfFwGpZNA5
         REgA==
X-Forwarded-Encrypted: i=1; AJvYcCXLTdfU1HuXCMCAyRN57THIL+SXZLqFP7km5AXT6i3zJueWuUJQ7/OLAf53whOrHaZSkUCScf3AV0Y=@vger.kernel.org
X-Gm-Message-State: AOJu0YzMMekvmn+gOL6+lZ32V6DqAFBgv2ZIprDVmS/7resGTQ36NYFx
	T/Z7GjIdHZ6puMTsYE8+GlaewoMVWAWLXTpwM/OqnxcjxvpyeF3lV7SA
X-Gm-Gg: ASbGncsFsC2ag9fxSlQscWJ1zBX+aPHCW5kWwQh6R3aVA+fSy8Xjb8jJ08VZJooKxNf
	onGMClJPhSX0dBTGQHDj2XSb4TJ+Kq8ZPziYJU88acpruQ520mmBoyaTbGzzIExGN4ktKlcHTO9
	6f65XVhkn2nLi9K97IuZixQMxmuH7lolRLiV8w60aa47eKpEabE6Tgo2g2FxsaTB7Q5zf3z6uYF
	p0c0PfLQlVuymxrGXtBDwuAEuNlxDY/KZDI9rTw/87tyTLV+DYLmmPwUgFHJKxT5/4qa1j0RqSM
	Km1E8fM27623MNZoS6+9+x3sYEv2mZepsXmi5nBWn3/j/rwKuSkclAc4dC8AAVgnXm/kJ6XngE4
	vRRDXhlA/0SbZ8QidPFETXjbeqvCOjF9eXUs1b++ozGiHWxs=
X-Google-Smtp-Source: AGHT+IGfvpvvRqpEG/Oex0N9tjfpRAZ025tsMHe6YeOAdDHHT3Zla9OI0VbMt0jbo/h5W2qIgGnlqg==
X-Received: by 2002:a05:690c:2608:b0:739:b67c:fcc6 with SMTP id 00721157ae682-77f942b14e2mr12524787b3.17.1759438090917;
        Thu, 02 Oct 2025 13:48:10 -0700 (PDT)
Received: from illithid ([2600:1702:7cd0:e980::41])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-77f81c35c4csm11367167b3.25.2025.10.02.13.48.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Oct 2025 13:48:10 -0700 (PDT)
Date: Thu, 2 Oct 2025 15:48:08 -0500
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Arsen =?utf-8?Q?Arsenovi=C4=87?= <arsen@aarsen.me>
Cc: Rob Landley <rob@landley.net>, Alejandro Colomar <alx@kernel.org>,
	coreutils@gnu.org, linux-man@vger.kernel.org
Subject: Re: Move GNU manual pages to the Linux man-pages project
Message-ID: <20251002204808.7ip6sl73rsczobsx@illithid>
References: <wqfzoyixsh4l3wg7tkz3c4bjejy4wlski2s5g2pwoqiy2wg3ty@lkqy5semt757>
 <87jz1sm2t3.fsf@aarsen.me>
 <fziyxvozscytwasmhtrpjfqbmldxmggjkdm4pzo7cupxhby422@czrmkask4xsc>
 <87cy7e7hml.fsf@aarsen.me>
 <e369c200-a7cd-4b92-b700-d9d48d347ce8@landley.net>
 <86tt0jn27n.fsf@aarsen.me>
 <60d83776-2873-4114-9647-0ec44120969a@landley.net>
 <867bxdgn0s.fsf@aarsen.me>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="3lnvufisejzwmon4"
Content-Disposition: inline
In-Reply-To: <867bxdgn0s.fsf@aarsen.me>


--3lnvufisejzwmon4
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: Move GNU manual pages to the Linux man-pages project
MIME-Version: 1.0

At 2025-10-02T20:46:11+0200, Arsen Arsenovi=C4=87 wrote:
> As said, 'man' pages don't have the ability to provide context *at
> all*, whichever context might be necessary.

"At all" is too strong a qualifier, I think.

I think the ncurses main page in recent years offers the newcomer to the
library sufficient context to get them spun up on basic concepts.

https://invisible-island.net/ncurses/man/ncurses.3x.html

That said, I'm sure it could use further improvement.

Regards,
Branden

--3lnvufisejzwmon4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmje5QgACgkQ0Z6cfXEm
bc67Ig/+O+aE5DrL39+9LZhSbJ/VlJ71DjpvxGqUMYgL62Z1+ntjGmLepkdeOjoR
zVU+1n3iiNeKYgYhCDimCtQOKDFaRX4q1Dd46DE1Nzt8si2VWChv7LhbcJic1QuU
McxgHW2bFFrvPiPYzr5XbbZ8H0kvt+61fFhDJwHa/iREA8NcqAA/s0gobPDeqk+1
Vcj/1cuQ4L3FQ3kevYpmutxDY4uN8Qt3eO5hs+9plYE7kVhuO/V4jvtlnNm3A+PB
fKJj4nLHg49tTVj+896bkHgfU0cHIPAc7+DiVQ6j/3PBBnAzjdLxjN+9Pl/77RVj
i5WnAQe7vbZDUmKtgB1g/RDU6ZlJzmnlDk8C//BQEG74hxf29ZSgzW/TvpOoz3rG
OyU9R+GYvEFdJ0KfFKnwVVcgV4W3DZ8K1VbsHWU7K9lpureHyifbggU8o5JZBWo9
Lzuqh6YWS+vvwZ+RhamurJ+6fW//hOeOzRxgaIMtiH8AUV7MW+WREgr+33UwZ7TD
m+s9qWATl7itZ8p0O07EULI88KdDYcaOiYGD9DDvQP7Tkhj66yTR7uCl6mE8IshF
oNnNMUvACHQm+0UoVGlBGeDjsQO5CoL4F6JstfuOeg6O+XoC8PLeE5tcFT4wDA2v
asBkfUkNbIouMj46nAdN1b0D/uddllvyE795kw2uKczLkqOysdA=
=cjR0
-----END PGP SIGNATURE-----

--3lnvufisejzwmon4--

