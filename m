Return-Path: <linux-man+bounces-3184-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DAADAE0AD8
	for <lists+linux-man@lfdr.de>; Thu, 19 Jun 2025 17:47:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EC10F16CEC0
	for <lists+linux-man@lfdr.de>; Thu, 19 Jun 2025 15:47:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D2E5623BCEF;
	Thu, 19 Jun 2025 15:47:43 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from evolvis.org (evolvis.org [217.144.135.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23BCB11712
	for <linux-man@vger.kernel.org>; Thu, 19 Jun 2025 15:47:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.144.135.11
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750348063; cv=none; b=nx0D+6B+T9P3kGetztx0cNzVfk8q6zs+8gBZzr1GYAYJHMAjxKbonQq5ryZY/jknnkqg+rRcXGp9NCr5hdWh2gJ9xob0Si6BEaTNiE4TIxRo0sZyrZ4C0rYFD5alKdcOGopa0aWjZjE1Qpg+qL2NPcvihKYnHkRwGaeEQEo3SBk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750348063; c=relaxed/simple;
	bh=TIqxLzDd7mB4j2kTfFN5Gz8QMJ4bySo6/FJtUfMUgWw=;
	h=Date:From:To:cc:Subject:In-Reply-To:Message-ID:References:
	 MIME-Version:Content-Type; b=N3Aseu7zgWbRocCCqISXWFXaMuOfAOQ45UUBRjauoPa1N5b3IQ4izj9TSjgr1ScD+Vx4ZNejzMt2+kI2GPwtw+sTu2PBufIe6YrTvKzqfCeO88ozVq/cpluhGqDMbt+PXc1n5cb2/oYL9OdeOHRUICPjlSeml+OpzNWH6IZREOo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=mirbsd.de; spf=pass smtp.mailfrom=mirbsd.de; arc=none smtp.client-ip=217.144.135.11
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=mirbsd.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mirbsd.de
Received: from x61p.mirbsd.org (2001-4dd7-543d-0-21d-e0ff-fe77-c17b.ipv6dyn.netcologne.de [IPv6:2001:4dd7:543d:0:21d:e0ff:fe77:c17b])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X448 server-signature RSA-PSS (2048 bits))
	(Client did not present a certificate)
	(Authenticated sender: x61p@relay.evolvis.org)
	by evolvis.org (Postfix) with ESMTPSA id E7F14100118;
	Thu, 19 Jun 2025 15:38:15 +0000 (UTC)
Received: by x61p.mirbsd.org (Postfix, from userid 1000)
	id A28A81421F2; Thu, 19 Jun 2025 17:38:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by x61p.mirbsd.org (Postfix) with ESMTP id 9DAB31421F1;
	Thu, 19 Jun 2025 17:38:15 +0200 (CEST)
Date: Thu, 19 Jun 2025 17:38:15 +0200 (CEST)
From: Thorsten Glaser <tg@mirbsd.de>
To: musl@lists.openwall.com
cc: Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org, 
    libc-alpha@sourceware.org, Paul Eggert <eggert@cs.ucla.edu>, 
    Bruno Haible <bruno@clisp.org>, bug-gnulib@gnu.org
Subject: Re: [musl] [v2] malloc.3: Clarify realloc(3) standards conformance
In-Reply-To: <20250619153209.GG1827@brightrain.aerifal.cx>
Message-ID: <65bc2156-fb06-49b8-29f1-b6df8d98ed6d@mirbsd.de>
References: <hndkzd4b5ajt2yvrflar36ddfdftc2irr5enprn5737spwarwf@mhs3xde6kruv> <3cx3oylv6hid2eunibcre7c5oqncuxkrk25x2plme2fqzmdpsf@sh7tmopzzgd5> <20250619153209.GG1827@brightrain.aerifal.cx>
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

>> +       The glibc implementation of realloc() is not consistent with
>> +       that, and as a consequence, it is dangerous to call
>> +       realloc(p, 0) in glibc.
>
>It's not dangerous if you know what it's doing. Rather it's
>non-portable.

Nope.

It=E2=80=99s actually dangerous in all libcs.

GCC is a repeat offender of taking things that are Undefined
Behaviour in C (and GCC 15 even defaults to C23) and optimising
in a way that breaks programs and libraries that depend on the
behaviour of the respektive system and libc, which they even
guarantee.

This is an unperiodic reminder that GCC lacks a -std=3Dposix2024
and similar.

This is also why I was a bit angry that C23 made it UB. Had
they made it unspecified (POSIX verbiage) / IB (C verbiage),
implementations could actually do things and compilers would
not be allowed to break things that rely on it, i.e. it would
merely have been unportable. But when ISO C says UB it=E2=80=99s not
unportable, it=E2=80=99s dangerous.

bye,
//mirabilos
--=20
<ch> you introduced a merge commit        =E2=94=82<mika> % g rebase -i HEA=
D^^
<mika> sorry, no idea and rebasing just fscked =E2=94=82<mika> Segmentation
<ch> should have cloned into a clean repo      =E2=94=82  fault (core dumpe=
d)
<ch> if I rebase that now, it's really ugh     =E2=94=82<mika:#grml> wuahhh=
hhh

