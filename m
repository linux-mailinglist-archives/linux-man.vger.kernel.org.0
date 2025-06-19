Return-Path: <linux-man+bounces-3193-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C5E7EAE0FCB
	for <lists+linux-man@lfdr.de>; Fri, 20 Jun 2025 00:55:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6B95417DFDE
	for <lists+linux-man@lfdr.de>; Thu, 19 Jun 2025 22:55:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CA88B2673AA;
	Thu, 19 Jun 2025 22:55:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Dzwjfmow"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24B8328B51F
	for <linux-man@vger.kernel.org>; Thu, 19 Jun 2025 22:55:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750373736; cv=none; b=SV0oHbrAbRURfQpIvVaie9CpN6zObYGc+t29Lo6QnvJzwSsp9H7VK8MjSc3Cs5UnKh99+MCgzNCM85F64yjsgXPd01AsCZDDJScb3tB7w/YJg1WECG1bpBi1yxswd66fq/p2Nn6XxrW7PQKM6puwDE9Bi5TO7wuQ7fY94LffADk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750373736; c=relaxed/simple;
	bh=O+U8p/5w9NzfkgD8xPxlnIJeXAwXeNUHxZAjIAo0Psc=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=ibR7+QsgHic1ppI1r6NWHeJBIRB1e5p8E660MTdcqf4pwRIsMmruV8yyLSZVe9XrU1Ym29TWcN2DmIa5bjdO+Mmy8nQHEMH/0P7hsG+FJYcuHH5wMJt56qN4wpEhitI5wU89o8ug7raiD3QkiMljubruDKxSsuB2qjwTw0I6SGk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Dzwjfmow; arc=none smtp.client-ip=209.85.214.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f174.google.com with SMTP id d9443c01a7336-234fcadde3eso16542835ad.0
        for <linux-man@vger.kernel.org>; Thu, 19 Jun 2025 15:55:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1750373734; x=1750978534; darn=vger.kernel.org;
        h=mime-version:user-agent:message-id:date:references:in-reply-to
         :subject:cc:to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=98UDt2wpGUoAru6IrYb4GL9DMP7iskYJ7zyClmvIPsA=;
        b=DzwjfmowZ2gcJKjumK5PMjZpMaYm61jquUi7PqtBDSamrfQAkNsWLspDWst6eeRNlp
         aVvMRRBqJBXVAqZ4Olb9Xal4nLVdzsU+xvbZD7iDi677mVheuEwiY0PqfInzfZ/b8coR
         mmD79NZRrKq3Mk8BtF1ve39K9n0ATHhCnn80SRZD2unaiqZbX16zy5GX7I+MSgjbhuiL
         Me8Oa2d2JWFgIjnBIE8fIp7Sl+LkyDEfmzuP9Yv/k4vSaMfYRXJoIhoU8/59zf10f6dR
         NVFesTbtfBRYDH4KG2BYjKjsF3xCFCdOQ7/Mw2l58IA4WuCuNuBBxOOd7bmjXifPQOiQ
         b8bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750373734; x=1750978534;
        h=mime-version:user-agent:message-id:date:references:in-reply-to
         :subject:cc:to:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=98UDt2wpGUoAru6IrYb4GL9DMP7iskYJ7zyClmvIPsA=;
        b=qKjLcL7GSTVrArYGLxWUFIAebFC5/SxC/dZmAz0gpZs2PuCg5I/tm17Tik+5uMzhWB
         Z8XJCskOj66hI2FgdOEN5mRotpfROJXth70C+JVsSSeXEvy9BoYg7UK+RZjOmTe1HLXr
         Gpg97KU324izWzE6ZSAlEuWZP89hpsjxjzhBZg2XOSWyIoCfPqN0qJoOUvV+o23J7SOI
         ffLPtO4RTBOXpv9MhKokgB5TR4IteEWckQwdGFTe7vn4I8nusmRr0q25Igk6P5bBfZMv
         j70vIzx95V2YFR12PdLlw+iHPp2ue5UQld12osS48BrCiT/oxKPXWNavfVPdu++Y6ixd
         54VA==
X-Gm-Message-State: AOJu0YxNtkS3SmuqtkrKYxZxnh4CtKARjWMXTJBKMP6zy66k8q1pXIoy
	geTXKJdd4iOPkJ4KM4VVfuWLaTY7bYrkPcyiPuyDSZuwAaogI202Ef3AwNyNCw==
X-Gm-Gg: ASbGncva+9qDiiPrd4HPVaryQwjDdavsaUfOO5QkeijhqMC58tOaiFp+ERMY+JUzgJp
	RS8vHB6w1ZVHihO+nQ/puueI+d5reEzLyKzF6+Af+Jc2bud+BQlwInXrHjCzShF1IPb1fKO7mV+
	OznES9Lh05eiOXY6Jm8uu9C5VmZOUQkx2gVFp7H/aj3k+qlKBIKmdMuAm455rG8DOUfb8gHEPnV
	2oiuOrI2nGHTEQ+4c/evyBlp+V6uKJw2o3wmkr3kSsGf2A+4kUhIbjn1d5s/hWXu9hJX9huucql
	QwaSKAU8IOV4G+Ob369+RRZg6nQQAmjKu4YAiFql7Oc=
