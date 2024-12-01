Return-Path: <linux-man+bounces-2091-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B0B09DF777
	for <lists+linux-man@lfdr.de>; Mon,  2 Dec 2024 00:39:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5365B162479
	for <lists+linux-man@lfdr.de>; Sun,  1 Dec 2024 23:39:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B26611D8DFE;
	Sun,  1 Dec 2024 23:39:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="TNfjSiGH"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-oa1-f48.google.com (mail-oa1-f48.google.com [209.85.160.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24B941D88A6
	for <linux-man@vger.kernel.org>; Sun,  1 Dec 2024 23:39:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733096382; cv=none; b=KdKFp5Rsf/78SU+gIl2GsAQI+N0ciFVBq6RKcVF0gieaMKyY0UsovTPDDBVPbcO9gbdDKEHbvBHgtmN54CfoSOENCS9+9EQN8im5vtmYmOrz7zEERpnK8ysTileAUQy6OJG/pMec61gA4t9aY027JDxr6YVo6T4uQNJ8HPA2MsA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733096382; c=relaxed/simple;
	bh=WsekXw/6BmOQXCPc1rl2k4zrLATQGDfBHXQLjPLnw7g=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=h4P/xcaQuqEiP1Yk2vDRikWrgr9ZXvSw2m9aaAorbqiBmTbJjZWHlEXw73Kt9AOsQs7qiY0tImVcX7acEj8SerczxsERBE12LyBwNsTCtDk10Pw3pPOCP1MOt+JyfSsmBWf3I3GudGEuXpssEJy/B8hiGdE/AIX1wACdNbztaLY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=TNfjSiGH; arc=none smtp.client-ip=209.85.160.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oa1-f48.google.com with SMTP id 586e51a60fabf-29645a83b1bso2084551fac.1
        for <linux-man@vger.kernel.org>; Sun, 01 Dec 2024 15:39:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1733096379; x=1733701179; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=DKwHNKACETZTqsSN9tB6gq73GcH4RenqPSHrbPA/0F8=;
        b=TNfjSiGHx8mjg50cPV2vrR9W4OisOu9jXNJeKIvakhBSwBELbBSbgQgouRy7NTNO67
         pUqvmasxlhQCEkkpxEKRA/f2+bXFF5KcfgrBzMtZ2V3AcweLdTkcBgK6q20yc+EIJJHp
         OG8ZaZ4IDusSZSt0ru97zlnNDvh+cL2NzPMy7D414QfmbjsPxvnGmUe8B/1oqaKeSO9J
         AfM+YiD03UOCWNyvfsKoISOI0Iw08kX2tSx8FJgKNvB/aYf/XOJfAjno4J93cWokVhV0
         BTS4OcIG+xayiRmGg96JNGqU5fRaHET1lKBAFesWjbA46VVdQ48kguWgOFF78U8fVh+y
         hTfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733096379; x=1733701179;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DKwHNKACETZTqsSN9tB6gq73GcH4RenqPSHrbPA/0F8=;
        b=S5AjBjEjvlzhey+YLg2XVzz+4qqTdz8fM6LH8Y16gLAVZ8Lw/jhojgtfabdnCZhYaF
         WNEdDnrKt8Ge+/6I9XuM3C5d2m5u0xmjLCLgl32ZPL82tACzGlaItWsLdiJUULzBgcis
         9fpwEbpC8MAM0+HIKFuzr/trPpmiR8VGTZu3dAgDomlwVM7BmG5KT5sILEdWiCltGqZ5
         8MOukvtU+bqxaYtmJnYzf5tMid6K7Dhiy7w1dVS8rTsg5qjkRa68VD5ZNRGKsSZKjCE6
         vfABp50vTq44DRhim7eNoxRXXM16bsKBvNjYgKeKqe8aGiXnRgTOcGcPImWXqD3cnvID
         +cYg==
X-Gm-Message-State: AOJu0YwKk28HVyODN9pBGUTFA6Kc4atUmdE//eOQD730GaqUN/r0EXmE
	I7zOCrf16C420idWzxMvOg2x50LdiOc0y88DBHUMgM2tXcnyc3nJ08owuA==
X-Gm-Gg: ASbGncsGNmf83kKveECiTbECRlkxmb5R62S90/ZP6oOPkBIXcJ7uea3fNNV0Dq5yJUS
	pVpG53zuBMMlOYsDJvpfyvmVttVlhCFPwOFSUUU5y1x70LqeNwGm1Qnm0DtNiqIRZz8TohsAYZK
	zD/qZeXa3aJf9bOc5/ghBZonJUyuxBwJ8rfeeluS1s6CvlE7O6sQOJZta5CO7AqlfxQPP20gPue
	jwDwrB8wuQt/l33o0pXmZcOd8uZppGUF/3qUckL
X-Google-Smtp-Source: AGHT+IGzMn1hIBefcDWfgQpK1NDOnSO7zfWmEmnUqCg8aT2SwY6FJTpsnjjnpjEcka/tCd8TdW9HZw==
X-Received: by 2002:a05:6871:10d:b0:29e:3d0b:831 with SMTP id 586e51a60fabf-29e3d0b0c6bmr4200693fac.40.1733096379426;
        Sun, 01 Dec 2024 15:39:39 -0800 (PST)
Received: from illithid ([2600:1700:957d:1d70::49])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-71d725d873esm2009942a34.54.2024.12.01.15.39.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Dec 2024 15:39:37 -0800 (PST)
Date: Sun, 1 Dec 2024 17:39:35 -0600
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: linux-man@vger.kernel.org
Cc: Ingo Schwarze <schwarze@openbsd.org>
Subject: Re: [PATCH] man2/: SYNOPSIS: Use SY/YS
Message-ID: <20241201233935.stsyhfpuuhfj5tim@illithid>
References: <78b8c8acc83d4d1a1ab964e2574ba8024859b705.1732482078.git.alx@kernel.org>
 <20241201205127.s25mc3wwsbazd2f4@illithid>
 <20241201214520.7ugsotknjsxicqdv@devuan>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="tfhm67vvw7xpdrfh"
Content-Disposition: inline
In-Reply-To: <20241201214520.7ugsotknjsxicqdv@devuan>


--tfhm67vvw7xpdrfh
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Subject: Re: [PATCH] man2/: SYNOPSIS: Use SY/YS
MIME-Version: 1.0

Hi Alex,

At 2024-12-01T22:45:20+0100, Alejandro Colomar wrote:
> On Sun, Dec 01, 2024 at 02:51:27PM -0600, G. Branden Robinson wrote:
> > You can go ahead and use the second argument to `SY` now--older
> > groffs (and other formatters) won't complain about it.[1]

Sorry, I had a brainfart there--I should have said `YS` instead of `SY`;
that is what my example illustrated.

> Hmmm.  Actually, groff <= 1.23.0 is bad: it doesn't print $2.  See
> below.

Right.  And I wouldn't expect it to; a general rule in *roff is that
macros do nothing with arguments that they don't expect.  (mandoc(1)
prints them all.)

So yes, probably need to wait for 1.24 for this one.

Regards,
Branden

--tfhm67vvw7xpdrfh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmdM864ACgkQ0Z6cfXEm
bc4FKQ//X+OejZDo80jw1kKPU6H2MbVoe0a/7DQTfOd9dSPyS0hh6Fp4ruYLQ6if
42vpCJy5g3872W3Qdiuwd/EROmFPqNWL5k/bn/FMlI7BRz6lTZqqtHqHEOME0bSZ
1zJOqDSZbN8Hl+Fx8kiKTqYmSl+8QZ5TPj6aqkjtGM/LwgmHiOBCfcdljI3f+RN8
7IV7hAwfJbPrjBfCWi3wPVjE7TCAXAGeivss0N34hbzEe5vpOR9Y9TRSVweCoeX0
9JjFMTXUBX2QqCmRTi46yvwMt9joLm7QaELaAE6l8YDok04J1/99wI4Rf3Hol2Sm
qbsd2l/EwDGvtuVpT8hg1IfZsuuJ96y8MyPlVJU2ys3MtdfJbCVcC4fge8xGHtcG
xql5UZlWIvpDb8iD0rcENr4tLIKuypTPqVl3EgEYSrIUjJCB8VXsCgE3XtWSGcsG
brneZdjnGetQy9NPCoJBQkTPlgSD6ur9dAzqNKwg1SSUuO6Eo7wNy2VG/LRKx+uj
TXzQFSRrErOPMEBb42qv0A1XpAF2fEn2aoWjeovBCnZmrCXp8QxTRTKeOGZEnh1J
3VMtEUTtxP9OZIlz1XHTbeGVH75QG8jnD1p3q+w1TQdgDPmUgdV0k3zWz+KlKFll
aoEGR+3CdyOQ7+O3eMYVNzte/QrCJC+ygTwKHoK1w6BwiRYOIcE=
=Yv6A
-----END PGP SIGNATURE-----

--tfhm67vvw7xpdrfh--

