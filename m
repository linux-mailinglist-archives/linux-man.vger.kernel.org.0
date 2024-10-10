Return-Path: <linux-man+bounces-1792-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 095F49985DF
	for <lists+linux-man@lfdr.de>; Thu, 10 Oct 2024 14:26:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A90A21F24EC0
	for <lists+linux-man@lfdr.de>; Thu, 10 Oct 2024 12:26:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4F93B1C4623;
	Thu, 10 Oct 2024 12:26:03 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from cygnus.enyo.de (cygnus.enyo.de [79.140.189.114])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 468401C4611
	for <linux-man@vger.kernel.org>; Thu, 10 Oct 2024 12:25:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=79.140.189.114
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728563163; cv=none; b=Pvzip8IteCaLfJGkcPildoD4syT/WL56uZ17E3u25Gkb1cSirnp6pyNbWdTKi7LceuWyJ8axl3OBTxA9RRA8Mle9r34yP5Nbn8FqXvFqZCg+pcsseWl0ZtRIA0z+1g9MDGKiMPNhMsqGgQQGGHVkHKu7+6bBe0LbAZfn+O4ckX4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728563163; c=relaxed/simple;
	bh=duAGIatmOqhItYq4HQ9JieJ7pHjjh1Q+bqPD8z8TXxw=;
	h=From:To:Cc:Subject:References:Date:In-Reply-To:Message-ID:
	 MIME-Version:Content-Type; b=H9+95O9VZnO2NfjFnCLYkxTxa8BKnxNrnCL7FGZ0zb2N3wg5VmOfgMJQ4KyR8Wf78dkaoChx+LJTRz33asnKpUn1WBXm8YbO9b6FxD1GD0SrMq58KlWmIv/8eixhQb0elO8IHCMKRMXnGu7vfnESD5TUiVOD0dnzL+d0D0DahlQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=deneb.enyo.de; spf=pass smtp.mailfrom=deneb.enyo.de; arc=none smtp.client-ip=79.140.189.114
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=deneb.enyo.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=deneb.enyo.de
Received: from [172.17.203.2] (port=38849 helo=deneb.enyo.de)
	by albireo.enyo.de ([172.17.140.2]) with esmtps (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
	id 1sysEu-000AS9-0n;
	Thu, 10 Oct 2024 12:25:56 +0000
Received: from fw by deneb.enyo.de with local (Exim 4.96)
	(envelope-from <fw@deneb.enyo.de>)
	id 1sysEu-001LIY-0Q;
	Thu, 10 Oct 2024 14:25:56 +0200
From: Florian Weimer <fw@deneb.enyo.de>
To: Jan Kratochvil <jan@jankratochvil.net>
Cc: Alejandro Colomar <alx@kernel.org>,  linux-man@vger.kernel.org
Subject: Re: [patch] pthread_cond_wait and pthread_cond_timedwait can also
 return EPERMignalignal
References: <ZwZ8wiQz6hYtQxV2@host2.jankratochvil.net>
	<8734l4fdt8.fsf@mid.deneb.enyo.de>
	<Zwe-ipF5N82CTN64@host2.jankratochvil.net>
Date: Thu, 10 Oct 2024 14:25:56 +0200
In-Reply-To: <Zwe-ipF5N82CTN64@host2.jankratochvil.net> (Jan Kratochvil's
	message of "Thu, 10 Oct 2024 19:46:18 +0800")
Message-ID: <87ttdkdu0b.fsf@mid.deneb.enyo.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

* Jan Kratochvil:

> On Thu, 10 Oct 2024 18:32:51 +0800, Florian Weimer wrote:
>> * Jan Kratochvil:
>> 
>> > +\fBEINTR\fP
>> > +\fBpthread_cond_wait\fP was interrupted by a signal.
>> > +.RE
>> 
>> POSIX specifically disallows returning EINTR.  Applications cannot
>> expect that pthread_cond_wait returns upon delivery of a signal.  Such
>> a return is only possible due to the general allowance for spurious
>> wakeups, and must result in a zero result.
>
> OK, I agree when I tried that. So I have removed this part.
>
> But then I believe the EINTR presence at pthread_cond_timedwait documentation
> is also wrong (I did not change that in this patch) as I could not reproduce
> the EINTR (attached).

Indeed, POSIX disallows EINTR for all three wait functions.