X-Google-Smtp-Source: AGHT+IHfpGjE+U0dd0XJrKoleo4xG31bsNDXW8Fl2OzftVWGFhTHMnrthYPG33w4BST9ODFwf47pPw==
X-Received: by 2002:a17:903:2345:b0:234:e7aa:5d9b with SMTP id d9443c01a7336-237d98721a7mr7609965ad.23.1750373734150;
        Thu, 19 Jun 2025 15:55:34 -0700 (PDT)
Received: from fedora ([2601:646:8081:3770::15bd])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-237d866b5b7sm3436075ad.161.2025.06.19.15.55.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Jun 2025 15:55:33 -0700 (PDT)
From: Collin Funk <collin.funk1@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 1/3] man/man2/gettimeofday.2: Declare gettimeofday with
 [[deprecated]].
In-Reply-To: <c5sve7xkoc6cjs62dgevxqr2snxbmyehomtqvyxeetbpu4uipg@34i47s3a5adb>
References: <c9251b002761c8c5756780432e5fccd2bc58e67b.1750306917.git.collin.funk1@gmail.com>
	<tc6b4trkpv5sow3pxgul7i3rc6bjnz7iupryyqzx7a7hxkdnou@65zruztgsi5c>
	<877c17liqv.fsf@gmail.com>
	<c5sve7xkoc6cjs62dgevxqr2snxbmyehomtqvyxeetbpu4uipg@34i47s3a5adb>
Date: Thu, 19 Jun 2025 15:55:30 -0700
Message-ID: <878qlnqr31.fsf@gmail.com>
User-Agent: Gnus/5.13 (Gnus v5.13)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha512; protocol="application/pgp-signature"

--=-=-=
Content-Type: text/plain

Hi Alex,

Alejandro Colomar <alx@kernel.org> writes:

> No, I don't like that.  The type on its own line is fine IMO, but in the
> same line as the attribute looks weird.
>
> To me, OK:
>
> 	[[attr]] int foo(void);
>
> 	[[attr]]
> 	int foo(void);
>
> 	[[attr]]
> 	int
> 	foo(void); // I use this style when writing function definitions
>
> To me, not OK:
>
> 	[[attr]] int
> 	foo(void);

Okay, good to know the conventions. Thanks.

> Thanks!  It might be good to CC libc-alpha@ and linux-api@ in such a
> patch.  Or maybe it's overkill.

I will avoid it. I don't expect the syscalls to be removed as many old
programs still use them. And they work fine in most programs where
nanosecond resolution does not matter.

Also, currently glibc does not mark them as
[[deprecated]]/__attribute__ ((__deprecated__)) and I hope that it stays
that way for the foreseeable future. Apple, for example, marks functions
that are fine and used safely with deprecated and it causes many
annoying warnings when building programs. Specifically, any file that
uses sprintf or vfork will cause a warning on MacOS.

Anyways, submitted a v2 for patch 1/3 [1]. The other patches don't
depend on it. Just other things I have noticed.

Collin

[1] https://lore.kernel.org/linux-man/2d37d5a9251af3c1d25cf8e73e3585a9955d5772.1750373011.git.collin.funk1@gmail.com/T/#u

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEI3EYVQjRMXvVeOXMjOZJGuMNfXUFAmhUlWIACgkQjOZJGuMN
fXUuBg/+LUtkkcvZ6YPrZOgvi1CJ+/e3qaEEwWBYqBkghKXlv2n9VG90DXFBl70c
yeS6iw9A5fsWoVss9zNxzH1bu66zO/I9dnxnO/kQZwky2jLvWsYL2/YnRFJ/rl66
cs+LQzUK3NXrXwwDhOq71a9TTlkVc/Sgl7rOgBeEKs5YLPBnZ9h7kelu+TH/cnib
rbG5xbRNjqLXw6eWr0tohV7JwWhZo2EkHs/ZC9EzHCrYxMNR1vcqJbxbc5eTuVSt
KDwosFs1el9mR5bQcb9NEKgoi0wY9zzwxrpz7K8wOn1Pqfa4GDJUjhmozZgDh9rk
qua8hWccGgzQKqf68GoXRx0a6T70ywt9G+zTxpLxpagk2gPkVaBlaQ68UwHJGEXy
JWzkHWet8S7ppufTLwIefDuyYlnizQsVte1h0zT1O7HdxWb360Ag9+W+nR12ObMF
cFKahTaK1M+z+CV9zZCBmItYTIqhkUne/21TD36WVPvTYf7WuFPS7h5wkEnflYb9
1q+d5khpeZPVR3+SWasYIcc4v41lTeTh0aDAndCmxNHY9YU8lkF3asB8cO+rMKCe
jQFFLfMV0RzsQ76+YngmOopcgPgVXoVfpU3UQnWRz4Tdd17zemAzBSnCA614BojO
potQOj4IKW+n92GDc7KUVK8B7an5B1ud+bD4xgLiFvFIzluZ+Hc=
=7zfA
-----END PGP SIGNATURE-----
--=-=-=--

