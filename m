Return-Path: <linux-man+bounces-5025-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8JawDkRfgmnTTAMAu9opvQ
	(envelope-from <linux-man+bounces-5025-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Tue, 03 Feb 2026 21:49:08 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E4E9DEA31
	for <lists+linux-man@lfdr.de>; Tue, 03 Feb 2026 21:49:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 32CF2300B13D
	for <lists+linux-man@lfdr.de>; Tue,  3 Feb 2026 20:49:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6DFFD2DCF61;
	Tue,  3 Feb 2026 20:49:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmx.de header.i=xypron.glpk@gmx.de header.b="bNjnBB0o"
X-Original-To: linux-man@vger.kernel.org
Received: from mout.gmx.net (mout.gmx.net [212.227.15.15])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2398A23EA8B;
	Tue,  3 Feb 2026 20:49:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=212.227.15.15
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770151745; cv=none; b=oP4nkbEpkaWU8OI3rXkvEZ/+OXKQLMJ/8Q71U0MotA1gN8zLj/ewpJod0FmlicO/UiVdNJWdoTUERdX9oHeTkyOSMIgrVircnQvxXJjXF1I96fSyz6MbLLrAagjeuy1b1Ri8HNqjqOL3y2pP7G+C3YQnnA3R+tPkrE4bBirf5Xs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770151745; c=relaxed/simple;
	bh=IjGCZDebeQkY8CceFOvPOiUIdFw/RMJTa2nVlFHEzwo=;
	h=Date:From:To:CC:Subject:In-Reply-To:References:Message-ID:
	 MIME-Version:Content-Type; b=p0paqkjMyheEw+9qs5yJClWN1prQwpG9Wtj+vqsoQLlqcDk0/ffEgYMJBhBsUOCYM3akD3nIrAqyT0K6OXinSBerYNfu5ztu7FDebBt7wfueYVY6WQPd9Cpxr/pTxE/xErA2XYXQDvwWXjSJQIfgocqGZTjbHbsy2jU+y7LthsQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=gmx.de; spf=pass smtp.mailfrom=gmx.de; dkim=pass (2048-bit key) header.d=gmx.de header.i=xypron.glpk@gmx.de header.b=bNjnBB0o; arc=none smtp.client-ip=212.227.15.15
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=gmx.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmx.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.de;
	s=s31663417; t=1770151683; x=1770756483; i=xypron.glpk@gmx.de;
	bh=ThsPpkC4aMXUOpQI4UcxEqC3RckygJbZiD5bSdbscZE=;
	h=X-UI-Sender-Class:Date:From:To:CC:Subject:In-Reply-To:References:
	 Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:cc:
	 content-transfer-encoding:content-type:date:from:message-id:
	 mime-version:reply-to:subject:to;
	b=bNjnBB0o15bMhbFFIWEvrFcd7nkMzpqjCGE16ARH3Tvgef3jzz05GLMyURUSW45r
	 IYGCUv+gHZEig8p+iEUAsBu7RMSp5/o9tmyMtFv7WdMUYSZ4aytlKf1+hfz1+GZf2
	 jzzHKC8BQN8QQO1tqf6igEGBk+f7wvQ8q4t03+mI3xB3xlQ3obqmeAozE5n9PcNgu
	 chg2que6CxP/qVhv8eq8Uws24EepGj3jY3ZxNIZhUZNSBooGjZ7vweuItrsR/ZB3f
	 PJAxCkYpQSSti6anTTQ/Lpx7UmeMnrArExImPJYlh9+W0gaDvTNiAluI4Gi92A/0I
	 Wso0tSU7DoV/zapUQw==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from ehlo.thunderbird.net ([46.114.202.174]) by mail.gmx.net
 (mrgmx004 [212.227.17.190]) with ESMTPSA (Nemesis) id
 1MaJ7v-1wJUXP35Qj-00PrIi; Tue, 03 Feb 2026 21:48:03 +0100
Date: Tue, 03 Feb 2026 21:47:57 +0100
From: Heinrich Schuchardt <xypron.glpk@gmx.de>
To: Alejandro Colomar <alx@kernel.org>, Alyssa Ross <hi@alyssa.is>
CC: David Howells <dhowells@redhat.com>,
 Nicolas Bouchinet <nicolas.bouchinet@oss.cyber.gouv.fr>,
 Xiu Jianfeng <xiujianfeng@huawei.com>, linux-security-module@vger.kernel.org,
 linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man7/kernel_lockdown.7: remove Secure Boot untruth
User-Agent: Thunderbird for Android
In-Reply-To: <aYJZ31jO5ZE1Z6Xp@devuan>
References: <20260203195001.20131-1-hi@alyssa.is> <aYJSDDwK1T9xxca1@mbp.qyliss.net> <aYJZ31jO5ZE1Z6Xp@devuan>
Message-ID: <252F93CE-E2C6-4D5A-9B2B-1B4907EEE0BA@gmx.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:XbXmkgbDx63TLLig0YHFpQvJ7GXM3MUzc2lYb1fJcmetS7WWNeR
 HyMGxgCcyOOA+qwt6wSO5TEMfSnDhiPb2ISCmib2o7NsGinPoSqi3ef08z5oty7H27eIaox
 Xfbfx3hJ0K51ctN/IIJmCQg/MAvwqSEh4jKiq395ZZ7nYKIH3/awnGnDCPJ3DNO4gmSpBOP
 eCgYAE2cVRTz0zEMMVHZA==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:0vKUCeotHhc=;3ivgGXoXa7iyN4ylnG70NK823K9
 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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.15 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmx.de,quarantine];
	R_DKIM_ALLOW(-0.20)[gmx.de:s=s31663417];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	XM_UA_NO_VERSION(0.01)[];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5025-lists,linux-man=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[gmx.de:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FREEMAIL_FROM(0.00)[gmx.de];
	NEURAL_HAM(-0.00)[-0.994];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[xypron.glpk@gmx.de,linux-man@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	RCPT_COUNT_SEVEN(0.00)[7];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,gmx.de:mid,gmx.de:dkim,alyssa.is:email]
X-Rspamd-Queue-Id: 8E4E9DEA31
X-Rspamd-Action: no action

Am 3=2E Februar 2026 21:27:44 MEZ schrieb Alejandro Colomar <alx@kernel=2Eo=
rg>:
>Hi Alyssa,
>
>On 2026-02-03T20:53:33+0100, Alyssa Ross wrote:
>> On Tue, Feb 03, 2026 at 08:50:01PM +0100, Alyssa Ross wrote:
>> > This is true for Fedora, where this page was sourced from, but I don'=
t
>> > believe it has ever been true for the mainline kernel, because Linus
>> > rejected it=2E
>> >
>> > Link: https://bbs=2Earchlinux=2Eorg/viewtopic=2Ephp?pid=3D2088704#p20=
88704
>> > Link: https://lore=2Ekernel=2Eorg/lkml/CA+55aFzYbpRAdma0PvqE+9ygySuKz=
NKByqOzzMufBoovXVnfPw@mail=2Egmail=2Ecom/
>> > Fixes: bb509e6fc ("kernel_lockdown=2E7: New page documenting the Kern=
el Lockdown feature")
>
>I've now CCed you in an email documenting the format we use for these=2E
>It should be:
>
>Fixes: bb509e6fcbae (2020-10-16; "kernel_lockdown=2E7: New page documenti=
ng the Kernel Lockdown feature")
>
>I'll amend that myself=2E
>
>> > Signed-off-by: Alyssa Ross <hi@alyssa=2Eis>
>>=20
>> Just noticed there's a long-open bug for this as well, so additionally:
>>=20
>> Closes: https://bugzilla=2Ekernel=2Eorg/show_bug=2Ecgi?id=3D213577
>
>Thanks!  I'll keep the patch for a few days, in case anyone wants to
>comment=2E
>
>
>Have a lovely night!
>Alex
>

Can we move the information from the Notes section to replace the removed =
statement? What causes lockdown is central for users=2E

Best regards

Heinrich


