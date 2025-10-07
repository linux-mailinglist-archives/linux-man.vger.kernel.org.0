Return-Path: <linux-man+bounces-4071-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F255BC2968
	for <lists+linux-man@lfdr.de>; Tue, 07 Oct 2025 22:06:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 905EC3508E1
	for <lists+linux-man@lfdr.de>; Tue,  7 Oct 2025 20:06:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7A0F021C9FD;
	Tue,  7 Oct 2025 20:06:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="BUjr6PzZ"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-yw1-f176.google.com (mail-yw1-f176.google.com [209.85.128.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CABD91A8401
	for <linux-man@vger.kernel.org>; Tue,  7 Oct 2025 20:06:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759867602; cv=none; b=fw5e+44hqiz6q6cmDjGs2fl6YWE6XHNZghaewt1a0RFyR2XsiOA3scxOM1rTpKAVv5HGThZFC90pQamDXWCtlUvbEJVRXsjyg+aRaE4pqCwjYwlU+8P+kIj/xqRqfr4o+1eBnLKZe0JMLejgEpVIMCVQAiduWR7QgKxnnZnrXp4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759867602; c=relaxed/simple;
	bh=Gz3Y7y7Pp2ZuTt3yS0cbrrtqSuh6a61KOOCGDKzl9BU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QwXxqTyN29oAH3WtyziSFcn4/fC65oZPzEQYGZ3Tl9kRYo6He7S1qwgmQmbDRqQxAOmFcGJkN02cs4LMYOIUgzIvvHg1kcwBidrWMhRdnuhzo3n04500bboNa+BZOTlg4aTyD0AZ8POxK4HxeKrJvTkYfJDizqBl/vy98sz6fDc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=BUjr6PzZ; arc=none smtp.client-ip=209.85.128.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yw1-f176.google.com with SMTP id 00721157ae682-71d603acc23so73696197b3.1
        for <linux-man@vger.kernel.org>; Tue, 07 Oct 2025 13:06:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759867600; x=1760472400; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=GPnnPEaO+M7nRKFWvA6X55nTIqHWdSj2lGiMmt5R854=;
        b=BUjr6PzZTEAf+qDpfwUYJHxkHiRnwg7opPWqHyCMg7LtQNbndClP9jIjlBfH7tc7jf
         mh9z+bfoSMBQxnTx3lY9xhunh64fIN1qxgsH41kqKly0lknCkeRNsdbHrkw6+YVzfvPV
         biHrP0vzIF2bbQrtEUwipRXfkwdzEdqSh6p8HBBS9ysLmVufMb5qHfQMYefjZ6dVueVS
         VrL3Y8cZN5nHDRMjN8jYOQGK7PbBCDHtx4ZQy0DqBxKFpi8IJZ0/rNpJ5tFOVhLWd58b
         Ids2p67yMq6eH9hNWPw6Pd9+pjJF03Y1Wy6F4nH4vixZsxi4fflhVyNVshVSCHVyxiyL
         Wqew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759867600; x=1760472400;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GPnnPEaO+M7nRKFWvA6X55nTIqHWdSj2lGiMmt5R854=;
        b=VG7ZgWfin4RzXks01Xzp10svAW3Cx6y2NUnW4TZcvbWzBzOaiiCS7siZaHfzRYKSFL
         kE0k8VILwMIoLj5NQYJ3K+e/mUZVHLB3LUXh7f/gdULx44qTp+TR7fU6C36PVXgszBqp
         IXcGGPFQUtKdkEYnjxun4qoOqOO/KIedxUy1YoMTRvAPgPT1NI/FABBqogx3R3YtgyZe
         VWO/537dNvw3Ih5i5+ft9fZR4O0glNFufzjaAJ8OMpte6p4tljyaGAi9/VB0mMvN+b86
         eF9bNiL/BHBEc+RYnq5ldhB5WlDnqB1Y17mEmGwQkof0duwU0hOzNhV3+JF61ksOlZkH
         ZbjQ==
X-Forwarded-Encrypted: i=1; AJvYcCVwcuoYj7CBhq0+s8QmKwvSFcaeIy88ZDL/FZd/hRfbOC0UGGvvb9tTP6gWTi2GqA3NFVLbO3F3PQg=@vger.kernel.org
X-Gm-Message-State: AOJu0YyyxFJKJbYouqdnYd9UqIiB9g3SV7TzjBgHn0dv3nBsmerhymCo
	Z3QYca4ha6icDiXiaahJC3CHBoKEwId4qxDtBd4VasNTQXIKebOV1tWJhRrYXw==
X-Gm-Gg: ASbGncvh+bYDO/drpIhPDzQW/5WSN+sSfs6hBcQR0dA3drbnH9Qu8IUw12hUOMEcKhB
	y7w3vDevnJwM/BOE/DlEwwL74Ul7viYZyOJUoTD3SNSA7CetvYooXTFb1E81UDj+3fDGNX8v3iO
	DtmfuS6j554FS1JeCBPjCdIo8nbNtlwd29o6lZOBcXwf5RFvWH4MYSb4tsuRirdYLhqoUICuKCq
	nrOe4Zveo7qWeJjaXJHXy8s+jVkIgC2pePp1zBPpwvzWMflAi0yMeEFXkKKwAmvg3JD09EEc4P8
	PXkCGp9RjR0M1qBqvqV499+6R7ySWkGJAt3kI7qWJlL4Ku8t1QbAJXLnaBE6xUb/mZQTz2VRnjK
	WKOGG4ywPvObq7//YPFWDf5ocPHHgqcvCJxoX
X-Google-Smtp-Source: AGHT+IEMn/Zu3oa/uOOZ2TCaw+OvEIayzdV3l/TL6+rZoeAPHpjhyUQEhK2k3whfTeZZIx4LYBmHJw==
X-Received: by 2002:a05:690c:f09:b0:771:2eeb:9da1 with SMTP id 00721157ae682-780e157f6a0mr15325957b3.41.1759867599595;
        Tue, 07 Oct 2025 13:06:39 -0700 (PDT)
Received: from illithid ([2600:1702:7cd0:e980::41])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-77f81c068f6sm56094497b3.5.2025.10.07.13.06.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Oct 2025 13:06:38 -0700 (PDT)
Date: Tue, 7 Oct 2025 15:06:36 -0500
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Collin Funk <collin.funk1@gmail.com>,
	Bjarni Ingi Gislason <bjarniig@simnet.is>,
	linux-man@vger.kernel.org, groff@gnu.org
Subject: Re: groff build problem involving "ckd_mul" and "ckd_add"
Message-ID: <20251007200636.bmsiu5ci2ue25qkg@illithid>
References: <6zdtfxpuemava6k4zecq5pfzjnothtlqckm5wn5d2b2vam5xtt@dkzgvtc5vzf4>
 <20251004094243.avg4hvwwir7ink5u@illithid>
 <20251005134812.jvwyjjklabmnzejp@illithid>
 <66cvsf636zixy2o7inf7usaq4r56fiwaewfo7czjjbkv3hsqc2@vcxyruqmonxa>
 <20251006085149.oor3kddfih63yutt@illithid>
 <bfl4642gesg23ysveu3dfbkzd4orct75malbxnyg7biud4aln7@mzh34qxcd65p>
 <20251006104224.yw5dusvjjkw2ymnv@illithid>
 <yp5rnfroyllwzxnigmpofdtpycr6fakcytpp2jof2upemftn63@kcpoibftbp7w>
 <87frbvea8g.fsf@gmail.com>
 <354kaidblgryvixec3l3fcs3vivg6i2xloyqiyzzrokp5cxlnl@d54fq3xdfep4>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="7n3n4horxxhphukm"
Content-Disposition: inline
In-Reply-To: <354kaidblgryvixec3l3fcs3vivg6i2xloyqiyzzrokp5cxlnl@d54fq3xdfep4>


--7n3n4horxxhphukm
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: groff build problem involving "ckd_mul" and "ckd_add"
MIME-Version: 1.0

At 2025-10-07T10:47:43+0200, Alejandro Colomar wrote:
> On Mon, Oct 06, 2025 at 07:06:39PM -0700, Collin Funk wrote:
> > Using the following command I can make ./bootstrap use the master
> > branch from my local checkout to copy files:
> >=20
> >     $ env GNULIB_SRCDIR=3D$HOME/.local/src/gnulib ./bootstrap
> >=20
> > Allows me to build groff fine with g++ 15.
>=20
> Thanks!
>=20
> Branden, would you mind bumping the gnulib version sooner than later
> to avoid using workarounds?  That would also allow us to use countof()
> sooner.

Done!

Regards,
Branden

--7n3n4horxxhphukm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmjlcsQACgkQ0Z6cfXEm
bc7x8w//a6hvz0pynNFFcBP2mHbRMVcg+Vuye3eSgapgJlKRbW5zwP0uYzqAPyYC
/yL3xJoT25XRQjq9k1XlIFvSuhZ1SVLh1QXiq/7ZD+OHU79LBLn6MJjiP7QHfxjJ
JBfPOAPYKto23N0xQx4UduOteNi8onYloTVR/PUChwFkbIjwXMK0TGhkh2jQB2do
MvixnekCBRA2fWdru1Gldrc5gWDcgJKn+eFXeJVs6AlXQa5UL4nFLw0Ddjv0Ccz7
bYCahWJE+iCmWd7E7RnSefQLeuDmQkjKYs0JOlO9LXBnAd9Ouv6H2wP5lbwnao7K
w256rTbHSfZufgiXoFqZkopcknyENXLL+fT1Q5GxiniiRxSKO/YqEWNRR1cwG3oC
1bwHgNZQMwdAA5V4cFH44GjH7wfzLPTVl9wz080+4dHC1/xQ1eiNArxIcYLLjTKD
QktH5MueVXduxGZtI15IGcfka7LmdwcICvPaE0TFm0/WRpX1XHXbPNpFQ4aXDRAV
sicRAsTbOIDlC95vtPCN2e1n60qeX2WmXln4FQpdOpHWuUlMNx7XO/f1C4Pqq4Lm
ZCvfffiIpSnsvPJ/EC4WuwuP3H2LjXDvmssEbHmM6CPtre0AwVe33BFhilyWO9kS
fTpBX2pw+Om7SCp5uIQRHQa3z1f19ogk9lz6OFqzRzoihmM5kEw=
=uv+e
-----END PGP SIGNATURE-----

--7n3n4horxxhphukm--

