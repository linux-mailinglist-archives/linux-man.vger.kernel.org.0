Return-Path: <linux-man+bounces-5272-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2BrtOEUDumkGQgIAu9opvQ
	(envelope-from <linux-man+bounces-5272-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 18 Mar 2026 02:43:33 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C935A2B507A
	for <lists+linux-man@lfdr.de>; Wed, 18 Mar 2026 02:43:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AA31B300E390
	for <lists+linux-man@lfdr.de>; Wed, 18 Mar 2026 01:43:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 18F2C23C4F3;
	Wed, 18 Mar 2026 01:43:15 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from cstnet.cn (smtp81.cstnet.cn [159.226.251.81])
	(using TLSv1.2 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9968C2367BA
	for <linux-man@vger.kernel.org>; Wed, 18 Mar 2026 01:43:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=159.226.251.81
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773798194; cv=none; b=sL/sQ4xzYHXNKR/goQuaU5Kjt2hW0EQzRhsPfj+36o397gO6rh9fUnnGsxuIXrOGM5LBN43wOdszjJYsE6kR3rCPbF3SoNrRDecUaXf87oHei2kKbGkua+/D6kJmrX4GflAoBSUHdgtTcIxESSSxuOcXaa+aL3rTxSceCgn8rY8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773798194; c=relaxed/simple;
	bh=mRYp2y7+yQXb87WKUQ/jmVngD0oE4LQ5KxTXrigc7JQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=mjOwR2x6VSVeCHFHj2/Z/kTFu3gUhX+R3+0KnHZJeO6tuxjWl/QDI1CnNqCxXglkHUPwEwiU1hWrbYlBckwwJ3FuUmUp0vNrS3V8FkWWWwx+HLSPvR8Ba8wnnOrW1s3jzSCLCtl3g262Z3U4K3KwLcYPvP+UXSFmgKx7SM/5av4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=iscas.ac.cn; spf=pass smtp.mailfrom=iscas.ac.cn; arc=none smtp.client-ip=159.226.251.81
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=iscas.ac.cn
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=iscas.ac.cn
Received: from [192.168.0.109] (unknown [123.118.222.47])
	by APP-03 (Coremail) with SMTP id rQCowACHqN8rA7pp5a35Cg--.14950S2;
	Wed, 18 Mar 2026 09:43:08 +0800 (CST)
Message-ID: <940af389-453f-49ca-b412-0c5c2937748a@iscas.ac.cn>
Date: Wed, 18 Mar 2026 09:43:07 +0800
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [dramforever@live.com: [PATCH] man/man5/proc_pid.5: Clarify which
 user namespace affects permissions]
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, Michael Kerrisk <mtk.manpages@gmail.com>
References: <abn3rJaXlmU1Zr2i@devuan>
Content-Language: en-US
From: Vivian Wang <wangruikang@iscas.ac.cn>
In-Reply-To: <abn3rJaXlmU1Zr2i@devuan>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CM-TRANSID:rQCowACHqN8rA7pp5a35Cg--.14950S2
X-Coremail-Antispam: 1UD129KBjvJXoW7tFW7GF45Cr15Ww1rWrW8tFb_yoW8Wr45pF
	4DCr4YvrW7AryxW3yUKw4IvFW5K3Zaq3WFqr93W34Fgw15Xa4qyrn09w43urZxur1kC34j
	yws2qayIya43trJanT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDU0xBIdaVrnRJUUUyFb7Iv0xC_Kw4lb4IE77IF4wAFF20E14v26r1j6r4UM7CY07I2
	0VC2zVCF04k26cxKx2IYs7xG6rWj6s0DM7CIcVAFz4kK6r1j6r18M28lY4IEw2IIxxk0rw
	A2F7IY1VAKz4vEj48ve4kI8wA2z4x0Y4vE2Ix0cI8IcVAFwI0_Xr0_Ar1l84ACjcxK6xII
	jxv20xvEc7CjxVAFwI0_Gr0_Cr1l84ACjcxK6I8E87Iv67AKxVW8Jr0_Cr1UM28EF7xvwV
	C2z280aVCY1x0267AKxVWxJr0_GcWle2I262IYc4CY6c8Ij28IcVAaY2xG8wAqx4xG64xv
	F2IEw4CE5I8CrVC2j2WlYx0E2Ix0cI8IcVAFwI0_Jr0_Jr4lYx0Ex4A2jsIE14v26r1j6r
	4UMcvjeVCFs4IE7xkEbVWUJVW8JwACjcxG0xvEwIxGrwCF04k20xvY0x0EwIxGrwCFx2Iq
	xVCFs4IE7xkEbVWUJVW8JwC20s026c02F40E14v26r1j6r18MI8I3I0E7480Y4vE14v26r
	106r1rMI8E67AF67kF1VAFwI0_Jrv_JF1lIxkGc2Ij64vIr41lIxAIcVC0I7IYx2IY67AK
	xVWUJVWUCwCI42IY6xIIjxv20xvEc7CjxVAFwI0_Jr0_Gr1lIxAIcVCF04k26cxKx2IYs7
	xG6r1j6r1xMIIF0xvEx4A2jsIE14v26r1j6r4UMIIF0xvEx4A2jsIEc7CjxVAFwI0_Jr0_
	GrUvcSsGvfC2KfnxnUUI43ZEXa7IU5PpnJUUUUU==
X-CM-SenderInfo: pzdqw2pxlnt03j6l2u1dvotugofq/
X-Spamd-Result: default: False [-1.46 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com];
	TAGGED_FROM(0.00)[bounces-5272-lists,linux-man=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_THREE(0.00)[3];
	DMARC_NA(0.00)[iscas.ac.cn];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wangruikang@iscas.ac.cn,linux-man@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.811];
	MID_RHS_MATCH_FROM(0.00)[];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,live.com:email,iscas.ac.cn:mid]
X-Rspamd-Queue-Id: C935A2B507A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 3/18/26 08:56, Alejandro Colomar wrote:

> Hi Vivian,
>
> Can you please confirm this is you?  I received this patch from an
> address that doesn't match the one I see in your kernel commits, and
> when I replied to <dramforever@live.com>, the message bounced.  I'm just
> checking.  See patch from the @live.com address below.

Hi, Alejandro,

This is me.

Apologies for the confusion. My idea was to use my personal email
(dramforever@live.com) for dayjob-related stuff, and employer email
(@iscas.ac.cn) for work-related stuff.

I've started signing off as "Vivian Wang <dramforever@live.com>" in
OpenSBI first, before being employed at ISCAS (see [1], firstly done in
[2] after someone complained about me just signing off as "dramforever
<dramforever@live.com>"). In June 2025 I was hired by ISCAS and started
doing primarily kernel work, which was probably where you saw this.

I did not realize that apparently kernel.org mail bounces on my free
Outlook email - I wasn't even getting it in my spam box. Unfortunately I
don't think I have much control over the behavior of Microsoft's Outlook
servers.

Next time I will use a different personal address - with a reply from my
apparently more well known @iscas.ac.cn address vouching for its
authenticity, to avoid confusion.

[1]: https://lore.kernel.org/opensbi/?q=f%3A%22Vivian+Wang+%3Cdramforever%22
[2]: https://lore.kernel.org/opensbi/TYYP286MB1439C5C64BCF8E9DB7883772C69F9@TYYP286MB1439.JPNP286.PROD.OUTLOOK.COM/

>
> Have a lovely night!
> Alex

Thank you.

Vivian "dramforever" Wang



