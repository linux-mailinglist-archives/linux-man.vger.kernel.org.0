Return-Path: <linux-man+bounces-1224-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4599B90B212
	for <lists+linux-man@lfdr.de>; Mon, 17 Jun 2024 16:32:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 551B41C23094
	for <lists+linux-man@lfdr.de>; Mon, 17 Jun 2024 14:32:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3C4441B4C2F;
	Mon, 17 Jun 2024 13:47:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CyMUNH6r"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EECFE198A02
	for <linux-man@vger.kernel.org>; Mon, 17 Jun 2024 13:47:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718632061; cv=none; b=Bh4aQG/SBWzRdMflAr3/8Crdd4huk3s7GwXFcOmR6G6qLGJd0FJGNeBkGf2m3cT6v9Pi7wi2cTdW3lsdU3GxuI3LnGiAO7wmEEHpFSa2DTe1N9SPsx0U8tV+Xz8/fXfxm0WMFlnJJz8zph950Yb7vllZ6pnrufVIlRXX80537+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718632061; c=relaxed/simple;
	bh=QRn+oCyiVb7XgSqN3fbuercobLCfr3tEMa4BSIf4aa8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=KSkz0+OvcY07liwHYvx50yHAU/+lCzJBadVkiIffmqCNt67BCGeAWGAwCLFO0AuS8VoqI+ckbpMg9mAZsqAVKhwV8KE6nUD0P2PgszlDuy3z9I+C/iBoQ82+WMyI7DxQp//yz010Fo7S2l3+u+y5Onf4Dc1Uvo8T6YHarJVGYSk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CyMUNH6r; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4F1EBC2BD10;
	Mon, 17 Jun 2024 13:47:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718632060;
	bh=QRn+oCyiVb7XgSqN3fbuercobLCfr3tEMa4BSIf4aa8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=CyMUNH6rNoypJgi0WMYNHltoRo0cIPNq29M4t2CWhIVmq/unHQ9mfJDswCTWGMqoS
	 /JdF4VXYEDAqMEyEAf7/HeeEJRUpQCrZDmRvMvZ8ugumjgLYNIiHW/rD8gfT6vRCnL
	 I3rHFR0/ajCQg6LEcCVuKzwy56r3iwYYP3uLmnsnqYWlJ38pRketWYvdhrfNdcuToa
	 I1RyaiMktVavMihjmYg29BPvlnVdr/HwvzN7jk1xm+9L4uwmsPVWeMm7UcsMVsYQ8j
	 h0Vpe8Q9jZir0sKWMHKRhBisX526VEzAhKmuFbepW3C7eUhOMUYpAHaQ74JzMvtBpI
	 mIYceqmQKEJkw==
Date: Mon, 17 Jun 2024 09:47:39 -0400
From: Konstantin Ryabitsev <mricon@kernel.org>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: Re: kup mailing list
Message-ID: <20240617-bull-of-glorious-dew-38b2f7@meerkat>
References: <biughofuuvymabklkw2cuchpubk2mzeq3d7snxyrogyu3vqtku@dt6yofflbsxo>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <biughofuuvymabklkw2cuchpubk2mzeq3d7snxyrogyu3vqtku@dt6yofflbsxo>

On Mon, Jun 17, 2024 at 02:27:22PM GMT, Alejandro Colomar wrote:
> Hi K!
> 
> Do you have a mailing list for kup?  I'm triggering some fatal
> condition (kup-server.c:617), and would like to investigate it.

Yes, please send to tools@kernel.org.

-K

