Return-Path: <linux-man+bounces-4084-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B0A92BCAFBC
	for <lists+linux-man@lfdr.de>; Thu, 09 Oct 2025 23:53:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 665EE3A75FA
	for <lists+linux-man@lfdr.de>; Thu,  9 Oct 2025 21:53:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C78352820A4;
	Thu,  9 Oct 2025 21:53:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="J0BceYXb"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ot1-f53.google.com (mail-ot1-f53.google.com [209.85.210.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33CDE23E347
	for <linux-man@vger.kernel.org>; Thu,  9 Oct 2025 21:53:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760046829; cv=none; b=fQArFgptMKmqN4xWxICCxdFafY3ypZSIGU7UujZCL5w2rzPupSQpRS5yaBlfjCMNM1Whg+3LdOWcw01qBJoNZd+e8Bw7m6OZaxcEPEcNxZ75Fa+wZ6XP439ZnXnPB6fUfyIk0M4TnIVtFV+weJ8Q2oFNy9xEKplVa0mcJvfpgNw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760046829; c=relaxed/simple;
	bh=xTNDZ4Z69Vnk2jcn7hALw+97exx8ZpMjhq0GQYiUmOY=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=WOhso4W7sAds9+CJPjng5BDnyP5Q1Q1kxnT6yZwCeFsLbCvvfJh45OryXrY4m3W94za9DujV+0hG9W2wUzq6jOwSy7paxxjrdzBHOaC2a6eMT+g4hTeSEP87KHLb1oC4AE9l9Nggc0erWBHl5gJQ7GWXTnIQTOdFuWlZrNwH4Kw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=J0BceYXb; arc=none smtp.client-ip=209.85.210.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f53.google.com with SMTP id 46e09a7af769-7a7d79839b2so1235373a34.3
        for <linux-man@vger.kernel.org>; Thu, 09 Oct 2025 14:53:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760046827; x=1760651627; darn=vger.kernel.org;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xTNDZ4Z69Vnk2jcn7hALw+97exx8ZpMjhq0GQYiUmOY=;
        b=J0BceYXbIL1lOGcC0PhlP1jKv0ri9+q2W+eo7R/Mw45kU4ine2PVIZlY+XxHMNcwob
         G2zJHWmB0YrmekXpnqiqxypabVHXkgFGy9gHIFK3UXY1vb+mqb1e4nTBtiilx65Vj0k2
         5NMyFm0RzTk5zb3nNWSMhyV1kuIdrUD8RwjY37ruVlxca5UXxrflZQOQhXJ1LHm8NR2R
         idXPM9Y7xyUXdfPAqkEqRDRuL8CHHWzeHpe/FI4RTxaDzKc72EARsZUxi6RAMUz4B+lP
         5yyxbvyYDJW01/a7+KWHEddT1i//DKtnhwG6NT2728EVpAEaNlmIQCxCvGC9X64wAWqR
         a5/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760046827; x=1760651627;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xTNDZ4Z69Vnk2jcn7hALw+97exx8ZpMjhq0GQYiUmOY=;
        b=MofI+C+/Ej0BxJ9/7p+z+0iCAx1T6vApuClXXqgGOA8h5IQiG2ASMjJ0ow/NCbDmGP
         01pwLMIgw57l7tOCF7HEvRCH1zSl+Z3rscwH+qTtjIcxX9VdTQ2SDrT6MESi64YlhOdi
         I/8akAEHvm6ZwBPA9b7JrALIyO38/b/pehFMcJqzWl9jyIdwJxW0BX3Qhz/3UVMFfFIv
         dV88Fk6deJh+rM+u36sHYLKh6NVbuHLEQAbHIusR74YHk0yGha155ErSmT+zZr5G9dCu
         KQbSZz0vVZipQxJurk3TIaSRgR9hPdAFoAiU4U+e6zHy/hGoUbCIrQnYVw151nn3c8jR
         4JUw==
X-Gm-Message-State: AOJu0YxWvg7ePryXWkGTFTgWJFEu2kwphzgQoc9WhKioLKXuAwyDFP+e
	U4K2impB710ED8xWzhQdn1az1/DNcm4wcSNOSelsmDO1Cw771Fo2OOv6Qc4bng==
X-Gm-Gg: ASbGnctyjWrmXJMdeemPj6Y3o8jlyVMzfwzNeSL/fbZR5mcfLSujJf3Pto+dYAlUBRC
	QwiO1h68GRIteSiQad6jSUIe/Fx5+NKTIwte/8NCV25cggx9VXlnNGyGl7o4nkDJtgdtV0Y27R1
	lZrtWdrnDKi+w0U4cje8KKEQm6SS5VvDCFs/N/UdpeZOHGYkoia1I1F3Q9+RKEdQGNIF1OQLOA0
	vdXyHkC89cD53zE+0j5rL3EK7NFz47Z8JZticLzINE6jHhu0j/r34Zq6AzPL5nkvQ2LhufIlqpx
	EIhYcBk+2R8iNxlv5HjPSziFcbjZbqVJa2y5HvZMhuncx32QNpJrpmG0bdvyki5TM5L/WYeoPv5
	eyKzxTrazNex8/t4HkpAvfWbj/GvheAYwftyR
X-Google-Smtp-Source: AGHT+IGZY01vhU6ypv2W04YZlI+XboN+Wzo0TXaSeGzoJ2v8WDMfXqrXJRVOMa2MYTa6qawB/mdIUw==
X-Received: by 2002:a05:6808:179e:b0:43f:2a62:8b79 with SMTP id 5614622812f47-4417b3ad22cmr3938202b6e.29.1760046827208;
        Thu, 09 Oct 2025 14:53:47 -0700 (PDT)
Received: from illithid ([2600:1702:7cd0:e980::41])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-6501803c449sm241944eaf.0.2025.10.09.14.53.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Oct 2025 14:53:46 -0700 (PDT)
Date: Thu, 9 Oct 2025 16:53:44 -0500
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH 0/8] man/man4/console_codes.4: content and style fixes
Message-ID: <20251009215344.tcknw7iexu3kbhnm@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="qvq3rhqmdbe5gp6b"
Content-Disposition: inline


--qvq3rhqmdbe5gp6b
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Subject: [PATCH 0/8] man/man4/console_codes.4: content and style fixes
MIME-Version: 1.0

Hi Alex,

Here's a (slightly revised) set of the changes discussed in:
https://lore.kernel.org/linux-man/20250925221012.lss5ixmixnqrnrwq@illithid/

$ git log --oneline | head -n 8 | tac
58e02f1c8 man/man4/console_codes.4: Document codes better
1d3623841 man/man4/console_codes.4: ffix
01f5c7adc man/man4/console_codes.4: ffix
210b58f97 man/man4/console_codes.4: ffix
518789aba man/man4/console_codes.4: wfix
9a568cf32 man/man4/console_codes.4: ffix
f99e7a978 man/man4/console_codes.4: ffix
a3298688c man/man4/console_codes.4: ffix

Regards,
Branden

--qvq3rhqmdbe5gp6b
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmjoLt0ACgkQ0Z6cfXEm
bc6whQ//QQm3mIaKQJRLJDq+RsLQyNuwgY5gI4+RnCKMpCF+yW8XUWH03I3LTdlF
zC/kg5uum1aUUnJCLVEXM8VWd0X6gsK7LSMiyz+aI/b7FsHVPrU53NswhGQHukcR
TEwVQSAX7y/Ejm60HlC4h8gXnTJtVuojYkltrpxQ3tUAoNdL81bQkF8OFLfmEHko
i+TkvCrmm91icvLjuIVmtxSbsYe3/ltPG5pYNiqzBkOsxqJjzzMvw8Eh+G6+iQMd
NZip4sqQpbwCXWRMf32QKWjVdMAO2k/aOJrawUnvVLA60R/X4HzBKGIIYQb3NEaa
CQ77gfJ/Qc66NodejhmF5hJ3jnZdLwAISPCBU6U6nCnAhskmiwMph2CimG/eNS8o
TPZwEaQvrZWk5wW1ycYAqseCgd+yywhgw9Ha9QrbWruM9x+82uuA+cYJaKwKni65
ZcIvLJPeW1ROZZcKyQLtWLv5z5mAo8PxhsLX8rBm1XTGWLQJN7HgLBDt13t1Z/iV
Swiemomm5hiuU6mFva8Gy/CeM4/g9DYeEoRZCqq5WTOhuDy2GOqXfRzsohnWdf0T
onHGB0D+sR+YvwK1ybp1X2SWCiFiJ2Cy1SXJ3PPj0XGN+1RGdbdQequVv4tJDx3S
u8qcryysrECFRDXykia8m5QVMX2URpduIIqqIUXMmr/dBsOwzOY=
=ffb5
-----END PGP SIGNATURE-----

--qvq3rhqmdbe5gp6b--

