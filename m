Return-Path: <linux-man+bounces-3000-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 780EFAC1A5D
	for <lists+linux-man@lfdr.de>; Fri, 23 May 2025 05:18:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 829FE4A0E65
	for <lists+linux-man@lfdr.de>; Fri, 23 May 2025 03:18:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7639019DF66;
	Fri, 23 May 2025 03:18:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="XLSdy/hF"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pj1-f46.google.com (mail-pj1-f46.google.com [209.85.216.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E621F2DCBE7
	for <linux-man@vger.kernel.org>; Fri, 23 May 2025 03:18:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747970292; cv=none; b=a/5od5p99mxHJ8IGlRDBs3XeGQlQPfuLu4ipAdk7H/jWrDHyRp3DQxxWi21HxkxD4P1jAHnXzCDIlgwGGV/l95JM7mcZf5+gImLsWsgFn3GjjOcxUXg+Ko2HwHBwRFBKSuumucT4tQNqd/mEWKv2nqPc5B6jmQyf18WJ5Avx8SY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747970292; c=relaxed/simple;
	bh=CwCIP7dX1KGkfKWGUHJqI0ddzc7B3Tc6L377+Op6i7k=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=EBqkmH9FJrwmf5cmIkYpQ6X5n94/n6xr5/Q4nsadTFPU7ECAnJk4ZGgvjhtlDc0tRXP0zD8ylBt2MrnocK5Jd50lrkyY9JUPCDSOHYm/yiWA/2NLQwZYLM/6r4SCC4CLtNWHafSE9N+x0jBvfyZmmX9lZPhWcos3Iqwxzbp1eaE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=XLSdy/hF; arc=none smtp.client-ip=209.85.216.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f46.google.com with SMTP id 98e67ed59e1d1-30ea559c18aso7397408a91.2
        for <linux-man@vger.kernel.org>; Thu, 22 May 2025 20:18:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1747970290; x=1748575090; darn=vger.kernel.org;
        h=mime-version:user-agent:message-id:date:references:in-reply-to
         :subject:cc:to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=rITTnweYE2BiK42kPh/Yz1Rtfu/ht1mruaiaXrAbimI=;
        b=XLSdy/hFwamO4loQGfcXgRFlmELwTXS5SI4ObLHqso4XR0HAon0+372Shc0mGNb61t
         iro1R6ZFPOEjMdZ9DdqdWLwWttB88qw4OhFade1q1mj9XjUi8UeB32xZ1MktkUB7sgdy
         CmyQSSgy1194VjrZq49+PgVCmnNf990X6+sLHq04/SEyFf5ndrdxa1GwMNnG7Y+2qo2R
         lZuMoEoei/QzDbngZCY+4oL4OMYwyrO2avCjkSc7yZZzW8tI8X/R6jN5HcU7u/YxL7/V
         zDJF9lpwvpP6wenrgSUBsGvjuvaTrf71eiZt5T01SRWzs94uZSaFhbWtDdZZKUmMSQqz
         D36A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747970290; x=1748575090;
        h=mime-version:user-agent:message-id:date:references:in-reply-to
         :subject:cc:to:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rITTnweYE2BiK42kPh/Yz1Rtfu/ht1mruaiaXrAbimI=;
        b=MS96OCWoN+h28oqN4m+T6FVKRIKzrhO4/rdghmBbj/GMyldmA1u8PoKSQY9hRLF4CI
         QwMlfVmnQMVIGMEdJTb+7L7LAdXF5s7HRTQDiIkCq1t6Em4l5SOVcMh6k6cF35e1R4fQ
         EAtj6mS2d+vGOE/mk1D6mPmr3kcbaKPVBbUWhuf17SmvUA5d4yEmT17ovH30d5Mux5UR
         SaAbd8YdiVdQJhcU5Ywtp9UlUkdykS3OTqLFddH5ZgPTS4pkxu0iqxD+UOOHeuP9/QOy
         tPBEzw0+mNrnrRGgiiFmvW4ucinIfLVUZlRJ8+Zymq2MU6XD0bjdJPp4NKrbDCpYRYiq
         IxWg==
X-Gm-Message-State: AOJu0YwvTqweXt1LfZR9xY/FCv/h8pbBi/OtnYBfUFeSvh1FQ2obT/As
	5Sl1D9zYoTfGvHkGoQNPhctlxoOIrLDxr1e/hcFeZjCKyAolM3yibHkX+1//iQ==
X-Gm-Gg: ASbGnctkKfRaOgG8ghO5Wy1vkVw0sHrUgaXgnPxSAg2GwQQxOY2gOmChR/esZMs/kMq
	QS3Ojp1Lx6no8GhhPN+KOySjDZ24thPwPFMZNLsgzOHFMSLoiY/bx3bEi28F8Mac2MHE94upc2L
	0en4YXx2bi+I7Cn0V81No2NGh2h2N7IdGu1rXvjrBlhWidnm/rp65PlKR8AuuE28l3UmfBObj1r
	CdMF2aBkW/JvYsrs61ndW7iVGwSv7/gQ98o6ok7NzHCietvybqCHZP6H40uF1DQIVmQuI+ePxoA
	jWkPlF0Da8YX1keGuzzzXXRXJqQMR6Lz
X-Google-Smtp-Source: AGHT+IGGWTLn8Tt5daKQY6HDYL8j8eWJMGBxTsfLYVb7Bi/qqyOXcY0PcaFLwLXZoFRQsYKoI7XCkg==
X-Received: by 2002:a17:90b:3b8d:b0:2ff:5c4e:5acd with SMTP id 98e67ed59e1d1-310e9740a23mr2265160a91.35.1747970290057;
        Thu, 22 May 2025 20:18:10 -0700 (PDT)
Received: from fedora ([2601:646:8081:3770::eef5])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-30ee9f34a59sm5106148a91.1.2025.05.22.20.18.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 May 2025 20:18:09 -0700 (PDT)
From: Collin Funk <collin.funk1@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 2/3] man/man3/getenv.3: Mention secure_getenv was
 standardized in POSIX-1.2024
In-Reply-To: <cvljded6h7v7vqpu23hdx2f4wl5smsbqsvbkrxjg6nf5sikwhs@42plwr5rowkx>
References: <6abbe99f5e8710202650bfee5d41e6fceaff4d1c.1747515178.git.collin.funk1@gmail.com>
	<f1cc4b34bb42b09ae9c0820df8fdece6fcebfcd8.1747515178.git.collin.funk1@gmail.com>
	<ationx4kn5f2d5b76ayyufnjakuy5q3pkgmgq7fagwgakfitar@5l6ty5ftdsrg>
	<87v7pznd4a.fsf@gmail.com>
	<aqq7gag27u7kwnltq4zumzjk2wvlsevbevm5lkgr3m2x5rhowf@hdufz4pmli3q>
	<87msbaop79.fsf@gmail.com>
	<cvljded6h7v7vqpu23hdx2f4wl5smsbqsvbkrxjg6nf5sikwhs@42plwr5rowkx>
Date: Thu, 22 May 2025 20:18:02 -0700
Message-ID: <87v7pskob9.fsf@gmail.com>
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

Hi Alejandro,

Alejandro Colomar <alx@kernel.org> writes:

> Do you mean mentioning FreeBSD in VERSIONS?  If so, yes, I think that
> would be useful.

Yes, that is what I meant. I'll write a patch for it then.

By the way, I don't see my other patches on the master branch. Is there
another branch I should be writing my changes for?

Thanks,
Collin

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEI3EYVQjRMXvVeOXMjOZJGuMNfXUFAmgv6OoACgkQjOZJGuMN
fXXXUA/5AXwSJ+h94bfxyUdtIE6gF/n/PhPApx1cwZqDoIchJzRHYnHKZZXME7FL
IeSzeQ4Al3Ol4Yier7s8hRT0YLzlVT0rZD0BN5rHHwhXpvyl0XcU50NP5qBWdgPK
1h1fqlqUZPV5ZI463ZeRhj/zSrEdYyua5Byg5cyvnQqX4Jt3ilX7n0GRjmKxJTd/
Gt9O/wvfg93kdYHnpUww5PY6y6ZwsmBtzX6XVDFRl8/5ZL44OEjcowgEXxStt/cs
/7jZ+tynplfFLPgEoORtW6Ha3G19Uo6bkB5d5sG/9q0LnocsDAfCc0sAGbYUxkRe
V3UcsG+LUFetKRPTJTUNDi+EDUli8q1qUgvEs0IhJ2pYeS13MSQoF4oqhT6SY/hh
ON70Mxphe48mXX/fn4wt63Hm18IzKnG1n00OY5lQX+qiwgdlxTRNkhm1nmY3gYD9
ik6JG9HK5f3FAivjNcz+65Su27W4ptaccsUjqB/ViVQim/VOSLbJN7Ip/3567ZsW
/BA/mMjlYXbx5vGh9BoqJHmoy3j/D6OyPqc1vkXEijifSE1mizBcOoqB7vV76VB9
D9dP96bI1TNlwoJcyW8xUg5xYYDOuJ45DOe0jYSA6T822zS8bei3l4UopeNDYhA7
IeFMNQR6oiM5rW9Jt9QORq/DWOgcC6ZwAXzgnaS46YtBXUz0J/Q=
=IC4U
-----END PGP SIGNATURE-----
--=-=-=--

