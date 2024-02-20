Return-Path: <linux-man+bounces-467-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E642085C383
	for <lists+linux-man@lfdr.de>; Tue, 20 Feb 2024 19:18:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9C72C1F21AD1
	for <lists+linux-man@lfdr.de>; Tue, 20 Feb 2024 18:18:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1A82477646;
	Tue, 20 Feb 2024 18:18:41 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from vmicros1.altlinux.org (vmicros1.altlinux.org [194.107.17.57])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 10D37762EC
	for <linux-man@vger.kernel.org>; Tue, 20 Feb 2024 18:18:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.107.17.57
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708453120; cv=none; b=HZtmVZmnzJ8uEsKQo7Uw9+FYNNCVp/T3eALHx6i0SfLHTcAyZjiAntsZijjN7GHQOcrKmvmvUoZ/S6aJej7ux8zhkPCO+L5Vdf9yi4yi9KfHKh0eq6i40o0LlfdDU23P3tACYlxz49oO8OmuhEOElS/ap+I9+khCMMDqvaEuNJA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708453120; c=relaxed/simple;
	bh=QN59vbGlpLALn5RKnp3S9dkquXtJtGVdrznZati/C9Q=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Omdzpj6Qn5IId62glTP2AnCI67ZmyDzzCrzizy64G6IVNke0XHle/5TIQZ5mjSLqNkki/LJVzinTEKc0qsKdrnKWI71U7ELnJCdN6rDemoyNU77fkWGre5IjOW4fh13Mc+IQ7yMjIj5/kXqVxuvUszaNBjTEo21y1QHRQp9Cd+M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=altlinux.org; spf=pass smtp.mailfrom=altlinux.org; arc=none smtp.client-ip=194.107.17.57
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=altlinux.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=altlinux.org
Received: from mua.local.altlinux.org (mua.local.altlinux.org [192.168.1.14])
	by vmicros1.altlinux.org (Postfix) with ESMTP id B7E2C72C8CC;
	Tue, 20 Feb 2024 21:18:30 +0300 (MSK)
Received: by mua.local.altlinux.org (Postfix, from userid 508)
	id A17BB7CCB3A; Tue, 20 Feb 2024 20:18:30 +0200 (IST)
Date: Tue, 20 Feb 2024 20:18:30 +0200
From: "Dmitry V. Levin" <ldv@altlinux.org>
To: Alexander Ofitserov <oficerovas@altlinux.org>
Cc: Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org,
	dutyrok@altlinux.org, kovalev@altlinux.org
Subject: Re: [PATCH] delete_module.2: Update man to actual syscall behaviour
Message-ID: <20240220181830.GA12635@altlinux.org>
References: <20240220092144.140251-1-oficerovas@altlinux.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240220092144.140251-1-oficerovas@altlinux.org>

On Tue, Feb 20, 2024 at 12:21:44PM +0300, Alexander Ofitserov wrote:
> Parameter O_NONBLOCK described in man doesn't exist anymore
> in kernel versions 3.13+, which is quite old,

I suggest mentioning the Linux kernel commit id that removed O_NONBLOCK
support, which seems to be 3f2b9c9cdf389e303b2273679af08aab5f153517
aka v3.13-rc1~83^2~5.

> only O_TRUNC parameter present for actual kernel version,
> O_NONBLOCK does nothing.

While it's vital to document the current kernel behavior,
I wish a description of the historical behavior is also retained.


-- 
ldv

