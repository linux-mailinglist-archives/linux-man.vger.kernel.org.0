Return-Path: <linux-man+bounces-3217-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AB8BAEABB9
	for <lists+linux-man@lfdr.de>; Fri, 27 Jun 2025 02:23:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2431917D59E
	for <lists+linux-man@lfdr.de>; Fri, 27 Jun 2025 00:23:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A575AC2EF;
	Fri, 27 Jun 2025 00:23:07 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from joooj.vinc17.net (joooj.vinc17.net [155.133.131.76])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B55212E5B;
	Fri, 27 Jun 2025 00:23:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=155.133.131.76
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750983787; cv=none; b=R9nYon1UpAdhzVg8PoAmv6Ba1hOg7/IYgEtJVjbsB9trqtMcnHztF/Jm5rrXJW6u3Ys3bK0HVuY+sbjbRdRWIvor7a9A1vockf4pmYUCgrSjIZUVNCxpzmoB8ymZJH0e6dVt2VCtKs0MKGPWZEiE1Lm2267OcWD/gJODRbrkRPU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750983787; c=relaxed/simple;
	bh=ARQyf+w3iW4Di+uKWvsWr3VefT5lXktN5+Vu3+WI1r0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rsOv/esJAgYEqdRi6yaas+Q1HxtjhkDyufTuDJ8ImZdNDkD8BFt6dMoWSvCx5jqcFNasr5RP3Z6v82aVaTaGzEr/1J5xvXn9uW7JnZAjLA1PQwNrk5H9/tkbTnwf7pdDKLopwHP1eFY2x2yeu+Hm4HLsCHT1QEpcenjLp3nhheQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=vinc17.net; spf=pass smtp.mailfrom=vinc17.net; arc=none smtp.client-ip=155.133.131.76
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=vinc17.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=vinc17.net
Received: from smtp-qaa.vinc17.net (2a02-8428-1b1d-4d01-96a9-491d-7b48-ba31.rev.sfr.net [IPv6:2a02:8428:1b1d:4d01:96a9:491d:7b48:ba31])
	by joooj.vinc17.net (Postfix) with ESMTPSA id 0E6285CF;
	Fri, 27 Jun 2025 02:20:13 +0200 (CEST)
Received: by qaa.vinc17.org (Postfix, from userid 1000)
	id 4A6E5CA045B; Fri, 27 Jun 2025 02:20:11 +0200 (CEST)
Date: Fri, 27 Jun 2025 02:20:11 +0200
From: Vincent Lefevre <vincent@vinc17.net>
To: Carlos O'Donell <carlos@redhat.com>
Cc: Alejandro Colomar <alx@kernel.org>, "Andries E. Brouwer" <aeb@cwi.nl>,
	linux-man@vger.kernel.org, linux-kernel@vger.kernel.org,
	libc-alpha@sourceware.org
Subject: Re: man-pages-6.14 released
Message-ID: <20250627002011.GA431181@qaa.vinc17.org>
Mail-Followup-To: Vincent Lefevre <vincent@vinc17.net>,
	Carlos O'Donell <carlos@redhat.com>,
	Alejandro Colomar <alx@kernel.org>,
	"Andries E. Brouwer" <aeb@cwi.nl>, linux-man@vger.kernel.org,
	linux-kernel@vger.kernel.org, libc-alpha@sourceware.org
References: <uidtufql6ftz72im7w6zggeihwhuwgnpxwb7j46fbp6ryvzv4i@cwyp6ewepeob>
 <20250509112627.GA924923@if>
 <bn2rs76dkhejmthy2wvul4ho26zzlwtkfg474ztiwggkxz7f3d@g25omktsd3ug>
 <20250509121454.GA952723@if>
 <3e82680d-149c-4a67-b838-bc73c0be3e4e@redhat.com>
 <e363mzanav4inu3wtk5pmyzfwlquxr5kwh7ytk5emtayizi7qi@dqxritlnl22g>
 <42dad79f-e0f2-4731-ac14-0189f5d278a0@redhat.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <42dad79f-e0f2-4731-ac14-0189f5d278a0@redhat.com>
X-Mailer-Info: https://www.vinc17.net/mutt/
User-Agent: Mutt/2.2.13+86 (bb2064ae) vl-169878 (2025-02-08)

On 2025-06-26 19:01:24 -0400, Carlos O'Donell wrote:
> On 6/26/25 5:04 PM, Alejandro Colomar wrote:
> > The thing is, as someone else mentioned, removals happen also implicitly

This was me, there:

https://lore.kernel.org/linux-man/u2ogua4573d2xm2p2oiuna67kydkr3e26pt6lixeidezdw34dg@nvn64na3cptt/T/#me71349fc15520d5c183311dfaf85667903c07d9d

> > by moving text from one page to another and not copying copyright
> > notices, so how much does it matter an intentional rewrite of the
> > copyright notices into a different form (but which keeps their
> > copyright, as part of the AUTHORS file), compared to an unintentional
> > removal of copyright by moving the text (these do actually remove
> > copyright, so these are the problematic ones).
> 
> Both are legally mistakes.

Mistakes, yes (as long as copyright notices are per-file).
But legally? Why?

I've always heard that a copyright notice was optional and only
informative (so, in particular, there are no requirements to have
per-file copyright notices instead of a single one for the work).

-- 
Vincent Lefèvre <vincent@vinc17.net> - Web: <https://www.vinc17.net/>
100% accessible validated (X)HTML - Blog: <https://www.vinc17.net/blog/>
Work: CR INRIA - computer arithmetic / Pascaline project (LIP, ENS-Lyon)

