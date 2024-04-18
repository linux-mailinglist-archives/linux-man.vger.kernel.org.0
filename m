Return-Path: <linux-man+bounces-785-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 15C888A9D78
	for <lists+linux-man@lfdr.de>; Thu, 18 Apr 2024 16:46:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BFBF21F22FB2
	for <lists+linux-man@lfdr.de>; Thu, 18 Apr 2024 14:46:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D26EF168AFE;
	Thu, 18 Apr 2024 14:46:13 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from queue02b.mail.zen.net.uk (queue02b.mail.zen.net.uk [212.23.3.237])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22CC0168AF3
	for <linux-man@vger.kernel.org>; Thu, 18 Apr 2024 14:46:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=212.23.3.237
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713451573; cv=none; b=Zf73rYm37Y7A+2W2ckgTgTOWfe3ocZ6EpuOohw8ToBW2lrQou9SGFGx+zbX57c3bUi239gfGZBt7orj05gGNtmGe9PXGi3KAwCYqFYPn7X1z23T0AqGt3xOIvkKYuanXTzPjyHRUFbS0Q+9equ54tRZO05hlhaspj9qM+KZVUWk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713451573; c=relaxed/simple;
	bh=RJhQ+Rp+XX7bd+5Sqq/nFCjXmYHEfsWPA6+y3H2fjHk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=HpVs4RXcPRRaaqD488SnwvdZnJmNsgeoA5OkPUJ79a9Kz1BuLwy68FKbgEjYZiKnhOE+E3Jv98twsjECfvRL/r5ksNY+b5bLNfOfAcULnM/fEdrMXnMillEDo7NOLawknm/l7RHhJaW2duOExpdKx/P+1TOCNRnnmN8HBj+inMM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=chuzzlewit.myzen.co.uk; spf=pass smtp.mailfrom=chuzzlewit.myzen.co.uk; arc=none smtp.client-ip=212.23.3.237
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=chuzzlewit.myzen.co.uk
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chuzzlewit.myzen.co.uk
Received: from [212.23.1.22] (helo=smarthost01c.ixn.mail.zen.net.uk)
	by queue02b.mail.zen.net.uk with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.95)
	(envelope-from <deri@chuzzlewit.myzen.co.uk>)
	id 1rxT1b-002kuO-Il
	for linux-man@vger.kernel.org;
	Thu, 18 Apr 2024 14:46:07 +0000
Received: from [82.71.22.80] (helo=pip.localnet)
	by smarthost01c.ixn.mail.zen.net.uk with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.95)
	(envelope-from <deri@chuzzlewit.myzen.co.uk>)
	id 1rxT1M-002dkS-Ml;
	Thu, 18 Apr 2024 14:45:56 +0000
From: Deri <deri@chuzzlewit.myzen.co.uk>
To: Alejandro Colomar <alx@kernel.org>
Cc: "G. Branden Robinson" <g.branden.robinson@gmail.com>,
 linux-man@vger.kernel.org
Subject: Re: Linux man-pages PDF book
Date: Thu, 18 Apr 2024 15:45:56 +0100
Message-ID: <9890752.ZfhPSjipvH@pip>
In-Reply-To: <ZiBy6F3OchYbRyoj@debian>
References:
 <Zhu_-FE5sl3vSu1w@debian> <9708362.ozD36m3ToO@pip> <ZiBy6F3OchYbRyoj@debian>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Originating-smarthost01c-IP: [82.71.22.80]
Feedback-ID: 82.71.22.80

On Thursday, 18 April 2024 02:09:59 BST Alejandro Colomar wrote:
> On Thu, Apr 18, 2024 at 01:26:28AM +0100, Deri wrote:
> > Hi Alex,
> 
> Hi Deri,
> 
> > While testing I used a document just using the debian TinosR font, no
> > problem. Issue occurs when both types of font are used in one document. I
> > have now pushed the fix to groff. Please try again.
> 
> Thanks!  It works now.  How can I use Debian's TinosR font?  Where is it?
> 
> Have a lovely night!
> Alex

Hi Alex,

I was referring to the debian package texlive-extra-fonts (or something 
similar) which contains the Tinos fonts in .pfb format. Google's font download 
site only offers the font as a .ttf which I installed using the install-
fonts.sh script you have been told about, which uses fontforge and afmtodit to 
create the Tinos.pfb and TINOR files, and installs them in a suitable place 
for groff to use.

Cheers 

Deri




