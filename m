Return-Path: <linux-man+bounces-4592-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 45C2DCE8E91
	for <lists+linux-man@lfdr.de>; Tue, 30 Dec 2025 08:40:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 16846300B824
	for <lists+linux-man@lfdr.de>; Tue, 30 Dec 2025 07:40:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 657A42BE7A7;
	Tue, 30 Dec 2025 07:40:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="EgbwL9lh"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pj1-f51.google.com (mail-pj1-f51.google.com [209.85.216.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFCFC2BD5BF
	for <linux-man@vger.kernel.org>; Tue, 30 Dec 2025 07:40:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767080416; cv=none; b=Cg+TKR71NFQDrmx1a8iAZndBclelGmi9rtq9OBAsaNsaKdaHlCO6Xk7kgo9+ttqX9FR/vhYbRbz7ATxvXJXY9XOrt3JfvB4/JUEFbgH2ttbEE95d159hInPL0WVfjEFCl+uGXTO6qbf1yYlbh33Q2imUpai5jBh4HlqBtUjSWqE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767080416; c=relaxed/simple;
	bh=VJi3TAe5ZV/Rg4ZXdcvqirXn2Y2UXL2nODI8knu4ElQ=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=AFYeeQAtp0C1M5NAwboQD8X3qao6+hEhb5xmutmQhg1+ieqKPJMJXadJUNewdQ9KdbvAKD8xG8MJQhJMePc94daGcQ5kwvSd1ab+C+dpf/sM6KwVAZgq/kthf0Y/Np0UeNGK7TEWNyI1iNYkjX2cH2/jJXyQmkHaMS+dWP2MxVM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=EgbwL9lh; arc=none smtp.client-ip=209.85.216.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f51.google.com with SMTP id 98e67ed59e1d1-34c718c5481so9384106a91.3
        for <linux-man@vger.kernel.org>; Mon, 29 Dec 2025 23:40:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767080413; x=1767685213; darn=vger.kernel.org;
        h=mime-version:user-agent:message-id:date:references:in-reply-to
         :subject:cc:to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=VHjMPJucIRU9pGNCHrbZlsXBzzghFXHd0UetdEX5rCU=;
        b=EgbwL9lh0AqxWYItEYmLiKG0H9WJ7odez1CPCfwHuNdG9q9T+izt4D++z9eKE3xArV
         XI9h6gwVAMq2TwUkPXp5jpDueenOywsmxCjTBRNWbWKDcuTzYAHgv7Nrqlgle46E00Vo
         7fcOAks3ySTaw3EQHruXYYPw4miz51TGB0UZOay9/8YuE1X1RloCtZmAIYzYYSpfbAUN
         NFwh5nAiJlWH0VHmKNXXXXabtED6Doglm8LkZKxVyWkwk3fgEgRAWSWEQTe5r+7qeWSq
         Al3XA3Isp9MXrTFbdowyU4LIk0v9+GdBQdNvDj2u9W5/fDGr1W4nASz3ad9j/DsZbEUV
         gt1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767080413; x=1767685213;
        h=mime-version:user-agent:message-id:date:references:in-reply-to
         :subject:cc:to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=VHjMPJucIRU9pGNCHrbZlsXBzzghFXHd0UetdEX5rCU=;
        b=Qtsu1hYGGU0ISr/+TvPVhIX+5Hvo+GURmx9GeFEsW9Y68XWlHXhF72wlpVGRr8RvHb
         VqAKS9tZ2IQGH/kOh6Fr+IVa5kBGlIZmvn1qf/Ay/RjoPbdBXfqzFYjf65hmKAq1ITH1
         FJCeIM/ZnJz3OSKcO1kyq2ZXa/aQv7FV4hf3bxMoh82B9oE7UgjQUQInO5N2Ck5Kaj0O
         Y92pipelKaipzEaxI5jYwZzoRdv1In2gfOqV9LJHtyh/HGRgkbNwXajmNesZ4eB8DTyK
         Kmy+Tnyu9C5FHpxIS2BZ4DNwrX+ON1+RsStmsW4iUHFODwz5i4MTEJN1oTWN5cPnTtKM
         bRYw==
X-Forwarded-Encrypted: i=1; AJvYcCUUXxFVljNJiZWC9So8c4vYbE4LbpkbVbFczd9PxNPzWAuxaq8KCj2UzXilBrYv4DWk75ISGbHwrn0=@vger.kernel.org
X-Gm-Message-State: AOJu0YwfKjfr5rr4wtAp3m+2HSPRkbR0Zwux6QpsS98Lmp7W2BoAW9u6
	eLgL8gIdiA1xp508wUN3JwqbxAuJwQnr3Tu9oAVQfFhM9qz5W/s4Dr78A4CpDw==
X-Gm-Gg: AY/fxX5h/7M2XxAH6v838H8qXiIL7L2tGNgjnCwoRuQ9bRF12nq5vZoBHmnLv1q9A20
	uYqqp5iIHKLwzbxvCgy+JfJIADYyHl0Ng5LmCYXfjKFzaqG2svsWChkN1mrOWMNElKq23nyblEr
	HpDN+4tPkPVx+2W0HcMcveoR0fNFH0/ukp/MDAoVQ2+Eygj1pOi5EfpEWE86EbekNwM9uDXoQ1c
	0ro23vHJXvtDLNYsghWI9Vd5gYTM7FPqAhMs7Dn2jXM71yix1LnqPw4c6rVM35WkK0mTwGjmfUL
	z+kxZKlo57xqUbsyGdKoSPxC0WsLyp3l5NMJA5MHYcUJ7rxZ7XwEv6e7by89cZiGhlggFUIJeD6
	II22BaE4lsMY96AB5SJDG6cj5H4L7r5QRMDejRsdlc2BW8tdQyfUVjf/w3XSWcIAoM6w6
X-Google-Smtp-Source: AGHT+IEk2S7LARU+ThGrxbmTmknLtDYs2i8Hm7Ec81bdnL1FQCnoh7xqhtAL7RXD2pwHK1AxCfqTBg==
X-Received: by 2002:a05:7022:208f:b0:11b:2138:476a with SMTP id a92af1059eb24-121722de680mr19170123c88.27.1767080412919;
        Mon, 29 Dec 2025 23:40:12 -0800 (PST)
Received: from fedora ([2601:646:8081:3770::361d])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1217253c23csm122496291c88.9.2025.12.29.23.40.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Dec 2025 23:40:12 -0800 (PST)
From: Collin Funk <collin.funk1@gmail.com>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Seth McDonald <sethmcmail@pm.me>,  Alejandro Colomar <alx@kernel.org>,
  linux-man@vger.kernel.org
Subject: Re: [PATCH v1 2/4] sys/man2/sysctl.2: HISTORY: wfix
In-Reply-To: <20251230072756.c25thnpent43mjma@illithid>
References: <cover.1767072049.git.sethmcmail@pm.me>
	<1477de655f76e1e6e85c12cb03c068b120704511.1767072049.git.sethmcmail@pm.me>
	<87zf70xxog.fsf@gmail.com>
	<pRpaTIVuHE4orVJSipNl_EnJbZVLMfPRMvPMLl2gRCXKXvpLA9uK1nqZaeQE7NfWySjyQqs1yBMjZpW9bJOToFOl81F2Bz_-koNMWm90qbo=@pm.me>
	<20251230072756.c25thnpent43mjma@illithid>
Date: Mon, 29 Dec 2025 23:40:11 -0800
Message-ID: <87ldikxvs4.fsf@gmail.com>
User-Agent: Gnus/5.13 (Gnus v5.13)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha512; protocol="application/pgp-signature"

--=-=-=
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

"G. Branden Robinson" <g.branden.robinson@gmail.com> writes:

> At 2025-12-30T07:18:50+0000, Seth McDonald wrote:
>> > [1] https://www.tuhs.org/cgi-bin/utree.pl?file=3D2.11BSD/src/man/man3/=
sysctl.3
>>=20
>> That would be good to include, though we may need to first modify
>> standards(7) since 2.11BSD currently isn't listed there (the earliest
>> mentioned is 3BSD).
>
> The date on that file, 1993, strongly suggests a backport from the
> then-getting-finalized 4.4BSD (which settled out over the course of 1994
> and into 1995 depending on whether one considers the "Encumbered" or
> "Lite" versions mandated by the settlement of the USL v. BSDI lawsuit).
>
> 4.3BSD, by contrast, dates to 1986.  See my previous mail.
>
> So in that sense, a sysctl()-bearing 2.11BSD is more recent than
> 4.3BSD.

It does say 1993, but it also has the following:

    .\"	@(#)sysctl.3	8.1.1 (2.11BSD GTE) 1/13/95
    .\"
    .TH SYSCTL 3 "January 13, 1995"

The first line being used by SCCS? That is an assumption since I have
never used it.

> I suggest the Linux man-pages project not attempt to track the
> provenance or timeline of 2.11BSD features.  It's too much work.

And there is probably not much practical benefit, i.e., just some (very
few, probably) people interested in the history.

Collin

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEI3EYVQjRMXvVeOXMjOZJGuMNfXUFAmlTgdsACgkQjOZJGuMN
fXVzew/7BQE9r+wEU/EtW0sFlIxxYG5FtPbtcaSQ3rM/BYZWQ+Mpydo4yiOUmTB7
nNiQbOuWgQ6z0T1Zttn4+6bPpn+nmSmTiQT+Y00sFqZnJuzhN9Y0K0ZHAnErDDo2
BQWncpTwnVp/ygwA0MLATH6OzvyAeFFPVzd9l83XGYStqvLujrrULYqJ9qPaQuwi
jFVmIoBSEY88RL7RW/sSV99mzkZbt6T9D93qCRnbPwEygIZ1MS6qn3EujM3/IEy9
5aYtEg3sVeRXhMnxX18OX9cVheKYlyRHq0CnZiAxDX/V6hQx4k10zmbI6vF7eRcv
uiiwo7HgStEWsmpSqX8hfjlTRR2EliQVYJYVNDXgUj51s0wWGT7amOjs6dbSBOw/
MbmmUI+UajqB76ykBIIvQoQFCFa+ubYzlhfbEU0b3AGSMrqd/vdx93lK1uNz1NbD
mHc+2mnUtiKspHIyRDoS9zvpfaZFduW3Kupdyev8rDbtubY8CFGk+Oo6h0VBQC9D
TSGnAtlKdjQQpkC8U6I9I1t7c/JXsJOZyI6M87uaqPNKqpW2fvFB8PklfvZ31icq
uNnoomC/vUYR+mUCzWHnwbkmOiYkrWbjyZD6C2yQACLBORgFR0nWnJWqaGwWYqUe
BOMFxkyE89flfAUctEM66bX1Zu9g6GcOB3EoqOWju9qIWJAsQQ0=
=jSv+
-----END PGP SIGNATURE-----
--=-=-=--

