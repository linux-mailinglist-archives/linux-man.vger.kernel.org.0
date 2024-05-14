Return-Path: <linux-man+bounces-917-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 169D48C5C17
	for <lists+linux-man@lfdr.de>; Tue, 14 May 2024 22:15:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 76717B236D8
	for <lists+linux-man@lfdr.de>; Tue, 14 May 2024 20:15:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DBD8918131E;
	Tue, 14 May 2024 20:15:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="kO0xn6Vq"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-oa1-f53.google.com (mail-oa1-f53.google.com [209.85.160.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 647E72AF09
	for <linux-man@vger.kernel.org>; Tue, 14 May 2024 20:15:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715717742; cv=none; b=s4tUtY0CXh6ToCWtcbOOmKorPl/3IIv46YKomewRplSi97JrIy+Xzkahk8ca68hmLGF93I8iwsFbGq3mYZnicDTEILupgL1kkilgj451x/HEJjp0pkmc11aXaN0XiloeHM6xWHFh+lduVSNFpAG1Si99HLqG0YGUR0LG0nGjee0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715717742; c=relaxed/simple;
	bh=SwTUlx72RPj8juqGHmR+N8+joy+Yio83UEcLbE0sQq8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Kr+SBLaxnrFCWWSuFcY6EVF/SodxED7UVmYZbWQYMHLyfn5wg6ELogMPSfspOUFqSAF7X6SdwHrks+nfTcNx/EH7V5eLBi5C+cwnbJx7vWUXXLWmaW//er5e+/U4DGsXP/POz923HKKPA9l7GXyrtUyWawiMEuE7S9NUyWBXbiE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=kO0xn6Vq; arc=none smtp.client-ip=209.85.160.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oa1-f53.google.com with SMTP id 586e51a60fabf-241572c02efso3592641fac.3
        for <linux-man@vger.kernel.org>; Tue, 14 May 2024 13:15:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1715717740; x=1716322540; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=he4jpf7MWkC7wxVsZJQEEQZBBXgNRQeZoXY3pc+CG9M=;
        b=kO0xn6VqXyLgpE/S/fVJHLgG/VAdthP0iW/sGKIwvoNex4IECL98dWAsfmP3e/4hKN
         QNlo4AVgbYS6ryrp1e/YMfD9MNmISqe9W3A6qVygtk2FuNv5I4Splq8X/5n88AkrEB2y
         eBnNis/uV+QSNYbkMiGLVPKj0+DKBbOghGI4No6eod31uwq9n/APmLI8RU2M3hdUM/+p
         bWwcX7qpwKbg1l0DO7o61MY6opxGfvAnwfqNzTySwpGsdjuOfIQYchDRJHs7HCpS9ovt
         TAjYmy8rwvWe/1MG5e5mR2maQOP3+B7DCJ+dx/K7WdVvN+Xe+qktq+lz+SRNMGd2ip6O
         h4lA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715717740; x=1716322540;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=he4jpf7MWkC7wxVsZJQEEQZBBXgNRQeZoXY3pc+CG9M=;
        b=Tt9AQVUR6U2/n35ZVcOhnXI60I2n3KxBVFDpwYtR70lphLsIbEoCOjVeWsTSMIC3iP
         Bt6k0MyF/vbBI9uqlgD6M05TY+oLmCsgw/Bs4JmhenzLUlUC6EA5CNHgIeNFYblyr4eH
         y8CouN2Zu/Hkhi0rDLQwdVbtYn9O/mF1P5lGJgPmJUA3W0cexqEkkl8+qqDAl/Wj6XZj
         VV4pneoMoxi07wTN4Zn1VpgIC0BgEpUF8tkOt4+vgfnemudj9Ao5oxDTaHAESR4CgDVG
         OBX4y56utYIGJrfeI+VtLsBmJP7WBX9niEGYRvoia2cB0S27N5du04uCGx2dwzL6rQ6o
         9PVQ==
X-Forwarded-Encrypted: i=1; AJvYcCVgj7pliZm+J/xvjsZEayA5gCAH3pG9/KbHkygDGcmyZvCTafdbPWTRcjSbI5iyQAwTWGmU/jYcnOfl8Ns+S6+2RiBE72qal2Cx
X-Gm-Message-State: AOJu0YwSKSbWgaifzzvu82qo0QCRN19EnxHtUWpmvgOS4OLLNVTyPSxG
	we0WpvefCTk+jqB7DLDzhhrJABsJhdfhh1M76pWgj/LYj4QM3mRxAA48Gw==
X-Google-Smtp-Source: AGHT+IHjIDTPwP2Xl/tWOIbEMHsarI1KtLkvI5ib9CqX1O+85yopOZoiN1k4vGOFA6EKV+6bApJ3/A==
X-Received: by 2002:a05:6870:f146:b0:221:1c2f:23ee with SMTP id 586e51a60fabf-24172a88a0emr16421838fac.22.1715717740453;
        Tue, 14 May 2024 13:15:40 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-6f0f9d37e62sm1143603a34.39.2024.05.14.13.15.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 May 2024 13:15:39 -0700 (PDT)
Date: Tue, 14 May 2024 15:15:38 -0500
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: technoboy85@gmail.com, linux-man@vger.kernel.org,
	Matteo Croce <teknoraver@meta.com>
Subject: Re: [PATCH v2] proc.5: document 'subset' mount option.
Message-ID: <20240514201538.7by4jdrrlhac3kmf@illithid>
References: <20240514192110.84881-1-technoboy85@gmail.com>
 <kum6or4dlxvb3t3td5jcssv7pzwnbr3sygsowq4aqm6yrf5crd@os52p4yb24kp>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="yzv734fovui6thnl"
Content-Disposition: inline
In-Reply-To: <kum6or4dlxvb3t3td5jcssv7pzwnbr3sygsowq4aqm6yrf5crd@os52p4yb24kp>


--yzv734fovui6thnl
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Alex,

At 2024-05-14T21:54:42+0200, Alejandro Colomar wrote:
> > +.BR subset "=3D\fBpid\fP (since Linux 5.8)"
>=20
> This can be simplified as:
>=20
> .BR subset =3D pid " (since Linux 5.8)"

It appears to me that all of the equals signs in mount options in this
page should be bold.  They are literal, after all...

So this would simplify further to:

=2EBR subset=3Dpid " (since Linux 5.8)"

=2E..which might look almost non-mystical to man(7) novices.

Regards,
Branden

--yzv734fovui6thnl
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmZDxmIACgkQ0Z6cfXEm
bc5whw//SoxW12kWdlYawk0DI4kN61dZyNOhHTnnO1e1gFCSeoBpQ6nSKw3KTLkO
KThRDgR+BDrhZHJUlpftfmZhkhylL/R80TzQZfevqNIYTima478y+wmXYNj2HYkN
pk6GMWNK3Jx/NxjPos7T2VQS2XuUhQ33z0LfjgxeUPvboYfn24zgOcH2m3muOOvg
P2qL9ZdhKU4JVqofIwzmkuibplv6wYu8mqVMXo2OdVEqpVY+LfU4KFhJJ1VymORS
OBgVf/YYCKSrWSM7jmvuPpdJl+hLYWIgw2UCqEqOLyaN+I+l2DxKuEFbUykNumKO
PDv+ORP1FkDj0aeWh5Pi4v3MlX6DHKD08mgo+JP4VaBRIhDOuMKr8dNg0vwM/NOa
DFryF+7Ios7uCpE5/L1m3BAjGJe0/RO7d0Lp1J0VL8b3rLM4W5XC73Lr3L3bUlwb
hMpDl3/2u3FomlE2qzLI1aUU2/CTNuS7UqRa+anwSwkvofLlpBj08l9ZD7KKLhCS
Bx9/Y3bAt1Nzy0OIjsR246ISQcsRDfgrLPFtADRL5zZLI5VOgrLkem6Tt6Y0keDv
gJnwJk0jaCKUfmENx/h7AsB/cQedTI/IpttS/h+W4kZyKXa6cE6X5dx9/p/uz6ea
I9fcVqISaVZ2AUjSBtoDIFgreZpOyxegTN111FtondMA/H6ya6w=
=OQD3
-----END PGP SIGNATURE-----

--yzv734fovui6thnl--

