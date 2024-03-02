Return-Path: <linux-man+bounces-494-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F69086F285
	for <lists+linux-man@lfdr.de>; Sat,  2 Mar 2024 22:17:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B1844B2371F
	for <lists+linux-man@lfdr.de>; Sat,  2 Mar 2024 21:17:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5FE7D40C0C;
	Sat,  2 Mar 2024 21:17:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="RyngGpIM"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80CC040BFA
	for <linux-man@vger.kernel.org>; Sat,  2 Mar 2024 21:17:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709414271; cv=none; b=gzCFJhcAXZeBQvBIhCfMImPSxW3/j4C7AX8SajYt90By086i8HDdhnoNpls2g74HVhIJ1EutFhBNNHOu8zDqQVTBBO9diRTLfherJESY1DK+RZ7+8l2lpPyMM+zXmf6XDu6qzKBR7JHuOz02jfYq50P9SoVJvPSqIAJ9Lf6+RnM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709414271; c=relaxed/simple;
	bh=qPPjryApudX+Ky878LuU8SMbMP7PKQOnBUGrXhbCTJs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=dOtv4cIGEHddsx7cRHTBrvl3vRvz9YFtDfr4Wi97yb5vby5zG1EfpsdCQLuRaAYDjBVLiCPz0PYz2Zinekti/qxNuimD6ttKme0D0mt5ecSYSy6K9KDVbXGNJGv1bFQLBRb6zgHJFXXX12OChUlIrmGat8PGfPa4wT+ESwmZvZ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=RyngGpIM; arc=none smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-a444205f764so435508766b.2
        for <linux-man@vger.kernel.org>; Sat, 02 Mar 2024 13:17:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1709414268; x=1710019068; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=CG9MlXGvY2jQn2razVOnOigCYWtPUvXBmulFaRtLMLE=;
        b=RyngGpIMDvxPGXPl12oN5jO4HUnWjbc6RgxhcnD62/VLJrM067Sg5aEBGEr3qczkAT
         +pVp1zNmdLUJ9BzS1Td1Jcmc3P1A0Pargy86WQSMyxt9kc1+Eyhm/xyMnbiXY3FXW+MM
         96WwzyFcI7pHSwQrTPun0KruzVh7dh6uCL5Ck84GXDF0w012ABv30fXxykMW/kpOclJ4
         Fpwg2Xq0mU3KKi6iszcoG+pAVCAFa9wDUSWTxIn1/ApOUy9bN1XGJ8XiRaJ1lHH8xuS1
         aySzMsQFz84J5BmPG8s0Ml0xMnJMSZwtxa6CLVzPlMHui0YLtB8xRWyqjGToD/x4zdLy
         QV+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709414268; x=1710019068;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CG9MlXGvY2jQn2razVOnOigCYWtPUvXBmulFaRtLMLE=;
        b=EBp8Kz6s3kcfJ8efXRAlsXbOuq5/utcJXaZR2X0DGFeQ8REcn62OF+ViFhCrKMnOkr
         o+ypUEMJfMe/+2k1ovbSIbMTOU8ObmmYI46oohSL2gf68JLwLzca8dx9uWkUe7zhnfBz
         YpjYv7pcVtDondvvNQQkLteNX5tqCURrI4tS4QttIVSWrqk8oKCqOy0isEKilnWh/Uwu
         eXmJ6Vw88fvg9rcAoRcynrm6CCLBitZE6zkCNwF710Fwx37IwVpyzDEc7F/vFPFewo0R
         jFrYxUGwB3vx7enUkWXVt9LTWw39HfWMH+0TIoytv2gej12Cnp9gMiQRqd4vUPwKGDII
         A9mQ==
X-Gm-Message-State: AOJu0Yy+pnMWqgYVF2+S5ifu0pRj4NxTxUeNc0aBBcmuDMiqTDdXvATj
	Xj1A3EM8ai8VuA22gaRBUCajatZ1Hq5I9ESfTTui4uZ9Tw47bQJybn+QpvicaDd2XT8A+Zq6otX
	Z582GE5Z9CXlcGu7GzqyjAq4jzQI=
X-Google-Smtp-Source: AGHT+IGQK6xA4OPSBnyb2KVWTx8IDYTMT4FBjCGn7h0R9/Ci0LoBLlLwWjiIU6ly6uzak8y0ME5jbY/R7K11pqqByAw=
X-Received: by 2002:a17:906:7f1a:b0:a44:c712:c1 with SMTP id
 d26-20020a1709067f1a00b00a44c71200c1mr2118314ejr.54.1709414267588; Sat, 02
 Mar 2024 13:17:47 -0800 (PST)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CANv4PNkVv_0eLgiSP3L_KfC-eZJaVLZ5AP1AGfD0GNrR5M4Hrg@mail.gmail.com>
 <ZeEnJB96mMC5bfBz@debian>
In-Reply-To: <ZeEnJB96mMC5bfBz@debian>
From: Morten Welinder <mwelinder@gmail.com>
Date: Sat, 2 Mar 2024 16:17:36 -0500
Message-ID: <CANv4PNmMpiwfv5acr7U6VEVe7PE_AMTzkkpNoNN9jrtVzk_93Q@mail.gmail.com>
Subject: Re: Man page issues: logb, significand, cbrt, log2, log10, exp10
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

I think what happens is that the compiler (not glibc) computes that
exp10 for you and that the compiler happens to be more accurate.
Here's what I get for the loop:

  for (int i = 1; i < 20; i++) {
    printf ("%.20g\n", exp10 (i));
  }

welinder@CarbonX1:~$ ./a.out
10
100
1000.0000000000001137
10000.000000000001819
100000
1000000
9999999.9999999981374
99999999.999999985099
999999999.99999988079
10000000000
100000000000
1000000000000
10000000000000
100000000000000
1000000000000000
10000000000000000
99999999999999984
1000000000000000000
10000000000000000000

Here's the bug report to go with this:
https://sourceware.org/bugzilla/show_bug.cgi?id=28472
Note comment 6.  It is clearly not a high-priority item for glibc.

M.

