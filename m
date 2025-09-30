Return-Path: <linux-man+bounces-4014-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AD80BAE78E
	for <lists+linux-man@lfdr.de>; Tue, 30 Sep 2025 21:45:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C98C61C4A4F
	for <lists+linux-man@lfdr.de>; Tue, 30 Sep 2025 19:45:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ACE2E285CA7;
	Tue, 30 Sep 2025 19:44:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Qul+1ET9"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-yw1-f175.google.com (mail-yw1-f175.google.com [209.85.128.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EC83217F2E
	for <linux-man@vger.kernel.org>; Tue, 30 Sep 2025 19:44:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759261499; cv=none; b=bCVseK0R1+abXVrRAs7LRzhk5RAmWErV0rkJlfRMQ/j/Wk4pb06qx8kfbSqsJ5CVUU1Oitzw6rPoOeFhRbrBEMZmqZl2hC0l3+Mns26D+BAEbQhpHQV4uOaVB7S5gwZTbOyc12m0XV8Sh4F/ythRTOlp6Y5zmZ15QNXE66bMPtU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759261499; c=relaxed/simple;
	bh=chOFplBynCFkXAsbylhFsa/NNUV37rsTIVZuS6CFOrc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=neI/oIE6Wn8y+J5EeJPIy9+man1Mb5gwHJNMEWcRaqL5g+PL0GYgPfkyb0AqNrOHKXcZlCXRoqR9m7S10JLclS9qibXkQI82HBnD2gueD6EsMfns7GFjaKIDdCuSaczlpGafY3TTHHw6XeNmjeqCnd0/Zc/gaIX2Du8/UD/0ri4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Qul+1ET9; arc=none smtp.client-ip=209.85.128.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yw1-f175.google.com with SMTP id 00721157ae682-71d5fe46572so4156737b3.1
        for <linux-man@vger.kernel.org>; Tue, 30 Sep 2025 12:44:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759261496; x=1759866296; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=+/pwGA+oUiotXxwys0fnVfhAF1vzdNJsmsLJNgzqkaE=;
        b=Qul+1ET9Oc7imZNTM7LeWfRhYMNgmJu/Bg73ftl7rruOcklua2UjadUQWv20nU9LJv
         iN2yfO+sgLTQXS6cI5yE3kVOTiRglDRqqXAxYuBC9LqH8G4YwC8koe/CcHxBv351P7SY
         CJlZLOdycd1JBoHjrhM5sMazjcREseIb/mYRcoBtoEOgvL1uK7WJCkrHcBQRaacBJ3gG
         u6W2Wjl61WfY9+lFW/V94UotJgOwVAK+y9qKdE/nBzSuy4GUMqojkqJlzdZ0vNKe7uKR
         ZmLDujYcWf5+TSyl5xzPcYo9s5/KGytOl2dtWimZAYhY1O3iEK2tajhCh0yriTGINF5q
         Xwcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759261496; x=1759866296;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+/pwGA+oUiotXxwys0fnVfhAF1vzdNJsmsLJNgzqkaE=;
        b=FfFspjF0eza0a+h2LQriuSf2Ppt+y9zWcUhPWjax9mne0OOEL41v6xKMuunJ6KUjD9
         bQXSIzV5m86wGFzryc//61kHVVFHq7MlE+HqLfCpQAbbeFVmZ9+7lzkStHm6qeEfwb4K
         CJ1OLErmsdbcLVtfk4sgzCLN/OwTjYhP1LW6IhYS+jiA2q3MxZrGz0nDl0WFuAMpHZ6m
         YR6M8v7NJNXa2/HvWSOyehPlXrT6AJGghvmZIqySUwdy2L+P31TAaEUJEi/AJt8MI/9w
         TWICS6clWgtWJ4ENQSPq5MpSaKJc8STzv6O9HDloVW4+1198a+hQ7weE5kWkXfBHYnuU
         Kzdg==
X-Gm-Message-State: AOJu0YwCGYVmTeHgD2mOSkUd8RmnvMZnTVTWk/YdRq8IJZkoRREgzbuH
	kfWSNmpHXcCouryTalL30PxoUbD8W5LtSjvnh1D1Sg8PVLz3EV0J1jdB5DboTA==
