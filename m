Return-Path: <linux-man+bounces-2868-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B9F9AAE886
	for <lists+linux-man@lfdr.de>; Wed,  7 May 2025 20:11:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1FAD11C27574
	for <lists+linux-man@lfdr.de>; Wed,  7 May 2025 18:11:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 06E5628C5A0;
	Wed,  7 May 2025 18:11:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="gf9gjeik"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-oi1-f178.google.com (mail-oi1-f178.google.com [209.85.167.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59ECD42A83
	for <linux-man@vger.kernel.org>; Wed,  7 May 2025 18:11:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746641464; cv=none; b=CW2GQ2/3YT2lfZ98lhb4KrIHha3gY+4m9zH24QEY1qZJuAvZjKdPon0Kj4zQ3Cv+cAl96rZ2YlJFTh2LGk7n/AdocZOs5zWVvNwXrTBfpCPHMaNMFxxZULlRVnJP3aCGkSgQDqnilCqhTERpGRFqhtNVCZFNgQxK6livuEQp/FI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746641464; c=relaxed/simple;
	bh=ejGkfjwX7D3YCy/eaj5xIZWwNnL3WzPzj+xZScM/xLA=;
	h=Date:From:To:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition:In-Reply-To; b=GcpPZtvte9KoCYzsC60WsA8nWVmZz+2AWOae50wPl9nYNb520JUPV94Gnd9FpvU0GYvH9KME+dJZr5M0oGLHv+MVrIzX2IHbJkBhG83xM0SiYUrP/c4HDpB4JCeiP3y3vkjyBelW2hTaLEIcLfXSsxZ06l1UJ/FXDrjHuDh8Lrw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=gf9gjeik; arc=none smtp.client-ip=209.85.167.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oi1-f178.google.com with SMTP id 5614622812f47-40331f302f1so140452b6e.2
        for <linux-man@vger.kernel.org>; Wed, 07 May 2025 11:11:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1746641462; x=1747246262; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:to
         :from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=pAqt4OXWNvK1TuAaNC17riX8mdTeXEBSwcS9MCZ0Ibg=;
        b=gf9gjeikaxWoFMtO2VdgXhOPmRzCqMD7qKJAclN/7Aa+cJs4mS6HbG5qUqoKxCwLH+
         TtJP9RjR1+V/OOs4Jax/QqpB8nR4U022cueBV6/TGF98F9PjNPi2ofrUTlLk9/f3e/6w
         bXZ85vQI1hspcmuPGxihjh3xZLNXopTwgqDAdjf3D29VcxAGfpfT/1iVsEcNRzuPHguX
         sJ4JjH2/tdtri6nsGOtmbdnrCF2WEo6Ud/ohlexPECeI+m8I9A8heGaJY0PaTlvy3SXN
         fAtvCnqrdqGpiiVZJM/BrC8jK6NZ+8cjLK8IIFATeD01rjWShpfwYuI7GllW2uE7qWjp
         InHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746641462; x=1747246262;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:to
         :from:date:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pAqt4OXWNvK1TuAaNC17riX8mdTeXEBSwcS9MCZ0Ibg=;
        b=T0YhYu1u6Yp+o9qIUQOQCGLgxtpzZgW2K5wsGBtxYVtjCJpCNuIWpm+qi87DrD2P5L
         Rq3rLjzken5ve2X9xJrBilrQZ4zwJNDgCQ/GP13Z52nbDjP8rWvyf6sxembpeZXDr1Bk
         UC3Vk+xgcEqoQAj0cOHIujB0LX+Ut5O+8kyVhxkzp2we8h/Fk1t9Pc8kAQf/8ZmUwfJW
         Fo4L+8DWInz0OOs8njciYeLjD5Kk+bLiSJYAABcjO+y2YtjXv27QyYjQmOG1YwYYutRP
         OwRnCkF0XDRHIx1v9dV2P5+n/ENreBmk70u4MZv1y+laKlcrfTLP3ZQsG86TWbJVHRt2
         QErA==
X-Forwarded-Encrypted: i=1; AJvYcCVGUj1bUa+xeAOBwBGuHa+dk3GM4sqoYAPxrnLkybRgBcNvmWxyseZx2xfpJd6S6l8otoGOWxjl41E=@vger.kernel.org
X-Gm-Message-State: AOJu0YxMBasKeLJ5jOlCJIOdGhcWY3QCiYNwa/agKV910p02AhePbGWa
	cdSmIQUPwNN+kfcWHjsx3DAKLQALTZqZvlNX6y3gMd8Ov3dTwZ1hZxHSLg==
X-Gm-Gg: ASbGncvmuI1TaRqN5dm+7QlQbQ5MOIkpuScVsTk/t55RM2aOfspuJSfe8qTbO+THb35
	mmhtdfq7WvW7XEuAZf02dzgXsaZbuoD0f6/AJfZpc3lwJPGdRh3Pgi9HjCwtZKnDARLP3NYT5Lt
	W1teMxugcI0Yh/hm8z6Tyw3R4/ZJoXkaBCSx6W1G8SUWqgXk1p79e188+ow28Yk90vU2wF4hZ7Y
	R5q1xE4MqjWFvwtcthhr6LbCGsE9UbvkqlISFRyxBJqezFokpdYihMyw4LjWrHJsPpw4btMx/PO
	oeLu49XKuKt1/68i6aJNsv8VwxeMsb/sBMAWFQNm+g==
X-Google-Smtp-Source: AGHT+IHBr52Y0mT5bYUzCG5Qkr1GJcSy7sTxFmVwjkiAqz4cgfSVSfYl9yNNeVM3/nmHf2XJhaN3Lw==
X-Received: by 2002:a05:6808:1525:b0:401:e61b:5f76 with SMTP id 5614622812f47-4036f0d01f2mr2740162b6e.33.1746641462121;
        Wed, 07 May 2025 11:11:02 -0700 (PDT)
Received: from illithid ([2600:1702:7cd0:e980::49])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-4036f3871c3sm666346b6e.37.2025.05.07.11.11.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 May 2025 11:11:00 -0700 (PDT)
Date: Wed, 7 May 2025 13:10:59 -0500
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: groff@gnu.org, linux-man@vger.kernel.org
Subject: Re: grof --run
Message-ID: <20250507181059.hjmdgp3bukckqc5x@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="jyfftmnmebbhb3yl"
Content-Disposition: inline
In-Reply-To: <aBiX4joChgpehn0B@riva.ucam.org>
 <aBjcPH9OU6BTgDCX@isnote.usta.de>


--jyfftmnmebbhb3yl
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: grof --run
MIME-Version: 1.0

Hi Colin and Ingo,

At 2025-05-05T11:50:10+0100, Colin Watson wrote:
> FWIW, with man-db, it's usually best for most people not to set
> MANPATH at all unless manual pages are somewhere that can't be
> straightforwardly derived from PATH.  man-db will normally work it out
> based on PATH, and that way it's harder for them to get out of sync.

At 2025-05-05T17:41:48+0200, Ingo Schwarze wrote:
> Actually, mandoc(1) does not really recommend setting MANPATH either.
>=20
> I consider it the job of the maintainer of the mandoc package on each
> operating system to set MANPATH_DEFAULT to a value that is reasonable
> for the operating system, as documented in configure.local.example.
[...]
> So even a highly specialized developer who spends about half his time
> on manual page development barely needs MANPATH at all.  The thought
> that ordinary users might feel compelled to use it is rather
> surprising.

I can't be sure because I haven't kept my dot files under version
control for sufficiently long, but I think I figured out why I've
carried $MANPATH construction logic in my .bashrc for so long.

About 18 years ago when taking a job at $FIRM, I had the option to be
issued either an Intel-based Macintosh laptop (the choice of all the
cool turtleneck kids) or one with a GNU/Linux distro officially
supported by the firm's IT department...but it was an RPM-based distro.
It might have been CentOS and not a fresh spin thereof.

In other words the distro might have been so old that the man(1) in use
was Brouwer/Lucifredi man, of which I did not have a high opinion.
Having to manage my own $MANPATH was likely a major reason I was annoyed
with it.  But as I noted later in a groff commit message, that program
"as of this writing [2020] saw its last release in 2011 (1.6g)."

So thanks for the pointing the opportunity I can take to kick some cruft
out of shell startup files.  :)

Regards,
Branden

--jyfftmnmebbhb3yl
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmgboisACgkQ0Z6cfXEm
bc5evg/+O6ja5OaDt3CpNvSqa4mQiSmcZqkS/3RLFADLoavqZ4uGIlYtN5P8rQBT
jtg9FBtJ11BLpP9cfE/v0m/qy3q9hJZCuyAsDWKMVmjPq/VWhzYJug9CZ1fvXuxJ
YX732YkV00c/ACabtTBta3LCciIveEt4ztU0YBxGSK4feumBF2aAOHhKa78w2iF7
HgB9JPzLrDGCpn2hF029/7O5UQV56WGJaDcfRFtu/cxkSJic7ld6u3WItT5VFMZh
6RgfXm8IBBj73jWX0q4EYTdWQqJINHKCOCb9zteFp62aXIlQeifaC2o5vrRq92Jd
9MbL+gF8PIqm08lo8XynUH3GOp0wyZSLSwdtDpsvwUdTf8UbdHe+tHXcQlGdQKuz
jZV8eRYUzPjSF5gGvYV2+L1/GMu/50EALRxlj4OtX849iE5/s7vtP2pEYslF5Fmm
hQqPMDypXaGoPTj1XBJYJGwdRQxCODk4J82UORGsOQaswSYdl69qU3kW2/wdZnWs
2Tni+gVNo5W0FFeCavTasqB2/8ZXBFBqY5jT1N71AtZ7+ouVoifXQEWAL0jEQCuE
EtARFrl1fMZilTKHguqi6+4khZ2Y9Dv7clN8hy3X/JrkURFFjpIQ+ToPmk6rTaDe
+sTQjc+I4luB8zLLHQhfQz4bAeNcz3jzoPoyK298L38Pg0hSWww=
=IWPv
-----END PGP SIGNATURE-----

--jyfftmnmebbhb3yl--

