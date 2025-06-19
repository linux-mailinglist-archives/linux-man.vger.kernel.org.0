Return-Path: <linux-man+bounces-3173-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DC0DDAE0644
	for <lists+linux-man@lfdr.de>; Thu, 19 Jun 2025 14:53:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8772116BC8E
	for <lists+linux-man@lfdr.de>; Thu, 19 Jun 2025 12:53:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C9DAB23D2BC;
	Thu, 19 Jun 2025 12:53:07 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from brightrain.aerifal.cx (brightrain.aerifal.cx [104.156.224.86])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB7AF35963
	for <linux-man@vger.kernel.org>; Thu, 19 Jun 2025 12:53:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=104.156.224.86
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750337587; cv=none; b=AJxZvgZ/PuxK2dEvsTfwufToBAMNejFbfLnCCnT3DxabKBigjCaxboEs2ZqrhoU76BYXqQMvG8Vnvx+1qjSRBVcMmLmoO2EvNrXoeOtjH4EsvBEM7cPSbUVvDs/aHpts1wF3ZsvuZjvXIdq8hp3jzZvZXVdWhVMb3vrpUth6M9U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750337587; c=relaxed/simple;
	bh=P+1l7l47XPNOSLsTn3NWqDGQBMxpjS0XFM3bE9BZxRI=;
	h=Date:From:To:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=flOcAE+nVV53KwUduvWuN2IQKvY7UoZYXAT3siZ7rNc3mIRInhb1npJSxP4NEy6p3jcWie5AoUP5E0/MKhTl0ljuTFnFy/wbeT/U6A1g/qH9V9U88e6zBkfPMC/8fy3Q6GwqEIP2ZN/njPSVhCh6M15A0bXpcyCSLfbApp1NeYM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=libc.org; spf=pass smtp.mailfrom=aerifal.cx; arc=none smtp.client-ip=104.156.224.86
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=libc.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=aerifal.cx
Date: Thu, 19 Jun 2025 08:53:03 -0400
From: Rich Felker <dalias@libc.org>
To: Vincent Lefevre <vincent@vinc17.net>,
	Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org,
	musl@lists.openwall.com, libc-alpha@sourceware.org,
	Paul Eggert <eggert@cs.ucla.edu>, Bruno Haible <bruno@clisp.org>,
	bug-gnulib@gnu.org
Subject: Re: [musl] malloc.3: Clarify realloc(3) standards conformance
Message-ID: <20250619125302.GE1827@brightrain.aerifal.cx>
References: <hndkzd4b5ajt2yvrflar36ddfdftc2irr5enprn5737spwarwf@mhs3xde6kruv>
 <20250619021510.GD1827@brightrain.aerifal.cx>
 <rn4grpehjs2z6ntam7dze32gugdfokwani2v7tuuc6camjdzy3@btjl3c4ff5i3>
 <20250619123613.GC2742@qaa.vinc17.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250619123613.GC2742@qaa.vinc17.org>
User-Agent: Mutt/1.9.5 (2018-04-13)

On Thu, Jun 19, 2025 at 02:36:13PM +0200, Vincent Lefevre wrote:
> On 2025-06-19 12:54:52 +0200, Alejandro Colomar wrote:
> > +BUGS
> > +       Programmers would naturally expect that realloc(p, n) is consis‐
> > +       tent with free(p) and malloc(n).  This is not explicitly re‐
> > +       quired by POSIX.1‐2024, but all conforming implementations are
> > +       consistent with that.
> > +
> > +       The glibc implementation of realloc() is not consistent with
> > +       that, and as a consequence, it is dangerous to call
> > +       realloc(p, 0) in glibc.
> > +
> > +       A trivial workaround for glibc is calling it as
> > +       realloc(p, n?:1).
> 
> n?:1 is a GNU extension:
> 
> warning: ISO C forbids omitting the middle term of a ‘?:’ expression [-Wpedantic]
> 
> with gcc -pedantic -std=c23, and such code should not be given in
> examples (as a workaround should still be valid for portable code).

Indeed. n?n:1 or n|!n or write it out in a non golf form.

