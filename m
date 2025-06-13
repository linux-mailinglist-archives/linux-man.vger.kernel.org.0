Return-Path: <linux-man+bounces-3147-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E41EAD972C
	for <lists+linux-man@lfdr.de>; Fri, 13 Jun 2025 23:13:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8B19F1BC388B
	for <lists+linux-man@lfdr.de>; Fri, 13 Jun 2025 21:13:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 077F6265626;
	Fri, 13 Jun 2025 21:13:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="htkXViWo"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com [209.85.210.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61FC526B951
	for <linux-man@vger.kernel.org>; Fri, 13 Jun 2025 21:13:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749849197; cv=none; b=nTw46ELZCZU1k6G6xl/iyMlsktZswZwr4jMR0qQxDGVqvGZ/C8+pehbya8/kIA6qfVvEpQddc9g9zjlxj5AmDdgYTLJG2AfyxYEx2Q4kMr62CIIofo3LfpsO8KSyx6GTOzzMSJMsNHdSpzAKSBiFeGZvI9e1668jzAozGvycPwk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749849197; c=relaxed/simple;
	bh=EPXltruCRQQu9dRpSCsVL21EXwJEH6CWO2xjyvT3iqs=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=ct2yF7BeWJJybzdgCBi7ebD3opt13m9Y0kQj78SXovhwhzi3qJz4qNnuhBheADam/dSwL5jXpbIthyzjFl3TSxJJ2IOixmfqOzplsvrKd01WrpoTPEyypXKOcCb+7sogJOXac92AmpN+iy0Jx1REnY0LL77Vo1C6C41Hia8U7FE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=htkXViWo; arc=none smtp.client-ip=209.85.210.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f179.google.com with SMTP id d2e1a72fcca58-7481600130eso2933663b3a.3
        for <linux-man@vger.kernel.org>; Fri, 13 Jun 2025 14:13:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1749849195; x=1750453995; darn=vger.kernel.org;
        h=mime-version:user-agent:message-id:date:references:in-reply-to
         :subject:cc:to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=cDcb8d4d0YbqY1U/6if6+mvDfNczmVCUufWUCVQMUos=;
        b=htkXViWoBxWmd4R4npqkIIpYbXARmNI7xnNaDDFoOxPbISppPynzZ/P4HwJgbwR+cA
         Z2BlZ2KJNO65QFnnowklHkRKB7nbyOmgh++5qKOH9Ii4YsgWeThC0Siz1qbkV8LTAH49
         KkL8q7ymvLWKVwDTFAfDzB+Qv3/GX1bpyQ9DGd9bxZkqSlktQiEqIizZOZiXPFajZ1Bp
         nAJTEHBh77ABWD00rVdYnX8ld5n56/EYHRDYvCfzcAINHBFACVe8nSwqjkc2MQtBM9LH
         p5c0vetf+v3FWy0x32uO4I3IMYCGmM3yq/6kZ21/+7UDJW6M1Q3akD6FKRiph9iHzeSV
         EOPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749849195; x=1750453995;
        h=mime-version:user-agent:message-id:date:references:in-reply-to
         :subject:cc:to:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cDcb8d4d0YbqY1U/6if6+mvDfNczmVCUufWUCVQMUos=;
        b=rIepHyQG8bxi+HtttYywbL2FlpUTerA10ZadtZMUesSscZWeFp+y0c82ItvXlzrdKe
         c2oFXKjQUzmF/ZwA0H7mMNTbu9q0OqWJ4sbynDpwVp7ADKgWqtC3QVkkoVtdgAyo6GCX
         LPVaok11yVVqQeUV+K21O80omPNd2tulB/yl68gUC3dQjoQGv1bDlUtObSeRb6VOp/+a
         HLvx5gWOCt/8QCtHuUlD7qCY6uBPx3E6Nqpld4twE0OgCO9DssLXP+mDQGQYUwmCAJ0U
         f4V0E1XvcSB/DPTTpSJGT8sxod3uSPJhOjV+0y+0M9uK258OgpmY+hQAi3btHDnveOUV
         i1+A==
X-Gm-Message-State: AOJu0Ywydnm/yrvEZ71zbT+Yj09NsnGLHcghv33sgMFBzfqca21Ta1P3
	HG/9vyAK0Ef2Xax0cQ+LOn0IkxQg0DwxLEIiE8tSStD2rbuzQZAT1IaHCmhLdpPH
X-Gm-Gg: ASbGncstW7Zj9sepulyipUN3hYaAfktHFTEmxYlRisVwpJXBgnlESZw+PsIsn3GQmls
	0C/kmUBpCdDD7rm5PK2vAGn7/XKexTbMWbqPy9sIqnw+uNgfRivjPC9JfUgRFvuJVfi+VPnfXpe
	fRU5aHudGz2BEvD9LerBcCf7BgqV+Ijk2JByqBFEZA6dFXYBGgHGZD8r5p4vJOU52ZBU+8F30UP
	0EypuKAFGyVQ3Y9scnqxTmEPcFjMQEZ5wHb4x0oUFE18TSuoFNgu2vlXGfIdcydV2CfFCAi51zS
	splKIY3NfHTWD+jPG8n6ImkDMYZBkIPlDPLPeu3hTw==
X-Google-Smtp-Source: AGHT+IHCTbjbBR13wfEhBLXmBteQV+rz6Nhe8pIv/a5u/cxNW0L3VdD9c9RW/W1FvMWUz7J2JYvgCQ==
X-Received: by 2002:a05:6a00:2286:b0:736:2a73:6756 with SMTP id d2e1a72fcca58-7489d1999famr1036345b3a.21.1749849195408;
        Fri, 13 Jun 2025 14:13:15 -0700 (PDT)
Received: from fedora ([2601:646:8081:3770::f55])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7488ffecd08sm2102124b3a.27.2025.06.13.14.13.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Jun 2025 14:13:14 -0700 (PDT)
From: Collin Funk <collin.funk1@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] INSTALL: Adjust file names to match current build
 system organization.
