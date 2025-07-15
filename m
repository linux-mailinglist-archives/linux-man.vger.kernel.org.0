Return-Path: <linux-man+bounces-3268-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 90F1AB0673B
	for <lists+linux-man@lfdr.de>; Tue, 15 Jul 2025 21:49:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E59EF4A3536
	for <lists+linux-man@lfdr.de>; Tue, 15 Jul 2025 19:49:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8E6591F3BAB;
	Tue, 15 Jul 2025 19:48:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="i+9gWMl6"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDCC314B08A
	for <linux-man@vger.kernel.org>; Tue, 15 Jul 2025 19:48:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752608936; cv=none; b=CV50VlwwanSzP02cVQorF3u9n6wydnDlEUYoKU+mY+8GqYLaUvdy8G9x43s2vn0pP+jIMq3b6ioX6OnrB6ndordSQ1q5Aon8zhze9HvsGRQXkO/tKptitvmPWySImBdI/0DNvj3Ln5xc32hxOoIwmEjI7hGk7/c4VShhWhXpXRE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752608936; c=relaxed/simple;
	bh=KoJ2UTfs1QTfGkN5vglEi8wHkE2BR7yzEa/4adZu71s=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=uBtYAYBHgBzSj0oU2roP0LZcRrPnmfxRmTz7tenbLTZ+e/OD2vceC5INShcOs3KMRuiYBAxQIh1tnaYSuE96HGY094QCtcqScDExLfJg8JVo4Z9CN9vaf3vuvHBMQ46Fzqrd1J3G6lEH7b5IgAWMz8Q1si3RVhE+h2Y6rxroU+w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=i+9gWMl6; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-4550709f2c1so30741015e9.3
        for <linux-man@vger.kernel.org>; Tue, 15 Jul 2025 12:48:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1752608933; x=1753213733; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=MLIYDq3Z6Iy7OaearUiVCddBriz4hk1x73BX+TH87M8=;
        b=i+9gWMl65HtNWslE8YDKNYZP8NM3q/UwkPq/NV3l3HeMmyDlduitNgWRPODP+PXbF9
         AvBoVKaQ0ar3Ph5nkO1291I+JaXfZHS+eJ9QnYkWcjMbvaVOJf86RSkxDx3iLVsvfB2M
         zlNypFO1Re9GTzE16BYxzsFnZzPiEPq9xSDGJ/kXxMwj0DLLmSqlvsEmf7VQtk0rjNxS
         M40qF6r8RoihrM2TW0v8aan2tCTuuwS8carCEPvGgL3inQ5QwgIuQrJqdw7ZqpH2faRG
         pUq4mRC8RsMCX9vpH8ckz3wnMXjJQPDIWSr4RZ1gaFa/u2FWxbdVKEmIPlsiKDUuYT16
         jfQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752608933; x=1753213733;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MLIYDq3Z6Iy7OaearUiVCddBriz4hk1x73BX+TH87M8=;
        b=aShV8fErgii7boqfxn0tytfuufZHJkYLf2LbIabswHrvRsmeE5VovH5vEq4nj1m/+Y
         C3U8Mz7vicf4roTsIUiuFsJ4gpbmWBmiboxGeNnwi4Kr38kZ8nHYL+jHBwQt25pddUSh
         lEDfRPFx0nG5RensZzXmBmQGaetP5kapCs6UNsT/Zh8cvLL1hHfdw/O4A9vT9x7HtB5d
         kuX9rdbotLiF1D+/e5j39Sevgi96Q6XD9x/g60eKYpNtAuNdoGUzOP4r16qW2p1L1wLN
         qDakfG+wWLTYsrPCXxLdtCD3/GaC4sGCOOO95e4NF1p2jf40J4vFxzfC6VYn7oReeUbU
         YN/A==
X-Gm-Message-State: AOJu0Yxjny7zaSdsQGbe7U4VQSmpNbcHhgdde1Tw2KJCuwjYyUfwUpIz
	6EPL4/TIXs7PThsl/d7SBV+Zn7nI4WskAGh/USh1QsqsdiKK2VZ76B8a
X-Gm-Gg: ASbGnctl65MOmAJ+eoHKHpMCJjH+xljJYbTuIjO6c9C7kynUwBZOIc/RkvKvX9hkJo2
	QqV3k+QJCJzN4ORStTGlBNKdhzjureAEP9HayHLtTV3yC47T/EXzXuPm52jS/F+T8e06ySlyUsT
	YiwyXXE97K/RglY/eaYcO8ShSFKsmJ17jssRcgO/VVZ0l2cz6KdzE7zWuaqGMpjeFJTr3nQA09v
	kwlBIYUk/gumqsZnJI1Vz5l3VZUXtjyXggkoJ7QRigyvu2z1aTZt4gyKOtzjXX5+dXWv5IoM0eO
	QsinT6xVnfUGcNPN3lC7lm06b0Vk9pxI2GaITP8QPH9vj+brwkCZaYDb6l8sy25opnQMe3dutZw
	V+8k/vxnIb8kjhVp7L6q/yo42b5dEhHym6G5hI3V/YqdqhOrENrrZHQexVoDDeDIyz2SkoHofHy
	Id
