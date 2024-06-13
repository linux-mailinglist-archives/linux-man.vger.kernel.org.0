Return-Path: <linux-man+bounces-1172-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id BEDA8907D75
	for <lists+linux-man@lfdr.de>; Thu, 13 Jun 2024 22:29:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 746051F237A1
	for <lists+linux-man@lfdr.de>; Thu, 13 Jun 2024 20:29:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6B60E1386DD;
	Thu, 13 Jun 2024 20:29:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="L/gMxcJf"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5560137921
	for <linux-man@vger.kernel.org>; Thu, 13 Jun 2024 20:29:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718310588; cv=none; b=esY9PcmJUQ47ryEjAzOZwSOTNiGCnqGPeXdbVJ8rKvHzB/zOrldEExf9AXyjtUDB0M0OpGsHyd2u2BN30pgmpJB+wyKC/2CsBXVZ/KES61DgOTMnjB6/Lmh7t3bfY8KwecnzsBGC/H8/oZ/4lTOMgfD1hDLoxNCMGSY7MzhxTz8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718310588; c=relaxed/simple;
	bh=nxsLdP0gADG4MMxo2JDSoOrtgMIH2azIAe8D/g0fb80=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=XM0RjEq9fRe9V0WC26IlWvWMsKbWNBn9434/OBSPjiqytbhxNO7PQ5ht6zJhNsZA50/HlIxqQ0dSoB9m7oQMZLGJqqa+GKS3THGGG5sGmpbqwtOWlJILLhu43ByJc9C86ZaOKuSG2Ajob23zjtbxP8SP0V3sDPfc4DpLMhCrk+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=L/gMxcJf; arc=none smtp.client-ip=209.85.214.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f182.google.com with SMTP id d9443c01a7336-1f6f031549bso14084845ad.3
        for <linux-man@vger.kernel.org>; Thu, 13 Jun 2024 13:29:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1718310586; x=1718915386; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=3Mvyr8ChkURfSiiblDrkGmncFPR663YqpK/azida3xc=;
        b=L/gMxcJf/VvvR1sT3D7YiTFZDBtWxW+gklFI4vm6jAdGOzt80zOcCw8BHGPDenHYGN
         0wiPPf+lqSsPJXKGWnrm8HeqVsi5jw90AATBzuYCiDDohyxPaD1g3GAAGh49R8wcDWWa
         C5phrXSXIbUEQH8LdhSoO4TIb+bic1CU9TQqc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718310586; x=1718915386;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3Mvyr8ChkURfSiiblDrkGmncFPR663YqpK/azida3xc=;
        b=w0LzgjVdJxYrFdDXrbsbCyU7CT8PWRFbKuaqdUWUZmsn8HoPieTkF2b95XZO2ytAoN
         PJOTuhSMqj0bzkgpSSQlUCcnr+0v03nh2BugvJw/YX5EWyzm49iEbkILoPWjd2ZrLJRk
         QbK7VDBFethV8hzfDrVY+hqQroAG1oB5hYIDaT8W0T+xmYBySbS00+i/yS1zcKmebvlO
         TtGJfKTTuLTvAveww57NNdr9a61zaR2balFkv7cEwjFy/e5Z9CG8pAwM4tE3DDepbCjX
         FqBw0lP5u2ZRRC6wtzelq3v3aZEcmuG4/pUd7jZfkn4Nwk5tW6GAIMXW13McY7aQPB43
         8j6Q==
X-Forwarded-Encrypted: i=1; AJvYcCWmUW0/NB71Wu3e5VPurKwnIiDjq7AEmfvjmvbmkKfhNWsM9X+EaNiqrpAeVa30tLO1NVOhgeCqVJcpH4FJG2oxH7nKWkp+3WTE
X-Gm-Message-State: AOJu0YxcE+OIz30V3NLaLbdfnBrsE4PzAPCO2Q/6SceumEUtKpK02egB
	c6e1JbN2dz7YFMumkpp7aiTVThcuxJ5AIa2XHoEKWeigoZx2ze38QCO5ddagla3M65mkKu51bIE
	=
X-Google-Smtp-Source: AGHT+IFveqfHgVCVCLlyesAjbxxFSiB37sHJzigIcdIUzF8eaOWNjNinvHHGVnU6aO19Zr1F3yLa+Q==
X-Received: by 2002:a17:902:c94b:b0:1f6:e8ee:54a6 with SMTP id d9443c01a7336-1f862a0679cmr8249335ad.59.1718310586052;
        Thu, 13 Jun 2024 13:29:46 -0700 (PDT)
Received: from localhost ([2620:15c:9d:2:947f:f59:5791:7be1])
        by smtp.gmail.com with UTF8SMTPSA id d9443c01a7336-1f855f046dfsm18246725ad.195.2024.06.13.13.29.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Jun 2024 13:29:45 -0700 (PDT)
Date: Thu, 13 Jun 2024 13:29:44 -0700
From: Brian Norris <briannorris@chromium.org>
To: Alejandro Colomar <alx@kernel.org>
Cc: Dietmar Eggemann <dietmar.eggemann@arm.com>,
	Patrick Bellasi <patrick.bellasi@arm.com>,
	Peter Zijlstra <peterz@infradead.org>, linux-man@vger.kernel.org
Subject: Re: [PATCH v2 2/2] sched_setattr.2: Document sched_util_{min,max}
Message-ID: <ZmtWuBD51thBxnBK@google.com>
References: <20240612204504.2651521-1-briannorris@chromium.org>
 <20240612204504.2651521-2-briannorris@chromium.org>
 <v4beebxguvvbhjgroqb7erykafxuez3svqf5pavvi6bmfjvuup@xsaim44xgdx6>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <v4beebxguvvbhjgroqb7erykafxuez3svqf5pavvi6bmfjvuup@xsaim44xgdx6>

On Thu, Jun 13, 2024 at 12:15:55AM +0200, Alejandro Colomar wrote:
> On Wed, Jun 12, 2024 at 01:44:53PM GMT, Brian Norris wrote:
> > +maximum frequency and is represented by a utilization value of
> > +0.2 * 1024 = 205.
> 
> This should go in italics.
> 
> $ MANWIDTH=72 man man-pages | sed -n '/Expressions/,/^$/p'
>      Expressions, if not written on a separate indented line, should be
>      specified in italics.  Again, the use of nonbreaking spaces may be
>      appropriate if the expression is inlined with normal text.

Regarding the nonbreaking spaces part: I'm not too practiced with groff,
but the wording around the \[ti] character is confusing. AFAICT, I
actually need to spell my expression like the following?

0.2\~*\~1024\~=\~205

At least, with trial and error, that's what appears to render correctly,
whereas \[ti] renders as a literal tilde. Is man-pages.7 [1] incorrect?

Brian

[1] from `man man-pages`:
      "In this case, it may be worth using nonbreaking spaces (\[ti]) at
      suitable places in the command."

