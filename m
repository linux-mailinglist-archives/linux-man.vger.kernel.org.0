Return-Path: <linux-man+bounces-1595-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 3519394BCA4
	for <lists+linux-man@lfdr.de>; Thu,  8 Aug 2024 13:56:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B5B40B21FB0
	for <lists+linux-man@lfdr.de>; Thu,  8 Aug 2024 11:56:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 23E8518B46F;
	Thu,  8 Aug 2024 11:56:40 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from cventin.lip.ens-lyon.fr (cventin.lip.ens-lyon.fr [140.77.13.17])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A2104A33
	for <linux-man@vger.kernel.org>; Thu,  8 Aug 2024 11:56:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=140.77.13.17
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723118200; cv=none; b=JDoq/rVX/DvdQYwf6DtSfC7im1krOBVbiuN0Q77T65U4YojgU1iVM5fx2Yx6O7qKplZrAK+fPNFQHTrAg+ZMFFJdtj6CIUeqZYifDrhYENyUMpU+ThrvXAMKDPUtSEfp3XOGpJeg0fJawQi7Y3gBdTSWDtg0eB0JIu41D3ZMAsg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723118200; c=relaxed/simple;
	bh=r50ykVD2E4frGOYgX8REx4NlcKPpgqGGZjZWBxkiiN0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=e/qyU5CDoeLqVvHRzoP7Mu1CKZvkjqFXlF+9Qwqz4bQ90n+14q5IY/jwpT+0BKLMptF8W64VlyjuUoYonINpuWVHJHYeX/Fx24cw+UUMyvl7qvV4rUGAuISUIw6Vtjtw7mWsku5zf50RK+jq5zIpj+7sanLBdnWw6yGHNrtbqJc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=vinc17.net; spf=pass smtp.mailfrom=vinc17.net; arc=none smtp.client-ip=140.77.13.17
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=vinc17.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=vinc17.net
Received: from vlefevre by cventin.lip.ens-lyon.fr with local (Exim 4.98)
	(envelope-from <vincent@vinc17.net>)
	id 1sc1jI-00000000ncQ-0hBv;
	Thu, 08 Aug 2024 13:54:52 +0200
Date: Thu, 8 Aug 2024 13:54:52 +0200
From: Vincent Lefevre <vincent@vinc17.net>
To: Alejandro Colomar <alx@kernel.org>
Cc: Michael Kerrisk <mtk.manpages@gmail.com>, linux-man@vger.kernel.org
Subject: Re: [PATCH] nextup.3: minor improvements
Message-ID: <20240808115452.GB2669@cventin.lip.ens-lyon.fr>
References: <20240807105617.GH3221@qaa.vinc17.org>
 <oa5aca4pqtnnwjopngqkouwueglyujmusnms535mgh4ipyawbk@4wonm4ymhcdv>
 <20240808025636.GE3086@qaa.vinc17.org>
 <wpkh52aryrsgp52qur6igf5uwidbhetszb4krfcfgfpyarv7yg@abea5srk4kuy>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <wpkh52aryrsgp52qur6igf5uwidbhetszb4krfcfgfpyarv7yg@abea5srk4kuy>
X-Mailer-Info: https://www.vinc17.net/mutt/
User-Agent: Mutt/2.2.13+77 (9dc98409) vl-169878 (2024-06-20)

Hi Alejandro,

On 2024-08-08 10:07:35 +0200, Alejandro Colomar wrote:
> On Thu, Aug 08, 2024 at 04:56:36AM GMT, Vincent Lefevre wrote:
> > For zero, one can also say "If x is ±0" as in the IEEE 754 standard.
> > The IEEE 754 standard also uses "zero" in the sense "±0" (but it
> > never uses "0" in this sense when there may be an ambiguity, knowing
> > that in practice, "0" has the same meaning as "+0"). In a condition,
> > when it says something like "x = 0", this means that x is either +0
> > or -0 because these values compare equal to each other.
> 
> Hmmm, I see.  Thanks!  I think "If x is ±0" is the clearest way to say
> it.  I'm not sure if that glyph is available everywhere, though.  How
> about "If x is 0 or -0"?

Since ± is in latin1, I suppose that the glyph is available
everywhere. However, some English speakers might still use
ASCII-based locales. I'm going to send a new patch with
"If x is +0 or -0" (it is better to give the + sign explicitly,
and this is also nicer for symmetry).

-- 
Vincent Lefèvre <vincent@vinc17.net> - Web: <https://www.vinc17.net/>
100% accessible validated (X)HTML - Blog: <https://www.vinc17.net/blog/>
Work: CR INRIA - computer arithmetic / AriC project (LIP, ENS-Lyon)

