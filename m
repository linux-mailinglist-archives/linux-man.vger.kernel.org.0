Return-Path: <linux-man+bounces-3299-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 08001B117F9
	for <lists+linux-man@lfdr.de>; Fri, 25 Jul 2025 07:33:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CA8FFAA26E2
	for <lists+linux-man@lfdr.de>; Fri, 25 Jul 2025 05:32:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 452AD220F2D;
	Fri, 25 Jul 2025 05:32:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=alejandro-colomar.es header.i=@alejandro-colomar.es header.b="IK9mhEdm"
X-Original-To: linux-man@vger.kernel.org
Received: from out-188.mta1.migadu.com (out-188.mta1.migadu.com [95.215.58.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1991B3594E
	for <linux-man@vger.kernel.org>; Fri, 25 Jul 2025 05:32:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=95.215.58.188
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753421575; cv=none; b=qY7g6InPX2vJyql8jIGomWR5CBoPpph1u3iYxOgrahWeYgWrAkkw9WITBr7hAwOHnyjbONbkfXsYtZor8i5i1lzwGcVlkCdZXzuZYhhA1Jg9dVg0eZ5MSZyFfpsTIK0Vm5u5N1NzNAFfI40p8kxjPs6WW/P5SP2kZy1dCGABYGQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753421575; c=relaxed/simple;
	bh=1c/n94LlPIh5vkjk0cmKldo4tb/KtI9ciY2yIMhotTU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Y0QCfqArArDuSDA9oXZOtDvPff8bguZ0lIwsUJcLg3Y4oKUBBKbfQ21zc9N12Elc5gPOs/BTIowVeSLx+qUEvCbkByZsJhSNQleHw768suDmxbfmlaUiTUo/nkXqr/7SidzzT2GjYEf1TZBohLD2fvrRRkmjvmI8xkbsCYBY09M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=alejandro-colomar.es; spf=pass smtp.mailfrom=alejandro-colomar.es; dkim=pass (2048-bit key) header.d=alejandro-colomar.es header.i=@alejandro-colomar.es header.b=IK9mhEdm; arc=none smtp.client-ip=95.215.58.188
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=alejandro-colomar.es
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=alejandro-colomar.es
Date: Fri, 25 Jul 2025 07:32:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alejandro-colomar.es;
	s=key1; t=1753421571;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=h2eM7vGgZdcSDED72XOqHylPvOQOMUleC2mJZVVjF9E=;
	b=IK9mhEdmokGm5kLYaAXfMBGIFUfGBDa15H0uQZHyl9Kal8GL6kNmTmkyqikXRfL3M61Jpn
	fCVAM13dK/VIVi/VsPmumAfuNVVnHmyBTA9BTmgbsBo+SAAV28agJy53qUK55L4oHhVcaZ
	VlKjxe/nK9rPtgqPOE1wyvCXlZbF5Qa06hmo6p/lugqaja/zdCWw2RGUN1KRFqnfkgvP91
	ZfeSJ484gKe5JL60Fr743Rh+XwBXoklQQT+oTK87JpkMireYoekZEMMVvlE0KNymEcKhYl
	W+l6uWhHnCV56rOx4bfZo8SQTyGf+EL/h9YX76wD5ovrtPGuWVXBJlAEmXHjBw==
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Alejandro Colomar <une+c@alejandro-colomar.es>
To: Vincent Lefevre <vincent@vinc17.net>
Cc: Joseph Myers <josmyers@redhat.com>, 
	C Committee <sc22wg14@open-std.org>, linux-man@vger.kernel.org, alx@kernel.org
Subject: Re: [SC22WG14.32615] alx-0051r0 - don't misuse reserved identifier
 'exp'
Message-ID: <3prvgte326ycehm6pugej727m7i4ytrgc4i5neaqsv3su5sqwg@33ti7mcvc6tv>
References: <20250714222434.4D926356820@www.open-std.org>
 <dddf118f-942d-328a-6a0c-e8e67a9f5c17@redhat.com>
 <20250724191011.GL4912@qaa.vinc17.org>
 <20250724201957.0D806356A06@www.open-std.org>
 <d2c61bb8-40bb-1457-12b6-9c751cc78404@redhat.com>
 <20250725004018.GA10840@joooj.vinc17.net>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20250725004018.GA10840@joooj.vinc17.net>
X-Migadu-Flow: FLOW_OUT

Hi Vincent,

On Fri, Jul 25, 2025 at 02:40:18AM +0200, Vincent Lefevre wrote:
> On 2025-07-24 21:59:48 +0000, Joseph Myers wrote:
> > On Thu, 24 Jul 2025, Alejandro Colomar wrote:
> > 
> > > > It is not too broad. A compiler may define the identifier as
> > > > a builtin. For instance... GCC! The following program fails
> > > > to compile (note that I do not even include <math.h>):
> > > > 
> > > > static int exp (void)
> > > > {
> > > >   return 1;
> > > > }
> > 
> > That's file scope, which is a context in which exp is reserved.  The 
> > proposed change was about function prototype scope, in which it's not 
> > reserved.
> 
> I don't see what you mean. But in any case the user's code will
> be in files.

'File scope' is specified in n3220 in 6.2.1p4:

	Every other identifier has scope determined by the placement of
	its declaration (in a declarator or type specifier).  If the
	declarator or type specifier that declares the identifier
	appears outside of any block or list of parameters, the
	identifier has file scope, which terminates at the end of the
	translation unit.  [...]

So file scope is mainly (non-nested) functions and global variables.

Joseph meant that 'exp' is reserved at file scope, so you can't create
a function named 'exp'.  However, 'exp' is used in the standard as a
name of function parameters, which is 'function prototype scope',
specified later in the same 6.2.1p4:

	[...]  If the declarator or type specifier that declares the
	identifier appears within the list of parameter declarations in
	a function prototype (not part of a function definition), the
	identifier has function prototype scope, which terminates at the
	end of the function declarator.

And 'exp' is not reserved for any use (it's not a potentially reserved
identifier.  It's a reserved identifier, which are only reserved for
certain purposes.  A 'potentially reserved' identifier is specified in
6.4.2.1p10:

	Some identifiers may be potentially reserved.  A potentially
	reserved identifier is an identifier which is not reserved
	unless made so by an implementation providing the identifier
	(7.1.3) but is anticipated to become reserved by an
	implementation or a future version of this document.  [...]

As we quoted, potentially reserved identifiers are reserved for any use,
and that would forbid use in function prototype scope.  However, 'exp'
is not a potentially reserved identifier.  It is a reserved identifier.
It is reserved by the text in 7.1.3p1, bullets 3 and 4 (I think):

	-- All identifiers with external linkage in any of the following
	subclauses (including the future library directions) and errno
	are always reserved for use as identifiers with external
	linkage.

	-- Each identifier with file scope listed in any of the
	following subclauses (including the future library directions)
	is reserved for use as a macro name and as an identifier with
	file scope in the same name space if any of its associated
	headers is included.

So, 'exp' is reserved for use in file scope and as an external
identifier, but not for other uses.


Have a lovely day!
Alex

-- 
<https://www.alejandro-colomar.es/>

