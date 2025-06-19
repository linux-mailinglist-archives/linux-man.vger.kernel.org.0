Return-Path: <linux-man+bounces-3175-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 761EFAE067F
	for <lists+linux-man@lfdr.de>; Thu, 19 Jun 2025 15:05:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 545823A4A20
	for <lists+linux-man@lfdr.de>; Thu, 19 Jun 2025 13:04:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 75F6022B598;
	Thu, 19 Jun 2025 13:04:55 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from brightrain.aerifal.cx (brightrain.aerifal.cx [104.156.224.86])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C65E21421F
	for <linux-man@vger.kernel.org>; Thu, 19 Jun 2025 13:04:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=104.156.224.86
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750338295; cv=none; b=jP6Jub7vVZSj5WSoIX1H/y+uvXWkHLnBP4sWmgxdqIhericOZsRH4cXOoqcnIr2V35QeNrhD6UO8cDN7QdoJQA6Fx7m6xQx/tv9unPdT0S0Umou9bCNwoa/oVexPwlTDNB4tV5NhfBW3335ru6pQHph8a92uFtjGQ3FmkShyTg0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750338295; c=relaxed/simple;
	bh=JS9/nQ3JcjJTAjfr2OE2J9wcg7825qfMse9KzXRw9TQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=tRWRzgFj1BzAnPXAoekItegk/bNhw3Zm0x2GqyQiKwpyuZWymZ5dsLSF6s3nY4qEShUaSzz+PTr3rBy4vhKan8sMgTS4nJgeT0sRNKdlgte9lxWMLjP7K+f/2zonVzltwcc9rQCCInGAM1Xwbeebb8DZ/K0XdasKVv3Vxzutc4w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=libc.org; spf=pass smtp.mailfrom=aerifal.cx; arc=none smtp.client-ip=104.156.224.86
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=libc.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=aerifal.cx
Date: Thu, 19 Jun 2025 09:04:51 -0400
From: Rich Felker <dalias@libc.org>
To: Alejandro Colomar <alx@kernel.org>
Cc: Vincent Lefevre <vincent@vinc17.net>, linux-man@vger.kernel.org,
	musl@lists.openwall.com, libc-alpha@sourceware.org,
	Paul Eggert <eggert@cs.ucla.edu>, Bruno Haible <bruno@clisp.org>,
	bug-gnulib@gnu.org
Subject: Re: [musl] malloc.3: Clarify realloc(3) standards conformance
Message-ID: <20250619130449.GF1827@brightrain.aerifal.cx>
References: <hndkzd4b5ajt2yvrflar36ddfdftc2irr5enprn5737spwarwf@mhs3xde6kruv>
 <20250619021510.GD1827@brightrain.aerifal.cx>
 <rn4grpehjs2z6ntam7dze32gugdfokwani2v7tuuc6camjdzy3@btjl3c4ff5i3>
 <20250619123613.GC2742@qaa.vinc17.org>
 <jf5jralawp5lmjqcdfqf2jblg2z43vjbkdx3eapjumjsccw6yv@pzm2cxgfnpw3>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <jf5jralawp5lmjqcdfqf2jblg2z43vjbkdx3eapjumjsccw6yv@pzm2cxgfnpw3>
User-Agent: Mutt/1.9.5 (2018-04-13)

On Thu, Jun 19, 2025 at 02:53:45PM +0200, Alejandro Colomar wrote:
> Hi Vincent,
> 
> On Thu, Jun 19, 2025 at 02:36:13PM +0200, Vincent Lefevre wrote:
> > On 2025-06-19 12:54:52 +0200, Alejandro Colomar wrote:
> > > +BUGS
> > > +       Programmers would naturally expect that realloc(p, n) is consis‐
> > > +       tent with free(p) and malloc(n).  This is not explicitly re‐
> > > +       quired by POSIX.1‐2024, but all conforming implementations are
> > > +       consistent with that.
> > > +
> > > +       The glibc implementation of realloc() is not consistent with
> > > +       that, and as a consequence, it is dangerous to call
> > > +       realloc(p, 0) in glibc.
> > > +
> > > +       A trivial workaround for glibc is calling it as
> > > +       realloc(p, n?:1).
> > 
> > n?:1 is a GNU extension:
> > 
> > warning: ISO C forbids omitting the middle term of a ‘?:’ expression [-Wpedantic]
> > 
> > with gcc -pedantic -std=c23, and such code should not be given in
> > examples (as a workaround should still be valid for portable code).
> 
> Hmmm, I guess I can write it as n?n:1.
> 
> I'll write a proposal to standardize ?: in ISO C too.

That still doesn't make it appropriate to recommend in a man page for
people who will be writing code mostly to non bleeding edge (some even
C89) versions of the standard.

Examples and proscriptions should be minimally fancy, not using new or
clever things unnecessarily in ways that could break or just not
immediately be understood by the reader.

Rich


