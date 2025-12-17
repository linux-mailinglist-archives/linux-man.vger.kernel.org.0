Return-Path: <linux-man+bounces-4436-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DE92CC84A8
	for <lists+linux-man@lfdr.de>; Wed, 17 Dec 2025 15:51:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 7775E3003FD9
	for <lists+linux-man@lfdr.de>; Wed, 17 Dec 2025 14:51:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6AE34382D53;
	Wed, 17 Dec 2025 14:42:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="L5mRXhqR"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-vk1-f174.google.com (mail-vk1-f174.google.com [209.85.221.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB1533845B1
	for <linux-man@vger.kernel.org>; Wed, 17 Dec 2025 14:42:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765982571; cv=none; b=lbohv9EGnOYZzFQ7sksqNcbaztbf8quAjjlN6br3Yc4e3URa0f6czcOBFBhORqPUeiT3Me3OpamioctGFhuDKT1Ur3HreQzcx7oo/ch1kBvnHwWOqfOySHhxqYjjY/RIarJVDjplsVW7KTUxo80YTs3HbE2CKHxde8VX/90JYF0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765982571; c=relaxed/simple;
	bh=gt5Mism+f4Lpz1MRmrFplQR+6rpNC21EIo28IiMrVJc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=tCjOpVrTJ9RrkTJe1Orx/65doidIFnsOpt/wqBdZbHLNDmkdmPEyN30JHdhdbyIndESuRpj2FXzl5J53+BazYsOpDLp9Nx9JaOKYAvuG70JabPgDrPFjidsnTcMq/uaimA1jd0k8u2zNde7sx55eCLajr78rCMgQRYmybzedfrI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=L5mRXhqR; arc=none smtp.client-ip=209.85.221.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f174.google.com with SMTP id 71dfb90a1353d-55b4dafb425so437296e0c.1
        for <linux-man@vger.kernel.org>; Wed, 17 Dec 2025 06:42:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765982566; x=1766587366; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gt5Mism+f4Lpz1MRmrFplQR+6rpNC21EIo28IiMrVJc=;
        b=L5mRXhqRKe0kW0EKeTidd+Mzq+FpHGwSER4AqFMPxNV0lgum6QZXt+qUvCJWM7LZdN
         WqcchlRfwGl5lCScpoPauA+Z64uSJKDsw6WFEeqt/Genc487VpJo1ziPxqFGoJyx4NWB
         Akqhi56mfMEZ9TE0JxukSQbl9KSYnvAuJb8optqMDuH3HS0uEwoL9CVZpFABsdJenie7
         u+f7MWMkU9b4wPwsw4ie6mIJr+3qwsKzOmrtu7t3+yctoH7J1YwtWctAygVI7hz2x7/h
         oxzrCq0f+xgGxZPOL1HXQO/MzbFRHCSV5avpFmbcSGziJU7hs5PAjS1zZdJnjE++QNRF
         4w9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765982566; x=1766587366;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=gt5Mism+f4Lpz1MRmrFplQR+6rpNC21EIo28IiMrVJc=;
        b=GP0ZciROWD8oN0CwQNhrCXAftyxkD9tf8qT7x/jfQjVag1Zln6jrFrOLaTC8rZB/T6
         nwB/D+04Q/hFZYtMSGDnEKSa7KIkML3M4GsdrXCqOrYeKKwwmdrQjiQPVPao8lE/mEAN
         AffTyzApuAiGQGrzLzSl2+JGWkHwwRA4K1sgzfozg+s/KWmYg6m/vjlr1u6nK51fwUB4
         OxaCA7TjFVWZwZVcYHCGxgDY+AAC0JD8r4m7i/+Ky/mTPJjaO78jPacS5ZtpkQsi2x62
         uE7UBZkaTvrqioRFbBSIS+4DeGp0b6RhsjGmvTp46kNyPDWTmUOKjjZZL4t60Nw1SXkS
         nNEQ==
X-Gm-Message-State: AOJu0YwzL3aAwts2iGzC4jom8iLZrRGHrx/Z3+2aFEcnVAiELJrlN/KP
	Tu5FEXbMRucwKMljQFeAOAwXA0NK/QDH0ZoKySNTPbwbr/R7K19p7AIwjwFzcKFdGrq6f+8s07u
	VswjtlhSNDRiancpkxTbc0vwd6puJWeU=
X-Gm-Gg: AY/fxX748y/ORTMyk1IzyvFq6jAG67eXXauPUtspHoylr1LA+zdS/nLQGyOEcLooe+C
	lC2dzOLcvbGsS0olYlzQ6xLw3XrS6Vi6puz+6Qe6g3jtAavInGf8cU1LgHKmJd+fVGaLpxzsska
	ZLZQU7rTXYKM9N0Gzh+hp1AWfd2w/9iqabLGzcaVQhDVX53Sw09cId8ck6sauP9uCc3qw/1gslO
	9VawldLiv8VZSI0AAWJpR46OoVdoF7L9m9uw/mk82bN0c8o5fvzfYSqH4bXbl5WB21dPrH0VqrR
	iGeSZzGuMeIm8HqwDh+ISjnRuQ==
X-Google-Smtp-Source: AGHT+IFmRyA0IBYuOltszsG0XpYo/QN+ZK5Lf1Dxhzie2AYQNxuF7A8Q1wZapGzpgH5lye+HbtTk1J3FDXnLxES0jSI=
X-Received: by 2002:a05:6102:1610:b0:5dd:a08e:5bac with SMTP id
 ada2fe7eead31-5e8115bf064mr8609554137.6.1765982566306; Wed, 17 Dec 2025
 06:42:46 -0800 (PST)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1765370035.git.alx@kernel.org> <cover.1765979316.git.alx@kernel.org>
 <6ed874153c52cc3f44e37a7c42ba4c69555e04f4.1765979316.git.alx@kernel.org>
In-Reply-To: <6ed874153c52cc3f44e37a7c42ba4c69555e04f4.1765979316.git.alx@kernel.org>
From: Eugene Syromyatnikov <evgsyr@gmail.com>
Date: Wed, 17 Dec 2025 15:42:28 +0100
X-Gm-Features: AQt7F2q281kWUn-KYJyU9psV5rE1Ogs_sCM1mJ1ECKDXHjWVMGawf6vtDGjL1BI
Message-ID: <CACGkJdtOfDcJ=xLu==7FBav8o0TMgRNwNVx3CZQA7H5wgsaEjA@mail.gmail.com>
Subject: Re: [PATCH v3 1/1] man/man3/aligned_alloc.3: HISTORY: Document bogus
 specification from C11
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, Seth McDonald <sethmcmail@pm.me>, 
	Ingo Schwarze <schwarze@openbsd.org>, DJ Delorie <dj@redhat.com>, Paul Floyd <pjfloyd@wanadoo.fr>, 
	John Scott <jscott@posteo.net>, misc@openbsd.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Dec 17, 2025 at 2:51=E2=80=AFPM Alejandro Colomar <alx@kernel.org> =
wrote:


> +Otherwise,
> +the behavior was undefined.

I think this statement is incorrect, or at least misleading, because
the current reading (that includes DR460) of ISO 9899:2011 explicitly
states that the function must fail when the condition is not satisfied
(and that is what OpenBSD has implemented), and that also makes any
permissive specification non-conforming wrt C11 as it is now. But that
is also true that C11 _used to_ specify a failure to conform to this
onerous restriction as UB, which rendered the programs malformed, but,
on the other hand, kept libcs that implemented it permissively
standard-conformant.

I understand that I am unnecessarily conscientious here, but I think
it is important to articulate what the standard both says and used to
say, as it is the reference point for the language implementations,
the totality of which an application developer can neither observe nor
inspect, and relying on a couple of anecdotes in terms of
implementations may lead to issues down the road. I guess the outcome
of my rants is "don't use aligned_alloc and C11 together", or
something along those lines.

> +.IP \[bu]
> +If
> +.I alignment
> +was not a power of two,
> +the behavior was undefined.

I can't find a version of the standard that mentions the power-of-two
restriction, it pertains only posix_memalign.

--
Eugene Syromyatnikov
mailto:evgsyr@gmail.com
xmpp:esyr@jabber.{ru|org}

