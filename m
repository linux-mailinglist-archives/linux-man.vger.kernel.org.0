Return-Path: <linux-man+bounces-442-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id AD8D5853335
	for <lists+linux-man@lfdr.de>; Tue, 13 Feb 2024 15:32:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5A2731F247BC
	for <lists+linux-man@lfdr.de>; Tue, 13 Feb 2024 14:32:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9F4CA1DFE3;
	Tue, 13 Feb 2024 14:32:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ddGhTG9y"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-oa1-f47.google.com (mail-oa1-f47.google.com [209.85.160.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14BA457892
	for <linux-man@vger.kernel.org>; Tue, 13 Feb 2024 14:32:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707834764; cv=none; b=t4bnTyZ1LG2GDVUKPV3Wvpk2GR6wAWgKWNOBLK3Pv+JkAadSgfIASqiGZ/4BxvXMi1aEkNpI/UBnDaqxAstVonut3PW1Z+1XfOHDz25gJXndgBHA4mZ6uX5WDSGeLag+Jyg6ZH4K0CgIhvnwehLD65xEJ8V2UZRC71RV3C8igAs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707834764; c=relaxed/simple;
	bh=gXwV6VfLWXTjulwY9SXCwTVuGn2vRxiocJI2s8nWwJY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=nHvUuoP1wt3YuBJ7vMNa6ergOrrDtXRbnYlYXykqldT/dwvRUIyG2Kl2uj9CYW341w9oDy5ZPn4k0Cd2pALmh25lJCkwRbrv9mvUQh5js2Mf8rN94bDRZo+bJB/uQivqfwQvSkvMVAwKaOK6ebyW4sOeAMVl07Mx7oYsYUrUNjA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ddGhTG9y; arc=none smtp.client-ip=209.85.160.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oa1-f47.google.com with SMTP id 586e51a60fabf-21922481a2fso3156902fac.0
        for <linux-man@vger.kernel.org>; Tue, 13 Feb 2024 06:32:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1707834762; x=1708439562; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=gXwV6VfLWXTjulwY9SXCwTVuGn2vRxiocJI2s8nWwJY=;
        b=ddGhTG9yXbwDOwGYezf10VDSQiE4pwnOe3USQBqj14DhAVTXmaDh+cei+z8cXRbPRs
         YlWzDBEo1ApKb1M7hf0lW/xspsa1iHNsCf8sbPJkeylnqGTL2UxNkjUtBVpyVEGO9ATZ
         pNRuds9DSdCqZO5k7VzXnsUr2yfa9MLKIJEKjN2rBSSVe9a49rLxfWBTwfoItcD6K/T6
         sMuJzrmDoPzj3AqAfHAcEP7DAkpVgpY44QL/VGg18HudrmR39G9dFHL8lyd3Wy5kAXa8
         WTAJd+yyqisWIOh0ioUfR96b2A1Bnq1feO7QrwpwpHKg0WOvnGptWrEeYWETrVVm9jqr
         i8cA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707834762; x=1708439562;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gXwV6VfLWXTjulwY9SXCwTVuGn2vRxiocJI2s8nWwJY=;
        b=Z+pczc+FETWXzlnc8jE3iulswr3/BVlRw66MLlpAP9m9NKaL3MHJ0mgdII54OpHrxg
         1vdtCR2CHE2EPo80+qp1OS27m2qNEZJSs8nsHV9GCa6YkajPWxirDHZWUP1nyIMGGjnJ
         CWDGkkyTiPRmmzjnYJsqGVG0gDFN71XUtiCjV/0YY86Errd9E1e6upKpFeaizTdHTg5v
         YsR2+jh7edoSAjpIWkk9LFb9pcSnwQzIxbxy1Xb0A108vYdv7iVgnFgO6RbtCUtcEVq4
         xTFRcG3aU4kxeVfcODcxjiy9zyn+ZD7zSZctxCA0VesMI14fSzx2PK7Mg1nEBQBM4vsA
         4c4w==
X-Gm-Message-State: AOJu0YxaRJnhp21ShyO4F8hzc4/e4k3rGTXCEQ65/8Q8ubZvL2Sggb2z
	GcC0FlX5OeuYVavnwLzPW6K4SKWfh7zkMtyK2WQKHZYTGNvdDYvJlphYSQpR
