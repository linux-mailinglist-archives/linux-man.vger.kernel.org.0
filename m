Return-Path: <linux-man+bounces-1921-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 565D69CDA69
	for <lists+linux-man@lfdr.de>; Fri, 15 Nov 2024 09:24:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1C8A82837AC
	for <lists+linux-man@lfdr.de>; Fri, 15 Nov 2024 08:24:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BF94316EB4C;
	Fri, 15 Nov 2024 08:24:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gnu.org header.i=@gnu.org header.b="o+Oyp2u4"
X-Original-To: linux-man@vger.kernel.org
Received: from eggs.gnu.org (eggs.gnu.org [209.51.188.92])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DECCB187862
	for <linux-man@vger.kernel.org>; Fri, 15 Nov 2024 08:24:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.51.188.92
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731659077; cv=none; b=UOLzKCu+bbAilYuai/oIh8hAOTHJe8+a8e3qe5lzxUJWoQ3z12zk9sv5SyISuQC8Ro6Cr5Uvf3RrONnkF5N+3sIzSWVgv9iv8KdnbP5zI2HwpvesOY/3tAHGl2SI7hLJDb0yH4rOdwKTeieEibQLPInBWrutR58TnPi0Ta2XRo8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731659077; c=relaxed/simple;
	bh=YCjt5wvYLuIJi/4+8EDNcPPkTMymOeZpathI2/50x1A=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=XVaLs4F/cAOwVIx+KAtub91ZPmhGEEhLq02qWR1fc0D8OAYh67yitMNSXDplCpTXPALB0MK9HGnIpvmTNAZ7csJ5u77iWD6MOeyJi5WmegYYMLvPtjj7TYdZZmyzU0YczTfFPMIN15nvecXMgdFoKDpWsgTMv+5hg7B5vXO+tHU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gnu.org; spf=pass smtp.mailfrom=gnu.org; dkim=pass (2048-bit key) header.d=gnu.org header.i=@gnu.org header.b=o+Oyp2u4; arc=none smtp.client-ip=209.51.188.92
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gnu.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gnu.org
Received: from fencepost.gnu.org ([2001:470:142:3::e])
	by eggs.gnu.org with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.90_1)
	(envelope-from <ken@gnu.org>)
	id 1tBrd4-0000w7-In; Fri, 15 Nov 2024 03:24:34 -0500
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=gnu.org;
	s=fencepost-gnu-org; h=In-Reply-To:MIME-Version:References:Subject:To:From:
	Date; bh=MFKu4mPDhVkt89R6uR3ithVtmW8PuhDDT94Tfx+nEfo=; b=o+Oyp2u4epsCEasQKjNY
	1YSlEwDNLmH9553VCafuuiIiFNKA9DRZDcIk5XBDZHAKosHIBNImPUgbhkwNqs5ZPRxasP5yG0O/s
	BSa1KTMkux+XtKxY7Wgby+g47QPS3i5VPmW3qzJElnpVvqYiWdG8nmJXK0ep0yFISUwhqxSLASQw2
	SiQftZnUOkOMYqBFXBsas/pda5svmgNIWa4ZWBEu3iRohQw9vsL37VmGaG49bN0CZeZQ/Fl8zwN4x
	wBDzOkDXMqKIn21nrZk8AC3Z9MPEgKOmkY7zD/6tSecZ+R4/TOwalbOwl2W5goFhuhB3HBtuA2q+L
	QJxJeOfy2dfUug==;
Date: Fri, 15 Nov 2024 00:24:32 -0800
From: Ken Pizzini <ken@gnu.org>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH 2/2] printf(3): improve description of %a format
Message-ID: <c089eee6-c11d-4225-81af-c59378532a28@vagg4fs7.msa.explicate.org>
References: <306bc8df-d75f-40fc-b1df-1a34cca0b4fa@vagg4fs7.msa.explicate.org>
 <hoxou4yctztlze24w2usfvknrnbs5h4hspzsg6q4zy3hfm2p6k@6erj3vhl5rcm>
 <63799ebb-bcc4-45a6-82eb-27520d760191@vagg4fs7.msa.explicate.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <63799ebb-bcc4-45a6-82eb-27520d760191@vagg4fs7.msa.explicate.org>

The description of the %a/%A specifiers in the printf(3) man page
could stand some improvement.  In particular, it is not clear from the
current document what base is used for the "p±d" part of the format.

It can be inferred from the nature of %a that the base should be
a power of two. and it can be further inferred from the nature of
hexadecimal floating-point literals in C (as specified by C99 and
later) that the base must exactly be the number two, but it would be
helpful for the printf(3) man page to state this explicitly.  My first
expectation when reading the man page was that the exponent would be
taken in base 16; after experimentation my second thought is that it
is base FLT_RADIX (which is 2 on IEEE 754 floating-point systems, but
16 on S/390).  Only by going back to the standard [1] could I determine
that the exponent in p-notation must always be taken from a base of 2.

[1] POSIX.1-2024
    <https://pubs.opengroup.org/onlinepubs/9799919799/functions/printf.html>

Signed-off-by: Ken Pizzini <ken@gnu.org>
---
 man/man3/printf.3 | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/man/man3/printf.3 b/man/man3/printf.3
index 7a96ec9c7..acabb3c3a 100644
--- a/man/man3/printf.3
+++ b/man/man3/printf.3
@@ -767,8 +767,11 @@ .SS Conversion specifiers
 .IR double .
 The digit before the radix point is unspecified for nonnormalized
 numbers, and nonzero but otherwise unspecified for normalized numbers.
-The exponent always contains at least one
-digit; if the value is zero, the exponent is 0.
+The exponent,
+.IR d ,
+which is the appropriate exponent of 2 expressed as a decimal integer,
+always contains at least one digit;
+if the value is zero, the exponent is 0.
 .TP
 .B c
 If no
-- 
2.47.0

