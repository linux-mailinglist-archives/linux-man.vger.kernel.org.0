Return-Path: <linux-man+bounces-377-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 082D082F1A3
	for <lists+linux-man@lfdr.de>; Tue, 16 Jan 2024 16:34:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9B4611F21F53
	for <lists+linux-man@lfdr.de>; Tue, 16 Jan 2024 15:34:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 457D41C296;
	Tue, 16 Jan 2024 15:34:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="AAHvcqyY"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-oo1-f43.google.com (mail-oo1-f43.google.com [209.85.161.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D34581C287
	for <linux-man@vger.kernel.org>; Tue, 16 Jan 2024 15:34:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oo1-f43.google.com with SMTP id 006d021491bc7-5990de0ea91so719790eaf.1
        for <linux-man@vger.kernel.org>; Tue, 16 Jan 2024 07:34:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1705419277; x=1706024077; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=k3ezD5xgV1ftvunhfNn+M9wK4h+82YQrK2NFP8FHtBY=;
        b=AAHvcqyYqA6DxaDxuzlXlWb9fdEWu4hd3T9APBLhslJbG0wWegYKT2m2MczRfvUtLd
         4Jpq36D9Qdo7N/IUZUB97qp5AN3fSVBYqBQr8eEtiRme9Op5FYBJrgThE4S7Z1Pkb5iw
         HEBz9MBpGCZ2BkRao29CfdNYo7S+bYUMg7vOn04jYASve1hS1cvDOKbtPw6yXLrSGsOQ
         a07gW//JYXEwBmHXIV3opqCxw52gObGOHwQofIbnvlwCAOgpfmqkxeE8LqY5qIZeiDwc
         D/LceA0MIf0ujtaY0faxuhtEP4BYOAq3+TNGj8HT8sWFnxYf602j4gkUh3X2SL7E2SLi
         4ONg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705419277; x=1706024077;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=k3ezD5xgV1ftvunhfNn+M9wK4h+82YQrK2NFP8FHtBY=;
        b=HVjPb78hRnfhmufyz1ceXOzBTtGrz6tZrOEEEoMdz8NBQP2REKXd4NhoJdRu26WjFR
         uV5z7s+R9P/6kXAiNcOwwfw0ZkciShq9i1RAddbBSiS5FlBpz8A+NjXWLG9vfxDoPNf/
         Nsv1+M7Ue6AtYiuzX1EEfce51PEYXlMY0PF+VJk06y080T9aDoI0cGTgz26uUu411RdE
         DhA7iHZgVyGoJ6B6DLmAMSjaLmimmIICtaPQe6eI7unkcOmiCOrpCLn2cpGv4ACSp9BO
         YrtHyFii51y2mNcWmOIewS+50eqmKgegGNMgKD+OHAZ4LLKlFotUmjkEvt2Zvm+trOZt
         M44A==
X-Gm-Message-State: AOJu0YzXlVOeasCgULg2lM8DxDL3Voh0G/1jA/2WOnpM5GPiOaNgsk1A
	JPnKpUZy6fuFd4SVIne8VJvyBRXcoEg=
X-Google-Smtp-Source: AGHT+IEcI10oZCC6rc/otT5zlwKheScjZJ7fX37m2mms1eBnbMb86yjn+V8XpZPL6Kkm6KBumO2CXw==
X-Received: by 2002:a4a:b0c7:0:b0:598:b695:6867 with SMTP id l7-20020a4ab0c7000000b00598b6956867mr3502904oon.4.1705419276865;
        Tue, 16 Jan 2024 07:34:36 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id v190-20020a4a5ac7000000b00595a3e41e2csm2160726ooa.37.2024.01.16.07.34.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Jan 2024 07:34:36 -0800 (PST)
Date: Tue, 16 Jan 2024 09:34:34 -0600
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 3/4] man2/open.2: ffix
Message-ID: <20240116153434.bg7odvxkccqjniv7@illithid>
References: <20240116134009.3hufaahoy3kk4os6@illithid>
 <ZaaeQubgNxAQYCvH@debian>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="erlqqhakny4nx4tu"
Content-Disposition: inline
In-Reply-To: <ZaaeQubgNxAQYCvH@debian>


--erlqqhakny4nx4tu
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

At 2024-01-16T16:18:26+0100, Alejandro Colomar wrote:
> On Tue, Jan 16, 2024 at 07:40:09AM -0600, G. Branden Robinson wrote:
> > -/* Documented separately, in \fBopenat2\fP(2): */
> > +/* Documented separately, in \c
> > +.BR openat2 :\c
>=20
> Did you forget the (2)?

Whoops.  Sure did.  A "2" was already at the top of my brain's stack, so
my internal Forth interpreter assumed I didn't need to DUP it.

Patch v2 sent.

Regards,
Branden

--erlqqhakny4nx4tu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmWmogoACgkQ0Z6cfXEm
bc6evw//WoSa6X6QqkuvsmJaP530C96giPAhgkg44PelvxqOGxb5vFoMCAp7E8ML
m/VQpT+D6OxXyryVuzEl4ConvMRgJbLtQJbJ8uK4ZT8a/XEtMsHMJ2gpcIs6XmQd
M0m+c4qF0QUKSInZsc9KWBaT18YjvjHyB9u5azGJo7BcJzUXgXpziV/EE2ffDL1H
UhDfBve39a/VgLyL8jgrcGEaAl+3Ja4v9HG6rAi9TQ0nNcCseXu+bCgBptytOwKc
BOQWmnAnISfbyDTAxbGD9CJxDXzCMBPGmYpZTcpyMvBioTI3t2gKMIWTXItI/sNp
kAzjgNOsJIupWxouUPEajAS/bBBHEOLM5XoQLuTh0iXVT+OZYpS0VeXp+80JRiq7
RKPVPUVYZ4fKvO0EH7VRc07CVJp+aoBrrPH5HOSYnu7wSfhlr3dy6jT60GdMxdhA
GEZX4R2iJmkMCCaX5dhoUp0L16V2WLWqoiT7QAiMG8asVbKXm2sXPiZKuo6TL5Mt
mpM626VnMuHx/rcA0WUfEQUOKsrtKd1N6YyHFlATGJVUNppNd/WX8xH5cQyZcXSG
Y8ccPrHL3cXBQmpUcXh16I6OvRWB8dsxycLwFCgAMNlk/UAPUfKhuoPA2cRdKTso
sLsB9H0vIJ7QByFdvsbTOCc1f0Ck6nadmOXgbHuhi/i/qpBcAzQ=
=7Dyk
-----END PGP SIGNATURE-----

--erlqqhakny4nx4tu--