X-Google-Smtp-Source: AGHT+IHWKQt4pjpv/eCXEt8yEZ3C8sXETlM0CNO8iGl+aPja+16csWt8BeUoKagICxp+9ClL5GS6Pg==
X-Received: by 2002:a05:600c:674a:b0:450:d4a6:799e with SMTP id 5b1f17b1804b1-4562e275dedmr1359775e9.20.1752608932708;
        Tue, 15 Jul 2025 12:48:52 -0700 (PDT)
Received: from devuan (static-219-255-228-77.ipcom.comunitel.net. [77.228.255.219])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4561a052729sm73543935e9.33.2025.07.15.12.48.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Jul 2025 12:48:51 -0700 (PDT)
Date: Tue, 15 Jul 2025 21:48:50 +0200
From: Alejandro Colomar <alx.manpages@gmail.com>
To: enh <enh@google.com>
Cc: linux-man <linux-man@vger.kernel.org>
Subject: Re: [PATCH] printf.3: mention Android's %m support.
Message-ID: <uxmsabvotuwrcv5xmobyzakdfxibmkvet5f55idux2peyeto3k@zz7wo32lk4cr>
References: <CAJgzZopjpJJY8F7khF6SN=-UuYPiR70vqOE4voaQz79U_HqhAQ@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ydqylcxosxk2waue"
Content-Disposition: inline
In-Reply-To: <CAJgzZopjpJJY8F7khF6SN=-UuYPiR70vqOE4voaQz79U_HqhAQ@mail.gmail.com>


--ydqylcxosxk2waue
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx.manpages@gmail.com>
To: enh <enh@google.com>
Cc: linux-man <linux-man@vger.kernel.org>
Subject: Re: [PATCH] printf.3: mention Android's %m support.
References: <CAJgzZopjpJJY8F7khF6SN=-UuYPiR70vqOE4voaQz79U_HqhAQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAJgzZopjpJJY8F7khF6SN=-UuYPiR70vqOE4voaQz79U_HqhAQ@mail.gmail.com>

Hi Elliott,

On Tue, Jul 15, 2025 at 02:50:06PM -0400, enh wrote:
> Unclear to me whether it would be useful to explicitly mention that it's
> _not_ available on iOS/macOS and the BSDs, since that's the caveat I
> usually give when recommending %m to people.

We can omit that for now, but please not it in the commit message.

>=20
> Technically this is available on Android from API level 29, if we wanted
> to be more specific.

Yep, that might be useful.

Thanks!


Have a lovely day!
Alex

> ---
>  man/man3/printf.3 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)



--=20
<https://www.alejandro-colomar.es/>

--ydqylcxosxk2waue
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmh2sJEACgkQ64mZXMKQ
wqmoNxAAls9lsQAFNMBDFcpu33N4HDmtcC78CGM1GWQ3ASYLSfhlQheXWF28vtYG
XG5oGKGfSVKQIpsILb4XGUklMkEh6k+8PvjfaFLWzYz+VQpBEWNKg/DKjO0cI78L
2tuD3yvil6im9ShlIN3KQw0BKULXYFYUU85mMIZ3gY9LGmt5LEC62sEB6HaLMKod
Mt5hB8MkGSGtVzLZIXICO4uH2WTojf8bSN7+PLn56HFUhmuxkIYhE7Br1vwO+Kvw
urKD6g7JeRHEHY/gGt0bvkCaInZJjeNM8NsGsXWlcT64uXLJf69nanHQvnIYk/Ag
t8Yw3AUzY4fiZovl/x0vW3ErYn/KlP0N7r9ZjnFTyfS4Gjkx+OeDkOeeVKrOiB0j
UBXH2zDieXgnwfRdWWtLQIv1dPFac1EhwNMRlglLvy4Uw6RkO0YzozDWYDwb/3tK
KutMw2DLlsRnEkMPxsJwstxXyEMpcAsCEpu4mHV9UNZujMJ0pP4kU0CWPW/1K4WJ
4EFULQbtvy7vPkYNNH4REb4aqUdNmQ6nC6pDkS8lLD/2ovqjL8Dh4HVH3RLUC+CB
jI9+/+It0l1SqHEIn+MbqLMIBeUYryAapSK18ehcwxqLtxb59uMeAYBlh80Cb80U
yxE9EF3f6h15rmEc+57SY+MFhBf5jQ1/Uwwv0bbCcj0JkvH6E8Q=
=awfW
-----END PGP SIGNATURE-----

--ydqylcxosxk2waue--

