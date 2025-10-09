Return-Path: <linux-man+bounces-4090-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BAE61BCAFEC
	for <lists+linux-man@lfdr.de>; Thu, 09 Oct 2025 23:58:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7612442191D
	for <lists+linux-man@lfdr.de>; Thu,  9 Oct 2025 21:58:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D944A283695;
	Thu,  9 Oct 2025 21:58:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Ou4JTy+0"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ot1-f53.google.com (mail-ot1-f53.google.com [209.85.210.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36282215077
	for <linux-man@vger.kernel.org>; Thu,  9 Oct 2025 21:58:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760047088; cv=none; b=RW9CRA2F5uEwqvJBwgr1VVMRzfCg/VKCt+h6K7iePO/JapxIQw31rsnuL8v7SFdCBuQxQa/72sZg/2Q5kyPs4FhP6lBDRZ/d+XreLRdybn5Hkz0WGnrOE5IFd3m4Zy8wlSBseh70J4kgzmG2uAA5QyFAP5+9k2JmJh5by/IEan0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760047088; c=relaxed/simple;
	bh=9ivYIXTbwDRb0vjFzccsdnOv33xUH6/LJykWBwiMoj4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=enUwZES2d6YeSbFlvz30tmCDjXM7cRZijm10ftAZSQtp1+gxhVSuriN19TBRVNpxYhyWpUCr4cyyaA5sNNA6rR6seawhCGT6BPmWHMjFZE5r5nvON8Lpdn5lk8/fZEBMZu9WOiXYcszSAdxpubtjRTSJxmmd273zIac2GtzlE8A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Ou4JTy+0; arc=none smtp.client-ip=209.85.210.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f53.google.com with SMTP id 46e09a7af769-7a7b084ef77so861915a34.2
        for <linux-man@vger.kernel.org>; Thu, 09 Oct 2025 14:58:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760047084; x=1760651884; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=J586E7iAiDCqH9MW9PHKIi+1y5IkJuhdHdBgCxxCdpY=;
        b=Ou4JTy+0NdnGcZMs9zUckUqk+q3Rd010eEb2yuYFTIw7TmgzebAR+iERa5NRVG83x4
         ykZXu9XfD+CuCZuMZbNUBEjZsy/WXP3Z/1E4saeKBaeAkQJnmt+12G0FsviBj5I+Xnsd
         pTXsLUtbXh8890ADRxmyWRbqyuMeA14N8KoTjAn+pMrGY0G6rTxk6/d213vOdrXmk9Do
         TxN4exfL1cp2htRoj57f/texgflrz6QvQLzxXUNeOHjnPL8YsKWPG/njpa3R6APn/5jM
         Q+6BLVdcS+g2pdzRGwFC2F/ZZ9hq1xTjq70jNHmo6iaFouF6yFt4pzOfg2rKa3TlUdbO
         nXHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760047084; x=1760651884;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=J586E7iAiDCqH9MW9PHKIi+1y5IkJuhdHdBgCxxCdpY=;
        b=TWgbusaUEhDHpHG7ex2ox7gtAQapJJWdrhclVsihQdPhgQ47ya/wnPDDIUZEDsCew8
         3YKg/xHliNyzw0uJK0sFBJh1jVyodgKgYG0br3KXIvt9OhASGOwYN/LN1C5NJecccYhc
         hTvVm7f7A5xLoRXckw+OlXN/R+jDYUjgJMzPqM1+9rjSFftEAgK5XcJCotxy6Lk8CW+6
         eDC6CMsGlyoHQlBBJ16jm8kxvFIT7plGTkKntS6sXGvj5xHho0+TCiYAhAWSempPFERt
         FGgUifAEa81nF07taZIFPyppvw79AFHmpyUTV8ayQRiRDGdWQb/fhvUqE77uTkHWSfdw
         8h5A==
X-Gm-Message-State: AOJu0Yw7VCX0YaG1sTVc2e8nh1BixFr5y0Pf8kIp85z9lP5xgPP+Xt0W
	zAMsRBff/QVTHdubCx+YGbtbqs6/z+vSVw2BVwFwv5fSDE/H8dIAV2ATh/4rsg==
