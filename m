Return-Path: <linux-man+bounces-1002-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BB4A8CF4B2
	for <lists+linux-man@lfdr.de>; Sun, 26 May 2024 17:12:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4820D1C2095D
	for <lists+linux-man@lfdr.de>; Sun, 26 May 2024 15:12:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5974916419;
	Sun, 26 May 2024 15:12:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="WcBweftH"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 990031755A
	for <linux-man@vger.kernel.org>; Sun, 26 May 2024 15:12:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716736324; cv=none; b=JCM2iHvoc+dg/jdtLevlKO3M4ACCsoK7E+1qP7VGlRl/1WeGaHSl0r50qhrAhq73wzNaxjRCP2aSEDYPbIObzTt+90sRATMll1DtCEm6gfwI4//su3MZRIt8VewtRz1+kGE4riwYbmI2GbcV9MZeGWgQrBF/Pw7e2yB72Y9upkI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716736324; c=relaxed/simple;
	bh=6WvivTtu4QPIbbaLUO1xB86MklkJLBGnoYKuyXyf8TY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YeN68l6djgaaYGPzw+10TFWeS5jPjIfgH63FzPd8xRsTZsBdBb+w6EZlqm1BQmFjLTvLkVgYAGFV8Am47LRLXGXaIqBP8M0pIV3bPw7+NMu8XU4ve6CchvTDSVqqKZGo01cDOgBVtZFkrY966GW6pqFLTymq0e1mVQrOxh+jVHI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=WcBweftH; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-4202ca70318so73033085e9.1
        for <linux-man@vger.kernel.org>; Sun, 26 May 2024 08:12:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1716736321; x=1717341121; darn=vger.kernel.org;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gkFtaQRdkvHwifZ7OhHAAUK/n4sHJL2bmfpDwTO1dxU=;
        b=WcBweftHH9jDRkY9Kee4hcZMBFC/PpKVqC6LWn1+ovfF4488IyjI+v3gPnXtXzUWe+
         YvxBQp+niQ3Qhp7JCX4HVU3QJLlpoFJo7SGjCac4Jafl/1roQ4EQAuJb8Yt3BygjcrRB
         X5dgmBWanBmgwQeG7xFuK4z8lS+SozE6tknOoKWNYno8YpZ/ifv/hIORhOQlljtb71JI
         0OI6EQYtjatHgZbYvNHwJbFWmRVZSTT1P/oEzEqhqgqF8s0JyfpRWZ7VxOiEFlpPSZGy
         zi3oxhXf/Oeen7sg4z3Mg8tk6KonEQatHnoDMruI0wMoSzsv285Krn9+FZ9gopf7N+Zo
         CMjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716736321; x=1717341121;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gkFtaQRdkvHwifZ7OhHAAUK/n4sHJL2bmfpDwTO1dxU=;
        b=CWemr65PHH3P7JpAF+KkFaiAOKf5NI4g8wvyFmtgFvHTJpE5gm79R1ydQpBGVQFre9
         pVxxRq7KbCKXjL9WNnfiGziZ7sVhfP99uNLIIx7VvyUm4S+Ipp02n0uiqKo/lSlzIiTH
         Qp90ZPmgfmk6n/oBdsWiEnB+S2fMoj8Da6gRzIbZ2JCFwSdbXduucaWnMDUuXDNN83zp
         ZpIImIrFvNWoi6rxqvQ4brTbvXEPWxaOZ8gszElCbI78FV/Hp10etfs3PpfHqWMyrgHi
         V9xpanq1MInEY+8euu2Ba+qPEIJlHaxPCjmWUASUhPafsOwUTsp66oogO6RvrZa4TUQw
         lHcA==
X-Gm-Message-State: AOJu0Yy3mVyckJJmWp2NkE178Rd+lqskHYZfVR7ZRabgNs8JLwnjoN3o
	r+clSCExR/hx7NYpVc2xqtTcNMod5HksQdkUoJ/pKaUa9+uOf2hfh1o0rS5W0JY=
X-Google-Smtp-Source: AGHT+IGbCyMbkFyOuBk/XSfvPSpjh9BxDb9wiVRCISroyQr5hI8O7kVl4Eqpdd0U3zV94NhB3lgHOw==
X-Received: by 2002:a7b:cc85:0:b0:41c:190:2ba9 with SMTP id 5b1f17b1804b1-421089f38c7mr64108475e9.31.1716736320540;
        Sun, 26 May 2024 08:12:00 -0700 (PDT)
Received: from t420 (net-2-37-91-213.cust.vodafonedsl.it. [2.37.91.213])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42100fb8f4asm112867885e9.41.2024.05.26.08.11.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 26 May 2024 08:12:00 -0700 (PDT)
Date: Sun, 26 May 2024 17:11:58 +0200
From: Emanuele Torre <torreemanuele6@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: Re: [PATCH] grantpt.3: explicitly mention  #define _XOPEN_SOURCE
 requirement
Message-ID: <ZlNRPhPzdi0U8Fhp@t420>
References: <20240526064227.937757-1-torreemanuele6@gmail.com>
 <nx4yzt26bte57ak7vnc7tkl7ofs6fmqxkaexhvx2ixx7jst4yb@xui6m6mjxoz6>
 <ZlNE8ooomjnaKWXX@t420>
 <2fso6x7fhxowsgozm4gwnfbqw2ylukibhbq2pneddxyd44uw5v@bva2bmi65zx6>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2fso6x7fhxowsgozm4gwnfbqw2ylukibhbq2pneddxyd44uw5v@bva2bmi65zx6>
User-Agent: Mutt/2.2.13 (00d56288) (2024-03-09)

On Sun, May 26, 2024 at 04:54:26PM +0200, Alejandro Colomar wrote:
> Hi Emanuele,
> 
> On Sun, May 26, 2024 at 04:19:30PM GMT, Emanuele Torre wrote:
> > I've just noticed that ptsname.3 is also missing  #define _XOPEN_SOURCE
> > in its synopsis; however  #define _XOPEN_SOURCE  does not seem to work.
> Did you define it to 500, or an empty value?

empty value.

> 
> You need to define it to an appropriate value.  (The synopsis is a bit
> misleading, and we could/should specify the minimum value.)

I did notice the

    ptsname():
        Since glibc 2.24:
            _XOPEN_SOURCE >= 500
        glibc 2.23 and earlier:
            _XOPEN_SOURCE

But that is the same text that appears in grantpt.3 and unlockpt.3, and
they get included with just _XOPEN_SOURCE.

I also noticed it this morning when I sent my patch for grantpt.3, but I
ignored it assuming I probably misunderstood its meaning since it worked
with just _XOPEN_SOURCE.

Does this mean that my grantpt.3 patch is wrong?

And that  #define _XOPEN_SOURCE  in the synopsys of unlockpt.3 is also
wrong?

I should not use just  #define _XOPEN_SOURCE  without a value in my
programs if I want to use ptsname(3), grantpt(3), unlockpt(3)?

o/
 emanuele6

