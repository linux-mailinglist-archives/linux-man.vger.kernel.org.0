Return-Path: <linux-man+bounces-898-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 48D2B8C0EE6
	for <lists+linux-man@lfdr.de>; Thu,  9 May 2024 13:34:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D913EB20F32
	for <lists+linux-man@lfdr.de>; Thu,  9 May 2024 11:34:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4A952131724;
	Thu,  9 May 2024 11:34:44 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.des.no (smtp.des.no [95.217.20.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 940DB12FF8E
	for <linux-man@vger.kernel.org>; Thu,  9 May 2024 11:34:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=95.217.20.81
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715254484; cv=none; b=WqMaMvDoVez9gnKoqFMDkSyDwnQfPEg4w4VuUAmpsN3cd5p3CUV8gVo2h95EuHF306iMmVu5hx16dd4VnJFLlVKaWEwzPdzUtOfGbCxQ6kPrHGn+7Ng2g7QEX9GTE/+/++jF4N/daJunH/YkrqMHieg8KwrioVsWH1qpkUvoxng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715254484; c=relaxed/simple;
	bh=Y00u5dWbaJy6tJVSOkfv/BQooGniNQfo8b00LWadWMg=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=ARRfwpdFNIwMQKyUgSUX4LWc9g4vwZMMR2bDAmPxBwn8J8LHtTsQ8LrNkub3XazNGPa+GhgsLeiALcupEiHukgE+iKiX7HIvARwstmwED8IUvIljJmk7liO5YLLSGO/ie2Z21JhiQTekpkYhbxnFs/T4m32m7esNKqOqDB/YRJQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=des.no; spf=pass smtp.mailfrom=des.no; arc=none smtp.client-ip=95.217.20.81
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=des.no
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=des.no
Received: from ltc.des.dev (unknown [IPv6:2a02:8428:993:f001:922e:16ff:fef1:acef])
	by smtp.des.no (Postfix) with ESMTPSA id B2AC93C7B5;
	Thu,  9 May 2024 11:29:11 +0000 (UTC)
Received: by ltc.des.dev (Postfix, from userid 1001)
	id DEBEC105C6; Thu, 09 May 2024 13:29:10 +0200 (CEST)
From: =?utf-8?Q?Dag-Erling_Sm=C3=B8rgrav?= <des@des.no>
To: Philip Paeps via tz <tz@iana.org>
Cc: Paul Eggert <eggert@cs.ucla.edu>,  Philip Paeps <philip@trouble.is>,
  linux-man@vger.kernel.org,  Alejandro Colomar <alx@kernel.org>
Subject: Re: [tz] manual pages in tzdb
In-Reply-To: <43C8257A-38BB-49CC-98C1-E5F59867BAAE@trouble.is> (Philip Paeps
	via tz's message of "Thu, 09 May 2024 11:36:43 +0800")
References: <vexmpmalky6xddplkpr6md6b7r664gmyt3fthmmiuxnwwiw3fu@55ga4tnb5zuj>
	<b0faabc0-6dcb-4540-b392-56c244b53817@cs.ucla.edu>
	<43C8257A-38BB-49CC-98C1-E5F59867BAAE@trouble.is>
User-Agent: Gnus/5.13 (Gnus v5.13)
Date: Thu, 09 May 2024 13:29:10 +0200
Message-ID: <86seyr1awp.fsf@ltc.des.dev>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Philip Paeps via tz <tz@iana.org> writes:
> Paul Eggert via tz <tz@iana.org> writes:
> > I wouldn't mind renaming the man pages, though I'd get rid of the
> > "new" prefixes while we're at it. However, I worry that other
> > downstream users would be adversely affected. Perhaps others could
> > chime in.
> I don't mind the idea, but we (FreeBSD) would have to rework some of
> our tooling.

Speaking as the FreeBSD developer who would actually be affected by the
change: it's not an issue.

DES
--=20
Dag-Erling Sm=C3=B8rgrav - des@des.no