In-Reply-To: <3rgmfiajpc6lumg2zeos6bek5wtnd457cizex275aauayferec@44fw2hvwww6r>
References: <1cd0d5aa80cdc10a6c03dc8f3f2827d38bc86767.1749795252.git.collin.funk1@gmail.com>
	<3rgmfiajpc6lumg2zeos6bek5wtnd457cizex275aauayferec@44fw2hvwww6r>
Date: Fri, 13 Jun 2025 14:13:11 -0700
Message-ID: <87a56bs5ug.fsf@gmail.com>
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

Hi Alejandro,

Alejandro Colomar <alx@kernel.org> writes:

> On Thu, Jun 12, 2025 at 11:14:23PM -0700, Collin Funk wrote:
>> Signed-off-by: Collin Funk <collin.funk1@gmail.com>
>
> Patch applied.  Thanks!

Thanks!

> <https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/commit/?h=contrib&id=249fa859134d815df71c8bd5c414ea0a04b66530>

FYI, your site is unreachable, at least for me.

Collin

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEI3EYVQjRMXvVeOXMjOZJGuMNfXUFAmhMlGcACgkQjOZJGuMN
fXWWqQ//Xnw5S8cTf8s6d0NVdwa6Lum4FwKM4LflzEbOodPvRztmnDRnUaacwBB4
Ma6EgWWIv2P2/lcQwC19q4+XbjNzuUkmv7GuSGb+D91v21kbZBf1IZhhR8ebHI98
cdf18ETrKV3Gs/qgBqovBk7A9YKXWPb13hlHYEKFqLP6Bvs8NYZNN4WIC8RN4Lxb
lKt1u9g/j+j3OypqalfJ3sCFWary8bxfcQshk2WfeqPVOUmBsgqi2vfPMHd50pAQ
RXPoeCyKjBjM/Q+VYl/7/8QgltT0/tqgdUKob/HURkCn01VtcCS5rnFbv8hy9/Bn
07+WDTzv/Znd7oviBLnrxkgkxWKhP0Occl/ZXAJKEPhjjmJaMVjYuQdR/2CwS+mt
nwqEZqa7pKBhp2OHwQvL2BQMlEN0oF86CBAl8trgsTggMuzeXOZXgp6s9reLZRWM
67xRESsDgBaVvrED3IBeW0FAlT1oWXHnFlx5wtYAlwFzI2mw25Tz4g/82/S6UtU/
Wd3evpsmNwkJ7kWXwuVygCBr4bCyI6Tv2TwYV0Pu3BKwqWNwM7n3CAnJ+MnSBPzY
ukfZkwaFCfX1MMkDDufExVG6Lq/ToZc25jbaTk4jJPBP9M5dQf/WWM6KcPtJ4DHY
jxXfoQ7Vs287/+71d2SUHXu9rFWeaNLFe5LObclo7NQeKpLco/I=
=XGMv
-----END PGP SIGNATURE-----
--=-=-=--

