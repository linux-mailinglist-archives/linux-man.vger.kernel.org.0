Return-Path: <linux-man+bounces-4256-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DD47BC3925D
	for <lists+linux-man@lfdr.de>; Thu, 06 Nov 2025 06:15:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 798393B07E6
	for <lists+linux-man@lfdr.de>; Thu,  6 Nov 2025 05:15:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B691E2D5C6C;
	Thu,  6 Nov 2025 05:15:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=gouders.net header.i=@gouders.net header.b="LTNYiZz1"
X-Original-To: linux-man@vger.kernel.org
Received: from mx10.gouders.net (mx10.gouders.net [202.61.206.94])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E43123185D
	for <linux-man@vger.kernel.org>; Thu,  6 Nov 2025 05:14:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=202.61.206.94
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762406100; cv=none; b=l2eoVR+KioiM81lX8j7qCzAVEMgrbZCHM1GMXism+uwgHciw72pKA+HF+Toa9A5k8nWrKNfzZ2p1o+L7AXP/QVQ6toPsTV7LCaAJLJUnuq3YKVhXjse2wu8i9WNYBGNb9xQVdEYJvLX8PoR3co1nN18VBzt+OcrIcCPMiiZE5wg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762406100; c=relaxed/simple;
	bh=fbEVOd6blObNOIb0xUPgr8AsEgK1M2iqvL+Oah6p+D4=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=puhJ1Sy7BdgCz1QRn3ZhpPJ/lreLjnhKtyICS8GEg7QA+vg74Z6jyKJqrkbJLDyvz9Ty073rO4d9E1+lCsb6F7erwOTU1bA8Q/nRTnJLJO7DywwplziJPWFPf+mDhCzZkehXFjS1fJbEUtNlLv9afxHOH1crbYWnhz1nURR/6l8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=gouders.net; spf=pass smtp.mailfrom=gouders.net; dkim=pass (1024-bit key) header.d=gouders.net header.i=@gouders.net header.b=LTNYiZz1; arc=none smtp.client-ip=202.61.206.94
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=gouders.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gouders.net
Received: from localhost ([47.65.179.194])
	(authenticated bits=0)
	by mx10.gouders.net (8.18.1/8.17.1.9) with ESMTPSA id 5A65EmTI026235
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
	Thu, 6 Nov 2025 06:14:49 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gouders.net; s=gnet;
	t=1762406089; bh=fbEVOd6blObNOIb0xUPgr8AsEgK1M2iqvL+Oah6p+D4=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date;
	b=LTNYiZz1VaXeB/6frJSS7gGZ4wPGWvE5K7/mUwl9P2hDdhSm2l/fDjDBc1yXfelfw
	 UIpDhKk4fIdLNfuMGsQrWvVws0jGg/vlIhu/6cLiag3uVssKGkALfLaBuzIE44/7c5
	 lmmNiWpF3fVm58ngzJcuP5XPj0ckfbmX72KscKa0=
From: Dirk Gouders <dirk@gouders.net>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: Re: wcwidth(3): wrong #define?
In-Reply-To: <cdhrtmpp26jj6lsascn4mzak5zbztcplvccofhdkrhzqfaivpp@q5wkk5iuxxqu>
	(Alejandro Colomar's message of "Wed, 5 Nov 2025 23:17:02 +0100")
References: <ghms50i7u0.fsf@gouders.net>
	<km4jixjgoknyrfty7fdxxt72uyd76ilib62r7oqtjixmfvwucv@ca7rbihkf5ny>
	<ghecqci13z.fsf@gouders.net>
	<cdhrtmpp26jj6lsascn4mzak5zbztcplvccofhdkrhzqfaivpp@q5wkk5iuxxqu>
User-Agent: Gnus/5.13 (Gnus v5.13)
Date: Thu, 06 Nov 2025 06:14:48 +0100
Message-ID: <gha50zivxz.fsf@gouders.net>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

Hi Alex,

Alejandro Colomar <alx@kernel.org> writes:

> Hi Dirk,
>
> On Wed, Nov 05, 2025 at 11:08:32PM +0100, Dirk Gouders wrote:
>> > On Wed, Nov 05, 2025 at 08:43:19PM +0100, Dirk Gouders wrote:
>> >> I'm playing with a program to calculate wide character widths and
>> >> gcc complains when I use wcwidth(3) according to the manpage:
>> >
>> > What's the exact diagnostic you're seeing?  I'm not seeing any issues:
>> 
>> here's my program (meanwhile, I read that _XOPEN_SOURCE should appear
>> before _any_ header and that indeed would help):
>
> Yup, it should be the first thing.  See feature_test_macros(7):

thank you, you helped me with two problems:

1) If you think you read enough and should talk, go back and read twice
   as much ;-)

2) For a very long time, I always read patterns like

#define FTM
#include <example.h>

  as "Put FTM as close as possible to example.h." but it seems that
  pattern actually means "Put FTM as far away as possible from
  example.h."

Thanks for your kind explanation.

Regards,

Dirk

