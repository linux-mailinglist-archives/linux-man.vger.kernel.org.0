Return-Path: <linux-man+bounces-1547-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2602893E100
	for <lists+linux-man@lfdr.de>; Sat, 27 Jul 2024 22:55:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C0F702820C8
	for <lists+linux-man@lfdr.de>; Sat, 27 Jul 2024 20:55:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EAC372C69B;
	Sat, 27 Jul 2024 20:55:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="T0LvO+lq"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-oi1-f170.google.com (mail-oi1-f170.google.com [209.85.167.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 675E98F6D
	for <linux-man@vger.kernel.org>; Sat, 27 Jul 2024 20:54:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722113700; cv=none; b=H4Z2+ibzbkvxbONGhwwWY+BUkQFM6DZNJg34vg0eq7O8b7WraGk77wJ362240W1n+iCASg+2NHFQSWdDddzS0IUVs4NzJCNVRw7jYgNUx0zqMbLuRPYpnhffIS+KGeNg+z2qjW6Ho/TAlpWkNGRS6F2DEs4rgkfQpLD8Atc7Rp0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722113700; c=relaxed/simple;
	bh=IrwIXzBbhy98PtFd3OCYkz24Vsg6zs1SNddHDMtnpRs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=n/AeqrE2tehP8mzYaGGKI14wIsd1HUsFs+PIsA37pR9ojHy8H/yJJsxnRX+2kgNBhWBxA9dNaVew8YnFrKBMzTZ5zvMtgn4t6k+ykgUwTFoPmZAc5rfHofx1splg7+EwBdiXtstmXhENQJO0GkPSdj2aZnXxMFr4oyR10VM4CTw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=T0LvO+lq; arc=none smtp.client-ip=209.85.167.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oi1-f170.google.com with SMTP id 5614622812f47-3d9e13ef9aaso1406142b6e.1
        for <linux-man@vger.kernel.org>; Sat, 27 Jul 2024 13:54:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1722113698; x=1722718498; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=rddeMPc/sX5MqRYyV33XI+s+1zmUDPfmXqd1m6gES2I=;
        b=T0LvO+lqxDtX5pzj4Mc+1n5waWlx6yn/Qrq3d8+mKaaehywasHLMlHqK0Odup1Cu0W
         CnRBDaZu2kZ/KvsAB7mLcY0YVhAy0Ld4pFiSosL3YXOMERSlJs9VTrjt/VDl3OO53HMr
         TQRuC3ljPVsp8ppUjrM0DH1L+O7r3JNwE2AcGuYZhpa7sLPHqogJJ7OuYGbLQB+INgBr
         iu0eATVF9CHXsVRTJWptnbLPvQMkylXVeEguqUM3DY3Nw1/zLPv2MNK3MOfmQnZCLkZG
         H0PIHYksMAxf/9wShW27s6sl/JcOlrIPo7Z9qSRoIPyo2xL6RcRdiMIGmVVOTKfV4Vq9
         Jb5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722113698; x=1722718498;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rddeMPc/sX5MqRYyV33XI+s+1zmUDPfmXqd1m6gES2I=;
        b=bTuZ4HBrLAKYNe/J3HhzwFOC1+LswTDVH3IXueNU3KOWhYDUHJa+UkmURRsRDlUFpf
         lRlUOS3TwZbC0QrrMqmRGG7MKtiNNG3nPiLMIzaeHFHIvUNjPZblS5VBlgYjM6DzeaCb
         9ZsKiI8FVj7GqvEaNInQsORrpBZqjIO8kWjq+fG0AUkZDbjp45Q185uHY5AVkdLWK5Yp
         CYAe4xlXrPyIc0jcqXau+b47EkKW30MYqnIiAMy09ZDpWjtbRwDdtE/hufhapKE7MGej
         tslx2W4O9cU6pWZGAshiETUyp9MwwVqNsvnS6PriJoZre4izJDf3+i+0B+kbZWqCGe9R
         kxaw==
X-Gm-Message-State: AOJu0YybRuDpc5oxktUTGB2Zm+i214wQhKKKFFqUtmkxBtolmZhhhpNN
	NjNr7i21E+rXgn7Chne3UaS0P8L049rdqUYXOlRLRsyPFcGQrxQg
X-Google-Smtp-Source: AGHT+IEJeiHLTGVR0bfreAFjR5HTC8Ad+GoTMlMP//s+dp8WhZFW7sTB8Vnfgl0Ki3HBm4q5E9WM6Q==
X-Received: by 2002:a05:6808:16a7:b0:3d9:243a:7ae8 with SMTP id 5614622812f47-3db23a7dd00mr4269830b6e.39.1722113698354;
        Sat, 27 Jul 2024 13:54:58 -0700 (PDT)
Received: from illithid ([2600:1700:957d:1d70::48])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-3db1351ee9fsm1326551b6e.38.2024.07.27.13.54.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 Jul 2024 13:54:57 -0700 (PDT)
Date: Sat, 27 Jul 2024 15:54:56 -0500
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 0/3] man/man2/syscalls.2: srcfix (0/3)
Message-ID: <20240727205456.6yqqylwqzrgjcpli@illithid>
References: <20240727193028.abn22pgfjtioyfbs@illithid>
 <eqrmlvpy7j2uxagyjz4nmmk655i3o23elkmbsjjzrkxajpyttj@lljbifg6subj>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="etvqojymx6pytaoy"
Content-Disposition: inline
In-Reply-To: <eqrmlvpy7j2uxagyjz4nmmk655i3o23elkmbsjjzrkxajpyttj@lljbifg6subj>


--etvqojymx6pytaoy
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Subject: Re: [PATCH 0/3] man/man2/syscalls.2: srcfix (0/3)
MIME-Version: 1.0

At 2024-07-27T22:22:58+0200, Alejandro Colomar wrote:
> I've received this email twice, with two different Message-IDs.  Any
> reason?

Yes.  I screwed up and sent the first 0/3 message to
linux-man@kernel.org.

Regards,
Branden

--etvqojymx6pytaoy
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmalXqAACgkQ0Z6cfXEm
bc521Q//RmWDTzUixVgm8QDDxYhPqZXcVsNybpKEPQ2z1BrLDGioXklCwyf5awln
FEpejWA2HPMOBfPBCj8IiFThhBdiRrtxUED98R/BFHaqFXDFVQT3ssVuZ76shS8a
nwdFXy2g2oC6u8pnFUNbzMf0EHUENH96V1ASeGc4lQ8cKLvhB03EnDy9wnaAKPzx
ivJ/P0pLC235jQbVKBftwQw0oNfy/RY4ICRkSWNuw10jVZQkz6jm3452cCzVgz63
TNHeIEC12f/1+MuoSDfF+Ru7bamH/dV2kYXxmE9iAnrrP/0oJz39bt7nckZUUn0N
hiQOHRvR1znJd9wWKiuh9sg4a0TCZbtFgAVdvDtWE95DFcLAfiqWYk5TQucR7Wif
S+QquHXEp/UXB9VmYTOaeMN1o58VNtbVuTyk4vhSixBxKuYnLzoH3cf+3jvFKi01
+X83ZHxI1A35cmf3C0TbigQk6u1ymITLqZ0LUkZfUWG8IpEclcZ0sZty+cjs2oLC
Y3lzgBFsXRMlKLbNkUBrxYMoFadrnCrBJp0XA64dW4ofnoD9SFSvjoX3uhTLut85
qpiVLXr1CLNlDEkN69roRF/3ZtG5ERwyYxX5BhEPmSy3Fmc+sxJeC6agDJKsPD0A
xI8jwJ7X47KlByn6G3vPdEYYrPYjqL03ZGpqgLA5RpE7xvejjWs=
=WqCS
-----END PGP SIGNATURE-----

--etvqojymx6pytaoy--

