Return-Path: <linux-man+bounces-3172-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 32351AE0610
	for <lists+linux-man@lfdr.de>; Thu, 19 Jun 2025 14:37:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 22DE41BC268C
	for <lists+linux-man@lfdr.de>; Thu, 19 Jun 2025 12:36:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8FA87235074;
	Thu, 19 Jun 2025 12:36:24 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from joooj.vinc17.net (joooj.vinc17.net [155.133.131.76])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C24A2229B02
	for <linux-man@vger.kernel.org>; Thu, 19 Jun 2025 12:36:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=155.133.131.76
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750336584; cv=none; b=KwzawsP2yc3MZgE3XRTouBpPKho6bPSesBeEVMCX68IR1uXSsnBrzQhOdiOr5Lh/CpqQpatNsve3qJqesVVgygV2anuBpjMsYccjL47U3SQnhVYse/OBkPB+OYY03qOuXh2AvnbOp1tsClFj56hESkSAkw2qLKlI1C0RcQLJBl8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750336584; c=relaxed/simple;
	bh=fVGNk/7Skg23zxT6nKeT8L/+uPZsPnUWHWcu8xmHAF0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=q6u7W1CD1BZWFP+OR/rp3bwqhC0aCwq89W4TBNj4M3PEpRY0k1pxuN4Xk3GXvA0R3oExPjwUja7+By2cPiCPksV5ETXAreUnxHe6KYf/4NZ3RAsjFaRdK5yYANBBbZXpAGGKFh71zaNTR+6POm6T1F/2OBXfXbgnznwlC5mueTY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=vinc17.net; spf=pass smtp.mailfrom=vinc17.net; arc=none smtp.client-ip=155.133.131.76
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=vinc17.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=vinc17.net
Received: from smtp-qaa.vinc17.net (2a02-8428-1b1d-4d01-96a9-491d-7b48-ba31.rev.sfr.net [IPv6:2a02:8428:1b1d:4d01:96a9:491d:7b48:ba31])
	by joooj.vinc17.net (Postfix) with ESMTPSA id 01BC7711;
	Thu, 19 Jun 2025 14:36:14 +0200 (CEST)
Received: by qaa.vinc17.org (Postfix, from userid 1000)
	id 61005CA03A3; Thu, 19 Jun 2025 14:36:13 +0200 (CEST)
Date: Thu, 19 Jun 2025 14:36:13 +0200
From: Vincent Lefevre <vincent@vinc17.net>
To: Alejandro Colomar <alx@kernel.org>
Cc: Rich Felker <dalias@libc.org>, linux-man@vger.kernel.org,
	musl@lists.openwall.com, libc-alpha@sourceware.org,
	Paul Eggert <eggert@cs.ucla.edu>, Bruno Haible <bruno@clisp.org>,
	bug-gnulib@gnu.org
Subject: Re: [musl] malloc.3: Clarify realloc(3) standards conformance
Message-ID: <20250619123613.GC2742@qaa.vinc17.org>
Mail-Followup-To: Vincent Lefevre <vincent@vinc17.net>,
	Alejandro Colomar <alx@kernel.org>, Rich Felker <dalias@libc.org>,
	linux-man@vger.kernel.org, musl@lists.openwall.com,
	libc-alpha@sourceware.org, Paul Eggert <eggert@cs.ucla.edu>,
	Bruno Haible <bruno@clisp.org>, bug-gnulib@gnu.org
References: <hndkzd4b5ajt2yvrflar36ddfdftc2irr5enprn5737spwarwf@mhs3xde6kruv>
 <20250619021510.GD1827@brightrain.aerifal.cx>
 <rn4grpehjs2z6ntam7dze32gugdfokwani2v7tuuc6camjdzy3@btjl3c4ff5i3>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <rn4grpehjs2z6ntam7dze32gugdfokwani2v7tuuc6camjdzy3@btjl3c4ff5i3>
X-Mailer-Info: https://www.vinc17.net/mutt/
User-Agent: Mutt/2.2.13+86 (bb2064ae) vl-169878 (2025-02-08)

On 2025-06-19 12:54:52 +0200, Alejandro Colomar wrote:
> +BUGS
> +       Programmers would naturally expect that realloc(p, n) is consis‐
> +       tent with free(p) and malloc(n).  This is not explicitly re‐
> +       quired by POSIX.1‐2024, but all conforming implementations are
> +       consistent with that.
> +
> +       The glibc implementation of realloc() is not consistent with
> +       that, and as a consequence, it is dangerous to call
> +       realloc(p, 0) in glibc.
> +
> +       A trivial workaround for glibc is calling it as
> +       realloc(p, n?:1).

n?:1 is a GNU extension:

warning: ISO C forbids omitting the middle term of a ‘?:’ expression [-Wpedantic]

with gcc -pedantic -std=c23, and such code should not be given in
examples (as a workaround should still be valid for portable code).

-- 
Vincent Lefèvre <vincent@vinc17.net> - Web: <https://www.vinc17.net/>
100% accessible validated (X)HTML - Blog: <https://www.vinc17.net/blog/>
Work: CR INRIA - computer arithmetic / Pascaline project (LIP, ENS-Lyon)

