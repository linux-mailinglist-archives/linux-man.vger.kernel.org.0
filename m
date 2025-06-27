Return-Path: <linux-man+bounces-3216-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CDEC3AEAB9D
	for <lists+linux-man@lfdr.de>; Fri, 27 Jun 2025 02:12:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 29E47169217
	for <lists+linux-man@lfdr.de>; Fri, 27 Jun 2025 00:12:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D57B410FD;
	Fri, 27 Jun 2025 00:11:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=cwi.nl header.i=@cwi.nl header.b="qAiggwjh"
X-Original-To: linux-man@vger.kernel.org
Received: from fester.cwi.nl (fester.cwi.nl [192.16.191.27])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4889F1362;
	Fri, 27 Jun 2025 00:11:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.16.191.27
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750983118; cv=none; b=uhJpjs55B6ct3JIdJrBWyB6SulGWXgGdOzGES2yqLzk7JRZYjVSuo0cAfw3RNkQ78de2lIn4LeTgEubHwnXwNEy/OcyhZDuQIyKX2dP70AvznoLij4hQHLbq5HIXxpMiTCuVke1TADgcEKbBqN70hYtWM7XXxnfOyU8BhLnHL94=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750983118; c=relaxed/simple;
	bh=kIm8aXdacfqFY41xmjMNEfsCStCcPXinUrGP10cCRN4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bK9j4uZskDrh1PORZHqdXXfiAqx7gcgFWKBClC/dgw6EN4KxFXrTuY6H/xzeaxlQmDKL6IhBS/+I7WYhlI0FvWEyikDoE/898IOOp1zPy2rFTmByeDAhkrpRH70SJSuePlXbD8ZFDzH1Twrprg762rgyzK3WNHNsHih4j8j046Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cwi.nl; spf=pass smtp.mailfrom=cwi.nl; dkim=fail (1024-bit key) header.d=cwi.nl header.i=@cwi.nl header.b=qAiggwjh reason="signature verification failed"; arc=none smtp.client-ip=192.16.191.27
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cwi.nl
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cwi.nl
Received: from localhost (37-251-114-171.fixed.kpn.net [37.251.114.171])
	(authenticated bits=0)
	by fester.cwi.nl (8.15.2/8.15.2/Debian-14~deb10u1) with ESMTPSA id 55R08BcK024285
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
	Fri, 27 Jun 2025 02:08:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=cwi.nl; s=default;
	t=1750982891; bh=kIm8aXdacfqFY41xmjMNEfsCStCcPXinUrGP10cCRN4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=qAiggwjhNOADTkarcWjUJqW4BOpmBnYPtzMIMXsBipH388u+p84rWwscV0WlEJ/nk
	 MhtVh6ilHrIkPB66zDXbWdMdXWys2N2DTt8CTPgilEbFPLcoasKjK6fqLyoue981jN
	 S9pMcUagOzlFa5T1TSFIIIoZu7ZCXbgD+547wNsc=
Date: Fri, 27 Jun 2025 02:08:11 +0200
From: "Andries E. Brouwer" <aeb@cwi.nl>
To: Alejandro Colomar <alx@kernel.org>
Cc: "Carlos O'Donell" <carlos@redhat.com>, "Andries E. Brouwer" <aeb@cwi.nl>,
        linux-man@vger.kernel.org, linux-kernel@vger.kernel.org,
        libc-alpha@sourceware.org
Subject: Re: man-pages-6.14 released
Message-ID: <20250627000811.GB1598947@if>
References: <uidtufql6ftz72im7w6zggeihwhuwgnpxwb7j46fbp6ryvzv4i@cwyp6ewepeob>
 <20250509112627.GA924923@if>
 <bn2rs76dkhejmthy2wvul4ho26zzlwtkfg474ztiwggkxz7f3d@g25omktsd3ug>
 <20250509121454.GA952723@if>
 <3e82680d-149c-4a67-b838-bc73c0be3e4e@redhat.com>
 <e363mzanav4inu3wtk5pmyzfwlquxr5kwh7ytk5emtayizi7qi@dqxritlnl22g>
 <42dad79f-e0f2-4731-ac14-0189f5d278a0@redhat.com>
 <u2ogua4573d2xm2p2oiuna67kydkr3e26pt6lixeidezdw34dg@nvn64na3cptt>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <u2ogua4573d2xm2p2oiuna67kydkr3e26pt6lixeidezdw34dg@nvn64na3cptt>

On Fri, Jun 27, 2025 at 01:14:46AM +0200, Alejandro Colomar wrote:

> On Thu, Jun 26, 2025 at 07:01:24PM -0400, Carlos O'Donell wrote:

> > you need permission from the authors.
> > 
> > I disagree that man-pages should go forward with the current changes.
> > 
> > May you please restore the copyright notices and cut a new release?
> 
> Hmmm, it'll take some time.  I need to stop and compare the both lists,
> which are rather long.  I don't promise it will happen soon, but I'll
> keep it in a TODO list.  I'll also try to do it at least after
> September, when I'll be meeting Michael in person, where I'll ask him
> about his copyright notices (which represent a huge percentage of the
> copyright notice lines).  That will reduce the work significantly.
> So, it might happen around the end of this year.
> 
> Once I start doing that, I'll do another round of asking the remaining
> people about their copyright notices.  Hopefully, there'l l be few of
> them.


I think you are too sloppy.

Do you not recall the SCO saga?
There a big legal conflict arose over copyright ownership.
Something is still visible on https://en.wikipedia.org/wiki/SCO–Linux_disputes
Maybe this ancient matter has still not been completely settled.

Copyright is a legal matter, not something where convenience plays a role.
In principle you need permission of everyone involved, and not only that,
but you must be able to prove in court that everyone did give this permission.
So one needs written permission.
(And in what jurisdiction? Copyright details differ between countries.)
Some original copyright holders are no longer alive, and the rights
have been inherited.
Life is much easier if you regard those copyright sentences as fossils
carried over from earlier to later versions. And leave them verbatim.

Andries

