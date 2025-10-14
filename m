Return-Path: <linux-man+bounces-4119-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FCA9BDB6DD
	for <lists+linux-man@lfdr.de>; Tue, 14 Oct 2025 23:39:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4124F3E39C5
	for <lists+linux-man@lfdr.de>; Tue, 14 Oct 2025 21:39:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 65316267B94;
	Tue, 14 Oct 2025 21:39:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="YGIS3lcx"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com [209.85.210.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA1481FC3
	for <linux-man@vger.kernel.org>; Tue, 14 Oct 2025 21:39:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760477965; cv=none; b=PW1MnRdq0U00YZU/MIeTYmfTGTRil3Uvk5armWfBNm0RVuEAKwcaTsHrElN83rYJLHOWls6Mi2BiYpgck/NIHQjj/nE1U0zRQysbgX3ondkvIqQLUe01koIxX6BPgXLYDe3nq837w1qBRXzlSTLL1zYxSK8zzPwP1+CXDg5tq6k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760477965; c=relaxed/simple;
	bh=9GEgVPEZYeLxKI06ZtSxSbU012blWPo7EiN8YE8Otmk=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=Se8flB6mbRM2vXnx/K02wEatHZTSeBY0wZkyw9rk64GcPXGySgYic0T2T008QS52b1jWL5viQ1da6896K7CKQq0mRRtKokQQ/IjcuJhOU3zzDZj4pglaerHo1J5pGAQW9dGUCwE3PmWk4I2zgISXTVr5UwW4bJ5+PmjfStt8Dwo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=YGIS3lcx; arc=none smtp.client-ip=209.85.210.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f181.google.com with SMTP id d2e1a72fcca58-793021f348fso5402425b3a.1
        for <linux-man@vger.kernel.org>; Tue, 14 Oct 2025 14:39:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760477963; x=1761082763; darn=vger.kernel.org;
        h=mime-version:user-agent:message-id:date:references:in-reply-to
         :subject:cc:to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=HrxcDRf2XnSAW/2JhxideI6nfytrxND7il4jfUxSW2Y=;
        b=YGIS3lcx6iV2d/rQ6bWr9APLirnJvdHhwRiT1Wy61/rYWTRIAxqpZ/m3Ovu1XD0qti
         1GUV2jaCQsZm5n1t19YHPKzKDAhHPO/S3uhDjHvRl027/MeYOjmP4zqOTeVnJXF6Z7e/
         Yd0KDRAnsCAvVTWFCVo4HeWrJ9zLeSzW5yCIGEuVJm5KOqSCWL9bhN9rOHXZi2jCXYki
         2hIIC3TqmT3dRUEdZs6zJboifRRASJtxQ5EddWr2rN+QZlB4kbHtv2DJ+N9EGkslaV9N
         J3EwmqQvhQ0UWcw6nHMA86bU6Y1CIOhvddbgDZMeCDAbR6k1HoZhe0NoBG3T4AwzJTfp
         LGwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760477963; x=1761082763;
        h=mime-version:user-agent:message-id:date:references:in-reply-to
         :subject:cc:to:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HrxcDRf2XnSAW/2JhxideI6nfytrxND7il4jfUxSW2Y=;
        b=CgVM7TdRANRKUyYjKRvoHgGdcI+UfquU9VW/saJRn6Dp7p6okize3H/rDvtw6dLth3
         vsJUgO8RG1irJM/yg/vAX+XM53HRaSt+stUe6usJtEglxJU6NL0rAYcj13evlAd9t9fH
         RHcmYRpmSQ2ilZDO84Wrscf5bkwHvlap6SuHCy7kyzL36eKVTy1a97GAG+yGOvzwnWPn
         BgGuYNpES1aD4OfHfzZh5q+koBqxuwbGruhSZjaEbrI+nafsvkVZEFfYMNdR0gdUhhzs
         EPcGaLSIGkVWo6OssA5hkAEznAwmWdFhMf0Ms+4/QfrywDW36GP0c0gGKBAGu5tF3uuj
         U5zw==
X-Gm-Message-State: AOJu0YydEuqJOXxyQkBIAvAx3H4U3RichQCgb/wdkr+d3LleVDLsUY96
	Rliq5S0DMQUEr9hEokQ4IiYat9o1/GrGYL8gpJY9vYA62Jaf3umX8REM9Ifp4RrO
X-Gm-Gg: ASbGnctLV9RhEJFlRYkL83oXNyv1uG0emm2WmGb2SlckFkwgOnFbSK8ut/0jOop5shJ
	351IoJIEOhbWFHwcQJWjoxpoT+EfC7vtahXa6Iom1IN5y+eyr2uC2cymh6PN0E5XqISw5QjjVHx
	659EcRVPtUGmdb2fvGgtqI19DN+17iqKvTS0yziw8yKDof78IYc4+uEq0xGIVPA8IcQygLhNRqE
	bdt1UfmFtEHk8lyIowJ1/DigxsmXSTxBN/uFYYT+jPwdlyeOUkHh38C0qOT5PHtNyocxhG78lpC
	X6P9azh01Rebix5Vsth3FoAuy5RFXcCBqOTiuTwSoTMETFdHafPNnfmki5ae+eiXHY01FOfdBOr
	5NzaAgaAdSDIWevjCk5Eno66U+vRW53Yepw==
X-Google-Smtp-Source: AGHT+IH3BqAtDHAcXkxEv4IaEY2lO2h1zzOg/92pV1l7JO+WlzieldCGQ+baNotEO4MUetzY6eeYOQ==
X-Received: by 2002:a17:903:2384:b0:25c:8745:4a58 with SMTP id d9443c01a7336-29027290353mr329520645ad.3.1760477962916;
        Tue, 14 Oct 2025 14:39:22 -0700 (PDT)
Received: from fedora ([2601:646:8081:3770::2714])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29034e20f8csm174907365ad.49.2025.10.14.14.39.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Oct 2025 14:39:22 -0700 (PDT)
From: Collin Funk <collin.funk1@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] CONTRIBUTING.d/ai: Add guidelines banning AI for
 contributing
