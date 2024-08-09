Return-Path: <linux-man+bounces-1602-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id B7DFC94CD46
	for <lists+linux-man@lfdr.de>; Fri,  9 Aug 2024 11:25:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 55690B21949
	for <lists+linux-man@lfdr.de>; Fri,  9 Aug 2024 09:25:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ABE011917F2;
	Fri,  9 Aug 2024 09:25:25 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from joooj.vinc17.net (joooj.vinc17.net [155.133.131.76])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E962A190059
	for <linux-man@vger.kernel.org>; Fri,  9 Aug 2024 09:25:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=155.133.131.76
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723195525; cv=none; b=oKxdSgHI4CQs1aMjks8kB0d3fNwfOth8G5H2CmpvTEfmn80EAwhio40wYj7SDJk7g7kiUoqz3QAmjPaB5R6bwtvrKH5j8E/0xi4dGgG4Wly30MYQDiuDGM6ZpCTie8hHLT8TF4UgIZOO/PW0C+zu0PP5Bos2+AkLlidMhNIDo7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723195525; c=relaxed/simple;
	bh=cn2EV4/IUQipapJlhw4nTec7YFf4IlYXyRFD71lfNsE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ffVzC8SH2EFPSZ8PihZl45GV8PjolImnGn1lTsgCxAnTpo0STKyp0XY0OqRL/iuR+USm69lkAQnuxKlo/65OtG3CpsUM0/xcmiWL6qNQ6Ke75XNdx47dhReTnux6zWrSTztD7h54ZK685u0S5+KXa+pbkUMvrOkyVTrWkhynvbY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=vinc17.net; spf=pass smtp.mailfrom=vinc17.net; arc=none smtp.client-ip=155.133.131.76
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=vinc17.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=vinc17.net
Received: from smtp-qaa.vinc17.net (2a02-8428-1b1d-4d01-96a9-491d-7b48-ba31.rev.sfr.net [IPv6:2a02:8428:1b1d:4d01:96a9:491d:7b48:ba31])
	by joooj.vinc17.net (Postfix) with ESMTPSA id 4454C5D0;
	Fri,  9 Aug 2024 11:25:16 +0200 (CEST)
Received: by qaa.vinc17.org (Postfix, from userid 1000)
	id 795B0CA00FF; Fri, 09 Aug 2024 11:25:14 +0200 (CEST)
Date: Fri, 9 Aug 2024 11:25:14 +0200
From: Vincent Lefevre <vincent@vinc17.net>
To: John Gardner <gardnerjohng@gmail.com>
Cc: Dave Kemper <saint.snit@gmail.com>, linux-man@vger.kernel.org,
	groff@gnu.org
Subject: Re: [PATCH] nextup.3: minor improvements
Message-ID: <20240809092514.GB4789@qaa.vinc17.org>
References: <20240807105617.GH3221@qaa.vinc17.org>
 <oa5aca4pqtnnwjopngqkouwueglyujmusnms535mgh4ipyawbk@4wonm4ymhcdv>
 <20240808025636.GE3086@qaa.vinc17.org>
 <wpkh52aryrsgp52qur6igf5uwidbhetszb4krfcfgfpyarv7yg@abea5srk4kuy>
 <20240808121603.fatotzqmtpbf2jez@illithid>
 <20240808125838.GD2669@cventin.lip.ens-lyon.fr>
 <CACRhBXPyVNN8q9pbeZSzSFj-nB1woJLWhTGw8N8yuBpJRyY6CQ@mail.gmail.com>
 <CAGcdaje1Fo_DuFf87ST8rrNCHmXx8uEzjJCwHiZ2Wf47h_O0Pg@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAGcdaje1Fo_DuFf87ST8rrNCHmXx8uEzjJCwHiZ2Wf47h_O0Pg@mail.gmail.com>
X-Mailer-Info: https://www.vinc17.net/mutt/
User-Agent: Mutt/2.2.13+77 (9dc98409) vl-169878 (2024-06-20)

On 2024-08-09 15:53:30 +1000, John Gardner wrote:
> Hi Vincent,
> 
> > So ideally, the fallback for "±0" should be "+0 or -0", which is
> > much more readable and less ambiguous than "+-0" or "+/-0".
> 
> For approximating ± in ASCII, is there some reason \z_+0 hasn't been
> considered?

I don't like that at all. I really see a "+" underlined, so it is
confusing. Moreover, the information is not kept by copy-paste,
and it is not rendered as wanted with "xterm +ulc" (to replace
underline by color). And I don't think that it will correctly be
interpreted by screen readers.

-- 
Vincent Lefèvre <vincent@vinc17.net> - Web: <https://www.vinc17.net/>
100% accessible validated (X)HTML - Blog: <https://www.vinc17.net/blog/>
Work: CR INRIA - computer arithmetic / AriC project (LIP, ENS-Lyon)

