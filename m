Return-Path: <linux-man+bounces-4271-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ED08C43E6E
	for <lists+linux-man@lfdr.de>; Sun, 09 Nov 2025 14:11:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id DC7434E1D65
	for <lists+linux-man@lfdr.de>; Sun,  9 Nov 2025 13:11:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1C32D2F6593;
	Sun,  9 Nov 2025 13:11:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="MjdFXlPg"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-yx1-f42.google.com (mail-yx1-f42.google.com [74.125.224.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B2932F6591
	for <linux-man@vger.kernel.org>; Sun,  9 Nov 2025 13:11:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.224.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762693884; cv=none; b=mFUV9CUnbk/nF6ljtjtvmsjoxGAEmie+1fbOB139/yZJNWYEGTEyqPiOlswDiYgky6SVrXrA1rMO/WRio0vCAP/Wteuysj8B72ohVlnvEvA/wJ3QN5bl7bK1/yh0bdzPJ75WxiYTd6At7OK3Ot6Em/Gd2ECtCthXj4daNscnvsg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762693884; c=relaxed/simple;
	bh=FANS/R1XoQVuV79ooiQyRcKczZnu0xIPh0d9/xMJCs8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=N8Y81L/UFyleaLGGrTqAVJADCvFhGUrt+HljLQ1G7eMXJQV3/+rJrTcnF82yoE+oPy2Rx8zAvqIA2OHvR0yM8+dlI4SaXxOkz6tmk/Iu7KtDW6DwLhk7XL7IFd4E9Ph64qkVGQbec0mKpkBOipQL7B85MxwwZyP7MgJ/d39sIsY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=MjdFXlPg; arc=none smtp.client-ip=74.125.224.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yx1-f42.google.com with SMTP id 956f58d0204a3-63fc6d9fde5so1967100d50.3
        for <linux-man@vger.kernel.org>; Sun, 09 Nov 2025 05:11:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762693880; x=1763298680; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=g3Th8AR4WTXzRzyPGilopbPGYGA8AhwGq17eHwWELsQ=;
        b=MjdFXlPgwNzOj5X1rAg788pAr9ZEj+E5pWWBrPJ+h/KC0xE4EueCS28rXOnZoX/xMK
         iFT/Z9Zsn4L0iHFMz2ftAIqDNjbCvLWL5thBT7b8klQDmy64o6lPnKjC5+vCA3Ys3VuG
         2L4dOwxy46sQoPYAuN80dKOrUne+zo1VKxH6gF95sgfm4+d4cTaqlEl7VI/9QtDW/kLa
         r/Sb/dyPcesZcRA51f4K47diK3atk/m5XJvpOiQyJSq2HzjKjgO394TF2RmivhM/DCnb
         fF3K53mkVXR3zKU2ZF8w6Vljw/N7PVgMzRz4su2uBaD00+SwkmPs5KbWyMehxfvN62An
         1GmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762693880; x=1763298680;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=g3Th8AR4WTXzRzyPGilopbPGYGA8AhwGq17eHwWELsQ=;
        b=LSp0jiUXjzVeVBJ92omE/pLlN2NTI3yagQ+rGIGTQXmhYeTEhrZqOBDGddm6ih9HAO
         EF/egYyNrFgNTw1p1nrLii7tNi7EtycuVbCZigys8mXoaHxUs3jkK1n9d6Wf9KYnDkHh
         O++W2qEIRA13IKhKLvKPsmjiluUr4tO/+coTj6CJ3tpOyCaB2k/D8bod5heoW+6BUGds
         lXAE/VcBVBKlq6oJNBWxriTciPUjo5am/5KQf6tsE1/w0D2knIBVESBGnVk/A4AIKAkU
         CLmcxkAzn5W0TUqngiUBW99b+77t3ELQzvKGcUtBdx2dznIZpd/6aj8XgHsquLy5rOfl
         vUjA==
X-Forwarded-Encrypted: i=1; AJvYcCXTyyaMLG1ionQLxrS7PedwN1PMbU5KUPMeTbQLJDvmeQ9KuY6/OTmrC4V5vRZ6n8sZecXX+Bq95lg=@vger.kernel.org
X-Gm-Message-State: AOJu0YwycftM6dX9KdbYp+IRd8djRQm6eVItQpV1QSfoha0/010a203P
	Za89kZbqXCxjdR23Xf+oCC4Yb4q+lgB0lumNo63+H8BaNahbReLJpYRn
X-Gm-Gg: ASbGncsulCgMtc4VuV4vWu2vAgHwON7h3EddafIK2YLWhxujwg6HOlcGO/bejxizmHc
	FhiFVr7QG5D//T1vnEvRy6mCzAnMJJMK6WRphv28wTdW3WgtCjD1rBajLp0Htdc8kblQMf+qCGy
	SAwUuQSHhtYc/DoCtdvBmtq+KD3c7iiqDB1rnQCxnFoKhLJzHLg6Xw08Hu8U/9uqrflnlaGU7gY
	/IHucES+AG5/w5/1FgKI+F2k/lWHZNCzCSoip+f4+RCkBFksIUxvw4CYuPscBuISyb8i9vAyip6
	1+HR7Zo3+pZ7N5JhsLU6qoAEqSSgYfGSKu4gmo5uAThMdSkbL/jQrGadt/FEAqZiTciTx/jKZWM
	8YQTXjrRsGY5mQ88gT7X5UhtMP1i3oz8ttZAxAQLYZ+xp9tHYjq6WOVI0LVK2vvI9rg==
X-Google-Smtp-Source: AGHT+IHX1Nji6mZkbVv+CHEEfyz0pE4sARSj+o4u7igqwydVsKlDa5x7Mqs81Z5In1vrSNbAYyMbxQ==
X-Received: by 2002:a05:690e:dc6:b0:640:d207:99c5 with SMTP id 956f58d0204a3-640d46267d5mr4892198d50.66.1762693880029;
        Sun, 09 Nov 2025 05:11:20 -0800 (PST)
Received: from illithid ([2600:1702:7cd0:e980::48])
        by smtp.gmail.com with ESMTPSA id 956f58d0204a3-640dcd73cf7sm924927d50.1.2025.11.09.05.11.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 09 Nov 2025 05:11:19 -0800 (PST)
Date: Sun, 9 Nov 2025 07:11:17 -0600
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Alexander Monakov <amonakov@ispras.ru>
Cc: Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org
Subject: Re: [PATCH v1] man/man2/flock.2: Mention non-atomicity w.r.t close
Message-ID: <20251109131117.cl3ouibk2dhqtjuw@illithid>
References: <181d561860e52955b29fe388ad089bde4f67241a.1760627023.git.amonakov@ispras.ru>
 <xvwzokj7inyw4x2brbuprosk5i2w53p3qjerkcjfsy6lg43krm@gp65tt2tg4kw>
 <u3b2gz7gc4iwrwomngg2gioxscu6lwucwl4egdhovh52u7dakb@knipbilujfex>
 <4a73d260-9d4c-4f0e-477e-59c621b8a8e5@ispras.ru>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="5c4u5cihfdedilhe"
Content-Disposition: inline
In-Reply-To: <4a73d260-9d4c-4f0e-477e-59c621b8a8e5@ispras.ru>


--5c4u5cihfdedilhe
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v1] man/man2/flock.2: Mention non-atomicity w.r.t close
MIME-Version: 1.0

Hi Alexander,

At 2025-11-09T15:38:53+0300, Alexander Monakov wrote:
> On Sun, 9 Nov 2025, Alejandro Colomar wrote:
> > Thanks!  I've applied the patch, and appended the tag.
> > <https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/commit/?id=
=3Dafdd0a64c5bad49d6030ddc488951aeb50f0b88e>
>=20
> I've noticed that the last sentence had 'the file is still open'
> changed to 'the file were still open', is mixing plural 'were' with
> singular 'file' intentional? I'm not sure about the past tense either.

Slightly more context is necessary.

"as if the file were still open in the first process."

This clause employs the subjunctive mood, where the rules for
subject/verb agreement differ from more frequently used moods like
the declarative.

In technical writing, correct usage of the subjunctive mood is generally
favored, but in speech it frequently corrodes away.

Contrast these examples from a movie review and film dialogue,
respectively.

"If I were a believing man, movies like Evan [Almighty] would make me
long for the days when Hollywood just ignored God."[1]

"If I was you, I'd run for cover and close the hatch, 'cause you're
gonna wind up on one of those meat hooks, my son."[2]

Regards,
Branden

[1] https://slate.com/human-interest/2007/06/evan-almighty-s-appalling-effo=
rt-to-pander-to-religious-moviegoers.html
[2] https://www.imdb.com/title/tt0081070/quotes/

--5c4u5cihfdedilhe
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmkQku0ACgkQ0Z6cfXEm
bc5HCQ/+On3Iyq3vWDFXeitDbwcKwdS/hD8E88ziitrgcH+AKX4fqMT6inAnMr5G
0PVyPkcD05cejx5zaCTKLMHUucf7I8jd22HZ3cUyBs3zUazt4r+lVMMTWqIWJY0+
hbNo7df03Ov7FrtRv5PAmItjDMK8gJ+TqQ9AofU4afanyZ7bqlHcDuNcisx7qqrI
hZeXsJR1/mjzflEOAtE01KxUPcxQuKRlDoPEkOa+o6i9YAnDq4ixH7pbSIeuEfRL
gAzAz4BIxe559oLZ0B960fFXFEO1HmSLKuF97a7M9fKXUu6hiHCfodpfGz+AJRex
oR037V3Gu+lk8pMWXjaXqWAedlHMj08pZHMNl0TYiq+GWeNFnaCYLni4hS9u0fnj
L+Ix+4m9RoIizPVy41YQDuQwPcnEm6pJI7FbSU9c+6DMhwMblp2WQaFW7Ugtr6iy
h8tPMNdxFuVIX+c4qLgcfqND1zOafmsD/TcH3c2WMvPRLwDt8EYYhMNUd2sMe9S6
6kKdhcNLT0IeEkSw7Bd/zocAMd5eenVczjmyJc2N096gfmJnJQspbDuGdr/DZf72
17aM+nIA3NV9nCQ64xjZGx1Qoc6OrrsWUbGOJKr+OMI40CNCG5IFCi4TqKFDx16t
Vt9O9tIHTPCT8mk+fBbvkiGOCmMs4XHBuoKf7cIHK5w74DGJD7E=
=VgfN
-----END PGP SIGNATURE-----

--5c4u5cihfdedilhe--

