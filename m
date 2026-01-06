Return-Path: <linux-man+bounces-4697-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C11ACF9E48
	for <lists+linux-man@lfdr.de>; Tue, 06 Jan 2026 18:57:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C22DE326F8BD
	for <lists+linux-man@lfdr.de>; Tue,  6 Jan 2026 17:44:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BB06534EF04;
	Tue,  6 Jan 2026 17:27:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LKLWxtQ6"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7934534EF02
	for <linux-man@vger.kernel.org>; Tue,  6 Jan 2026 17:27:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767720469; cv=none; b=A+7phGenw7nhIWUDX8C/q8tN1UlaiWObed4zJrG49UEL99US3Q7NcI0ctMrmg0Cs1mcLLoYxNPpr9jE9xaBdG/kNsIl+g/YxAL6wv35HMLo1Nupm38SfH5o88QOVJKsVLCcEHsWwNGVv6HF7K/QJISekCMtXzUfiWKR9UdTJxyk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767720469; c=relaxed/simple;
	bh=pv79xkcqNku9qh0nOBWcvhPbdOE6Oxu8EXfzcdOjlJ4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=K66hGZUm6CQPtrhQ14Iap788gECbwOVx5K0IXN0+BmT55eky4HhhD6KMMk50p0UNumVRwXu8FFo9Y0qels6fi3I6c3RFc2xnNjluKtZ1gEHbTr7aMiyKUb36EKFY2i7GKj2bKjV4JjRXcUbHbYnPiII1YlO+PNV1/HALvYfQBk8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LKLWxtQ6; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 38130C116C6;
	Tue,  6 Jan 2026 17:27:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767720469;
	bh=pv79xkcqNku9qh0nOBWcvhPbdOE6Oxu8EXfzcdOjlJ4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=LKLWxtQ6p8Ww+eqDswn3vVgcWLbfNgvuZjRcw7pRjh04lqR+qyAJLgXGUDYu3dJ1M
	 8eDBN2Er6ek5IX2rEgTYHqr44j5p9g+SUr7BmbdxqAt2jgbJbr7yAduK+Gp5vHFwyt
	 RRQ8fdsumu338k+HI8Nk8bRzdMqmHVIQWYur0a25k+YCPnrH0gNro5k+vsLAu7N5+Q
	 oKl6ynNBP7Hv3m+ZLQE6S4loCmPWftqoz0EgIYpplA1iUJb6i8f0MHTDidqaPCwD69
	 FED0BQ7VkqqMCUGJpEL0AdAr9eQSSOlTBPttByF1evS/gYBpYhkqojDztJK2/C2+oJ
	 Z7LO11BVwGVjQ==
Date: Tue, 6 Jan 2026 12:27:42 -0500
From: Konstantin Ryabitsev <mricon@kernel.org>
To: Alejandro Colomar <alx@kernel.org>
Cc: helpdesk@kernel.org, Simon Essien <champbreed1@gmail.com>, 
	linux-man@vger.kernel.org, debian@helgeth.de
Subject: Re: [PATCH] man3/getopt.3: Fix spelling (British -> American)
Message-ID: <20260106-magic-blond-jaybird-ac821c@lemur>
References: <20260106101302.11938-1-champbreed1@gmail.com>
 <aVz5ew5CJcV1BUAv@devuan>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <aVz5ew5CJcV1BUAv@devuan>

On Tue, Jan 06, 2026 at 01:08:03PM +0100, Alejandro Colomar wrote:
> Could you please block 'Simon Essien <champbreed1@gmail.com>' from using
> any and all kernel infrastructure?  It's an LLM malicious bot, and
> starting to become very annoying and spammy.
> 

In general, we only block accounts if they are violating the code of conduct
or are posting overtly malicious content. I know this may be annoying
behaviour, but posting useless patches is not generally something we block
accounts for.

-K

