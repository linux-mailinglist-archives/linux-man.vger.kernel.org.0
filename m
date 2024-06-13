Return-Path: <linux-man+bounces-1173-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id BBF67907D8B
	for <lists+linux-man@lfdr.de>; Thu, 13 Jun 2024 22:41:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2B595283768
	for <lists+linux-man@lfdr.de>; Thu, 13 Jun 2024 20:41:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6119013B58A;
	Thu, 13 Jun 2024 20:41:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Qlm6ZdW6"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-oi1-f176.google.com (mail-oi1-f176.google.com [209.85.167.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D85A813959B
	for <linux-man@vger.kernel.org>; Thu, 13 Jun 2024 20:41:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718311281; cv=none; b=Pre3N8ny1x+jdMPXv3GUHzOK+NAMtbM54NskVzv0W3GZ1hE/AFreAU9xKWgki6gF4Nl8h+hlPn6DO97a+0gX/syMweNQThnyORb9kNSVErfqtDWf0s0+CW49HoCSHsJ396czqpdr4zMNhf3aof07ENWruAGH34WwnjfEgoVotbI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718311281; c=relaxed/simple;
	bh=B8Ge/ykrJZgCvkeLnBxgFK0SEGKxp/i+74xMAy0sUMU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PPdyqt0TV1buT9A0eE9RhLvXdLBTVyoKWsbe/NeTc9xgXCmW7xE/B+1n5zzCQa4SUyAdU9TxJNvV9v0R82dCqiJpg46FKUM6dCO+GyNmjNSy54NuMeaoFc3IncErbys5gc0QQ4t1+ZE7Sopt2Po49YJKQEv30S8dkeIXWw6VNXU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Qlm6ZdW6; arc=none smtp.client-ip=209.85.167.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oi1-f176.google.com with SMTP id 5614622812f47-3c9b94951cfso793246b6e.3
        for <linux-man@vger.kernel.org>; Thu, 13 Jun 2024 13:41:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718311279; x=1718916079; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=jc1eDa+jOBEYvBimg0G3CKJKlcHXPfCeSM2/XAowdPE=;
        b=Qlm6ZdW6mYd0kCrNyNqaapIrA/QkjW8D0ulvkHOHVBNE9BSVSYLMjMA2+NSyZZLvM8
         KNVmWBDaN76EcnT+TEQXIgA1Ko3wxb5P/i2i3Q4iat0ad4gfpqBTttuFLcEgEnNelSHl
         77oqvMLroNHFnVPpbw+nMpnc+znLIcqdvlTxo5zTEe8ZMuHnXPhnWMCB5wm5KBww9y96
         wziyDajME07h/Ax2+Y9DRGF7IBcAYtX7sF0CWSap8KhUS2mtNjeuQZaoMDbrSa1BG/yl
         rnuXqdJ21VF3qF1iospLmoUX5ZPLB0oLBr7mdKb3QsP3G+/qhPw11G7jahbDVD2XDHcD
         bjcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718311279; x=1718916079;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jc1eDa+jOBEYvBimg0G3CKJKlcHXPfCeSM2/XAowdPE=;
        b=FviV9VE9cMtof6K7k6cKdPmBtc5EaTWjDs7AS1pDhSw49NQvpTeU39iBjccP3QyolN
         zkQ5LT4CoXMxKIrXMQRkFj2fLV1DPaOVg2OYtx8vRGUbM0rGyoGTJVS7wvIJAa71RFBw
         rLOaSYV/+Jn1Vdk+uu3+77fasKtmt9QemAeAVmFmilVXpVYGxn9tHSkEOdQ9z57R2Kp3
         GtwCXHQsMMBPU6rcHb0dVE3N3A02J01qm18GM/K5FQrh3VmfgGNvh4Snk8IEdqgJ/no7
         bELT1HgeiFksxIhDq+Z45tp3yWtehqZ0a2qRWC4SahIJ7FEZh57RpfD15JhwbusypSxS
         lY8Q==
X-Forwarded-Encrypted: i=1; AJvYcCX0VphXEnSv1cLWIAg4LwxamHIvHJkwTJizGGPef9xRshvr2gBRvWr4+9oB+NZOzB+xWxkQGDTZIxxuqgHT6RWaIZyOBfLi/nuz
X-Gm-Message-State: AOJu0YzcaS+YyC9qqjHhdEFpvAkefrGNUzh74SYeZ8xaV3RLqQauExve
	488CMo14tVFQR7EFs+GltFBEUiliUVkE9uRIV6UUIYMckxQMJfyF0TuEGg==