X-Gm-Gg: ASbGncsjshNzYmEqpIc1C9dWd00YI+Odo7WLRiVwPn09DScOnhUlDc4uWFk91U8Nd37
	ofovYQ/szND9T6/U1ypdcXd305/6/e+1xQfFvg7LQPFJpCNX/H6VUpDeOJDu5Brasu9GbT/gz4Q
	g0CXVshSTKBiKTlvDozwsypYuiPk9lN0vzHTVhcIukM373xXWzaJguNXyFRPXPSVtZzq2y19U5q
	KmI+Ct4JMFGUM/pifC0B1ajsf4E+PyiGti0wO2yiuQ0vwILHxkxXsybATm+3a1ftNgZ7xl8SEe/
	DSfEZ0oyq1uNn3/hqXq+8LofSvfy2Nd+op+WT7S7VWz296Vq7YVs5mkLog7FHoet7kHYYVnHvVu
	JBDgdJTW63Q/32RpQumgT0dicfNxGSVjIhN5+uFbXDF5mDMU=
X-Google-Smtp-Source: AGHT+IEdvslGoIQWIBqs4YP0UKjStaPRTLXmJ50+FnLRS21D3qrOkxHOYMu2Xfm+JKov7fZRBdfm0w==
X-Received: by 2002:a05:6830:6a94:b0:7bf:6dca:2055 with SMTP id 46e09a7af769-7c0df6a5533mr4467102a34.4.1760047084121;
        Thu, 09 Oct 2025 14:58:04 -0700 (PDT)
Received: from illithid ([2600:1702:7cd0:e980::41])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7c0f915efddsm245431a34.34.2025.10.09.14.58.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Oct 2025 14:58:03 -0700 (PDT)
Date: Thu, 9 Oct 2025 16:58:01 -0500
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH 6/8] man/man4/console_codes.4: ffix
Message-ID: <20251009215801.yt57b4zbpsvctl5h@illithid>
References: <20251009215344.tcknw7iexu3kbhnm@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="7fbefec7wmlg3ibc"
Content-Disposition: inline
In-Reply-To: <20251009215344.tcknw7iexu3kbhnm@illithid>


--7fbefec7wmlg3ibc
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: [PATCH 6/8] man/man4/console_codes.4: ffix
MIME-Version: 1.0

Add missing `x` column modifier to the descriptive column of the "VT100
console sequences not implemented on the Linux console" table, making it
format like all the other tables in this man page.

Signed-off-by: "G. Branden Robinson" <g.branden.robinson@gmail.com>
---
 man/man4/console_codes.4 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man/man4/console_codes.4 b/man/man4/console_codes.4
index d258e9888..2fd963128 100644
--- a/man/man4/console_codes.4
+++ b/man/man4/console_codes.4
@@ -707,7 +707,7 @@ .SS Comparisons with other terminals
 VT100 console sequences not implemented on the Linux console:
 .P
 .TS
-l l l.
+l l lx.
 ESC N	SS2	T{
 Single shift 2.
 (Select G2 character set for the next character only.)
--=20
2.30.2


--7fbefec7wmlg3ibc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmjoL+kACgkQ0Z6cfXEm
bc5NeBAAk3wrkj3QBwmoUGoxU5cSOsWSui+eDN2JKPhLUPtIJsRTnqFCQNgUMASi
0EMiWPfyyUbB2KxwtHBp/efil+hRojAJ4v4W/QlM9eHSDEtbpe56zrqUOyjhoVFl
1hBMtwTs1N2OKKI1Vns2YIWZyIvMmOIoV2h+i/QneKU4CiX/OFBhixrD+7eOfzXi
em8QmKWlL4SUK+AsIsZILBnpuVaprRls4H5Zg8KtzGeONrFwJWafe/yG4i6lt4se
sv+kiNfuHN+zFLX7n8zJgNMjSgw014GaEhHatyYsDKR1qGaxje/NtBWRGvaSz27o
zrzJwa/UQ/r2LuIVwt4QeQCjkFLn1vQAFw5m5i78efvP27dAJCOsZODpw7RMboYi
M/QjnaVoh4/0EIzO7ROYxINuFyDN0SD50aAFjLwPi2+u9UlfIfx22a+P0aq34GHt
kqHRmKyNGWJ0/3it7x5s2Pt0FoJwMBAjEHuVbUzbWopOSXwc5YyTScp2XC3Al0+f
5o3EvLo3Y1ZfGTuYAd96cPqZqhGVfpWpO8czmWMQoS92sMB12utUi9rZasksOFfq
8shbbjT5PaIYc0Lac6abOpzND6zWGq0dMX0DDkoq1bmrtgMxnQIm0jjF0SOz31gV
rgHgOHJ+3YTfxeqy/umU9q7uOVhXJFxap0tpYDw0Bn/v/f8XEeM=
=zJ3f
-----END PGP SIGNATURE-----

--7fbefec7wmlg3ibc--

