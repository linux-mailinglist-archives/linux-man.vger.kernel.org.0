Return-Path: <linux-man+bounces-3840-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 86A46B490DC
	for <lists+linux-man@lfdr.de>; Mon,  8 Sep 2025 16:11:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3CDA33C632F
	for <lists+linux-man@lfdr.de>; Mon,  8 Sep 2025 14:11:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 64D992FFDDB;
	Mon,  8 Sep 2025 14:11:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="WqHScaTB"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-yb1-f172.google.com (mail-yb1-f172.google.com [209.85.219.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEE3F19D8A8
	for <linux-man@vger.kernel.org>; Mon,  8 Sep 2025 14:11:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757340668; cv=none; b=btcZGxAmHHw2pj8AZ7wRA3dW+JHfxjs7yuu/6A0wgcLuIMA+GfHpxy2MfMpBrFcWqwmIDIKR0PRm/6bH4kNyN2yUZSktCNWgs8BG14g46JdiWwPNzQy/4dBaBHgw+Ajt+TxtdECvbuFd3gcw71iM3armhl+BbUWbkTnPaSU4wgU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757340668; c=relaxed/simple;
	bh=e68KlfLYHPWayf59j9Gto3l6vmRWxBTi7c1eiMN0xrE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Wq4LL16Z9bBeTEhLRXIfBIZP9mhaEyjhAPFGYdkzxfVjUbUkDZzDMuNPd3WhLFpYtJi/OK04i7BRIHjSePKt7AwUX94w3DdNStipQL9HUyoE/sgQnSTmrLxBDEhsYZP9+UGQbaLccUcSYMkQRiMsNJP+FFpq93wEo1OftlkATsU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=WqHScaTB; arc=none smtp.client-ip=209.85.219.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yb1-f172.google.com with SMTP id 3f1490d57ef6-e951dfcbc5bso3739347276.3
        for <linux-man@vger.kernel.org>; Mon, 08 Sep 2025 07:11:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757340665; x=1757945465; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=fywqWh1ymj76xDZ0xJf3rc/MruKPYea+mLgFChbZees=;
        b=WqHScaTB2wqOoo9V2skNPYlnw7pW1ZnJNv6Ttalrs8M8umjxh785SBILpPJtPQESrK
         NcErEdz/sOwWrqukBWJset3t6U5bsndNs5CeUwuU/ymi9aNLPv59v4MOSUD5XmwvA1Ko
         LXrbdd/YysgoJvLS3hFQAMTMpthVT7O9hmgxaUH6kxyQhMVwDVIZqlzoOqG4shD8O7G2
         2fplpAXS37oeI1De3ngRCnm+OtIwtd+lEM1efYDdHWmLRi2McvT7GLfKHMvy8rN7QwHG
         JsP8YYw6zSTuCPhQ/kD62PPtXIVAEkyBsKiTNNEK2E1E/eJXOLg0cRPwd3geOF78Z97T
         yr0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757340665; x=1757945465;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fywqWh1ymj76xDZ0xJf3rc/MruKPYea+mLgFChbZees=;
        b=qrfdB5l6Y/z/xNehkFapR4+mFPvR7uNXrFiS25ds4esPe7ap/OcOloM5WVJ18ZX4WW
         vv0GiQbaoRVst8DfhPzxjh25CLCFbyjlivUZviw/pvbI/1sHGysBABDAnipuLMwVRsXD
         ls0ti15UBbm00gKiobNCbdFZWKkmqNVxGLDr/4qlef9Jq6KM/Dtkl80gf1begHfj+pzV
         uAEa1vJDu3KMaLHHQ73FsTB5xWP4TXpG54JiZmYMMItO4ATNd7NB21C99lldHydvTdQy
         2wYqc0+OsgFdLK9YuZAE93RliOX++csFlmyKquaNd5aGbgyMx4b4RWz48bzAU84DHPJZ
         u0uw==
X-Gm-Message-State: AOJu0YxxCzOPTjbKIyu8PCOTmkbhCNSoOKtlEliqnV0gpnIeChA74UyJ
	9ljfCghCpDy718QAsTR0kjUG2BNY8RGHL91NPa1IelyFML58JH33Rfvp
X-Gm-Gg: ASbGncsKRUsW5pC7/guBrrroHywDgvUPz2PTZKPl9BJiS5iXBeNu+DFnEQWhrJyakwS
	yITM9Kn+Wj6NYGLGVrj35tAJW9Nha1GUVeIMJoanDNu4LhUI9eglfekkCy1POrgLb0261LPhrLw
	jvlNczqKfX+6wlw3vA4zMJo9/+1WBbTw97odfjsm/qCVHkdZ6nG7sM3yFbP4ytS+xR/G6pTMnCN
	p8MlDw1PDmtzHpzDMtpl/arHmVcoRC9+fKYsb8y9oM4gqFuJcvfoRBqejO9DhlrDVHlX2H9W1lH
	NjkVDQlkWA/CVIvas8Zb+Hzsb6WKE5fJVbz+CVGLGrF+nRGgKHr58BKipyB1hnq0ZifXt2Gfd0R
	+dN9q9a6umQWz
X-Google-Smtp-Source: AGHT+IGEorHPGXGuDXiLfC1lXI+qIzm2MqDoKmdMkPkK0AXOP6CN99bCCXGPUKGU6ofz+CJXUM0cXQ==
X-Received: by 2002:a05:6902:2191:b0:e98:9646:2205 with SMTP id 3f1490d57ef6-e9f68a9db96mr7521350276.52.1757340665358;
        Mon, 08 Sep 2025 07:11:05 -0700 (PDT)
Received: from illithid ([2600:1702:7cd0:e980::41])
        by smtp.gmail.com with ESMTPSA id 3f1490d57ef6-e9d5e4b9182sm4297412276.16.2025.09.08.07.11.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Sep 2025 07:11:04 -0700 (PDT)
Date: Mon, 8 Sep 2025 09:11:02 -0500
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Cc: linux-man@vger.kernel.org, Alejandro Colomar <alx@kernel.org>
Subject: Re: [PATCH 2/4] man/man7/sched.7: Update the documentation references
Message-ID: <20250908141102.ie4yoo5xasiimybe@illithid>
References: <20250829160200.756194-1-bigeasy@linutronix.de>
 <20250829160200.756194-3-bigeasy@linutronix.de>
 <20250830072857.mw224c532jj5xdlj@illithid>
 <20250908135134.lMIYucZP@linutronix.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="zazx3lfx25bo5is6"
Content-Disposition: inline
In-Reply-To: <20250908135134.lMIYucZP@linutronix.de>


--zazx3lfx25bo5is6
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH 2/4] man/man7/sched.7: Update the documentation references
MIME-Version: 1.0

[CC list pruned heavily]

Hi Sebastian,

At 2025-09-08T15:51:34+0200, Sebastian Andrzej Siewior wrote:
> On 2025-08-30 02:28:57 [-0500], G. Branden Robinson wrote:
> > Thus, something like (hand-written diff):
> >=20
> > -The Linux kernel source files
> > -.IR \%Documentation/\:scheduler/\:sched\-deadline\:.txt ,
> > -.IR \%Documentation/\:scheduler/\:sched\-rt\-group\:.txt ,
> > -.IR \%Documentation/\:scheduler/\:sched\-design\-CFS\:.txt ,
> > -and
> > -.I \%Documentation/\:scheduler/\:sched\-nice\-design\:.txt
> > +.UR https://docs.kernel.org/\:scheduler
> > +Linux kernel scheduler documentation
> > +.UE
>=20
> Thank you for the suggestion. I keep The UR macro as you suggested but
> I move the description before the UR macro. The reason is that once it
> is as suggested, `man' does not show the link anymore. I can click on
> the link via `man -H' but I would prefer to see it right away.

Hmm, that sounds like a bug.  What versions of man(1) and groff is your
system running?

$ man --version # This will fail if it's mandoc(1)'s "man".
$ groff --version

Regards,
Branden

--zazx3lfx25bo5is6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmi+4+4ACgkQ0Z6cfXEm
bc7frw/+N+c46gNdJPVVcW8y9Rv7nRA7+bw/o5qylzt1NFEM48T8wSXkgzVNH/0b
u32wcKIp9ASBU8ORD6Rmug/M1SAr8nSkZhxBzLIUpFH30qGmlxZgfiy7kBjnG3Ml
grEa4s3CWARxbL9rSVkLLHA2k4kiu18eyfjpFcqbEBO5eghWtoTQsGwqoijVcvhU
2AQ7c9ZxTXCpGBHAnU7GQXQlC50BX1n44Gtx8Q3FHZteeNzR7tFyRF3n2ISFYWPH
zwM4F+/47ZO+FtuRPRYuv1JDdFBG1Hwh0lRtO0GZNJnoJoXSQrm3aa7DlTOjJq9B
0NFQF1L3r1NdKDBpo6qy8KoRy9p3uw2r+e6bS7JUwnyPJUpOAU3Cz1OGPbQcAcOw
30DAi5KuSmKhf4zI5ToW9xWBOGarNkyU/932XLLyrhqNxkNZyxxfQZ+4zpMwUb2l
dBqgx/t/PbP1nLRaA1WKXxslAtj+/yLD2nuW+4rvlYFfGXgxp2ZO6mzSDZ3K1zkt
mdryvtzZLq1W5xFoFMi8fR3l/hZF0o3MXwXo9Jf6XT/qsKBatfHHin6XPE9jU/xq
xa0fxmwxGkTqyFraKON2xSJ3Dne5/d5pFUOEtsaOKv8WMAx+nncGXcT8wKl4N1aR
8lKPxiyl4NBCIRg6VDnzCgcSXUAzcVAN/oCkQfxvycTAe7ZTDfo=
=zVYi
-----END PGP SIGNATURE-----

--zazx3lfx25bo5is6--

