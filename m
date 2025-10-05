Return-Path: <linux-man+bounces-4044-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B1C6BB97BE
	for <lists+linux-man@lfdr.de>; Sun, 05 Oct 2025 15:48:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2859F1892F4A
	for <lists+linux-man@lfdr.de>; Sun,  5 Oct 2025 13:48:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C532C26C39E;
	Sun,  5 Oct 2025 13:48:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="YcLWsUQ5"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-yw1-f173.google.com (mail-yw1-f173.google.com [209.85.128.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F21357262F
	for <linux-man@vger.kernel.org>; Sun,  5 Oct 2025 13:48:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759672097; cv=none; b=mNvSVvOZ91KFrxWHJxxmzwmkej/VdydOh9cWgbsquZ8A65q2Iua7q6DOcwiD+KStLfbWD+4G1Vb6VqvdmAb2lrKaeCpUS77obS0Bbgvx9OjJCx/6Gx60Jp38T577nFAaB+A43MTLliBvX6dbuMqMXbm0DQigIiQmF6gI+booq44=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759672097; c=relaxed/simple;
	bh=qKD4I2/A1DA7J2E641VHjx5UE7zgnQHxHIEOqu42l0k=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=SlZmGV6fK20pmhTrej0+q3qZeu+g/h8GPshmyfseY965LwACY919bB+ryDBRA5MfOH8+qlT4/fxbZR3R/vMDM04MMtgMOuWMUSyJpoSeIbOirN/aRPvc4q8W1nVwIQpRgsCmETqdX8d+MEWu3neycH21116vNF+Gbd1wJKncqnk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=YcLWsUQ5; arc=none smtp.client-ip=209.85.128.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yw1-f173.google.com with SMTP id 00721157ae682-71d603acc23so44029557b3.1
        for <linux-man@vger.kernel.org>; Sun, 05 Oct 2025 06:48:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759672095; x=1760276895; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=wQr7bgg0z9GtK1kVzMqy2B/drJ2DKpABtZRgNjQY9LQ=;
        b=YcLWsUQ5dIDDdgYAshdBrV6JBT+S2NeyI7WFKJsPl5gfQrQO8zpcq7hkFNc6FbxGYe
         ePTe1dfROATqeRghSAPDDzCYRU6Y0eNNJfFc5KS9AV78UPeqPazKujhT1GfDHbOi6ymv
         GvqfoZaB23xEXgNrsF655YWiH8xQC+7noZkrLHH3Lfs7ffjAVw0g24/0cHBQMo4xO368
         GVPD605+u/5gJNsnU8rlcgX9OmG94fBSefuma73nbl8CAw0tW4ieNveoMlJbpcjWbIA5
         IDYkiJSfLl30h8+nmzEkNVC7QLGptmSHjpLAgD7Paueiyv1pOb/NavABgglrOh7Ayy+x
         QMPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759672095; x=1760276895;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wQr7bgg0z9GtK1kVzMqy2B/drJ2DKpABtZRgNjQY9LQ=;
        b=sBjN9P7G7ScACQY2JUyFfYMz4ityOw5lh1lbRxW0bXixrHUyzrqAdn6GR2/zIEH2Oo
         0LHC64gOWzW53l924M4Qt7qeUjHDAuOcBXaTHzVxKTmm7y9pRet3niM4D29GMqtZShZo
         O9eIFu542tut38GOL497tGzimyHDPfH3nlCCIsBrcJQt34ciQR1QQOiEhl6agFnuPqIX
         2O2oS0598upQAFXR1g0dWdD/sp2UhaHZsAM0cTbklcJDqIAinLJEhigZeAKFNvHG+jt3
         95iAGMqdZ++cp+SLDQnBktBbZQCqJ+Q6EoKPguOwaHaojCP9dfdjA2G2GR8lxh2FrlXG
         EvSg==
X-Forwarded-Encrypted: i=1; AJvYcCUCOM5NMGT2ztZWWeuGGD95OnS7jNMm5O8qdnCa7DVQIDUbKOBYIsN2kP8NAiGxaiglENN/KrB7IZY=@vger.kernel.org
X-Gm-Message-State: AOJu0Yx5gUCL9xNt06Nq8Sppezxnktf9eaOzZTTvYQu3LPX/4MyPcnyD
	MtpLmp016yYBZTSntA88pw/+Ny2LpUvAjpFIoVqAiUz/BFG3o8Lo+lN+AMK4tg==
X-Gm-Gg: ASbGnctzH4EKg6GxAc5JvD5q3oi3hEuEsi0/noStbT5GPYZvJDU9KVbXUcG0964YpKl
	kWLBLQJlSlTyl8S0T6A0AEoXfMWwOP1rLTd8PWWoNkU3BoYAfBqWwyEmej7fHiy0NnWjYtOePb3
	dsbsYxKvqsJnterpEgVrR6Tasd13AGAVi/TVVs2yrykoJz719vrUuWLAgmkzvBza9AfN/ZLwVHn
	xFNCzxf2mk2FF/N4CB3qf2n+yDz60ZaGVn+S6wk+5c0VGiA+ktBG6wfUaLdi/S91meJgDm6m3ST
	WtQ4bTpm4BW+YKo5jCMalwH5G7nFbWfchlzKEEITHtNB1tC2i9WGWXTiRiNwVCXq3wYW+fAVgjU
	Zd2HYnL0tbN1UjsgySfVl31ljMQv55hXYPzvK
X-Google-Smtp-Source: AGHT+IG0rFE4MB4EeupiYr9aFZlrWQET4zZXeBUWwg45mSY8EPS8lJRbANPKi2JzwKgpDnUGhSDqug==
X-Received: by 2002:a05:690c:450a:b0:727:501e:9a4d with SMTP id 00721157ae682-77f944ad87fmr130706247b3.33.1759672094782;
        Sun, 05 Oct 2025 06:48:14 -0700 (PDT)
Received: from illithid ([2600:1702:7cd0:e980::41])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-77f81e4f013sm34458867b3.60.2025.10.05.06.48.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Oct 2025 06:48:13 -0700 (PDT)
Date: Sun, 5 Oct 2025 08:48:12 -0500
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Bjarni Ingi Gislason <bjarniig@simnet.is>, linux-man@vger.kernel.org
Subject: Re: '^\}$' is (not) changed to a space character
Message-ID: <20251005134812.jvwyjjklabmnzejp@illithid>
References: <aNwetmt-I0cT-u93@kassi.invalid.is>
 <20250930194004.btcbo4xspyo3j3ua@illithid>
 <6zdtfxpuemava6k4zecq5pfzjnothtlqckm5wn5d2b2vam5xtt@dkzgvtc5vzf4>
 <20251004094243.avg4hvwwir7ink5u@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="vfdunptz4c746qgl"
Content-Disposition: inline
In-Reply-To: <20251004094243.avg4hvwwir7ink5u@illithid>


--vfdunptz4c746qgl
Content-Type: text/plain; charset=us-ascii; protected-headers=v1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: '^\}$' is (not) changed to a space character
MIME-Version: 1.0

Hi Alex,

First I must correct the subject line.  '^\}$' is not "changed to a
space character".  I explain below.

At 2025-10-04T04:42:43-0500, G. Branden Robinson wrote:
> At 2025-10-04T11:16:06+0200, Alejandro Colomar wrote:
> > BTW, in the PDF, the '.P' doesn't seem to be working.
>=20
> > <https://www.alejandro-colomar.es:80/share/dist/man-pages/git/HEAD/man-=
pages-HEAD.pdf#vdso.7>
>=20
> Hmm, yes that does look wrong.  Plus, I see too much vertical space
> _after_ the "ARM functions" table.
>=20
> I'll get back to you on this.

The problems are straightforward.  Here's the relevant source.

---snip---
=2ESS ARM functions
=2E\" See linux/arch/arm/vdso/vdso.lds.S
=2E\" Commit: 8512287a8165592466cb9cb347ba94892e9c56a5
The table below lists the symbols exported by the vDSO.
=2Eif t \{\
=2Eft CW
\}
=2ETS
l l.
symbol	version
_
__vdso_gettimeofday	LINUX_2.6 (exported since Linux 4.1)
__vdso_clock_gettime	LINUX_2.6 (exported since Linux 4.1)
=2ETE
=2Eif t \{\
=2Ein
=2Eft P
\}
=2EP
=2E\" See linux/arch/arm/kernel/entry-armv.S
=2E\" See linux/Documentation/arm/kernel_user_helpers.rst
Additionally, the ARM port has a code page full of utility functions.
---end snip---

As Bjarni pointed out, you probably want a *roff control character
(typically `.`) before those closing brace escape sequences.  If the
branch of the conditional is taken, the closing brace sequence has no
effect itself on formatting, but the blank line that remains _does_,
just as with a `\"` comment.

https://www.gnu.org/software/groff/manual/groff.html.node/Comments.html

That explains the excessive vertical space after the table when
rendering to PDF.  But what about the missing vertical space _before_
it?  The same spurious blank line is there, too, when typesetting--why
doesn't it have effect?

man(7), like other macro packages, employs a formatter feature called
"no-space mode" in its sectioning macros.[1]  This means that attempts
to put vertical space on the output fail until at least one glyph (or
drawing primitive) is typeset.  Looking over groff_man(7), I don't see
that I've actually documented this--so, homework for me.  (This is the
reason that calling the `P`--or `LP` or `PP` macros-- immediately after
`SH` or `SS` has no visible effect.  `HP`, `IP`, and `TP` work normally
except for the inter-paragraph space they ordinarily apply.)

You _can_ disable no-space mode with the `rs` request.  Other approaches
would be to simply let the table abut the (sub)section heading, or
precede the table with an explanatory sentence.

Regards,
Branden

[1] Strictly, groff man(7) currently enables no-space mode in an
    internal macro named `an*break-paragraph`, which all of the
    sectioning and paragraphing macros call.  The consequence is that
    the following input:

    Foo.
    .PP
    .sp 3i
    Bar.

    ...does not put three inches of space between the paragraphs, but
    only the configured inter-paragraph spacing amount.

    The `TH` macro also (indirectly, via a trap macro that sets the page
    header) enters no-space mode after writing the page header.  These
    provisions are all to keep an inexpert man(7) document author from
    making a hash of things.

--vfdunptz4c746qgl
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmjidxQACgkQ0Z6cfXEm
bc6ARA/7BZIAcvxwNib2YhZ8HTFQbrSiuJa/HYhwlOnMb97/Aj1gLzD/HMy0HEUC
XV5cIGwhLs2gr75Cv68VCiiZsmuUjSfph/6CvUPMDE/KhHcnPIwFuN8MillqK47n
DxCNSIXOvCgJeiEqGt4YCznY8ZIenIvSxRm8BNjk9MVcoC/hfEgK7B9Lf+y9a+Fh
I1EFUBpSD4wPA7vrem0d5diIa5sExwZQn41x8B86AkPAAR+LEl+xaG29aND8Xyzx
q1ft/7QKNOaRElar6brZKi8d3hOlsaXhdiqey7UFhm5CnN4bg+3UdTrKySGm2wOm
Dn8vJ3iyq6Hn7SLBW/AkhiriiIu7ON5sP4GGHbB2eiZvy/p6t6Mu5PL9y6KZ9tJN
2hVpO2bcig4R+0mCqO3oO/hZODMowzmxWLbK1bpW9JQwV6gW8jGUBtFsdk//hh/i
MMewSQp+WFLPE0QfRd+1XhyzRhsU6K2CdiKJkT++0nY4Pc+ihr6sAFczTKeTzo+p
aLNSeYUsguoBHLL2Rk5jem8O4Xipz46BR6EteesqtgodLlcxVQpjOB62mRQeI7LH
Mj1zW9xDPAHZgJWnWTRqh5UQNxHBq/E/W919Avc9u/D509Dh5bWM7AQXrfkSpX5+
jmr7r3qFAE/sl/H4SXdIN7YLK3SPGlzTWDa2XeL+0MU6YZv9jFU=
=b/LJ
-----END PGP SIGNATURE-----

--vfdunptz4c746qgl--

