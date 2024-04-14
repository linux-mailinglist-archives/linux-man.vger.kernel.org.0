Return-Path: <linux-man+bounces-754-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C855A8A42B2
	for <lists+linux-man@lfdr.de>; Sun, 14 Apr 2024 15:58:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7E914281566
	for <lists+linux-man@lfdr.de>; Sun, 14 Apr 2024 13:58:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 328D24F8BC;
	Sun, 14 Apr 2024 13:58:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ljabl.com header.i=@ljabl.com header.b="T4oWe/mt"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.ljabl.com (mail.ljabl.com [88.99.6.227])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD1831E898
	for <linux-man@vger.kernel.org>; Sun, 14 Apr 2024 13:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=88.99.6.227
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713103098; cv=none; b=Vng/SZ3ZzDlR20ntW4W6BPJvEKrJ5i4ufcLi6K8e6tNPwX0bKhT2bM5MAs24RiZpHBtp/0n7imAmtZXG5gcT6KUsLTCviHXRhz90vs/xccKs82uMeXfiseP0pyAoY/J1e4u/JYvW16n5ZgvyL1cJLlJ3LjXQ3mYgWOy1d1gpNrw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713103098; c=relaxed/simple;
	bh=0il4a2T6ARJNqAcvH76RENCexW3iq6HXo5xd07yDn7w=;
	h=Date:From:To:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=EW7nfvLJ/dYUzgK00adUE+p8p1p/Y0nvPB+K8FhKsuBWTe/BKvSJ25fEPfvxGuyKIHGmoLYPaii3Np2E1gqXrywkGVUTzxghdRQailFJQj6q1TH7Uhd4w3qrHxqMbIKQWykTg1n+03rGQcbVcUUlwPD48fDkhzwLSoFAKs4TdCk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ljabl.com; spf=pass smtp.mailfrom=ljabl.com; dkim=pass (1024-bit key) header.d=ljabl.com header.i=@ljabl.com header.b=T4oWe/mt; arc=none smtp.client-ip=88.99.6.227
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ljabl.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ljabl.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ljabl.com; s=20220906;
	t=1713102694;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=LxjSUBu+OrVJJhnj3oL5bI23vjMyC9CS0Idz1RlKBH0=;
	b=T4oWe/mtGfrG7ibw+E5S3MCxOhnd2RUBHyiP88cocpzx6BSCtjjiiQvJfZQu037GMX6Abj
	VFAm2XNPB0ZrY17dzyMuXpMXhHqSlrRq9QgGIRGqiGjwQnR+WLInoI6PuMhWdmsERu9DIs
	IUOYXu2oMeGnc7TtzW1bK5I3Ajn+ads=
Received: 
	by ljabl.com (OpenSMTPD) with ESMTPSA id 8f8b3f29 (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO);
	Sun, 14 Apr 2024 13:51:34 +0000 (UTC)
Received: 
	by fluorine (OpenSMTPD) with ESMTPA id 0a9b3587;
	Sun, 14 Apr 2024 15:51:34 +0200 (CEST)
Date: Sun, 14 Apr 2024 13:51:33 +0000
From: Lennart Jablonka <humm@ljabl.com>
To: Keith Marshall <keith.d.marshall@ntlworld.com>,
	linux-man@vger.kernel.org, Alejandro Colomar <alx@kernel.org>
Subject: Re: man page style conventions
Message-ID: <ZhvfZTXkwbun_tkR@fluorine>
Mail-Followup-To: Keith Marshall <keith.d.marshall@ntlworld.com>,
	linux-man@vger.kernel.org, Alejandro Colomar <alx@kernel.org>
References: <bcc2e2ec-32af-4254-a2c9-1884f28af407@ntlworld.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <bcc2e2ec-32af-4254-a2c9-1884f28af407@ntlworld.com>
Content-Language: en-US
X-Clacks-Overhead: GNU Terry Pratchett

Quoth Keith Marshall:
>In my personal opinion, FWIW, the use of italics in this context is just
>plain ugly.  Opinion aside, it does not conform to the convention, as it
>is stated in man-pages(7) -- either the convention needs to be changed,
>by common consent, or groff_man(7) needs to be brought to heel.

In addition to what Alex and Branden said, I will note that 
man-pages(7) contains this at the very beginning:

>This page describes the conventions that should be employed when 
>writing man pages for the Linux man-pages project, which 
>documents the user-space API provided by the Linux kernel and the 
>GNU C library.  The project thus provides most of the pages in 
>Section 2, many of the pages that appear in Sections 3, 4, and 7, 
>and a few of the pages that appear in Sections 1, 5, and 8 of the 
>man pages on a Linux system.  The conventions described on this 
>page may also be useful for authors writing man pages for other 
>projects.

man-pages(7) is pretty much prescriptive for the linux-man-pages 
project.  It is also something likely to be seen by someone 
wanting to learn how to write a man page, but it still is 
independent of what Groff does.  There exist different conventions 
for how to write man pages.  The <opinion>obviously traditionally 
correct</opinion> way of referring to other man pages is with 
explicit italics; the new Groff way is to use .MR; the 
linux-man-pages way is to embolden the title.

groff_man(7) conforms to the conventions—to /its/ conventions.  
The discrepancy between man-pages(7) and groff_man(7) does not 
imply that either has to change.

But yes, in my opinion, man-pages(7) should change.  I think it 
should probably go away, or stay inside the linux-man-pages 
repository, not getting installed.  It is, after all, 
linux-man-pages-specific and groff_man_style(7) exists.

Or it could be renamed.  linux-man-pages(7).  
linux-man-pages-man-pages(7).

