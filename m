Return-Path: <linux-man+bounces-3503-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id ACDE7B2C9AF
	for <lists+linux-man@lfdr.de>; Tue, 19 Aug 2025 18:30:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8C17C16D84C
	for <lists+linux-man@lfdr.de>; Tue, 19 Aug 2025 16:26:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8C41325A2A7;
	Tue, 19 Aug 2025 16:25:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=zohomail.com header.i=safinaskar@zohomail.com header.b="XXeopjJD"
X-Original-To: linux-man@vger.kernel.org
Received: from sender4-pp-o95.zoho.com (sender4-pp-o95.zoho.com [136.143.188.95])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F529258CD0
	for <linux-man@vger.kernel.org>; Tue, 19 Aug 2025 16:25:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=136.143.188.95
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755620740; cv=pass; b=rtbiL7VoXe7PHNpggsyqRVQiI8YZ33cpKWy03HWa1+s8N5f0lPB5hQsE4KnshcU+dA1W8VS+9QoprOWp5Fy26Dy9isj26j6J9h9dqNSQbRPPQu6yzjMjzzd2N3PB6Mwz3sa10YLsIVU+7uKx5K+mU7XcJBiuimljPnW5Fn/0DdU=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755620740; c=relaxed/simple;
	bh=XF+mtTP1qYiR8lR0TjlRoVmOARygRmV3XG9naKw6wpI=;
	h=Date:From:To:Cc:Message-ID:In-Reply-To:References:Subject:
	 MIME-Version:Content-Type; b=LyxbvR8xeIaoz2xI92+0u4wWn9ubVhjIW9MM/Upem1pLKHtixdzWNVo2UzaFFNhdavyknkhlOKThA4KOOlAAcpOtwQh8LzDOrC8Er5B80gFuGtMkbTNOfydNttriZoIL9pOyIhWzLJwAsJ5MmGXQSrtwYlJsp/NVRI62Sdb8CFo=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=zohomail.com; spf=pass smtp.mailfrom=zohomail.com; dkim=pass (1024-bit key) header.d=zohomail.com header.i=safinaskar@zohomail.com header.b=XXeopjJD; arc=pass smtp.client-ip=136.143.188.95
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=zohomail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=zohomail.com
ARC-Seal: i=1; a=rsa-sha256; t=1755620724; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=KvFvWNHG07A/cA8jlQf7TUxf+KLwtJWzOU59Cc8X5gg8Xu1mZVbEH+l8bcoESCmfQjVXUUt/+AAbprezTqKpsr4Q7t8PBv/wjeTGOfu5htzV0jogZYggNhVpMscvD/Bs46TJq2gJF/Ch3Y+KmgI4N/RtKy0Bo6p5wgPlA0IW564=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1755620724; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=3RoSp6tWUQO+ccMFo5uD60JZ5Y0CA75easMn00yb95A=; 
	b=RtE5MR3afOINkHmw57upSe/byr0bWP9k7woxZA6y431yb9Je4zjzcwu2WfsQ6YFIo3sga9MtnonV7tNckrFhAVAtgQ84qIC3MSy8N7I3wTisS/Fu03SL4IaxGnERxhFaBuy7BLudwcZKQdjccY1HpRr43BtqLUKzfs19NtMOmoo=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=zohomail.com;
	spf=pass  smtp.mailfrom=safinaskar@zohomail.com;
	dmarc=pass header.from=<safinaskar@zohomail.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1755620724;
	s=zm2022; d=zohomail.com; i=safinaskar@zohomail.com;
	h=Date:Date:From:From:To:To:Cc:Cc:Message-ID:In-Reply-To:References:Subject:Subject:MIME-Version:Content-Type:Content-Transfer-Encoding:Feedback-ID:Message-Id:Reply-To;
	bh=3RoSp6tWUQO+ccMFo5uD60JZ5Y0CA75easMn00yb95A=;
	b=XXeopjJDBgUeT7Qbc5eqANoaeoCvHkBPsO7Jd7Lt5A5XnAcb02x1YuT0oVikTao3
	mY1ki3wPiMW94LpcnwKiUhh5p2zwJCyRFWu3Ok13h1E5Wv3g+Jm5AFnYIMk6rI2Ufnc
	uxYPDQ53EnOOolkdIio5tIItzzXLKJNcrGbmkdvI=
Received: from mail.zoho.com by mx.zohomail.com
	with SMTP id 1755620721744218.57556632128603; Tue, 19 Aug 2025 09:25:21 -0700 (PDT)
Received: from  [212.73.77.104] by mail.zoho.com
	with HTTP;Tue, 19 Aug 2025 09:25:21 -0700 (PDT)
Date: Tue, 19 Aug 2025 20:25:21 +0400
From: Askar Safin <safinaskar@zohomail.com>
To: "Alejandro Colomar" <alx@kernel.org>
Cc: "linux-man" <linux-man@vger.kernel.org>,
	"Elliott Hughes" <enh@google.com>,
	"Carlos O'Donell" <carlos@redhat.com>,
	"Eugene Syromyatnikov" <evgsyr@gmail.com>,
	"Walter Harms" <wharms@bfs.de>
Message-ID: <198c3264442.125c4d18f66475.7936052978788713808@zohomail.com>
In-Reply-To: <jqw7baa3nx7vkbramdnlpdybfesgc34gwfdeo2l6otue2bglmr@m54n6nmbtush>
References: <20250819155400.763253-1-safinaskar@zohomail.com>
 <20250819155400.763253-2-safinaskar@zohomail.com> <jqw7baa3nx7vkbramdnlpdybfesgc34gwfdeo2l6otue2bglmr@m54n6nmbtush>
Subject: Re: [PATCH 1/2] Remove all mentions of blackfin architecture
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
Importance: Medium
User-Agent: Zoho Mail
X-Mailer: Zoho Mail
Feedback-ID: rr08011227cd6c4bccdf0a178157616a830000665fc2595b086c41a0876b4bd24942470ba7b9494c4f6b59d1:zu080112271c98c8d32bbf13023cc732520000e0826513dd8f8bd179cbaa1a572e50c5c5ba1fa2572afe5bfa:rf0801122cb5e714fe397b49be1f6560300000b4f928003eb1a95eabd53c61a6532529fe877926502d8d5c47535a1900e2:ZohoMail

Oops, I merely read your first mail and missed second. And proceed to send v2 patches.
I'm sorry about that.


 ---- On Tue, 19 Aug 2025 20:08:37 +0400  Alejandro Colomar <alx@kernel.org> wrote --- 
 > > -.SS blackfin, m68k, and sparc
 > > +.SS m68k and sparc
 > 
 > I think I'd keep this.

My intention was to remove ALL mentions (with possible exception for syscalls(2)).
Otherwise I don't see any sense to do this.

How much time should pass to be able to safely remove truly all mentions?
(Previous question is not trolling or rhetorical question, I'm genuinely asking.)

Just say some exact timeline (i. e. 10 years, 20 years, or something),
and I will wait this exact time and send patchset for removing
truly all mentions.
(Again, previous sentence in not a joke and not an insult. I really want
to do this.)

I'm perfectionist. And I for all-or-nothing approach.
--
Askar Safin
https://types.pl/@safinaskar


