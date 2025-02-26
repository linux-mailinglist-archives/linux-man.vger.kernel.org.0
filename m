Return-Path: <linux-man+bounces-2513-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E2BDA463A1
	for <lists+linux-man@lfdr.de>; Wed, 26 Feb 2025 15:50:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D50FF3B6457
	for <lists+linux-man@lfdr.de>; Wed, 26 Feb 2025 14:49:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A1BFF222565;
	Wed, 26 Feb 2025 14:48:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=juszkiewicz.com.pl header.i=@juszkiewicz.com.pl header.b="XcFrMcGr";
	dkim=pass (2048-bit key) header.d=juszkiewicz.com.pl header.i=@juszkiewicz.com.pl header.b="ciVYDLDT"
X-Original-To: linux-man@vger.kernel.org
Received: from haruka.juszkiewicz.com.pl (haruka.juszkiewicz.com.pl [185.243.53.191])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF370221703
	for <linux-man@vger.kernel.org>; Wed, 26 Feb 2025 14:48:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.243.53.191
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740581312; cv=none; b=KKyT4rXsVb/5F0gXd4uAkn+rOI6XOX2NZavrCGp6w54XDqHYPru1RHBDtNpJNOwOwzljQjdtwK3qn4Q6MZAlnIh0C+1wNnt9zpq42es6nxEpa9Vq9DtraiHxsweE/Y1XGYMipHOvxkrfZTRpCODDPFDOWEVaAbGxIiY8U6k3t6Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740581312; c=relaxed/simple;
	bh=6CpuAUV+4ZXkPy8tKUC/fxUy2PpBDu/rDS7QyfO+QgE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=UXPK6tF7qJtYxertYilrAUNp+FV8WkcQFSHI0dr3zx1EUUbyJvLsVNVbdVISl5TGbA78DRO6/cSpW0ObNna53W3dTrBCTYeW4cFykD7cyVvANGgmZwucbN7LTM6N9k9dimpfkFzbYbST+anESswPUPN797f5FlYkluTUThNfTUo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=juszkiewicz.com.pl; spf=pass smtp.mailfrom=juszkiewicz.com.pl; dkim=pass (2048-bit key) header.d=juszkiewicz.com.pl header.i=@juszkiewicz.com.pl header.b=XcFrMcGr; dkim=pass (2048-bit key) header.d=juszkiewicz.com.pl header.i=@juszkiewicz.com.pl header.b=ciVYDLDT; arc=none smtp.client-ip=185.243.53.191
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=juszkiewicz.com.pl
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=juszkiewicz.com.pl
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=juszkiewicz.com.pl;
	s=mail; t=1740581303;
	bh=6CpuAUV+4ZXkPy8tKUC/fxUy2PpBDu/rDS7QyfO+QgE=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=XcFrMcGrSXgYoNU3xj9uaFPB1Xhj1OOY6t8Csg4815vTeI9J9heqpoQx8nmD4l4iY
	 EybySfWVtbgbqPKTbSmWpEjdTl5lKJmsNXWpiAbnzAfRv3OwUJYcU4aEMNfE6ZvgIq
	 DaH0wLyKcT6jsUVlOGUB21U7y8fm90A8W0Z5S16kJtHnKso7S2UghkYuQWsLLrH48o
	 GMray11sEk9UIh4eCvOmPiF5Hff1truMFXI7LWZWgu7MGqyWi0KXK58k0pDSUsb69p
	 vbqaj7E/LOuovWpkFrxl8CKqu89PBrzAEkYMI13uYtjZQ/6qcKbrHrqrtsyig4IOaA
	 J6hSFRBG6qcuw==
Received: from utena.juszkiewicz.com.pl (utena.juszkiewicz.com.pl [158.101.208.177])
	by haruka.juszkiewicz.com.pl (Postfix) with ESMTPSA id 579FD22ABA;
	Wed, 26 Feb 2025 15:48:23 +0100 (CET)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id D5DFF4203B;
	Wed, 26 Feb 2025 15:48:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=juszkiewicz.com.pl;
	s=mail; t=1740581302;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Sus/Vwnn7cLFuyPN6d9XFA/6niZLyWTQ3tPcruE54Po=;
	b=ciVYDLDTbj7dmDKQyJVBZQkahHU5DBCIwwq7fTRPUjtj9QzdoYoYI5QZgakPy2iMqQcPxK
	VyIg2YbQBstMIsmt1byLZtGWOvJp6MoSSSg+v0tssR7CTjpxDhJyrtkAz7X3z7lGz8/n2u
	tq+GhHzxOQsH/I7TlYGoDCROkNDZZRFZlVERLDV86qd6yMa22/mDBrbWqSgmy2PpOOJeGk
	vW1mAOcwmCxesgnxXwfKFW2QQnWW2FV+lUSZVa0Vtj35yh3i18AUmaLmJw5fA9dLGCHvIw
	AHy1WRmL1jJMi4e1GKtN8ecOaVGAwmrfD0fHWiBwSM81fTEtx26UWJeI4pFdog==