X-Google-Smtp-Source: AGHT+IFqH44YW/D2E3GwPlP2scOfiUOH1bGIWoPo+DNQesAQdHg96VJR/HNj1b7QCU8sh3bU7FdwXw==
X-Received: by 2002:a05:6808:148e:b0:3d2:1b8a:be71 with SMTP id 5614622812f47-3d24e9f0787mr772490b6e.56.1718311278799;
        Thu, 13 Jun 2024 13:41:18 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-3d2476e31c0sm310964b6e.49.2024.06.13.13.41.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Jun 2024 13:41:18 -0700 (PDT)
Date: Thu, 13 Jun 2024 15:41:15 -0500
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Brian Norris <briannorris@chromium.org>
Cc: Alejandro Colomar <alx@kernel.org>,
	Dietmar Eggemann <dietmar.eggemann@arm.com>,
	Patrick Bellasi <patrick.bellasi@arm.com>,
	Peter Zijlstra <peterz@infradead.org>, linux-man@vger.kernel.org
Subject: Re: [PATCH v2 2/2] sched_setattr.2: Document sched_util_{min,max}
Message-ID: <20240613204115.xnzdi5gmupwoi7ml@illithid>
References: <20240612204504.2651521-1-briannorris@chromium.org>
 <20240612204504.2651521-2-briannorris@chromium.org>
 <v4beebxguvvbhjgroqb7erykafxuez3svqf5pavvi6bmfjvuup@xsaim44xgdx6>
 <ZmtWuBD51thBxnBK@google.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="x5bmigpzfuvaypna"
Content-Disposition: inline
In-Reply-To: <ZmtWuBD51thBxnBK@google.com>


--x5bmigpzfuvaypna
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Brian,

At 2024-06-13T13:29:44-0700, Brian Norris wrote:
> Regarding the nonbreaking spaces part: I'm not too practiced with
> groff, but the wording around the \[ti] character is confusing.
> AFAICT, I actually need to spell my expression like the following?
>=20
> 0.2\~*\~1024\~=3D\~205

Yes, that puts nonbreaking (but adjustable) spaces between the numeric
literals and operators.

> At least, with trial and error, that's what appears to render correctly,
> whereas \[ti] renders as a literal tilde.

Yes.

> Is man-pages.7 [1] incorrect?
[...]
> [1] from `man man-pages`:
>       "In this case, it may be worth using nonbreaking spaces (\[ti]) at
>       suitable places in the command."

It looks that way.

I suspect that, in the man-pages.7 source, something much like...

nonbreaking spaces
=2ERB ( \[rs]\[ti] )
at suitable places

=2E..was meant.

Regards,
Branden

--x5bmigpzfuvaypna
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmZrWWQACgkQ0Z6cfXEm
bc7+SQ//eEGtkTu7728UufpH2fTmEl2/uoI1fE/sXgR28cl8C7vKPyNpMD31nx6t
VDqFMaK+pyicoBLFBHZZ3po7Sd0592q12HvMkR+YEId94/Zka1MQYvFwHrSgwk3h
0cKXY5EXikL1PgXge3UXoiuhbY1+J76hzo8huTuBEjUEYefqJGzwUWH7ilnUIgct
lC/IPmKbZDI84Y67tSG824oGwiNiYCNYOI9v7AGK5Bp/8LRmomdNSJvSTBu+XCNr
uQW3fwlh/W/F9I17b5CXIxdWn2t2ZO4FBL6+SWwL2NozO1V9QlUBIy0Sx6PE1aSF
A7R5Xo2BWG8rx6yYyZbL9ytI2nSdviEpfgVX7OBE/Bw33s3X55qiD5hS2A5NMJ74
mW7HGdiBnbUAh9HHX3Dvl8A5My575mwbIzLRhyLaBREzXQd3rT7yKMN0C7NJNPX1
ydPEAMO26xRl6Jv2m3+mTSvpGQ9hy01Xemv5+p6ifeK7AxwpYaU+3PwAnPo54aj8
uhI9xE9AHEbzfMPDzdNQf3LHdC+8/dcJjV/aNY2jimTkKF/y51CdrvlG+kVFr2SS
D2e66Pu97lF1UVaGG+MWHpoCIjcVi0V5wDIgcPDDRXJj1El7xP+J45k0ynAp3dFt
ZbPMNN8RNj6Hqd9BOn8MahOosQ6gzisPc83HnyaNka5mOQhXH/g=
=wOS/
-----END PGP SIGNATURE-----

--x5bmigpzfuvaypna--

