Return-Path: <linux-man+bounces-2876-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 866F9AB143E
	for <lists+linux-man@lfdr.de>; Fri,  9 May 2025 15:02:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 38D91A23C07
	for <lists+linux-man@lfdr.de>; Fri,  9 May 2025 12:59:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4583D2920AA;
	Fri,  9 May 2025 12:58:21 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from cventin.lip.ens-lyon.fr (cventin.lip.ens-lyon.fr [140.77.13.17])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C5EF22A4D6;
	Fri,  9 May 2025 12:58:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=140.77.13.17
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746795501; cv=none; b=OWtT74Q8mv7kYgZTaU82Bpf4eI9I0tYivQVv++WBgdKEuLxnJBkJa+3aMW9nlsACx27+1E3Zjgk8Z7bbWN9L7ZWaBMGNWN85R64mhyu3oypiNaN6BI/fT/371ysF4ATmwah6soA3xFUmN1HQ+OOWVJCpVJNOXQdwIzFDUqCzDE4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746795501; c=relaxed/simple;
	bh=W5IN8KekiXhtsFvY8lSklWXRlcn4sRA+tLE3ZGCXS44=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Oo1qVZlsyL2naTs5uvryblQ0FJVoY7A0fvN+53cxTbn5jdXwSz4lPPjxV7NaUX9gSx62f1d0qYehEslxHXINjyvkTJc2tjxOlCXDSNuDVwM/dDlNpdQgGsFoRZb6iLrvxSFGK8FfPAzCjDBoUtvVCG4PBalnlotsfyJUSsl2uo4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=vinc17.net; spf=pass smtp.mailfrom=vinc17.net; arc=none smtp.client-ip=140.77.13.17
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=vinc17.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=vinc17.net
Received: from vlefevre by cventin.lip.ens-lyon.fr with local (Exim 4.98.2)
	(envelope-from <vincent@vinc17.net>)
	id 1uDN9R-0000000036V-1NWQ;
	Fri, 09 May 2025 14:48:29 +0200
Date: Fri, 9 May 2025 14:48:29 +0200
From: Vincent Lefevre <vincent@vinc17.net>
To: Alejandro Colomar <alx@kernel.org>
Cc: "Andries E. Brouwer" <aeb@cwi.nl>, linux-man@vger.kernel.org,
	linux-kernel@vger.kernel.org, libc-alpha@sourceware.org,
	"G. Branden Robinson" <branden@debian.org>,
	Carlos O'Donell <carlos@redhat.com>,
	Eugene Syromyatnikov <evgsyr@gmail.com>
Subject: Re: man-pages-6.14 released
Message-ID: <20250509124829.GD3017@cventin.lip.ens-lyon.fr>
Mail-Followup-To: Vincent Lefevre <vincent@vinc17.net>,
	Alejandro Colomar <alx@kernel.org>,
	"Andries E. Brouwer" <aeb@cwi.nl>, linux-man@vger.kernel.org,
	linux-kernel@vger.kernel.org, libc-alpha@sourceware.org,
	"G. Branden Robinson" <branden@debian.org>,
	Carlos O'Donell <carlos@redhat.com>,
	Eugene Syromyatnikov <evgsyr@gmail.com>
References: <uidtufql6ftz72im7w6zggeihwhuwgnpxwb7j46fbp6ryvzv4i@cwyp6ewepeob>
 <20250509112627.GA924923@if>
 <bn2rs76dkhejmthy2wvul4ho26zzlwtkfg474ztiwggkxz7f3d@g25omktsd3ug>
 <20250509121454.GA952723@if>
 <qghsrpxzxccbcuuctx56oq5xe7mtpkgljis7ovopr6ojmiz3js@vw5p5w7om4f4>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <qghsrpxzxccbcuuctx56oq5xe7mtpkgljis7ovopr6ojmiz3js@vw5p5w7om4f4>
X-Mailer-Info: https://www.vinc17.net/mutt/
User-Agent: Mutt/2.2.13+86 (bb2064ae) vl-169878 (2025-02-08)

Hi,

On 2025-05-09 14:28:23 +0200, Alejandro Colomar wrote:
> On Fri, May 09, 2025 at 02:14:54PM +0200, Andries E. Brouwer wrote:
> > Hi Alejandro,
> > 
> > > > I wonder about the legal status of such a change.
> > > > There is ownership of the pages, and a license that allows
> > > > others to do certain things.
> > > 
> > > I also wonder about it.  We discussed it for several (~3) months, and I
> > > documented links to the discussion in the commit message:
> > > 
> > > commit 9f2986c34166085225bb5606ebfd4952054e1657
> > > Author: Alejandro Colomar <alx@kernel.org>
> > > Date:   Fri Apr 11 02:19:48 2025 +0200
> > > 
> > >     *, CREDITS: Unify copyright notices
> > >     
> > >     Link: <https://lore.kernel.org/linux-man/jpin2dbnp5vpitnh7l4qmvkamzq3h3xljzsznrudgioox3nn72@57uybxbe3h4p/T/#u>
> > >     Link: <https://www.linuxfoundation.org/blog/blog/copyright-notices-in-open-source-software-projects>
> > 
> > So I read this last link, and see
> > 
> > "Don’t change someone else’s copyright notice without their permission
> > You should not change or remove someone else’s copyright notice unless
> > they have expressly (in writing) permitted you to do so. This includes
> > third parties’ notices in pre-existing code."
> 
> I understood that paragraph as not changing copyright notices from
> people unrelated to the project.

I don't think so. But IMHO, it would be OK to provide the old copyright
notices in an indirect way: put them in a different file and just give
a reference to this file, as long as this file is distributed together
with the man pages and can be found easily.

-- 
Vincent Lefèvre <vincent@vinc17.net> - Web: <https://www.vinc17.net/>
100% accessible validated (X)HTML - Blog: <https://www.vinc17.net/blog/>
Work: CR INRIA - computer arithmetic / Pascaline project (LIP, ENS-Lyon)