X-Gm-Gg: ASbGncsZh36n7u7XQwNnq0dkjugWtw6+YicT7db54wXo/5sfQO/RPNOwGac3ehSPINb
	dPCH8LCIcku2+knW3v7D3puvXD5V7yynPYicPaAqGhmvTl+L8ncIUvF1OAeHO0ZCYWqAV0JOQPe
	VofHCeroso1tq7udcm6PkRX7gZNLduemwKZSmHq2LVuS69aWLhrO2tX7dn0FgYDH7zAw2XVgYSK
	vpzyxGjdZI6n89UgxPm6NJmZMT/5Es1w65OKHs4ZpjEzL1tECv/YiljmwIzSPEXa4eMX6ucG9UY
	JDsiz0Nlg9hTQ+HMp8rV4dU0c6F+2zZHlFX11H67wx+SOTWUqAW9jbj/5pJ3XZhmkn3G2j7j4vj
	PA3zXYP0JISZ1pFrKIShIWyh1BwO5SvQp+nXIj4EFcR8lVO0=
X-Google-Smtp-Source: AGHT+IF3wl8QUKWsylrW/WIRTWrLXgAuU6oGZErAF0LEiWrRHqhrZQjA3MpsyoYD3TiNam/UeIsW1Q==
X-Received: by 2002:a81:ee06:0:b0:74c:72c5:fda with SMTP id 00721157ae682-77e5cb5c7c3mr59170337b3.16.1759261496256;
        Tue, 30 Sep 2025 12:44:56 -0700 (PDT)
Received: from illithid ([2600:1702:7cd0:e980::41])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-765bd129ebdsm39630607b3.19.2025.09.30.12.44.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Sep 2025 12:44:55 -0700 (PDT)
Date: Tue, 30 Sep 2025 14:44:53 -0500
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>
Subject: Re: '^\}$' is changed to a space character
Message-ID: <20250930194453.6dxxjh4d6ecx57id@illithid>
References: <aNwetmt-I0cT-u93@kassi.invalid.is>
 <20250930194004.btcbo4xspyo3j3ua@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="vceci2zfhdchqffb"
Content-Disposition: inline
In-Reply-To: <20250930194004.btcbo4xspyo3j3ua@illithid>


--vceci2zfhdchqffb
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: '^\}$' is changed to a space character
MIME-Version: 1.0

At 2025-09-30T14:40:06-0500, G. Branden Robinson wrote:
> ...and this:
>=20
>  The exact name should not matter to any code, so do not hardcode it.
> -.if t \{\
> +.if t ft CW
> -\}
>  .TS

Whoops--in my annoyance with Bjarni, I managed to goof this instance of
hand-written (pseudo-?)diff.

Of course I meant:

-.if t \{\
-.ft CW
+.if t .ft CW
-\}
 .TS

Regards,
Branden

--vceci2zfhdchqffb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmjcMzUACgkQ0Z6cfXEm
bc6lFhAAgCvD6SWxSa15V5I3QKdPWZCnwDv+EJ/vcyTyrNCpUpXjbt6QVplxu6KP
8gdXOV7ybp+RQP5YSz9+Fk7i/t7my6cvI5t0UvAyWJfl1HRbR9FDLTVPTfrxANDp
pJ/OA3V6OwCXKE6O9cG4ONRY/VidFsc11b98CntrPwnoRwDJ0fVLIKkiWrZ1g9xU
GYZSINq5jWQT6tRJloswTk22YydppNW4iZ4FkNPmMv40U8HQK/RWoZTlwua5Xbgx
jEqi2J1N2tlFEe8xC5tMcCBb/uiDofZ1xwoaCasbj5trg8G/LsqJ/SuWVRD1ho0h
TrNzaw83u2JbL9t8g9Y6eOVoXhL4VmY6H0RYbLaFHTyuZ5PhDwj0bsqvQJUFCnTH
HDpQM7IHCAACpohNWGl//nO98gvtco0ZD2Z7BGTzh1rfUty6eI6Hn2XcDSbOYFlU
Q3vVYvJbYJ0XlaPT2JUbf3XaHyr3h1m+6lCifnwM/MZ7/g+eC5Z/aJ0kjrE47f/R
RERyJFH5Q75vzlPiAFx2OWva5DuUcQm4Gk4lCPl+vooWrPtnj5qrWnFjhs+SEBDc
HF5/3KVDPGNTGAyTw0xUiRLWfimI21tGtl2ZPKug82ZBkAIB+DGn5iAuDOy9BM6A
W2eFvOyHIMGgJ2ZDrr0mUXtQ9awG65+tucHCqzfMHz0LyoozdLY=
=Qgy6
-----END PGP SIGNATURE-----

--vceci2zfhdchqffb--

