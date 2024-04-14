Return-Path: <linux-man+bounces-753-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id DB0488A4265
	for <lists+linux-man@lfdr.de>; Sun, 14 Apr 2024 15:00:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 919441F21774
	for <lists+linux-man@lfdr.de>; Sun, 14 Apr 2024 13:00:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EC26231A94;
	Sun, 14 Apr 2024 13:00:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="NzOVcVl8"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-oo1-f43.google.com (mail-oo1-f43.google.com [209.85.161.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D986C20323
	for <linux-man@vger.kernel.org>; Sun, 14 Apr 2024 13:00:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713099609; cv=none; b=QxrvUh/HMXr8saBUUQWw4t3HinttBndlriJ574j2bV6QlKtjpCQcsKC+RlDC8Y3vjPSM8Z7InMPTvcRsi0kZxH4ysp9NrmjtVAHJZGIlzcv32YhpOT63aadhVwELb6dhR4pf1lMJMOZHkx5nOAShonH16xWeNRpuwKTcr4nMQp8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713099609; c=relaxed/simple;
	bh=Pu+nQ/YumI1sbTRpxAVtzDPdmfje85IErLr4WJrgBDE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YmdQHQ9brU5gtMBN3XlCwkOvYt/ts/S4gkb8IJ1ZfY3jgonCrIA89a/eqjOFro7IzMOlEOJosZZgIO67gmX+XZS5H+zF6EE8xUNmkS9w2Bfu+pDGVnm5W9j/Q1UT992lPmGcq4y71uYKZa2v6XrmSdK8m3rn+BAocbu463+v82I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=NzOVcVl8; arc=none smtp.client-ip=209.85.161.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oo1-f43.google.com with SMTP id 006d021491bc7-5ac90ad396dso552355eaf.3
        for <linux-man@vger.kernel.org>; Sun, 14 Apr 2024 06:00:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1713099607; x=1713704407; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=+a247Wr/duLaxT3ioLeSFI8+tAr8+VuTRz9R0T7AzQw=;
        b=NzOVcVl8eOEGl7iP8jw03h/H+fxzMDlU2cUTTQnX52G9HcEQ+QIqVyWqjdUaVdXIMU
         CgBbVdjfN1VVpo0B1PpbLUgdPkphCWa6IEeAhtFdN+xnnyR2KBXCAX87rieaC4TDNDJ0
         KtWdXu1x50Wn4fUzfaZTxmoVANydCtvZ95HB+Ze8qMSR0OvgOefIUOlKpHEK4FG3DDtx
         ysmNONLJHe5UmF/NYQiIzZlWEwcz5E0gA4zWwymYeIt/bJJtSu/iG9LgQBpUvpHc0oUe
         OUUDxNWgTWopAedLLDVy1+qdmFs4DyRcuWfisl2y+HNzRW8nclFZbo/82uMgtlRnntYY
         bTKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713099607; x=1713704407;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+a247Wr/duLaxT3ioLeSFI8+tAr8+VuTRz9R0T7AzQw=;
        b=FOhgx9nNhzgsDdBnFf6UXBooEGySHw4SakftF+5rR+nVc2knkZxFhGZh2ckuPTr50y
         tkxztikBL+8o/EvFRrNJG/+C1uSWrztzLpgBASBwhupZe6X0XGXdF0mCT1sk/sOw5a+N
         u9efoZesZk114WansgT2dMqsXBIoW6jcCL9Z/GixL5uk6ZCXKwkgWtM4CWAILx3nABcV
         LMpyvZi8kg0o7GTtDgSHSRtV0E0tshHPSEaAHmLpZk4wRBxDyktj0arCXCWxcsxWCn0P
         FZ2Uy1gSKXFjavJ/3ivkopT2p0cnhWlJnnngQ/Wer0MiY3zX7wIFVTrWuYC3UMGJr+51
         R22A==
X-Forwarded-Encrypted: i=1; AJvYcCXUVM9/xtdkSs25O75/a42MqWVj8qAc36n/sE9qYuEvddORj2bClC6z++Fc4LBWQtTm9A3///DgoVfx4N9BXMWNzemlK9+gjStP
X-Gm-Message-State: AOJu0YyzkgeOmGUfQ+5vR9YzA874NIjOvJgH9bQZTKrkQNxSJLA2iQPk
	gYnqtnCUAQLkwp/5C2soPholWCd6DXaM+nJ2UvNMRMQhC+0vFSyk
X-Google-Smtp-Source: AGHT+IFm8y8V9bIlvIleTbO/7KqF7Cx3qEvgY9ZU6T7CvNCaqopyAl5KxNGu/LFoCS1XPLfYwZ924g==
X-Received: by 2002:a05:6820:c13:b0:5ac:6891:cee7 with SMTP id eh19-20020a0568200c1300b005ac6891cee7mr5032759oob.3.1713099606859;
        Sun, 14 Apr 2024 06:00:06 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id co6-20020a05683065c600b006ea17f16ed6sm1483298otb.49.2024.04.14.06.00.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 Apr 2024 06:00:06 -0700 (PDT)
Date: Sun, 14 Apr 2024 08:00:04 -0500
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Deri James <deri@chuzzlewit.myzen.co.uk>, linux-man@vger.kernel.org
Subject: Re: Linux man-pages PDF book
Message-ID: <20240414130004.23vb7popijc4fac7@illithid>
References: <Zhu_-FE5sl3vSu1w@debian>
 <20240414115743.mzzwr2bd3j7lw46e@illithid>
 <ZhvM2Yy6lWGJLhtg@debian>
 <ZhvPTME5eU13GlBI@debian>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="7cdgo67kekzfwo35"
Content-Disposition: inline
In-Reply-To: <ZhvPTME5eU13GlBI@debian>


--7cdgo67kekzfwo35
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Alex,

At 2024-04-14T14:42:51+0200, Alejandro Colomar wrote:
> On Sun, Apr 14, 2024 at 02:32:25PM +0200, Alejandro Colomar wrote:
> > > groff_man(7):
> > >      -rC1     Number output pages consecutively, in strictly increasi=
ng
> > >               sequence, rather than resetting the page number to 1 (or
> > >               the value of register P) with each new man document.
> >=20
> > Hmmmm.  Maybe I should follow v7's tradition and restart the page
> > number at each TH.  Let's call it an accidental improvement, and not
> > a regression.  :)
> >=20
> > Although it would be interesting to learn when/why this changed.
>=20
> It seems to have been here:
[...]
> -       | troff -Tpdf -dPDF.EXPORT=3D1 -dLABEL.REFS=3D1 -dpaper=3Da4 \
> -               -M"$(dirname "$0")" -mandoc -manmark -rC1 -rCHECKSTYLE=3D=
3 \
> -               2>&1 >/dev/null \
> -       | LC_ALL=3DC grep '^\. *ds ';
> -
> +       cat "$(dirname "$0")"/LMBfront.roff;
> +       cat "$(dirname "$0")"/an.tmac;
>         "$(dirname "$0")"/prepare.pl "$1";

I don't think there's one right choice here.  I _would_ make sure that
the PDF page numbering (visible in the PDF viewer's outline pane)
matches that used by the document.  To do otherwise will frustrate
users.

Regards,
Branden

--7cdgo67kekzfwo35
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmYb01QACgkQ0Z6cfXEm
bc4UVQ//XamIudpyXn2rY6RAiXc9EjyFL/aSMw197zdv7NqSYEx7hU/qqcmvmh4n
1RahAklFa9vSuLRjg9uYR1GZGuvh5KiTEQH77hQpttGpiiPE3pMfeHFmZzr2TUvR
ekPuHvJoei6dUe/Pn2ju8R72vzAR0QCaHKAmx0CjUQI8EDar1RJBzrWPjJeouN/o
xEGQ6QLEntYQukmZRq36EnvFixQ+rxjsxCXJvpJCWVGrrGzKJRIXK/HjYWzWjJ+/
+nMlQVD+tXdSuniqBorQiKyiVoJ/OebArunZIN83GuiSZbtTfqF37nMf6d/sURZp
thTT9tj8g2pwyrva0bL7ILcNl2xii5TbXTkVq4sZivI/ArX4nlS6Ih4zmnQ5sYoS
92meap4iIxphFuzrFyyQyql5u4VdTqwcKEyLMIEsE7qz2EYPsY4JGkx+AIViRSIE
9DM7+Xybf+vYv5Vd5ZISdO/Ar8JkSY+A2UMBpzdCRfYKJiP3q2ygg74GTb16e+A/
e+++lpn9fI7Sfv5VeAr5iaPnZJ5bvKHzJskONa6iBANocny+lX8cB3OZZxYQmMVs
c48zRZTn7LoEhfNCyUcOqYDcMUkLLxi0K7GLZ1Mk2MZ5jC6z/PeG0WKoFvn6eGvl
FwC341aIDZl/N2g03fRHWaZ6SM0zRn4+4ipmFBQ6/t4D/X7WXxU=
=14lG
-----END PGP SIGNATURE-----

--7cdgo67kekzfwo35--

