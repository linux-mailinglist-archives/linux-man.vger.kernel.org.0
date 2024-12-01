Return-Path: <linux-man+bounces-2089-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DF4379DF71B
	for <lists+linux-man@lfdr.de>; Sun,  1 Dec 2024 21:51:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9FF59280578
	for <lists+linux-man@lfdr.de>; Sun,  1 Dec 2024 20:51:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AEAF51D86E8;
	Sun,  1 Dec 2024 20:51:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="dSzqcyD+"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-oa1-f47.google.com (mail-oa1-f47.google.com [209.85.160.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F047F17C68
	for <linux-man@vger.kernel.org>; Sun,  1 Dec 2024 20:51:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733086294; cv=none; b=rlyBYKipRS6TrF3c+H2pMRXkw7HHQJlTr2yOuupDTRGVMeHm2Lb6m7MccAgHZNlUuTy/ENIN8SgB9aufRhzogzzP2wCXLRGD5wap5gt/tLzmgUAkuiGuekOqMTyRq0QKoi+1xymliKxBQyHrD65k/Y0s9bIx694uw/Lq2iXIa24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733086294; c=relaxed/simple;
	bh=3UQafe6jq/KFFn0FKeRTt9G4VXj8rd4ETocCwx2ik3s=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Uop3zG+otkewtryJ7MBHeGuyKeEGOyAjir/uSjxjFrpapMzu6EsFfWfR6HJpCVacbeYOOi/RPgX+PQ4I8bw5gtAcq4P5W616Sp1gItJcSjTcMK4KMK7bI8rQfS2yrhwlavEO/Qsvjqlyo85sClgro+6e3YIfFldYXykoDArBQrE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=dSzqcyD+; arc=none smtp.client-ip=209.85.160.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oa1-f47.google.com with SMTP id 586e51a60fabf-296252514c2so3826560fac.3
        for <linux-man@vger.kernel.org>; Sun, 01 Dec 2024 12:51:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1733086291; x=1733691091; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=F92XXBgR+ShdK4pRONUKT5FC73RQ/xKs9leLSFcSx90=;
        b=dSzqcyD+z+FKpFqwKl6savnJcYmFC3ZZ6xfPPIHWeDsoeT7cJtURmhaGwSEcFUW/bm
         mZj53JRY1u+5+pmTgGCFg6S9DUd3K2HhF+vsGvj6xCPb0PFn9KtZ+zVVJUDnBrCseNpz
         DSCZra5qqYuPSgfnxKEQmfnouqfMvkjxPoAo19V6W4gKz7IqaXKdPU4gwL+GOGr27Rl4
         Ymx61Dp4+fpqgQZv7PwVgw246i6kjLBbldkbRKV4A8K2cXgCAFGNvxuz7sCeCHTvuWYP
         DytEiEEdnUVZ8zIxe0mxKP16Qq3Jt1qr+5xC1pAmRdjmUHABUMAeYagm124Pg+TrdyTX
         6l9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733086291; x=1733691091;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=F92XXBgR+ShdK4pRONUKT5FC73RQ/xKs9leLSFcSx90=;
        b=MGKgEyyD7SVa2W8kgulPBZ6MyqHA45Lzlp54vE1jUPOKKOFdOoy6VpH7fMAnfut7jn
         p+APAEQyR8jq/eQxxblQJjf6jBov4IegjJi9LfCVQNPccYIPx6ZJOzQTOBZU4WLKC630
         joahet42FQmwyUzHJCXa0jAnVNWo+WY2FzDZ3bvT3g1uiP4iTeFQNbLrULhSuhfcpH+U
         +blgAZFnh42TMaXP4+8irpqwh6CEDblwb9B3ojuAUGlKOgrF+leQuweSEdYVIDJsu+OI
         KtrPcW45iescfnV8jCuXI+OjWIfOH+JYT/stbiCwuXUmd+bZb/9jH7SZnlfuiigC1ZN2
         c+vw==
X-Gm-Message-State: AOJu0YycSdBgb6nLPNc7X78q6tnWAuTOvYP8ocKGIt5eDZ2+Dc82RUDn
	7oWyJufn2iKWJiLmnRbw74//hE5JGipoYlIz4yz6J+az7mwpUSoUYKOMgA==
X-Gm-Gg: ASbGncs4SfEPZo/TCHuxu8qWEQjqg2md6pxSerEQhqXtQ5ThoXFAldE7xi1JWXC7C7D
	owqbEKkpzqT1eIGEciIxALYZK0h+ealJP7Uz5RliRbGKkb3dFJd0zfRF4yKLu52HTAPDk+m7StG
	9odeG0/59HWkHH7wE24DGZD94Mrj/ZWgyesfGLbncJTOAbGBaAniuM7rnsTVTYkVuWOPN7xMq0U
	OPLUVnfOly0fG9YHXptv6Z7LCd0iqNqZOY5XR+9
X-Google-Smtp-Source: AGHT+IFi4h7s0Uz2Hvfrs8OG7dRU4JGmcSGLUtRGN3z9KvYBdKQdEpY5fu1ow0gn2Miyq+0HsNj42A==
X-Received: by 2002:a05:6870:698e:b0:270:1f1e:e3ea with SMTP id 586e51a60fabf-29dc432b81fmr14288350fac.28.1733086291521;
        Sun, 01 Dec 2024 12:51:31 -0800 (PST)
Received: from illithid ([2600:1700:957d:1d70::49])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-29de9033734sm2567025fac.19.2024.12.01.12.51.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Dec 2024 12:51:30 -0800 (PST)
Date: Sun, 1 Dec 2024 14:51:27 -0600
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: linux-man@vger.kernel.org
Cc: Ingo Schwarze <schwarze@openbsd.org>
Subject: Re: [PATCH] man2/: SYNOPSIS: Use SY/YS
Message-ID: <20241201205127.s25mc3wwsbazd2f4@illithid>
References: <78b8c8acc83d4d1a1ab964e2574ba8024859b705.1732482078.git.alx@kernel.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="zlaveudfadi6r3xu"
Content-Disposition: inline
In-Reply-To: <78b8c8acc83d4d1a1ab964e2574ba8024859b705.1732482078.git.alx@kernel.org>


--zlaveudfadi6r3xu
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH] man2/: SYNOPSIS: Use SY/YS
MIME-Version: 1.0

Hi Alex,

At 2024-11-24T22:10:19+0100, Alejandro Colomar wrote:
> This makes it easier to write the SYNOPSIS, which will reduce the
> learning curve for contributors.
>=20
> Another benefit is that the prototypes are wrapped correctly for the
> terminal width that the reader is using, so it's not hardcoded at 80.
> It also removes the need for carefully aligning the prototypes by the
> author of a page.
>=20
> It causes a small unwanted problem: a white space is added after the
> opening parenthesis.  That's a minor trade-off for the benefits it
> brings.  Once groff 1.24.0 is released, we'll be able to use an
> extension that it provides, which allows us to remove that space, by
> using the second argument to SY.

You can go ahead and use the second argument to `SY` now--older groffs
(and other formatters) won't complain about it.[1]

$ printf '.TH foo 1 2024-12-01 "groff test suite"\n.SH Name\nfoo \\- frobni=
cate a bar\n.SH Synopsis\n.SY foo\n.B \-\-help\n.YS 0\n' | ~/groff-1.22.4/b=
in/nroff -ww -man -rCHECKSTYLE=3D4
foo(1)                      General Commands Manual                     foo=
(1)



Name
       foo - frobnicate a bar

Synopsis
       foo --help



groff test suite                  2024=E2=80=9012=E2=80=9001               =
             foo(1)
$ printf '.TH foo 1 2024-12-01 "groff test suite"\n.SH Name\nfoo \\- frobni=
cate a bar\n.SH Synopsis\n.SY foo\n.B \-\-help\n.YS 0\n' | ~/groff-stable/b=
in/nroff -ww -man -rCHECKSTYLE=3D4
foo(1)                      General Commands Manual                     foo=
(1)

Name
       foo - frobnicate a bar

Synopsis
       foo --help

groff test suite                  2024=E2=80=9012=E2=80=9001               =
             foo(1)

Regards,
Branden

[1] mandoc(1) prints the argument, but the release of groff 1.24 won't
    solve that problem.  mandoc's developers will have to decide if they
    want to support this GNU extension, and if so, they will also need
    to do a release.

$ printf '.TH foo 1 2024-12-01 "groff test suite"\n.SH Name\nfoo \\- frobni=
cate a bar\n.SH Synopsis\n.SY foo\n.B \-\-help\n.YS 0\n' | mandoc | ul
foo(1)                      General Commands Manual                     foo=
(1)

Name
       foo - frobnicate a bar

Synopsis
       foo --help
       0

groff test suite                  2024-12-01                            foo=
(1)

    What mandoc(1) is doing here is off-spec for a *roff...but it's not
    roff.  So who can say whether its output is erroneous?  =C2=AF\_(=E3=83=
=84)_/=C2=AF

--zlaveudfadi6r3xu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmdMzEgACgkQ0Z6cfXEm
bc43dxAAiURlS5QINrdswwLCAuQ68IqAKExtdwJT1vk9UZGnlHaIJp10pMEaVgdY
KZ6HBcOM40JcaUQOXBDWnF0fNSwdDd7VDujNHi9e22n1OKbdM0O9K8tbMd3yIx9r
4829/eoYT/zQB35v9nBfDg60qV9OjV8fqRFqh7C/cyAivabEaQvrIJqffki3qrAA
87JYb643o3a71Ei4qcvXZFBrwHMgtcP/1RNwBdrNCxIhN4XPmELXu9yiZ0ma6JV4
ucu3cd1VWhElCczlxvj87z5Sy2eDYZ0wL0KnPQmUgC2Rq9AKfpHJWVLDllHjm5I/
/bt0W4mElqxHdIVMK/ZlSAj/wfMdyeWF+YJBfkUkj/YmuPYuKpIpbHHsR855Wcev
hBzntS2/gQdjlo+R3YU6D3rZcOEqD6NLvvb4Ihl7jhTW8rr1FaoSz/E3JzT/scQQ
ZJxiWPZihB4Yv56eobyThGgF0Z+jVwasMBavG6kQ4FQsqyQgTsEZihsf8QS08Nui
g+uCP+6I0TWliwT4tl3V7sTJ7kqIhwGJXJp4ecN1YUC38h8U1A1WpKmX/DAaj235
04kDFxkf0dL74fHuw3qPaavHjstkU5c4ikTjkIRHJdslaLxDYVSnZZ1PycDF5+Jm
5scGNUx7LfqsS9o1htX7h53p56vNXe1mQDNCXewFt+ZmmqxqIFQ=
=8GYW
-----END PGP SIGNATURE-----

--zlaveudfadi6r3xu--

