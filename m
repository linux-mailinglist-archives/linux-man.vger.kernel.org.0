Return-Path: <linux-man+bounces-4089-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FACCBCAFE5
	for <lists+linux-man@lfdr.de>; Thu, 09 Oct 2025 23:58:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 353934E775F
	for <lists+linux-man@lfdr.de>; Thu,  9 Oct 2025 21:58:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5DF4F283695;
	Thu,  9 Oct 2025 21:57:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ZWJb/6N1"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-oa1-f52.google.com (mail-oa1-f52.google.com [209.85.160.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4506215077
	for <linux-man@vger.kernel.org>; Thu,  9 Oct 2025 21:57:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760047078; cv=none; b=cQr9VxQNFiiEimOmyE88ITxeT7txMZsI/+7dnr/3MpAsOEOrd1pki7x4kW7FbSv4unFTCeuUjhNW8RMoWTyDZDV6MV5p3174sugaNdvq1XUau5I9UFjy5nex2ZFTUfYBH3GtNPs8nxag6gobdPb0eQxV5X7ajPYNkqUidKIV7nw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760047078; c=relaxed/simple;
	bh=QEK6+6aqgmx0AViV7pfEK+x2Npvc9W0tePGTpVWlm7Y=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=nVu/ZcnCYkplDqnmQgSeIvjO7oE9IwFyjtTs7lnTJMT/qRCUgwKvKZuV1ZdK9mDoCCqMFTwMgiajINKJ+aIdoUUxqMnN32SInxVKPY5yA5b4ML1EPGZatWGqxBXeecXlbn9Wa4R3qk6Udmsrkpj/t7NBeiRvDwAxxDPVBZjpI4g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ZWJb/6N1; arc=none smtp.client-ip=209.85.160.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oa1-f52.google.com with SMTP id 586e51a60fabf-378aa12c13dso496586fac.2
        for <linux-man@vger.kernel.org>; Thu, 09 Oct 2025 14:57:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760047076; x=1760651876; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=79GNi5UOE2qPBNVlVvMgmN5eiYF/R9vulcAdeEYUObI=;
        b=ZWJb/6N1M1AeIhCIs7nWszL/dhGl5IfGWlc8AMNugjlHu+4G8VNzfTNEz1akwJARNG
         SqZpfScnK49RUOukq2ANHiyivG27pqEKzkGRyWRGqsD/tRMrZJpbtlupl6zaZLkHomjh
         YTRYjwErE3tETY4MsCKM18prB76q1JM1fBUHYhFRTIt8BwGP3TCtLKp378Iujz7gTR44
         D2mhlK+WbH+XcxWlCvQ7J8pQ3MHUAljlg7ot7cFW+MwoqCRLbydJFQ0jTAFQ9JyeN6jT
         bttuWa1kIP7N7Saggetow1RMXBLSj5UsvaAetMFHkIxuRvezRe1zuqo9f9y1YJR5LFrl
         9DjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760047076; x=1760651876;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=79GNi5UOE2qPBNVlVvMgmN5eiYF/R9vulcAdeEYUObI=;
        b=e1vHJClRFplbJzYA9GJ/onEQOi8n3XNuiRjjTiZFYSvwR1q4AFkEXtg88aIygggG5t
         GFvZeFdNcnFpYWzg4mm3rBaPux/Q3hCb6+YJYJq5VFp9/UUfMqHJwhkONly4jyvKy+Ms
         Jy8fjsFwEr70r+GBjf6LhTkvaRGIVqyQYDucyb+lFMpjaQpanr8PneSmZGDHD3yClDyE
         sxOotFkLkqKPQ46KG4nCWbWIypc4ErlLsILoNMH/lhU1vIKk+JnmqHYOKJvImv8PZl5e
         PV41kpViTnmk3SKWdAbk0gzXz9Te76A9h6cXD9CAEmjHd0D9/DIBpu+qdui9qziM1y62
         ep1A==
X-Gm-Message-State: AOJu0Yxy3AmgztT5B4HYDCRK2hrZn6BVIp5DSjBbuLaygdFfVJbV4QuS
	A7oNGHxMrKpiv47GLVMM0PeUYIAxzyq6jswIP7a3Gv8fkKaKb9bw/r9GUbprwQ==
