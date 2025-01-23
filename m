Return-Path: <linux-man+bounces-2287-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B2538A1AD1B
	for <lists+linux-man@lfdr.de>; Fri, 24 Jan 2025 00:09:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id ADBC0188DC26
	for <lists+linux-man@lfdr.de>; Thu, 23 Jan 2025 23:09:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B49091CDA2D;
	Thu, 23 Jan 2025 23:09:32 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from queue02c.mail.zen.net.uk (queue02c.mail.zen.net.uk [212.23.3.242])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E240B139CEF;
	Thu, 23 Jan 2025 23:09:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=212.23.3.242
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737673772; cv=none; b=jO4sdJET7iGFnryJ+ypgxHd3nRH/snl0rRe+aZb8BdthOZDvbQfJbuxG43CX2rcJ06P13THB3ecknmcsmwjpIWtJAwDDCvZeHnabwSgYBGMvWHaMqy+F12DoM9t2ndfH8fS/AUcAe+GoV2VfFdnTfFfNLS3q3uYnPAXsqrUUHX8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737673772; c=relaxed/simple;
	bh=K/Af685oAWhv28+sGZFPMVsqwPV1BQztqfhmToFw55k=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=abJ3VgM7W7m8cpxXljiE9t12CwI6/KaV+7EaqKewA6glzRqxEivcAMuszMOr2u61UAcHAnhOzrCbK4b+DLAnPmVR8wyr0Zn0sgbL/ASWmCSfyBdCJWoPsuWKO/X9b2ZWrmn97hD+ivKd0Ioj3P1sUEF1LQkNSds6lYUer9ZXeiI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=chuzzlewit.myzen.co.uk; spf=pass smtp.mailfrom=chuzzlewit.myzen.co.uk; arc=none smtp.client-ip=212.23.3.242
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=chuzzlewit.myzen.co.uk
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chuzzlewit.myzen.co.uk
Received: from [212.23.1.3] (helo=smarthost01b.sbp.mail.zen.net.uk)
	by queue02c.mail.zen.net.uk with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.95)
	(envelope-from <deri@chuzzlewit.myzen.co.uk>)
	id 1tb64d-002hB0-R6;
	Thu, 23 Jan 2025 22:53:19 +0000
Received: from [82.71.22.80] (helo=pip.localnet)
	by smarthost01b.sbp.mail.zen.net.uk with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.95)
	(envelope-from <deri@chuzzlewit.myzen.co.uk>)
	id 1tb64H-00Eo1M-3o;
	Thu, 23 Jan 2025 22:53:04 +0000
From: Deri <deri@chuzzlewit.myzen.co.uk>
To: linux-man@vger.kernel.org, Alejandro Colomar <alx@kernel.org>,
 linux-kernel@vger.kernel.org
Subject: Re: man-pages-6.10 released
Date: Thu, 23 Jan 2025 22:53:04 +0000
Message-ID: <5879567.Si16P0KhqQ@pip>
In-Reply-To: <glkd5bliwzofuoevcr5uqxkkebrwnwfqxiea4dblnjjj24sl72@22f5lir52umy>
References: <glkd5bliwzofuoevcr5uqxkkebrwnwfqxiea4dblnjjj24sl72@22f5lir52umy>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Originating-smarthost01b-IP: [82.71.22.80]
Feedback-ID: 82.71.22.80

On Wednesday, 22 January 2025 22:26:48 GMT Alejandro Colomar wrote:
> Gidday!
> 
> I'm proud to announce:
> 
>         man-pages-6.10 - manual pages for GNU/Linux

Hi Alex,

I have noticed in recent releases using a newer version of groff, the overview 
panel was getting double entries. Here's a patch to fix it. 

================================================================================

diff --git a/share/mk/build/pdf/book/prepare.pl b/share/mk/build/pdf/book/
prepare.pl
index ef8c17b18..4620072ca 100755
--- a/share/mk/build/pdf/book/prepare.pl
+++ b/share/mk/build/pdf/book/prepare.pl
@@ -184,7 +184,7 @@ sub BuildPage
                                # Add a level two bookmark. We don't set it in 
the TH macro since the name passed
                                # may be different from the filename, i.e. 
file = unimplemented.2, TH = UNIMPLEMENTED 2
 
-                               print ".pdfbookmark -T $bkmark 2 $nm($sec)\n";
+                               print ".pdfhref M -N $bkmark\n";
 
                                next;
                        }

================================================================================

Cheers

Deri



