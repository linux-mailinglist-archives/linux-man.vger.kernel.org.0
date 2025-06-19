Return-Path: <linux-man+bounces-3188-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 706A0AE0F09
	for <lists+linux-man@lfdr.de>; Thu, 19 Jun 2025 23:34:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0C423178F6B
	for <lists+linux-man@lfdr.de>; Thu, 19 Jun 2025 21:34:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 289BE2459ED;
	Thu, 19 Jun 2025 21:34:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ZEGEDSU6"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ot1-f41.google.com (mail-ot1-f41.google.com [209.85.210.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8516830E843
	for <linux-man@vger.kernel.org>; Thu, 19 Jun 2025 21:34:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750368878; cv=none; b=GEjGK07XQLI8H10DIzDxuBr+0VaPnRX0FVreYY+vhBA32Dacb1VTIPGlKBqJKZQN4Li+DQ1ouCb/OIj2+AJ3WnuNAr1uBBj27up8fHzaNt498b4ham9hAbIF7hoq+aPYDQ+i2f102vc0FltLyhC09QBCBSy54sPQbkO4Li7qeAY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750368878; c=relaxed/simple;
	bh=4K7pRAA/nsjHCWQcdxWSz5BsILhw0IH3hmWeW5Nb6hw=;
	h=Date:From:To:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=souiO2tIVvC9IZQ8fheuoT+lf9rKOiWS7AmKEtOvD4I+kq+UAEyY8xPi53EXz3AELxqVS9SyBXaOmuJtC1r8Y2E9A+2AcB+USeUzJ3xfvFtalcoLNkixcBCdagKgVo8XO8EWKkEgD7TZ5dhh+kRr6nd/mQ0hl+8sWm1v3LPXgXs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ZEGEDSU6; arc=none smtp.client-ip=209.85.210.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f41.google.com with SMTP id 46e09a7af769-739f2508ffaso986401a34.2
        for <linux-man@vger.kernel.org>; Thu, 19 Jun 2025 14:34:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1750368875; x=1750973675; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=OQaRHX6XgImxlwbmjdiE+BvZDAoNMTCJ3Ep2e0/2kqA=;
        b=ZEGEDSU6jLMDWLYRb8BIOSoYVQ1VTwKje9iuH1z9l2l6gAPnYM5xQ5mcv3++iyzAj5
         PU/Z1OaSFvBWt4gTxoFFQTVCJk4/QArrZh3IkGV5hb0eoJH51xWtxPKBNBlIyr88MZ49
         lMOvV/fRL/LBJTeccfMn/wDP9D35+ICZFveCblYAK/f90qHSJNvv/mLgWCJPld1qI0AV
         Rhxe57E3HcAX7hjnve5L2/tQq/ar5dOMk1Oy1GHRad5ehULrbVjCscl9kwW7ZLSw0SiS
         g/yyjj4cb8KDf9WWX/eOsnbGaPigWVcnZ2alEBzat4s/Cp7nn9F4NewQZ4wDf4uTHbrL
         KsNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750368875; x=1750973675;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OQaRHX6XgImxlwbmjdiE+BvZDAoNMTCJ3Ep2e0/2kqA=;
        b=SEg+O5anBRZjXCg4UQeL8LY6eLy/kE0byxNsEXKxNtUOn1pYqgP4K7we+PJrF3Evx+
         QJNC4Of7hIDiF94p+9AkUNrIcgi9q1SFIrY6xkXIdUE4NxIn8e2hqvuFYt8/Dq2wkG3O
         ITCscP7m9oophBsPNRnwbVhLkmxRqJ4TE9K6HzkDnPO4PojIhhBI/K+zBb91vVcledBa
         i2ke1hikyylgsiP2MHV9uZV2yP+oxqnJoPWHkvRCppbNDsc3vuIOtbqR5JpTKXpP/hEo
         2r/sbG+jtv76QpfCoDB2bJax4ybHZIkjL4FtJK1AJ5CxxAIy6A30Oh08q+x10nijvHer
         gmZA==
X-Gm-Message-State: AOJu0YwK1sEPpP3MkShrLlFqDPYF4rMi4PyHvA8esBmydwxSJ16ZXkWS
	MrApT8DPdpYWQwstTTIkptAEvLqJ5AI00TYDPrIUt1IqWI6y0EyOBwXuBYdufg==
X-Gm-Gg: ASbGncsSToXlgnIPf66kc1HUrZtpydx5gL+y9aXyWSBhG2By1AwYOilPUYMloT5iXPl
	ZWm/DPuyH6WY/e27PPyuNdqEED26W5wYYHNhcubuHuPo6gRSAj2agO03uLMTZPHu8/Fcq4HjRfN
	PtWkU5OQqRaQA7vo8bhbKYUvBA9as4jntubNwTgaanLMcyJ1mwtTUxysydUjZU+6znBy3RNDOtS
	JK0lDo+THwfIDGTYARlggMuO9U7DCLSwIfKn0pGeZxrCAeeaez9xhHgk4+csO5Srw9UcWaYMMfW
	wDDzLNgEmdkwsvVzPLveDkkKWM4WQNC+t3+hf00pl6PbdCr0kz94
