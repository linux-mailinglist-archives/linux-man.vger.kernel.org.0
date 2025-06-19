Return-Path: <linux-man+bounces-3190-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 40EFBAE0F1F
	for <lists+linux-man@lfdr.de>; Thu, 19 Jun 2025 23:52:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E02D04A1F6E
	for <lists+linux-man@lfdr.de>; Thu, 19 Jun 2025 21:52:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BF5F4220F26;
	Thu, 19 Jun 2025 21:52:23 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from evolvis.org (evolvis.org [217.144.135.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E525D30E85D
	for <linux-man@vger.kernel.org>; Thu, 19 Jun 2025 21:52:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.144.135.11
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750369943; cv=none; b=rwf0upIjEt35p1RERqZZYtUufUq/mZ6WzyoWdlPOFVRM7xNfMXwG8YMiN1zct2D464JqlkkvI1WpDRdZzdjxxSUIek1c8jPJqneqiCYn6t/Ks+cR4IAiVue1k1N77QPYVdTv7PsMs/oUKpI3X4O4ybB4kLZpgdwNFkYefoYoz7I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750369943; c=relaxed/simple;
	bh=/HP563b2hulsudegWRus/469iQFV3NHRJB9PASL7aqA=;
	h=Date:From:To:cc:Subject:In-Reply-To:Message-ID:References:
	 MIME-Version:Content-Type; b=a646x1E7ltyEbrWWd8XiCRuPh45x6bvnQHp/Ys8Dq9/Xu1JGxa2bMGC7tUtozro+r/HcGmVBiuerYKuCO2bi7UneorKE+mAlWFvTYu+JvYccZ/gYUxQ207RI3CSZHubcA41nkkiA1TQOftQYXHp6Ou4eAX/5OV9bGCnxnwyepkU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=mirbsd.de; spf=pass smtp.mailfrom=mirbsd.de; arc=none smtp.client-ip=217.144.135.11
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=mirbsd.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mirbsd.de
Received: from x61p.mirbsd.org (xdsl-78-35-212-149.nc.de [78.35.212.149])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X448 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(Client did not present a certificate)
	(Authenticated sender: x61p@relay.evolvis.org)
	by evolvis.org (Postfix) with ESMTPSA id 54C521000A7;
	Thu, 19 Jun 2025 21:52:16 +0000 (UTC)
Received: by x61p.mirbsd.org (Postfix, from userid 1000)
	id DD4E91450FC; Thu, 19 Jun 2025 23:52:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by x61p.mirbsd.org (Postfix) with ESMTP id D8BC51450C9;
	Thu, 19 Jun 2025 23:52:15 +0200 (CEST)
Date: Thu, 19 Jun 2025 23:52:15 +0200 (CEST)
From: Thorsten Glaser <tg@mirbsd.de>
To: Rich Felker <dalias@libc.org>
cc: musl@lists.openwall.com, Alejandro Colomar <alx@kernel.org>, 
    linux-man@vger.kernel.org, libc-alpha@sourceware.org, 
    Paul Eggert <eggert@cs.ucla.edu>, Bruno Haible <bruno@clisp.org>, 
    bug-gnulib@gnu.org
Subject: Re: [musl] [v2] malloc.3: Clarify realloc(3) standards conformance
In-Reply-To: <20250619214030.GH1827@brightrain.aerifal.cx>
Message-ID: <d145f0b6-03be-65c8-2248-20db25f56fea@mirbsd.de>
References: <hndkzd4b5ajt2yvrflar36ddfdftc2irr5enprn5737spwarwf@mhs3xde6kruv> <3cx3oylv6hid2eunibcre7c5oqncuxkrk25x2plme2fqzmdpsf@sh7tmopzzgd5> <20250619153209.GG1827@brightrain.aerifal.cx> <65bc2156-fb06-49b8-29f1-b6df8d98ed6d@mirbsd.de>
 <20250619214030.GH1827@brightrain.aerifal.cx>
Content-Language: de-Zsym-DE-1901-u-em-text-rg-denw-tz-utc, en-Zsym-GB-u-cu-eur-em-text-fw-mon-hc-h23-ms-metric-mu-celsius-rg-denw-tz-utc-va-posix
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: QUOTED-PRINTABLE

On Thu, 19 Jun 2025, Rich Felker wrote:

>When targeting an older version of
>the language standard, the UB does not apply. It would be interesting

Right, but=E2=80=A6

>OK, this is a legitimate point in support of "dangerous", but it only
>applies with -std=3Dc23 or similar.

=E2=80=A6 GCC now defaults to that.

And even if not, it would still be a timebomb=E2=80=A6

bye,
//mirabilos
--=20
18:47=E2=8E=9C<mirabilos:#!/bin/mksh> well channels=E2=80=A6 you see, I see=
 everything in the
same window anyway      18:48=E2=8E=9C<xpt:#!/bin/mksh> i know, you have so=
me kind of
telnet with automatic pong         18:48=E2=8E=9C<mirabilos:#!/bin/mksh> ha=
ha, yes :D
18:49=E2=8E=9C<mirabilos:#!/bin/mksh> though that's more tinyirc =E2=80=93 =
sirc is more comfy