Message-ID: <e2496012-6e25-4e85-ad27-0104dad7463a@juszkiewicz.com.pl>
Date: Wed, 26 Feb 2025 15:48:19 +0100
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] add time64 copies of system calls
To: Carlos O'Donell <carlos@redhat.com>, Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
References: <fb722cc1be40a2f74e204a23d5c11944c167d55c.1731957032.git.marcin@juszkiewicz.com.pl>
 <fb722cc1be40a2f74e204a23d5c11944c167d55c.1731957032.git.marcin@juszkiewicz.com.pl>
 <20241118225148.fgrvxxg2p6on4nl3@devuan>
 <5778beee-a1c0-45cf-93fa-8d36501911f9@juszkiewicz.com.pl>
 <fb5d9a20-9937-4cf7-b8e0-99710d88f4bc@redhat.com>
From: Marcin Juszkiewicz <marcin@juszkiewicz.com.pl>
Content-Language: pl-PL, en-GB
In-Reply-To: <fb5d9a20-9937-4cf7-b8e0-99710d88f4bc@redhat.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Last-TLS-Session-Version: TLSv1.3

W dniu 20.11.2024 o 23:40, Carlos O'Donell pisze:
> On 11/19/24 3:23 AM, Marcin Juszkiewicz wrote:
>> W dniu 18.11.2024 o 23:51, Alejandro Colomar pisze:
>>> Hi Marcin,
>>>
>>> On Mon, Nov 18, 2024 at 08:16:24PM +0100, Marcin Juszkiewicz wrote:
>>>> During work on y2038 problem several time related system calls got "64"
>>>> or "_time64" copies. It happened only on 32-bit architectures as there
>>>> was no problem on 64-bit ones.
>>>>
>>>> Signed-off-by: Marcin Juszkiewicz <marcin@juszkiewicz.com.pl>
>>>
>>> This only adds link pages, but doesn't add any documentation for them.
>>> Should we add anything?  Maybe to the SYNOPSIS and VERSIONS (or HISTORY)?
>>
>> Will look into it.
>   
> We absolutely can and should add documentation for the kernel syscalls since they are
> unique syscalls that take 64-bit time_t variants for a 32-bit userspace.
> 
> These syscalls are the 64-bit time_t variants to allow userspace to build 32-bit targets
> that have 64-bit time_t e.g. alternate ABI i686 with 64-bit time_t.
> 
> The userspace interfaces are hidden behind a 64-bit time_t though and shouldn't change
> (though the ABI changes).

I started looking at it - wondering how much info should be there. 
Simple like patch below or more complex one?


troff is awful...


diff --git a/man/man2/adjtimex.2 b/man/man2/adjtimex.2
index 7a87ac654..6dde493aa 100644
--- a/man/man2/adjtimex.2
+++ b/man/man2/adjtimex.2
@@ -10,7 +10,7 @@
  .\"
  .TH adjtimex 2 (date) "Linux man-pages (unreleased)"
  .SH NAME
-adjtimex, clock_adjtime, ntp_adjtime \- tune kernel clock
+adjtimex, clock_adjtime, clock_adjtime64, ntp_adjtime \- tune kernel clock
  .SH LIBRARY
  Standard C library
  .RI ( libc ,\~ \-lc )
@@ -22,6 +22,8 @@ .SH SYNOPSIS
  .P
  .BI "int clock_adjtime(clockid_t " clk_id, " struct timex *" "buf" );
  .P
+.BI "int clock_adjtime64(clockid_t " clk_id, " struct timex *" "buf" );
+.P
  .BI "int ntp_adjtime(struct timex *" buf );
  .fi
  .SH DESCRIPTION
@@ -557,6 +559,10 @@ .SH STANDARDS
  .P
  The preferred API for the NTP daemon is
  .BR ntp_adjtime ().
+.SH HISTORY
+Linux 5.1 added
+.BR clock_adjtime64()
+call on 32-bit architectures as part of handling Y2038 problem.
  .SH NOTES
  In struct
  .IR timex ,

