Return-Path: <linux-man+bounces-1881-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AFA0F9BF428
	for <lists+linux-man@lfdr.de>; Wed,  6 Nov 2024 18:18:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DFB801C237A9
	for <lists+linux-man@lfdr.de>; Wed,  6 Nov 2024 17:18:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB71E204F96;
	Wed,  6 Nov 2024 17:18:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=networkplumber-org.20230601.gappssmtp.com header.i=@networkplumber-org.20230601.gappssmtp.com header.b="zoLzxBv/"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com [209.85.210.193])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE54B1632F1
	for <linux-man@vger.kernel.org>; Wed,  6 Nov 2024 17:18:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.193
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730913486; cv=none; b=QQtxwQ5qGx1jt9tfOhytNcCwnljz/yB5rpa5ehu8vztO+PYdbOzUcMklwyh2YzSWnSrjQqQhDbKYVVMnUle+ew6aG2JhEoTt/vvw9ZmhggWIAxBEd6sq/PblgGMmzk/aBT9o1j4W1D0tED8TD/pHje/3Ge1T9EnEX492u+6hUdc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730913486; c=relaxed/simple;
	bh=D3akWTzzrhH0TTwjTl32BYFaTzK8flwrj+FMP0QjcGs=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=ew6IjoHdtCl9+sD7Lrp0ubAqvee9AizHuh3i8NWCBkObeCjVSc+pzwVrs4ZDCBK5u7tvet1vHMGMxEmjqrR5UXr5wC8UehCxNSojHBsaRgBFsu/KtrxI5HJpp3y7VLrUFAirfwthz8ytza68K+XzhW/J46J2f01s7q7heUTGNho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=networkplumber.org; spf=pass smtp.mailfrom=networkplumber.org; dkim=pass (2048-bit key) header.d=networkplumber-org.20230601.gappssmtp.com header.i=@networkplumber-org.20230601.gappssmtp.com header.b=zoLzxBv/; arc=none smtp.client-ip=209.85.210.193
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=networkplumber.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=networkplumber.org
Received: by mail-pf1-f193.google.com with SMTP id d2e1a72fcca58-723f37dd76cso1772138b3a.0
        for <linux-man@vger.kernel.org>; Wed, 06 Nov 2024 09:18:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=networkplumber-org.20230601.gappssmtp.com; s=20230601; t=1730913484; x=1731518284; darn=vger.kernel.org;
        h=mime-version:references:in-reply-to:message-id:subject:cc:to:from
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=Z4mS4bhbgWkrfNh/k8UQSZlBBclWCC8e/vq4LQXj0z0=;
        b=zoLzxBv/YH0kzFG1rxemhN+0DCxlRlvoRIg6S/KeDkjTl7+cSREKIMLY/DCDVIyRcf
         lD3ia28FXEyDEc8R3ezwOMSR2wrBA8xw081dn7nMhqoH0JGcvF+gZdGYz5U6JiCpoavc
         8xariOQObCMxe2l9hLACSRdF1ycMZGQlkgMNmakoqE9bR0sZ0q9+RcyBJ+gTFfQ314nU
         8+zAApvGejPHNqljQeBxekQTveT7DjfexVtqwD+XfPVE9U7B1qMpyOBEAz/Omtecn+k9
         tyrN+zSWnaO5UcpEReCf/X1zBqyjLEb5hTBxQvQ4BIvHVm1zvuExctPB6Ck8Cgrcl1LR
         7qcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730913484; x=1731518284;
        h=mime-version:references:in-reply-to:message-id:subject:cc:to:from
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Z4mS4bhbgWkrfNh/k8UQSZlBBclWCC8e/vq4LQXj0z0=;
        b=uO2Rj2MrXfTo1QZ0qB8kEihGMKmwjpPDg4qfWqB7aZCLbR/r/eAteSmyfDJWToX17M
         ZmRgIF+7dUNVdvjxcj5i3+tcVrU/BuCtoEjWmlfCBvk5zZ4Sr+CAXrrl/YTCyJ0dtkc2
         3wrffHFYzUMh3RQLcPoHJ6fQM8bfA3A+01dyjeRQlPFt+Pf1c46tttGH9UwKsBIrBzLE
         ZR7jj29RyT/bGzHsrqeIa4aCMQ6jANXdeRaJhPvSs83N9hH6mqAC7PNEK+hTIrs+7zlT
         8+VYOqIehj17rAzZ1qHaHEsIYT51QW1HP/Ek6VNnwoEcIiKrZ+fjRZ8VCzoKkEuTEx+Q
         8i/g==
X-Forwarded-Encrypted: i=1; AJvYcCXbOIwied05hwigdUU+P866/0l0fsD7bPqlUjU8gqZAZKpZ87wkjneimXXzJgRtNvynRDJxFZvRubY=@vger.kernel.org
X-Gm-Message-State: AOJu0YwAKBXZVuqTxCLhmIxo7Nlc9D8B0s69W+XXQWhdJ4n0nu0IdKAG
	OPqKEv5LuQ0mdZmRT4NGIr9d3lp46XARr1vl3LO7cOefvviL9uKnA+oS0DtRo3I=
