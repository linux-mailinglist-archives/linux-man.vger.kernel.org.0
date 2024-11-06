Return-Path: <linux-man+bounces-1884-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D64B9BF48B
	for <lists+linux-man@lfdr.de>; Wed,  6 Nov 2024 18:48:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id DE310B228B0
	for <lists+linux-man@lfdr.de>; Wed,  6 Nov 2024 17:48:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EEB44206973;
	Wed,  6 Nov 2024 17:48:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="SF8IF6Ll"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-oo1-f49.google.com (mail-oo1-f49.google.com [209.85.161.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5273317BB0F;
	Wed,  6 Nov 2024 17:48:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730915290; cv=none; b=bq47mVhv0n7/1LpTe9qMGH0FT1jqprcroUAZphk/AmgqKrs8g6F0o6HGu8AKCScCAEG2tW2shg7cVPlofmZT2cfPUAlPgzV9QAR8xNbJ4HeMWJOUNDQfi4cQ6gvhVhN9qqQN5HIBI64eVryI8JxxLc7F+jc6r6mgrvdejrU3a7A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730915290; c=relaxed/simple;
	bh=e9OIDb57Lz4pk2Iekwfozt4pkvu/5MvtZv6sOmlx09o=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=SCYkfxyA692FDB29mn7ByZsEJhxyLdmqp9vsWReA2W++Ed1EMp9OCDhiSCv/7VDgLYdn6zj0haJa1hk+7JM/CITS+/tFwBifTW9QLYhFG15hQZj8iC1FRaqBn7+RbjFuDUq5+Rgoc9TKPuuQewQ20/uFO8j/yztlqkVp2GBFDU0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=SF8IF6Ll; arc=none smtp.client-ip=209.85.161.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oo1-f49.google.com with SMTP id 006d021491bc7-5ebc04d4777so21050eaf.2;
        Wed, 06 Nov 2024 09:48:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1730915288; x=1731520088; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=y0tfeIGopIRLJg8g/ZsMNuK9W9fkTzBX+Fjq0W/TVTM=;
        b=SF8IF6Llfcca6XyuPanhncSSj7deto8zbhjQO1gSd97357I52bPp0X/Prwqc2KZvKq
         w128YxyaUBMQti3qDAQ/TlGtkFZlf58i3R6b2tsYaMDDGvsZ3f1cPFgx83bl8CfyLyRX
         E2sLapiCO5u7Tc9546Wmt2y6KGe+622hVC2dTgkiYs6qh8wT/w5a+vFXh6/BcbJsCwx+
         6de7cCEGNfx8iRpH+VFmgs16VNl7vcKujqA8kN/ZjGBmHJQuEz0V/loWOZSRMu+TC0Si
         bbJLwVO2SfJVSdaEhT6N4QjLGUhCaeRMoYqShUqZe6sh84DaBLUYAlR1BPQKCv6QSmJD
         UJGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730915288; x=1731520088;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=y0tfeIGopIRLJg8g/ZsMNuK9W9fkTzBX+Fjq0W/TVTM=;
        b=AyskSPFFD4ulrdWrXDZrFJhIdcTdqXlsn2R5le6qTXi07k4vDjMQSNgujCXbEckx7Q
         0I0R83AW9gTV7Iu+DmPzuLhj3p1ZsjyMIAMoP35v/y9EUm0wKKE0HyA07tjSwb6GFanz
         gXLNMNoLi+vbyzdRHHmO5jpnpORAIP+985FNBpBU9ljh7osjP/v4vSvk02ioga1OXXTb
         5rMz/REPKGk6smUxfdHGMTRdUskj0olhozFrgy8qCuUjSeFcmiyqGxHNtn3Ll4xSK8l9
         FS0DvcuuAQ+55PR3tW3tEVLHcdP/ugt6TtsaLFCRfyAWqRsRhMWs8RwBMRUzk4Q1Q7Bi
         AiOA==
X-Forwarded-Encrypted: i=1; AJvYcCVBhS7VqLrXt/r9x+nmgFEC4iZ+lCoLUH+lPdsfN3PIKUxKWST3+sY8t7ZzIT5BCBBGFdHImksH@vger.kernel.org, AJvYcCW0pVOh1b3zLijSr7hv7XAtkuqalUHhbw0gwYhNNA6+kRdo50VCiRKwfLdzV8VocQda9msn+e/DKEE=@vger.kernel.org
X-Gm-Message-State: AOJu0YzKX874DAnl0XUZIR6Za/CCtILuc6CSvZ8qEasnOWQ0N2MGECm6
	2pCrHwbtgULkMtP1wHfVLlibzBCqEcmj+2Z3WgNDy6URXjmMaBn9
X-Google-Smtp-Source: AGHT+IHNy6Bv7y7GVvdapO6El3fJX4QIbtSEyFEKtky579MjdBK9aIpfOJsFADy0iAmxCRc4M3wEtw==
X-Received: by 2002:a4a:e915:0:b0:5eb:c6ba:783b with SMTP id 006d021491bc7-5ec5eb2dd1fmr20564230eaf.1.1730915288361;
        Wed, 06 Nov 2024 09:48:08 -0800 (PST)
Received: from illithid ([2600:1700:957d:1d70::49])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-5ec7050732fsm2729883eaf.19.2024.11.06.09.48.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Nov 2024 09:48:06 -0800 (PST)
Date: Wed, 6 Nov 2024 11:48:04 -0600
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Stephen Hemminger <stephen@networkplumber.org>,
	Kuniyuki Iwashima <kuniyu@amazon.com>, alexhenrie24@gmail.com,
	branden@debian.org, linux-man@vger.kernel.org,
	netdev@vger.kernel.org
Subject: Re: [PATCH] rtnetlink.7: Document struct ifa_cacheinfo
Message-ID: <20241106174804.lmgi4zuypwb2ktcq@illithid>
References: <20241105041507.1292595-1-alexhenrie24@gmail.com>
 <20241105055338.61082-1-kuniyu@amazon.com>
 <xfzcwmn6syhywvdcu6kn3mkuwqpo5usiwkssblvk6qrpoys5dp@hwgvspb43tdo>
 <20241106091801.3e021842@hermes.local>
 <soyssk73kxv4njvwmfq635q4wolfjhgprlq3mfvxnciurzxhsh@g72tril7ys2k>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="fdjxdidmn66gbkvl"
Content-Disposition: inline
In-Reply-To: <soyssk73kxv4njvwmfq635q4wolfjhgprlq3mfvxnciurzxhsh@g72tril7ys2k>


--fdjxdidmn66gbkvl
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH] rtnetlink.7: Document struct ifa_cacheinfo
MIME-Version: 1.0

At 2024-11-06T18:44:08+0100, Alejandro Colomar wrote:
> Paraphrasing the Linux kernel coding style...
>=20
> 	First off, I=E2=80=99d suggest printing out a copy of the Chicago Manual
> 	of Style, and NOT read it.  Burn it, it=E2=80=99s a great symbolic
> 	gesture.

I wouldn't go that far.  CMoS has much that is valuable.

Russell Harper is simply not a reliable source regarding the
inter-sentence spacing issue.  As we've seen, he has a lot of company.

Regards,
Branden

--fdjxdidmn66gbkvl
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmcrq9QACgkQ0Z6cfXEm
bc5OExAAmKi9YP5GdIeuLG+vv7QSLzsEzz/F0xRGE5QoK113Yn+Qz59U9QIxO7h/
4CoD7F8Ev6+rJDZwthebYfJB2M/M/w+pOtYWZ2NrNp5opG16Q/TTPD+7rKSdG97A
p+cXybyUyzZJalXXdZBYWpN2eRV1eLl6aNwJNnHFZC93m5mzT/IMXZMM9sg4ARS9
Nsjx8vm5sqkl3Y35Wjtc1m5kck7bzyUoTvyoLKOXGJpYTRh2nwLXSa5ktQ3YO18N
tuJ3tmpFJ5j76TAWn1HOlGZmBPi6pT2NCv3SKE2VHl9R0elbWw+yGvVGc4I9tz8a
w7Jmy23M1r64m+/UuiJ7XliKBGdHlKG4MqVEatNmO7GmXxi9TB2Fx1ZaJakB5L+7
7kknjhUSnCvi8F+M3uqA/QvIIW9Y6uuhCr+HH2Ge2gfVN4jTTBYOjYw07vT8wkSS
7vLhOoCfv3TrkpKyds32qkmHeIOFBL11MYbrUbfPcTTc5HlLpva+WVdrkJeix/dG
ACvX5vbbB+94Gusj4TZRIpfKiLHJ4VCK2lkmtqk7fVq9yPDgYzikYPwcw2R25XT7
rRQeEZhzRbuduwczK2B3o1bft46EyraN8OkD84bKWUQ4gkztKprAg/LL9JRLH+H3
pKTS5OfK9v5TNAf8k3Nff/iKtkxDoQJuHzzC8MXTUurDAvtE5PI=
=IjK6
-----END PGP SIGNATURE-----

--fdjxdidmn66gbkvl--

