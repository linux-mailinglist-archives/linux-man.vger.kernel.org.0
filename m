Return-Path: <linux-man+bounces-485-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B1C2886A264
	for <lists+linux-man@lfdr.de>; Tue, 27 Feb 2024 23:25:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5F6A61F22A6E
	for <lists+linux-man@lfdr.de>; Tue, 27 Feb 2024 22:25:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3ADCF14F961;
	Tue, 27 Feb 2024 22:25:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=hadrons.org header.i=@hadrons.org header.b="ei84GCNr"
X-Original-To: linux-man@vger.kernel.org
Received: from pulsar.hadrons.org (2.152.202.106.dyn.user.ono.com [2.152.202.106])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4831215098B
	for <linux-man@vger.kernel.org>; Tue, 27 Feb 2024 22:25:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=2.152.202.106
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709072705; cv=none; b=Ybwx0FuPw+XWekpvuu94HS3g+vPjaxJog7A2NM1WJYYVzHbySsV18xHuneTUxrr3Lt5K/7dWAqrNU39R25T9cf85xGBbORawX1Mt95fsBnPkpkVdpQ1DVf6gnU8pGAiomlby/bF7WrIQAG2RqK6itMPsXK5og61wcHQs8KyAf8g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709072705; c=relaxed/simple;
	bh=I1j4ZhX/Hsb/Y8PNBNCMe3f7hRbRMssubW0dpCCQ+fE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Xe/noNKebC8P8jRYriVtdh8CvWdJkHUwknOy2BSuuMBqGPl9KCOc1dra1SL/jpfifQkO8F8c51+tz1oNym4MHxCKa/IQLSh9gbkB83GC0abG5LeEmqgbcJHqDdERPyUBt7d7hOveb4zwLy0JnseHVtHTx1W6FJBKvF5rwWzNU7E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=hadrons.org; spf=pass smtp.mailfrom=pulsar.hadrons.org; dkim=pass (2048-bit key) header.d=hadrons.org header.i=@hadrons.org header.b=ei84GCNr; arc=none smtp.client-ip=2.152.202.106
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=hadrons.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pulsar.hadrons.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hadrons.org;
	s=201908; t=1709072176;
	bh=lNZNvUSd8CbvCz9Yf4G0N3NseyKqkmmA2uX1zyICV6E=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=ei84GCNreUuab925xpH//FTeDFb0/2A9NupZzl1d7SyXM1BOkvW/rr502IdaNa1D6
	 eUuuCHiUFUGlpV9ZuIgWRDz+WosnuKGQcnxmJSmrTBAVsE6XIYXLivbIYV0vwAUaIv
	 N/XPiySyspUKi/lBKhYD6lb22/MmOWMdyOaeLE563b4XTnYkU80WC+uhdZJgENR1EM
	 7RVp3mOCW28X7RjJrVEW0dmxZj0ODIA6ve+bGWigBVxEfPmLvBYy1KJf/qH5LBy1S/
	 OWNWMwCU0g+5lqe5qmwnnPy0HWSTMiaEeuR+CmIisX10Gq+iTLp1R04jxa53Frdjqf
	 ahwY3Vcdbd9IA==
Received: by pulsar.hadrons.org (Postfix, from userid 1000)
	id 93B19122EBB; Tue, 27 Feb 2024 23:16:16 +0100 (CET)
Date: Tue, 27 Feb 2024 23:16:16 +0100
From: Guillem Jover <guillem@hadrons.org>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, Florian Weimer <fweimer@redhat.com>,
	Carlos O'Donell <carlos@redhat.com>
Subject: Re: [PATCH 1/2] process_madvise.2: Document the glibc wrapper
Message-ID: <Zd5fMGvIlmhQyONs@thunder.hadrons.org>
Mail-Followup-To: Guillem Jover <guillem@hadrons.org>,
	Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org,
	Florian Weimer <fweimer@redhat.com>,
	Carlos O'Donell <carlos@redhat.com>
References: <20240225122250.441157-2-alx@kernel.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240225122250.441157-2-alx@kernel.org>

Hi!

On Sun, 2024-02-25 at 13:23:22 +0100, Alejandro Colomar wrote:
> diff --git a/man2/process_madvise.2 b/man2/process_madvise.2
> index 53fd57598..ed8739663 100644
> --- a/man2/process_madvise.2
> +++ b/man2/process_madvise.2
> @@ -187,6 +176,7 @@ .SH STANDARDS
>  Linux.
>  .SH HISTORY
>  Linux 5.10.
> +glibc 2.36.
>  .\" commit ecb8ac8b1f146915aa6b96449b66dd48984caacc

This commit id seems to belong to Linux, so perhaps keep it after the
Linux version reference?

Thanks,
Guillem

