Return-Path: <linux-man+bounces-2578-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 83AEBA4CCDA
	for <lists+linux-man@lfdr.de>; Mon,  3 Mar 2025 21:44:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A99AD17363E
	for <lists+linux-man@lfdr.de>; Mon,  3 Mar 2025 20:44:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CCCF12356AB;
	Mon,  3 Mar 2025 20:44:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vRcisidQ"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E3FC230278
	for <linux-man@vger.kernel.org>; Mon,  3 Mar 2025 20:44:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741034670; cv=none; b=UpaGLd38r1t59DHh1wf0kxpi8pQxnunHyxJ9YIzM5K7drf3m8etG5HC7cdI3VvhqG+QLI9UTv7e2DFNdYIbQnqIWHvnyz9E8OCeK+wNP1SuA1u6NfPWPfLqVluVmRIqONiL3H4gbXw6zpPlyo0GW4jnD4qulh8v9tmeuzltiXjg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741034670; c=relaxed/simple;
	bh=i6o66fO1Cjz26tsF1gpRN059Ig1Na0S3KJnJwU9kyfw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=DTV0EBEmMl1VK8IS3CX5xOT3XcoMuNzLO5UN2bhvn/Rh4hOGra1NXc/vaIPKEaFRocIF7WbapI7RnTDKx09swWVQslnzhYr4qCNV+yutAevJQCG7WHsrSvT+2bszOL/iw/R5A80P8Of+kjsBAcwTLvcPWhmtDKvK7FUQMnevd3w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vRcisidQ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E8B1CC4CED6;
	Mon,  3 Mar 2025 20:44:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741034670;
	bh=i6o66fO1Cjz26tsF1gpRN059Ig1Na0S3KJnJwU9kyfw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=vRcisidQWITmsPRRFi2u8CPmsgV/gF8lK2B6rQ7SFFOliagWoGf0+s2CnhUZicPSt
	 DEnzHR0UjBzEM2CobXDjiYmYATxInBAZxYpAx/0mWgNa7dEmDRBGZFVb1JnM2CBju2
	 EauDC9aP0NUMhMfkskCDmYMxFF2WpF1DeD5ao+pBOce2Vjew8/XkF4WqhxCUNXmB1N
	 1GzRo/rUJOPLZSdNab3TwCoQ2Ie3LaiwCqqi45yhqv6qlaw+1MsBFTEF6iTgO56K4E
	 la99lwkJopmySR4JLbZf5rUPyi8xcn9RzlRzv+HmMm46MEdC6DsodzZ3H2r4HjLydu
	 B/lkuIPHxnj+Q==
Date: Mon, 3 Mar 2025 15:44:26 -0500
From: Konstantin Ryabitsev <mricon@kernel.org>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: Re: man-pages-posix.git
Message-ID: <20250303-taupe-stingray-of-competition-1bc3dd@lemur>
References: <vnfyvsdn22gik4gfjownodrnfzsju52rhk6tt4po47yqb5azjr@7eyng2tgpiem>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <vnfyvsdn22gik4gfjownodrnfzsju52rhk6tt4po47yqb5azjr@7eyng2tgpiem>

On Mon, Mar 03, 2025 at 07:41:04PM +0100, Alejandro Colomar wrote:
> I notice that the man-pages-posix.git repository is now not visible in
> <web.git.kernel.org>.  The git repository still exists (I have cloned it
> right now, both via SSH and HTTPS), but it's not visible in the website.
> Is that okay?
> 
> It may be due to not having pushes in a long time.  I just wanted to
> confirm if all is okay.

Yes, we're now automatically hiding repositories that haven't seen any
activity in 3 years, as part of the strategy to reduce the impact of hostile
crawlers. See this for more:

    https://korg.docs.kernel.org/cgit-meta-data.html#preventing-auto-hiding-of-repositories

-K