X-Google-Smtp-Source: AGHT+IGarr1FP3lD8lXye+GEXH4K6kHHw2R6l+4aTGUtc2Lu8SFtm7dwlJe1o+DqEeEUfdbqbdBCIw==
X-Received: by 2002:a05:6870:a10c:b0:219:6c49:69e9 with SMTP id m12-20020a056870a10c00b002196c4969e9mr10344141oae.21.1707834762123;
        Tue, 13 Feb 2024 06:32:42 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCU6UXj52XyRCuaTV1CO21F8mZFRlPEE0CO25oCz14hEuSAHqIstHdwD+DMRUBhxTo0eGp5sKVRvNltn+eGeMdXp1RJ3puUveHv44TIiUKcdiLJxXu8fkBrVIertMLPLbM/z
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id lb5-20020a056871414500b00219a86e8d7bsm1853396oab.10.2024.02.13.06.32.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Feb 2024 06:32:41 -0800 (PST)
Date: Tue, 13 Feb 2024 08:32:39 -0600
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Charlie Jenkins <charlie@rivosinc.com>
Cc: Alejandro Colomar <alx@kernel.org>,
	Alexandre Ghiti <alexghiti@rivosinc.com>, linux-man@vger.kernel.org
Subject: Re: [PATCH] prctl.2: Add PR_RISCV_SET_ICACHE_FLUSH_CTX
Message-ID: <20240213143239.npt2ikvlja7nrptu@illithid>
References: <20240124-fencei_prctl-v1-1-0bddafcef331@rivosinc.com>
 <ZckUNXHtp2xkqr02@debian>
 <ZcrHuEqxsD3lj2UC@ghost>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="yag4mozzrn3kwxp2"
Content-Disposition: inline
In-Reply-To: <ZcrHuEqxsD3lj2UC@ghost>


--yag4mozzrn3kwxp2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

At 2024-02-12T20:36:56-0500, Charlie Jenkins wrote:
> These lint errors didn't show up when I ran it, I must have some bad
> configuration.

As Alex suggested (less precisely), you may be using groff 1.22.4 or
older.

Regards,
Branden

--yag4mozzrn3kwxp2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmXLfYAACgkQ0Z6cfXEm
bc6exg/8DMd+sb7dbpu8NNasGjC4xKWxMosM2vs3Fl/yF302d6ZAKNZvZWoBrYxg
9d3XjqgwqHX85gX2nHylKmn4T5NLHDgPHJfGoFd9IaRlGFQBhjHTt77W3Tr29GKn
+vSuo1Sd906I04V6r4wOaTk/neA/BJZmpG0hqyJRtNXDP6jxVBKFfGR4WfVGtrfp
axEb2vcuSPQDH6AQqLHpyXbltwh1zdSa3LNmZC6+h9SBvtsvR411BPPelrhV66Ma
gLhGX1RPBE6pFF96hRqtavd1S3NE/ObwMwYJJtvLPy0HcD4S6dgGKA05OEGBBJ3A
AaIC7iMP8eYKGYPtpDNvu8quzIIEYW6VJq1xuUuTd4w8XssLwDkpBFlMWTxNhQ3W
QTF+Tzam3ohT2SNq/d9naVQssvgWBs967zDCK6ICHJvmWEjXNUEucXPGV52ZAOhv
ilDu7cO/O11B//yzGvgPDa4wxwkMiduP6chsjnLok0pkkgvWljkNfyK0ZPLfnPZh
GI/C8XSJz8SFaqVEEVSZwIPKxv8kuCDUKJcc/UcGPiC9Cngeerf+qXIg0gJ6mpbp
GcMMuomKq18RdwDIJiacxJzNsg3HavJU8+jlFACJZECj9hiAOD1npfSgab5coNDv
hAVqWZJDkyrDqM0iUWkyVHBNgAIhqQF8OaEH9T1/jqA6GjIhSEY=
=ol7t
-----END PGP SIGNATURE-----

--yag4mozzrn3kwxp2--