X-Google-Smtp-Source: AGHT+IFAtTbMlzlYTZPpconsYstGTwm32F/0lmZYGv5EMIr8bwO59JKoYHo/OBN0fp3YFHP1pkdBDA==
X-Received: by 2002:a05:6a00:a0a:b0:71e:581f:7d7e with SMTP id d2e1a72fcca58-720b9c29c4cmr31554907b3a.15.1730913484062;
        Wed, 06 Nov 2024 09:18:04 -0800 (PST)
Received: from hermes.local (204-195-96-226.wavecable.com. [204.195.96.226])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-720bc2eb6a5sm12396869b3a.144.2024.11.06.09.18.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Nov 2024 09:18:03 -0800 (PST)
Date: Wed, 6 Nov 2024 09:18:01 -0800
From: Stephen Hemminger <stephen@networkplumber.org>
To: Alejandro Colomar <alx@kernel.org>
Cc: Kuniyuki Iwashima <kuniyu@amazon.com>, alexhenrie24@gmail.com,
 branden@debian.org, linux-man@vger.kernel.org, netdev@vger.kernel.org
Subject: Re: [PATCH] rtnetlink.7: Document struct ifa_cacheinfo
Message-ID: <20241106091801.3e021842@hermes.local>
In-Reply-To: <xfzcwmn6syhywvdcu6kn3mkuwqpo5usiwkssblvk6qrpoys5dp@hwgvspb43tdo>
References: <20241105041507.1292595-1-alexhenrie24@gmail.com>
	<20241105055338.61082-1-kuniyu@amazon.com>
	<xfzcwmn6syhywvdcu6kn3mkuwqpo5usiwkssblvk6qrpoys5dp@hwgvspb43tdo>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="Sig_/yZ/6uzGj=Ivqbt8l7t7+7Ae";
 protocol="application/pgp-signature"; micalg=pgp-sha256

--Sig_/yZ/6uzGj=Ivqbt8l7t7+7Ae
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Tue, 5 Nov 2024 12:33:48 +0100
Alejandro Colomar <alx@kernel.org> wrote:

> Hi Alex, Kuniyuki, Branden,
>=20
> On Mon, Nov 04, 2024 at 09:53:38PM GMT, Kuniyuki Iwashima wrote:
> > From: Alex Henrie <alexhenrie24@gmail.com>
> > Date: Mon,  4 Nov 2024 21:14:20 -0700 =20
> > > struct ifa_cacheinfo contains the address's creation time, update tim=
e,
> > > preferred lifetime, and valid lifetime. See =20
>=20
> We use two spaces after period (the correct amount).  :)

Double spacing after period is a leftover from using typewriters.
Modern usage is single space after period.

https://www.grammarly.com/blog/punctuation-capitalization/spaces-after-peri=
od/

	These days most contemporary style guides also recommend using a single sp=
ace between sentences,
	including:

	The Chicago Manual of Style
	The American Psychological Association (often referred to as =E2=80=9CAPA=
=E2=80=9D)
	Microsoft Manual of Style
	The Gregg Reference Manual
	The Associated Press Stylebook

--Sig_/yZ/6uzGj=Ivqbt8l7t7+7Ae
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEn2/DRbBb5+dmuDyPgKd/YJXN5H4FAmcrpMkACgkQgKd/YJXN
5H6lfQ/+LRJwkmcq2J21/EL8AISA6nKMzUO+T/V7TkkfTj+JkLz/XpL0s89A5to8
zFE4afRF0b5F9cbZJK38WhfQZEEM62HX81scYtbkTlMq5VxxecdpHNOghbBaw3xQ
00y1fvGb0wCJ4d3fp/onxa6Lv8H53OLjd/ZdqpNBPwv8eUecdUlI/JPOMYEPgwY+
JLUAAgK4yPL1yMCkTdZZNITfJaNGSc+TGudVZFMIrSdA35NXdK3PuORIxv1oM/aG
xMHwFJTzShpjl39MmwwYCBP7XNh17zZU/ugEyb9awv8wUziVE4i1tgCubrJFxcln
iMyUYELb7WVGfpxR52cFECmMZrvUEjkrlfcVtPUatcZHYSAF45gsjHRXaFHwRii1
zkXCXV28RFkqbjsFlZFNE8WGOXwEr3scGI9mPvzOCjg5wgobiYoumGA8DQ0W3GKF
DwA7f6jaYsj6Xdt/sHfCcxokCEH0+ltce6KaE/CUDZjenJRSlBcXxkTnkGCWJizF
PLYiCgsrAIeihMfyeNulYxu3d3q6VJOLjXZK0ta+HOzAntwC9qEr2NTi+kZUhT38
Xh7F5SMden2bUBXje12pNAOXmsmycasN5bCDkznCOW767Ii6ivoFcTXeuDv3bd9b
HSUwBDEbEJKimoozrzfpzoNSfG0PtK4EbSY3lI9KSPVOLd9biYg=
=mUQo
-----END PGP SIGNATURE-----

--Sig_/yZ/6uzGj=Ivqbt8l7t7+7Ae--

