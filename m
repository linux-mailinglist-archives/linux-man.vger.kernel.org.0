Return-Path: <linux-man+bounces-455-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B397485975A
	for <lists+linux-man@lfdr.de>; Sun, 18 Feb 2024 15:14:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 100D42817E0
	for <lists+linux-man@lfdr.de>; Sun, 18 Feb 2024 14:14:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D30326BFB5;
	Sun, 18 Feb 2024 14:14:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="gY4Lj4FO"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-oo1-f50.google.com (mail-oo1-f50.google.com [209.85.161.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AC656BB47
	for <linux-man@vger.kernel.org>; Sun, 18 Feb 2024 14:14:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708265692; cv=none; b=a7jQx5lR33xNhv5wv76DnPwCHtO1/qm5YUgY1d/CxQ5FiOrFJAe1hEjfc6+uY7F4M/wxp1ahCXrSc2gvhjE9p3JcpT3I+XWcgNjlogTjV4YQebtoLf7bwysKmHDPNX75uoPi7oaxyjT7bm/6W8JyGqxpjsnm3QgnKWJoH//QPCU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708265692; c=relaxed/simple;
	bh=D2nlkCNtg8PRx5tv4XOUwmvkcM2bMfHrHq9QonnUVj0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RWanjJQhB3KgZ4Ki0YcLow6P00GnMGH0e6dNUGrihX48sLgcfgObnEcAYMXJ6MTjR9eD84/G7jGw8WUsy2QMO8jQhFKd7rMonyX9CBf0XxaElK2oNylUg12q706y7mleKL2XTXeNvz7+zSjQPiFc0AP4l9ejy6uafk7GPApkGXo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=gY4Lj4FO; arc=none smtp.client-ip=209.85.161.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oo1-f50.google.com with SMTP id 006d021491bc7-59f80e1e259so2079753eaf.0
        for <linux-man@vger.kernel.org>; Sun, 18 Feb 2024 06:14:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1708265690; x=1708870490; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=hkmkSDUEB+dFTZt6TesNsPXFnVATXFTKDfQwLt1QOXU=;
        b=gY4Lj4FOrAWwJ8Gb3UkSqUwTZ+S1gfedM8eCbar/tJlFxV7m/8Yx9yUESQ+aCFK8yx
         Zvdxz7/z1mCT8R5WzWZRnSA2+jdu4j+WTK4ItdL3Z8SXinr9FF535b4tuAdj8sCJ3YaM
         yacGoYwKQLDEpW6tMdxm5jlJLXf4RiBPTjSXaAw8bxKZvltFb8QaD7aLRj6KydPK5WXk
         X9k0BCEUIxJ1JGwti6bpNebR5d7SVqPw49dpa3amP7s4csxfteVidSvAAb2tadXlCx+/
         F4JcfH1Va1DdPjfMQs8KtyOZnvz7QOWZP67IfUapH1bGbrjw1p7xQOrJV+PleCnlQoDm
         n1UA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708265690; x=1708870490;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hkmkSDUEB+dFTZt6TesNsPXFnVATXFTKDfQwLt1QOXU=;
        b=c2SgSV9XiuRPZ7rSVoXD7OK1d36SFM1hKxA46LJYZK937bCLNZnBLo4htO3dEsge5z
         teGHkARVSqD8rOOOdeQ6RClA58v+gHO13PC1GIDi3Uk8MnCONuoy58gQpftbDmGXzeMQ
         TjKa0yq3+35J+9L1rHeeXrubUOqe365ZrHeqXm1mEO6u5Y4mW17LS5MeMSva6zY3pbQk
         UVa2My2qa9wT+ud8PrVpdnhl+z/aFRNxfBtkgmfyMKNYeEEdsZYrlVo+dtfW9VQDNCW2
         Jcd2RiRYWsJakL1mtJ+jlRjK9GwZdozErXNhEKjFssBOTg9mNPYCrXjszefRmz5sObKv
         8s+Q==
X-Gm-Message-State: AOJu0YwaZ5/XJ7ZIbOuLdMpcSVgak2BP14YfP/R2+3KR1v0RZ/WLRFFX
	BJf5M3AH8C3imR4FWbE0ttLbWONgIgHMipsUlVEm0poSdCsfwKYLP/WBdbvN
X-Google-Smtp-Source: AGHT+IGxWDPIi8Fmc8CU1hZUBifxyJUXYWsL/OfVwx9W0RwwspQ0ZyoRjzINBZs1KLsI5zrVZUsf3g==
X-Received: by 2002:a4a:7605:0:b0:593:f906:614f with SMTP id t5-20020a4a7605000000b00593f906614fmr9638788ooc.4.1708265689766;
        Sun, 18 Feb 2024 06:14:49 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id b6-20020a4ad886000000b0059fae73df22sm628300oov.3.2024.02.18.06.14.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Feb 2024 06:14:49 -0800 (PST)
Date: Sun, 18 Feb 2024 08:14:47 -0600
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>, Mark Wielaard <mark@klomp.org>,
	Alexandra =?utf-8?B?SMOhamtvdsOh?= <ahajkova@redhat.com>
Subject: man page base paragraph inset/indentation (was: [PATCH v3]
 close_range.2: Add _GNU_SOURCE and unistd.h to SYNOPSIS)
Message-ID: <20240218141447.q34tghthp7d4llpg@illithid>
References: <20240212120704.1638500-1-mark@klomp.org>
 <ZdFY3PwhYhhIlUIg@debian>
 <20240218120035.GE16832@gnu.wildebeest.org>
 <ZdIBa2VRKK_06f9X@debian>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="dxixxakxf7hoxmpp"
Content-Disposition: inline
In-Reply-To: <ZdIBa2VRKK_06f9X@debian>


--dxixxakxf7hoxmpp
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi folks,

At 2024-02-18T14:08:59+0100, Alejandro Colomar wrote:
> On Sun, Feb 18, 2024 at 01:00:35PM +0100, Mark Wielaard wrote:
> > Note that there is now one line which is > 80 chars.
> > You can fix that using this from the original fix,
> > that splits and indents the comment on two lines:
> >=20
> > > > +.BR "#include <linux/close_range.h>" " /* Definition of " CLOSE_RA=
NGE_* "
> > > > +.BR "" "                                  constants */"
>=20
> Ahhh, I see.  I'm using groff from git (what will be groff-1.24.0 some
> day), which changes the default indentation from 7 to 5, which is why
> it fits in the line for me.  Thanks for reporting that!  I'll fix it
> in a moment.

This rendering parameter is now configurable, of course, to accommodate
people who prefer the "old" one.  So when generating cat pages, doing
diffs, or similar, you can pass the following option to GNU troff(1):

-rBP=3D7n

This can be done for any version of GNU troff; versions of the GNU
man(7) macro package that are too told will simply (and silently) ignore
it, and use a base paragraph inset of 7n regardless.

Here's the NEWS item from the forthcoming groff 1.24.0.

o The an (man) and doc (mdoc) macro packages now support a `BP` register
  to configure the ("base") paragraph inset amount; that is the amount
  used by man(7) for paragraphs not within an `RS`/`RE` relative inset,
  and in mdoc(7) for all paragraphs.  Formerly, the `IN` register
  configured this amount with other indentation and inset amount
  parameters used by man(7).  (In mdoc(7), it had no other purpose.)
  The base paragraph indentation default is now 5n, corresponding to
  that used by historical man(7) and mdoc(7) implementations going back
  to Unix Version 7 (1979) and 4.3BSD-Reno (1990), respectively.

Ingo Schwarze has made a parallel change to mandoc(1), and I expect it
to show up in the next release thereof.

https://cvsweb.bsd.lv/mandoc/man_term.c?rev=3D1.244&content-type=3Dtext/x-c=
vsweb-markup&sortby=3Ddate

Regards,
Branden

--dxixxakxf7hoxmpp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmXSEM8ACgkQ0Z6cfXEm
bc7PQA//Zov3PYKWGjbMwfYaq6c3lZK+aAXPsz//wIGMnLedySrRtI9V2lT/82e/
Gsp7xCduza190Q0X/AmQFgSpl/dSD99wex944bYfcK0NmMLqKn0sX+eIykN5rliG
ONRrxjtzisO1LSpHR5nzUndMJdq3KrmsPiBLRI7kQBTZIelYkEH4yt1kMz6X5u/m
Ohcw6ilpJcak1hpOvlp4zWv+DXFvu4zJ4b8H3vSn0jfB2JFv+SifV8ACy4BHUDHF
gtEIlivLr0X5nubD1RYbul2gb/hvQmcju4Wf/O8J6o9f0dSuMHyk/GXoyYkgrKEZ
/Q36wIccmdbXKQSxrw1auHCZvHm32H4gudG5G6OL8p0qV8nGeT1PFMGjAdJhwXhS
8v6lO0Rrfq78eoinioS/HuBgNuOo7mbIit87y/B2dBSf6PmZnOu1ytyEzrxu5CZ3
scMmunbvsFcZ06HszGQWwgHyZbeSNsfo/aRfQBQj/lYJFsJ9K3nCUx8S2RVgUU1N
iRQ8CLr8mKxSj8Rmxxb04smPXRpDlpJssix0pzh0pBCmLLuLvguhJV2J/XAI1jvb
JoDdAtaxGw5foBQc9cocnFy5qiilGyEhiMsBIjaJ3JAdj9CAFAaayGo6w0tyEjIA
RdN1grypeVpWzCQS+ajfzeutd3q9MCzziN+eUB8DAySxcfcfVAg=
=wpPe
-----END PGP SIGNATURE-----

--dxixxakxf7hoxmpp--

