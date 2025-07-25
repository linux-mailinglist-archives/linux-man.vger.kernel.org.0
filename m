Return-Path: <linux-man+bounces-3298-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C989B11555
	for <lists+linux-man@lfdr.de>; Fri, 25 Jul 2025 02:40:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D54BF3A7BFB
	for <lists+linux-man@lfdr.de>; Fri, 25 Jul 2025 00:39:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 078021428E7;
	Fri, 25 Jul 2025 00:40:22 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from joooj.vinc17.net (joooj.vinc17.net [155.133.131.76])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D02F11CA9
	for <linux-man@vger.kernel.org>; Fri, 25 Jul 2025 00:40:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=155.133.131.76
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753404021; cv=none; b=XjBLYSA01/BPHLlc3N7X+/VyH+K3xyAifVi+DhFOytsOtriAhxVtHUzbHzSbx+givV0+zmx6A2Pew6FEipi6ri/W2DPaXBMebIij44VtnhMc9FC3Q8MRVk4VTjkh7R2AZw5YkgYtT8h36VAgtac6p5/3y70Igc91qGDnVf4HS74=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753404021; c=relaxed/simple;
	bh=4tPwe3w+lmH9jWUiozEK6qO4uGNgJSWg+wIoWBV0Yko=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=j8efrUV52i5nHdokTck9Ms4e/WXQLZHQUIFZ2srar2nF9uK7XvF9AnLBPB0IggArNQjZGuw9njVeshptoVWXKsaMUh6DbMfB3IWmqPT+jjITiTYbqCYCrSIlyEPnbkIu/E3QP5V7FLV2DCsJQvTjwaDF7s0YtlzH7gsSoJvcsrk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=vinc17.net; spf=pass smtp.mailfrom=vinc17.net; arc=none smtp.client-ip=155.133.131.76
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=vinc17.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=vinc17.net
Received: by joooj.vinc17.net (Postfix, from userid 1000)
	id 7226E3B9; Fri, 25 Jul 2025 02:40:18 +0200 (CEST)
Date: Fri, 25 Jul 2025 02:40:18 +0200
From: Vincent Lefevre <vincent@vinc17.net>
To: Joseph Myers <josmyers@redhat.com>
Cc: Alejandro Colomar <une+c@alejandro-colomar.es>,
	C Committee <sc22wg14@open-std.org>, linux-man@vger.kernel.org,
	alx@kernel.org
Subject: Re: [SC22WG14.32615] alx-0051r0 - don't misuse reserved identifier
 'exp'
Message-ID: <20250725004018.GA10840@joooj.vinc17.net>
References: <20250714222434.4D926356820@www.open-std.org>
 <dddf118f-942d-328a-6a0c-e8e67a9f5c17@redhat.com>
 <20250724191011.GL4912@qaa.vinc17.org>
 <20250724201957.0D806356A06@www.open-std.org>
 <d2c61bb8-40bb-1457-12b6-9c751cc78404@redhat.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <d2c61bb8-40bb-1457-12b6-9c751cc78404@redhat.com>
X-Mailer-Info: https://www.vinc17.net/mutt/
User-Agent: Mutt/2.2.13+86 (bb2064ae) vl-169878 (2025-02-08)

On 2025-07-24 21:59:48 +0000, Joseph Myers wrote:
> On Thu, 24 Jul 2025, Alejandro Colomar wrote:
> 
> > > It is not too broad. A compiler may define the identifier as
> > > a builtin. For instance... GCC! The following program fails
> > > to compile (note that I do not even include <math.h>):
> > > 
> > > static int exp (void)
> > > {
> > >   return 1;
> > > }
> 
> That's file scope, which is a context in which exp is reserved.  The 
> proposed change was about function prototype scope, in which it's not 
> reserved.

I don't see what you mean. But in any case the user's code will
be in files.

-- 
Vincent Lefèvre <vincent@vinc17.net> - Web: <https://www.vinc17.net/>
100% accessible validated (X)HTML - Blog: <https://www.vinc17.net/blog/>
Work: CR INRIA - computer arithmetic / Pascaline project (LIP, ENS-Lyon)