X-Google-Smtp-Source: AGHT+IEKsVhziuGNzai4xudRPApfJeR1m90Bjt8/jbq4ztFJdLPyQHTYAc/Yds3ep7lzyzQOj5I4Xw==
X-Received: by 2002:a05:6830:6489:b0:72b:872f:efc8 with SMTP id 46e09a7af769-73a91da171bmr270969a34.24.1750368874971;
        Thu, 19 Jun 2025 14:34:34 -0700 (PDT)
Received: from illithid ([2600:1702:7cd0:e980::41])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-73a90c9218bsm72752a34.33.2025.06.19.14.34.33
        for <linux-man@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Jun 2025 14:34:34 -0700 (PDT)
Date: Thu, 19 Jun 2025 16:34:32 -0500
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: linux-man@vger.kernel.org
Subject: Re: [PATCH v2] statx.2: Add stx_atomic_write_unit_max_opt
Message-ID: <20250619213432.447iad5445dfmo4b@illithid>
References: <20250619090510.229114-1-john.g.garry@oracle.com>
 <7ret5bl5nbtolpdu2muaoeaheu6klrrfm2pvp3vkdfvfw7jxbr@zwsz2dpx7vxz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ak7dsvz5mzo3yvtr"
Content-Disposition: inline
In-Reply-To: <7ret5bl5nbtolpdu2muaoeaheu6klrrfm2pvp3vkdfvfw7jxbr@zwsz2dpx7vxz>


--ak7dsvz5mzo3yvtr
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v2] statx.2: Add stx_atomic_write_unit_max_opt
MIME-Version: 1.0

[dropping all but linux-man@ since I'm addressing only a point of
typographical style]

Hi Alex,

At 2025-06-19T13:05:30+0200, Alejandro Colomar wrote:
> > +.I stx_atomic_write_unit_max
> > +and will not be less than the value in
> > +.I stx_atomic_write_unit_min.
>=20
> This should be IR, and the '.' separated by a space, so that the '.'
> is not in italics.

I recommend documenting your preference in this matter as a
linux-man-specific style convention.

To many eyes, having an italic correction between the slanted text and a
period looks bad when typeset.  Including to me, although I admit when
viewing *roff terminal output where underlining is used to substitute
for italics, having a comma or period underlined _also_ looks weird/bad.
On the bright side, more and more terminal emulators are coming to
support slanted faces.

Further, since italics are (also) used for things that are not
necessarily literals, it's not necessarily the case that, grammatically,
the trailing punctuation should be set in a different face.

Regards,
Branden

--ak7dsvz5mzo3yvtr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmhUgmEACgkQ0Z6cfXEm
bc56OQ/8C+pvA9dZ8vu2vup7LT6v3sVDbS7DeI1M4bTxS1ghS7nf+cYCZd+XCtmQ
oZxATkq1h0PFgrqzBfpgogjEvhkO8FXpJKCaOqRKElZ1ibTVRA+GJ2FYpCtIsyaD
d3YmQftQ9b3FdqZfPDPc7lsDwsTOdDJW4wSLMQjH4fURP930evpC3+CbqkzAsXDB
B7PZjrAzhLqQEjSd/Awiw7P/vDRlRpBq18mOYJipundtYsd5AxWLlxAeA9DRIv1h
AL5qou/Sz2jNdtLnc0s64wahwSr0cb814mCcY5ijx+XSJ+dzguwvYci9i7mPKyig
7QaRekic4UdcMNKEE05fwQ1Bg6WLUusM+l0/9ZTO34nu7vpc+xXYQqca1HjUtYxz
ckv3t4K0ySYqfW+Bzcghs5a2jWTaPR2W3cGee/PqefxuumzAmGxJfb+lUFkZxDVG
K+Qe1dQIPAHn7kO12Hf0WVHvYdbzw/QXBh3DYAhRQMQ4iuRTBBFzBdDHQJb88yXo
UdTe3AX4rFme8zTmbftk/KJZqFga4newbsZ8A3BOe3IaHkEZTqbq3ZfLi0bR/qQp
v6zridungjJXAvnOGLFmKlWnK2Jhs9pEvMRfE/W74o0gitLwrXmdXfVcfbvrXk/M
vgibsxPboeuEWmzYA2ZoelupnPMhmpy8SnlGqGd9IlxvimLVEQ0=
=lIZA
-----END PGP SIGNATURE-----

--ak7dsvz5mzo3yvtr--

