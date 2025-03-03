Return-Path: <linux-man+bounces-2567-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 53CA3A4BB15
	for <lists+linux-man@lfdr.de>; Mon,  3 Mar 2025 10:46:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 776551710FC
	for <lists+linux-man@lfdr.de>; Mon,  3 Mar 2025 09:46:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1EEAC1F131C;
	Mon,  3 Mar 2025 09:46:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=uni-hamburg.de header.i=@uni-hamburg.de header.b="VSQlMi+m"
X-Original-To: linux-man@vger.kernel.org
Received: from mxchg03.rrz.uni-hamburg.de (mxchg03.rrz.uni-hamburg.de [134.100.38.113])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04E6E1EB1AF
	for <linux-man@vger.kernel.org>; Mon,  3 Mar 2025 09:46:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=134.100.38.113
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740995168; cv=none; b=GbGd8i2moz6h99tojtJdTklui1h1tosBuyzZxACsF7ViwD64jL8/xOtltphVgSOPGdjHzqNy+D4Rv9iXFhSlxtjs98aSjF2+cF1AOelhDkcLQjfEXNTPrRkzs869OguyvdAORcIeNhfXpwL3GebDlE2kMjTZ5u3CNAPmcaa3HOQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740995168; c=relaxed/simple;
	bh=gKUOQNmolvlIdIXvdDT4Qk8I064g9qL3fUuSVEBYnlM=;
	h=Date:From:To:CC:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=jQv90NNPNc2VSuFZUoKwMIqY27ltHzVIepV78YLROGXaz3MbV0r43bi9teamNbirQVdWjtY1yT6Pep+lZKNsv7QT4FzVR3FKpf4NakkgzGyywp6OXh6Cn+qHCF356gRh8AyGXNv4XC0NQ5um6haAPlarSuhGhpd8WgzZOPV1JCI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=uni-hamburg.de; spf=pass smtp.mailfrom=uni-hamburg.de; dkim=pass (2048-bit key) header.d=uni-hamburg.de header.i=@uni-hamburg.de header.b=VSQlMi+m; arc=none smtp.client-ip=134.100.38.113
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=uni-hamburg.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=uni-hamburg.de
Received: from mxchg03.rrz.uni-hamburg.de (mxchg03.rrz.uni-hamburg.de [134.100.38.113])
	by mxchg03.rrz.uni-hamburg.de (Postfix) with ESMTPS id 4Z5twq1cSqz2xCg;
	Mon,  3 Mar 2025 10:36:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=uni-hamburg.de;
	s=rrzs003; t=1740994571;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=w1ZG1NtmcJZISSvbsG9bijz/L/nZ/qxJ29YVVy+f4L0=;
	b=VSQlMi+m3BA1RhMFvcq1eC8elQo+DCgR5YMWRcvw+QJv9syb6L0HYBJZ9J7fLsgbTRjc1G
	cxsbFNqE2Gyw8RDZTo5lQ1DauFvUz8vU5wnGImCSuUb1qnTy1QE6/aQfzA8S6AgG1/gj2z
	shYEI8ceqe2TzHQQPbcOFJrRltRH+UAL6QPu5LNMNVyIKm35I1s+twZrzE2FOTculxLN+T
	48cxWAd4xm0BYhNd+AyzmPahFHRBaDql8IjHhvgILHQMiadp/s60IXkO4pOF//Pq/8Lymh
	vp/P8RYx6gPvZ15jBMZqRVgOZ7pWGFms32DrmHX+pxQEhxQNX4ZZbn+eD1eptA==
Received: from exchange.uni-hamburg.de (EX-S-MR06.uni-hamburg.de [134.100.84.89])
	by mxchg03.rrz.uni-hamburg.de (Postfix) with ESMTPS id 4Z5twq0773z2xDv;
	Mon,  3 Mar 2025 10:36:10 +0100 (CET)
Received: from cortex.rrz.uni-hamburg.de (134.100.3.33) by
 EX-S-MR06.uni-hamburg.de (134.100.84.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.11; Mon, 3 Mar 2025 10:36:10 +0100
Date: Mon, 3 Mar 2025 10:31:01 +0100
From: "Dr. Thomas Orgis" <thomas.orgis@uni-hamburg.de>
To: Alejandro Colomar <alx@kernel.org>
CC: <linux-man@vger.kernel.org>, Adhemerval Zanella
	<adhemerval.zanella@linaro.org>, Florian Weimer <fweimer@redhat.com>
Subject: Re: mismatch of type of ut_tv.tv_sec between glibc-2.41 and utmp(5)
Message-ID: <20250303103101.09e47815@cortex.rrz.uni-hamburg.de>
In-Reply-To: <o7qulyh2a6x5o7g3lehxpgnt63ptbfxn5mdjozxxjsyhz5ljeg@vb4fx5a6ex5b>
References: <20250228103610.6c908004@plasteblaster>
	<o7qulyh2a6x5o7g3lehxpgnt63ptbfxn5mdjozxxjsyhz5ljeg@vb4fx5a6ex5b>
Organization: =?UTF-8?B?VW5pdmVyc2l0w6R0?= Hamburg
X-Mailer: Claws Mail 4.2.0 (GTK 3.24.39; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: EX-S-MR01.uni-hamburg.de (134.100.84.80) To
 EX-S-MR06.uni-hamburg.de (134.100.84.89)
X-Rspamd-UID: 69003f
X-Rspamd-UID: a48994

Am Fri, 28 Feb 2025 15:06:33 +0100
schrieb Alejandro Colomar <alx@kernel.org>:

> It seems your suspicion was right.  Someone decided to borrow some time,
> according to the commit message that changed that code in glibc:

> We should document the change.  If anyone wants to send a patch, I'll
> review it.  I won't write it myself, because I'm not an expert in
> compatibility code between 32 and 64 bits, so I prefer if someone more
> expert makes sure the documentation is correct.

Florian? Seems to be the best qualified. As a user, a question for me
is if the specific macros deciding for the 32 bit field should be in
the man page or not, as they seem to be an implementation detail that
one cannot rely on. I guess I need to do a check like sizeof(time_t) >
sizeof(tv_sec)? And then just assume unsigned type? It is a hack, I
understand. So any use will be hacky.

> If you show some code, we can have a look at it.  :)

Not much to show. It is semi-abandoned code in simpleinit-msb that
called time() directly on tv_sec. I switched that to gettimeofday() and
kept the same level of error handling … which is none. My function
detects if the assignment to tv_sec changed the time_t value and
returns an error, but the caller code is inside void functions and
doesn't have an error handling path.

The effect will be broken lastlog entries in a few decades. The
unsigned int extension moves that a bit further back.


Alrighty then,

Thomas

-- 
Dr. Thomas Orgis
HPC @ Universität Hamburg

