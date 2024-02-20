Return-Path: <linux-man+bounces-462-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C1C885BD0A
	for <lists+linux-man@lfdr.de>; Tue, 20 Feb 2024 14:20:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2931DB217C2
	for <lists+linux-man@lfdr.de>; Tue, 20 Feb 2024 13:20:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A9D7F6A337;
	Tue, 20 Feb 2024 13:20:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="f0Jdm+TO"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ot1-f49.google.com (mail-ot1-f49.google.com [209.85.210.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A9E66A03F
	for <linux-man@vger.kernel.org>; Tue, 20 Feb 2024 13:20:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708435220; cv=none; b=A+Ug7G6nBFPD04p/LD4XZtqkoKVFYvpRWVhT0JSFgXMHtjTwy6J09SX9UQrOpjnWbsRl2EUYz0rYd1UTTFzpgseyricqdI9emB4IcWDT6zNZM8ijB81EXPbyTW4BPjSrLaY181wSfbykMjePIxUKUaK82VhgLNRGJwxnF4RuPks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708435220; c=relaxed/simple;
	bh=L48z9adXGTy5xQzSYfSFHR2Ehc9EAFYSu6PlbyOQWoU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=H+cZY5MWb/R8iwnCF8SOym8rRH5cmC2371rcIJis4SzSk10aFlTYaPC5kppkYzVJel3fwBSrAIJHIJ+f3x49hNFtc7pK4+Dir+8s4PMnDgfrsKjiZorbrNCN7oYHvM13+WyIxAiO/ZpP2ecWVDL54OuXPyIEEPuKg+nkHPXL2PE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=f0Jdm+TO; arc=none smtp.client-ip=209.85.210.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f49.google.com with SMTP id 46e09a7af769-6e44a309b6fso940517a34.1
        for <linux-man@vger.kernel.org>; Tue, 20 Feb 2024 05:20:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1708435218; x=1709040018; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=tF6Z0BARn4IWRFVJJI1+T/x4DjT9di+nDIsZn+iG1VE=;
        b=f0Jdm+TOHRmJl70QSGHDcwq7778o5Pmt/x9WtSOSzmKytNj/jIbkcBcoAff6l+9QbV
         YB6/i5C2DWN9aMgcdkujcFK2OPOky+tpZJwovyPbznpvr/yFdOHjUF8wrv2y0BwiBYZE
         1p2LsTOXqjexKhdWCl6Az+FEWUkc72waYlPzt3CusPghimSVloqfXNgzTdOowuWLB6Si
         xI2uMjmCn69CzrgdJcbA+cpaXAwdWMp/kP3KtpXGwvU0+6g1g0IkU/TcG64W4LZZNtub
         P5eaSfP7ES+1jifDlirecnufoILg4ep948sesTPzyXeJ/dHG0Aa0IUeowAdEcVg3Hi49
         PRrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708435218; x=1709040018;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tF6Z0BARn4IWRFVJJI1+T/x4DjT9di+nDIsZn+iG1VE=;
        b=SiXrb4bHjD1SdpocnhI+MkmliXX3xEdpk4UGbJXFSwczZHQ/qQYS83S35dq6ktm6Lc
         EhniWV0GgvUOg06zLGsEJmwOr1P5WBhFoEEA8BRPCOxVf941FHoyj48ZcFO7hwj7oQln
         DL0Tln9Okyvtfnf4n2o0QL7knHBMRl25F5IeweMNmEzK9W2RFw8Cy3guADPpfBbU0ZiV
         UH/b9hA++6p7L0sUAnpKfFiLA2j60YGPjPQDVQSmVddBEV7Gx9oYLM3wWZWdjMpcCeQV
         KdN/BD70OUH8Inl8k0Gd57Ty9MfFDmPHYbWealBjZ4N4RYHJp6qdvFeRcITgQM7+2weg
         pePw==
X-Forwarded-Encrypted: i=1; AJvYcCWGXUWH5K0tktpkSzgpIx6+Tb2txeGGIS31ibz0wK58CXniLGgB0WNNmMQq5eJa/AUjF50S2Drh+MO9fA1kIw1P9OWhbxQcrDKq
X-Gm-Message-State: AOJu0YzGNuSeEURjuZt1j6tc73eigiFniM8C3D9uM6u4FWpdBifPLn+e
	mV+K1450uDiwowh4QJqYC1bj4TMXTTrCWfg0aiOWkmLK0D49tllJ
X-Google-Smtp-Source: AGHT+IE7td2J108/jtCCTqigyHW3lh6niGGhS1yPWuf4OYR0+jr2GaGtBLZv0z5j+RrdNOFTWops2w==
X-Received: by 2002:a9d:67d7:0:b0:6e2:f01b:2090 with SMTP id c23-20020a9d67d7000000b006e2f01b2090mr14711040otn.9.1708435218028;
        Tue, 20 Feb 2024 05:20:18 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id m20-20020a0568301e7400b006e4409df640sm1163084otr.37.2024.02.20.05.20.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Feb 2024 05:20:17 -0800 (PST)
Date: Tue, 20 Feb 2024 07:20:15 -0600
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Alexander Ofitserov <oficerovas@altlinux.org>
Cc: Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org,
	dutyrok@altlinux.org, kovalev@altlinux.org
Subject: Re: [PATCH] delete_module.2: Update man to actual syscall behaviour
Message-ID: <20240220132015.pjqlf66odcgqdtqv@illithid>
References: <20240220092144.140251-1-oficerovas@altlinux.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="nfrxiqjscjfyup5m"
Content-Disposition: inline
In-Reply-To: <20240220092144.140251-1-oficerovas@altlinux.org>


--nfrxiqjscjfyup5m
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

At 2024-02-20T12:21:44+0300, Alexander Ofitserov wrote:
> Parameter O_NONBLOCK described in man doesn't exist anymore in kernel
> versions 3.13+, which is quite old, only O_TRUNC parameter present for
> actual kernel version, O_NONBLOCK does nothing.

Please be aware that "actual" and "aktuell" are false friends in German
and English.  I suspect that you mean "current" here.

https://speakspokehavespoken.com/2020/04/16/15-english-german-false-friends/

Some English speakers will be aware of this usage error, others won't,
and "es kann mach dem irritieren".[1]  ;-)

It can be especially confusing in contexts where something "actual" has
a "virtual" counterpart.

Regards,
Branden

[1] This is bad German.  Do not imitate except for humorous purposes. :P

--nfrxiqjscjfyup5m
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmXUpwcACgkQ0Z6cfXEm
bc75ahAApP5gTF+ToFgMa7JjeMilqg0Snm1F4hfHrG6LLMvzO6z5FRp7srYS22kW
pWnCBujYDjdzNtp13acRJbqjhZCYvUuAeKVCgXQ04LpOcN5oGTe/ebo0WLwd2PSP
J5VhhGKWmkk6ldgafDsAQAoSSQPH8RQxL7x0o8k0AFC+OSS4pqFphHU6/+l8v2P6
8x9KA6d33k815XDrmcJLjQsSmEwyUr5SCY6Y8cwz/DUN26Asf033m7fY3sbkBNdl
WgWD3lCMMxPzFMBzCgQGraLKJl6j6aeeDRwJpQ7GEnMMa0HHJyqOhtXZjH+yFpdx
e42AGnuGMLEmwggjXi59FUbMAHMJVxebiDqoq29BEbjbgi7Ivoo8WM26leUiDHLF
cnBsfdoAEorFFxvHfcWfEgqLNzQ+cFR8aqGazwP1aLDxQ1ogdivfRoPttbI56YRp
bpyAFt2aGxH84TEcQ6lSnX7OBOCGyLyko2WCl3qIH2F9p3XAu8jtRp1UdoJBnEwH
IqxOMN56CRtj9tC8xQeWSSnykN3KkBEx/uoYwL8DxQQKHUFUuT5f4fcjR6dgOU44
gj7Ay3uki5bUzOjyyhFECa1gBkQ75Jh73HTN9738kWSumjIOMVsiGgP/MFsyo4lL
vnp4zhKM2bslA87eqwamBa6gGKalW3Faz0QawkN3q1WD02LySAo=
=GUUH
-----END PGP SIGNATURE-----

--nfrxiqjscjfyup5m--