In-Reply-To: <d6d3123c7271c11fc403906ee3971b22c2fe8e4c.1760476615.git.alx@kernel.org>
References: <d6d3123c7271c11fc403906ee3971b22c2fe8e4c.1760476615.git.alx@kernel.org>
Date: Tue, 14 Oct 2025 14:39:19 -0700
Message-ID: <877bwx6u48.fsf@gmail.com>
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

Alejandro Colomar <alx@kernel.org> writes:

> Signed-off-by: Alejandro Colomar <alx@kernel.org>
> ---
>
> Hi!
>
> I've already been DDoSed in my own home server by AI crawlers (which is
> the reason I decided to move the HTTPS server to port 80, just to break
> links and stop the madness.  I could install Anubis, but I'll resist for
> some time.
>
> So far, I haven't noticed any contributors using AI.  Probably, the
> combination of relatively few people contributing documentation,
> combined with still working on a mailing list, has helped us avoid the
> wave of AI contributions.
>
> However, it's better to take preventive measures.  AI is entirely banned
> in this project.  The guidelines are clear and concise.

It might be good to provide a sentence or two of reasoning, to avoid
repeated questions on the list.

My main concern with accepting AI contributions is the current lack of
legislation and case law in the United States with respect to the
copyright-ability of the output. I also don't trust AI answers much, but
that theoretically could change in the future as technology improves (or
less people blindly trust the output).

Collin

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEI3EYVQjRMXvVeOXMjOZJGuMNfXUFAmjuwwcACgkQjOZJGuMN
fXWlmQ//XyjeE/dQR7p/ClEcrr6qmuUarNbfGuEG9sVe3Eg+ebQtDDEAUa+zqHRs
EksABZIDq8odmH1tLT+4zltMoR9lODGBImWhWfzbzUdak3AY74O70n/eSVs1rmQb
Ad5K1VeNepOQuBuRlqgdyrDOXrRsihFjPo+BAgzknLId1dTQa6NxkscXuYbcczBN
lExmsw0IH+Vw/AXzxsAJLdguEiNiWRDp/SFy5DSvJevR9tF5Ety0NucxwAw9pg2u
zAsUkgMk9759pj5Y7852VDf8Qcc5g2U5je9Rk86PzIqWV5ifjliqxf0vwsYGMqD2
0zlMgefG/CjBYzS0YuwYv7SVWt0Q1uVbUpyKJSfaYs8mbwCPProI3PqM5qw4uUL7
Q8JONiRFZrDR2RPrm5d+nBO5PlglXqB4eFfFh5daqSq6uZUh6ypH0j1hreOV1pcy
gT3OXa70DMhr0CRGBkzku99+l0GbAcYrWzBjjFaTJAEHs4uWQy5FPwvFuiijXzEZ
U1VBdA3kMf0wBo52ASv4mN+I0lCyRFPYcVkMyNoQhRCq2tvnck0x+VoINOI8mUd9
Tf9L2c6bQT1vJCto5a+Ncrx7VRBk5dzxAwsgw5plNWK0r2fvi2qh5LGqbKMGfiXg
ye7Q920aSVbKpftjqQBoui3XcWeCtXrbbj3I6XDowGZHOLLz3+0=
=rN2u
-----END PGP SIGNATURE-----
--=-=-=--