X-Gm-Gg: ASbGncuJkmIQC3Q+hjYuyPsHneXI4IMUjimN+JRuez6KDK2pcxOj5wmdsRmyPkB2pnO
	wt111D5/ZRgUnyvHt+TT4Gye2c6wx8u0m3xrc6OXKy20J1E7WtQJ2YvKZR3PKNDsxd/NWkcg8yF
	GmdsApp/61G8z9cVEb4Yqwlxuq2A/FHuUbq6dU+3/kb0PP3U1aMcx5LIbSn/EyeM+m3OiqoVHX3
	gISmMhiuJvKs+OE4VI8d4KT5cgxOcIgqcy5G5duzff6WJoQW9a3Zyra/CSpGOl9k+VYqtX76jlT
	ibIoWTmo5VYVSEZiT+XqgDsk+zTWeUp6f+ZTaRab7T+58A9G9ofxPK+zSkPVAhXJiVapzaSZs+m
	yRJpDR1dXXWEFEc6j232XmAfF6AZb7KxqMx3UtwxRVPLqtzI=
X-Google-Smtp-Source: AGHT+IGhIxjXaGIKAWpYuojBe9o2xZG8IJ3eKGqkSSaCCvkCagy57oHAN0m3yRPBt/ODIBJwiR8xpQ==
X-Received: by 2002:a05:6871:ea81:b0:33f:455c:bfe1 with SMTP id 586e51a60fabf-3c0f4ac15e5mr4866030fac.16.1760047075661;
        Thu, 09 Oct 2025 14:57:55 -0700 (PDT)
Received: from illithid ([2600:1702:7cd0:e980::41])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-3c8c8e81981sm273195fac.16.2025.10.09.14.57.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Oct 2025 14:57:54 -0700 (PDT)
Date: Thu, 9 Oct 2025 16:57:52 -0500
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH 5/8] man/man4/console_codes.4: wfix
Message-ID: <20251009215752.upezzr4gubzveiwe@illithid>
References: <20251009215344.tcknw7iexu3kbhnm@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="zf2mqqlr4q5unlff"
Content-Disposition: inline
In-Reply-To: <20251009215344.tcknw7iexu3kbhnm@illithid>


--zf2mqqlr4q5unlff
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: [PATCH 5/8] man/man4/console_codes.4: wfix
MIME-Version: 1.0

Spell out column heading as "parmeter"; "param" is a false economy given
that one of the entries in the same column is "100..107" (only one en
shorter).

Signed-off-by: "G. Branden Robinson" <g.branden.robinson@gmail.com>
---
 man/man4/console_codes.4 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man/man4/console_codes.4 b/man/man4/console_codes.4
index 4ef23a4bd..d258e9888 100644
--- a/man/man4/console_codes.4
+++ b/man/man4/console_codes.4
@@ -338,7 +338,7 @@ .SS Linux console controls
 .P
 .TS
 l lx.
-param	result
+parameter	result
 0	T{
 reset all attributes to their defaults
 T}
--=20
2.30.2


--zf2mqqlr4q5unlff
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmjoL+AACgkQ0Z6cfXEm
bc4R6A/8CLpG02tkNpN2iO6ZhOxHeEAOdHFsZhJ2LG2o/67haompEFJSUKJSQzt+
59yO0uj9bzfUPp+kcvtdmsgMBtuAQ6x/vgzJ4Q3aSyIAolE8Ts2DRt2HKIDtwiyN
lwHdASOMi2PUH6W9olDVpqV9hmsns2zE5O7Lr6evRHIRqw8/5VoWk1nZw4eWc7dW
mnNqx0qULAurEZ5uhRmtCWGe11fCVoBb5Yaijb+sxBxkubIAI3MAFCgkJyJ9L9JJ
8cTaQs1K2WLmw6GKarXa5Djv1hN3CAwyZaIgnGrlwVaIKGM0yjLa6PDTWatLfzBP
uCsjM+lgm+H051qzimCYeDtQ0lT3kwoRUMPo5MHjVgd3DwNSZ7MMlAaLhTRACC7E
2UWbORCjpja+PLE/QDPnGZr69m3B9JGeJ46dvwW0FKm7OLKS5SdhhFeBrofqNUMQ
2i2EbihlJVQnIyxpNLMY+hXk53LZesgAzYmk/CU1eMX3IG4d6Dt2wmRRyZMvtLlc
yR2ruGfqVQflCOOxhm0sI5xMn3ZryqF1x1yJh+wnrjZUrHGR5/8akgTCkew3rP6Z
EgtxiwEW/ITrj9nGcNcCTN7szO75xBEFNtQQkfpc+GeWoFLsA1YEXRq+tsxiobIn
jP0+mQEWD8XJS6/IQmZw6wDVFBPShNMyK40/tj5Yrv1U+HTz2is=
=xbea
-----END PGP SIGNATURE-----

--zf2mqqlr4q5unlff--

