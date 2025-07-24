Return-Path: <linux-man+bounces-3295-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3720EB11173
	for <lists+linux-man@lfdr.de>; Thu, 24 Jul 2025 21:12:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 864C8AA6649
	for <lists+linux-man@lfdr.de>; Thu, 24 Jul 2025 19:12:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DD5A82EA723;
	Thu, 24 Jul 2025 19:12:26 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from joooj.vinc17.net (joooj.vinc17.net [155.133.131.76])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2505C2ECD3E
	for <linux-man@vger.kernel.org>; Thu, 24 Jul 2025 19:12:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=155.133.131.76
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753384346; cv=none; b=A6PAsP/3cPcV1cOps3HqFgbj/fcZxCdCC+7GtxuE9Qi3kzstkOtLxOzdTs+MOkkY0f88wQ/vn/yQxQj2dASiMp5ciOGDSv2Zgwiaqi6udJ0ejcAp61DZVO5MR1cv9VygXdxobVqBgTY5fViaI1vEjnDPDVRlcdjnT6H++X6yxBI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753384346; c=relaxed/simple;
	bh=z44KajWXzSIn1CWVjfEZpWIF5Lc++oyYD5Vnaju+q4M=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fJVwXRKLw2+6K8PHe0TIxyAuGpbkgF33chAmgCtEDTs433A9lxXlFs9TKYDw3bGqfT3Oi2ZSFySID6gm82F32bT1t8Rz24/U8Pxqktzt7sxB+vLdUU8eNaPsKHN8tK5EO1t1+PpyotneaBiqDwWaSZ8uqJpZ6hUyEeRy05uFvmI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=vinc17.net; spf=pass smtp.mailfrom=vinc17.net; arc=none smtp.client-ip=155.133.131.76
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=vinc17.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=vinc17.net
Received: from smtp-qaa.vinc17.net (unknown [78.246.183.34])
	by joooj.vinc17.net (Postfix) with ESMTPSA id 07EFA4E0;
	Thu, 24 Jul 2025 21:10:12 +0200 (CEST)
Received: by qaa.vinc17.org (Postfix, from userid 1000)
	id 28DB2CA0082; Thu, 24 Jul 2025 21:10:11 +0200 (CEST)
Date: Thu, 24 Jul 2025 21:10:11 +0200
From: Vincent Lefevre <vincent@vinc17.net>
To: Joseph Myers <josmyers@redhat.com>
Cc: Alejandro Colomar <une+c@alejandro-colomar.es>,
	C Committee <sc22wg14@open-std.org>, linux-man@vger.kernel.org,
	alx@kernel.org
Subject: Re: [SC22WG14.32341] alx-0051r0 - don't misuse reserved identifier
 'exp'
Message-ID: <20250724191011.GL4912@qaa.vinc17.org>
References: <20250714222434.4D926356820@www.open-std.org>
 <dddf118f-942d-328a-6a0c-e8e67a9f5c17@redhat.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <dddf118f-942d-328a-6a0c-e8e67a9f5c17@redhat.com>
X-Mailer-Info: https://www.vinc17.net/mutt/
User-Agent: Mutt/2.2.13+86 (bb2064ae) vl-169878 (2025-02-08)

On 2025-07-24 18:33:47 +0000, Joseph Myers wrote:
> On Tue, 15 Jul 2025, Alejandro Colomar wrote:
> 
> > Rationale
> > 	Since 'exp' is a library function, it is a reserved identifier,
> > 	which should not be used as a variable / parameter name.
> 
> It's only reserved with external linkage and file scope, and as a macro 
> name.  (It might still be less confusing to avoid usage in these other 
> contexts.)

The important point is:

> > 	7.1.3p1 says
> > 
> > 		All potentially reserved identifiers (...) that are
> > 		provided by an implementation with an external
> > 		definition are reserved for any use.
> 
> It's not "potentially reserved", but indeed "any use" seems too broad in 
> that wording compared to the wording for actually reserved identifiers, 
> which is more specific depending on the precise nature of how the 
> identifier is defined.

It is not too broad. A compiler may define the identifier as
a builtin. For instance... GCC! The following program fails
to compile (note that I do not even include <math.h>):

static int exp (void)
{
  return 1;
}

int foo (void)
{
  return exp ();
}

tst.c:1:12: warning: conflicting types for built-in function ‘exp’; expected ‘double(double)’ [-Wbuiltin-declaration-mismatch]
    1 | static int exp (void)
      |            ^~~
tst.c:1:1: note: ‘exp’ is declared in header ‘<math.h>’
  +++ |+#include <math.h>
    1 | static int exp (void)

-- 
Vincent Lefèvre <vincent@vinc17.net> - Web: <https://www.vinc17.net/>
100% accessible validated (X)HTML - Blog: <https://www.vinc17.net/blog/>
Work: CR INRIA - computer arithmetic / Pascaline project (LIP, ENS-Lyon)

