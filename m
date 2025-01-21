Return-Path: <linux-man+bounces-2280-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id BCA06A17EF4
	for <lists+linux-man@lfdr.de>; Tue, 21 Jan 2025 14:39:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 07C90169CEE
	for <lists+linux-man@lfdr.de>; Tue, 21 Jan 2025 13:39:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E807D1F2398;
	Tue, 21 Jan 2025 13:39:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=jasonyundt.email header.i=@jasonyundt.email header.b="F+3b3pK9"
X-Original-To: linux-man@vger.kernel.org
Received: from box.jasonyundt.email (box.jasonyundt.email [104.248.224.157])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 695991E4113
	for <linux-man@vger.kernel.org>; Tue, 21 Jan 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=104.248.224.157
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737466795; cv=none; b=R179dMN4uwyrtlpZGt989aq4yhlBcfUt7D+cyEHYwS/gLejwZAP7CS3L461/o+w5yArWqK4plNASXr3ymRNurqmT/jDk9Ld47KgKjEawjIWD0nZh0dOpau/h7gvcsQ7iBg4OZ+V7hayDRplnhRO2JUrDvGACQhQTP8i8NzPiJ/g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737466795; c=relaxed/simple;
	bh=LKZojf1oEwDm7Acz7twOHYLWxnCQAdFvlnWI4XhG8gw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=mxYyfoLz4S2DqJn116XcnmXHKHliOAnXBEI/iUFGZWK3Um97mGQzF+IPjUrz6dvIfkWJeXsvPRqIOAMnz55vea5AjDfAtgasPB+tgt1kcTQ7GeFzCxO14ym3SowvC2RJ7RucHNlP7TwpdANJB2OAi9YHX4A6SMmmVKH4U0vQjnk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=jasonyundt.email; spf=pass smtp.mailfrom=jasonyundt.email; dkim=pass (2048-bit key) header.d=jasonyundt.email header.i=@jasonyundt.email header.b=F+3b3pK9; arc=none smtp.client-ip=104.248.224.157
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=jasonyundt.email
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=jasonyundt.email
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=jasonyundt.email;
	s=mail; t=1737466791;
	bh=LKZojf1oEwDm7Acz7twOHYLWxnCQAdFvlnWI4XhG8gw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=F+3b3pK9emncTGtVEa8ggt6k++0e9gcjB8qqqsgetbkKoGMrRbl1Hx1ZvK3SHS5A1
	 jNa35WD3eJpi1MEZgEIJbVgQn6/Ln/ZmVl3JXsLBeWPDwf25gKY4zzD4uyjl4OgkKp
	 Y82GW1f+Nr0NPMwq0yPuDNmNVB30rSqsQPqj7IWaIWbHsTKg2oIR+O7W04ps/wlLHa
	 4ENDkUlZ3+StrSmKySvFWQDElz2ghas9rLUpcvbQPoRLO+3M2KxSdgpNLPJXQpFDtU
	 UiXywuMAmkJU9SgjIOEV/r6SimF28mUi1e9p1oDaSZ9KQVYLbEJag+8huCvp3ctuTE
	 7oSbPVFJSOGnA==
Received: from authenticated-user (box.jasonyundt.email [104.248.224.157])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by box.jasonyundt.email (Postfix) with ESMTPSA id A6C6781AE3;
	Tue, 21 Jan 2025 08:39:51 -0500 (EST)
Date: Tue, 21 Jan 2025 08:39:49 -0500
From: Jason Yundt <jason@jasonyundt.email>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org
Subject: Re: C code style for Linux man-pages examples (was: [PATCH v9]
 man/man7/pathname.7: Add file documenting format of pathnames)
Message-ID: <bqkuyafavn4nc5rxscv6im3xbnlyzgmgnzr5hq5dlmfbnnrdtg@czqoi35pfkiu>
References: <20250113213301.410280-1-jason@jasonyundt.email>
 <20250120190632.127206-1-jason@jasonyundt.email>
 <ut6qefo7rakabqpov6ukc32eq527cfiaybbtcb5mpccvwusfp3@gqvy4xllcuc5>
 <20250121002606.k2vwusrmy6hwqm4y@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250121002606.k2vwusrmy6hwqm4y@illithid>

On Mon, Jan 20, 2025 at 06:26:06PM -0600, G. Branden Robinson wrote:
> This style of feedback is producing a lot of churn.  Jason's going to be
> well into the v-teens before this patch is accepted, at this rate.
> 
> It appears to me that what is happening here is that you are iteratively
> developing a C code style guide under the banner of a man page review.
> If Jason's okay with being the test subject for this procedure, then
> there's not exactly a problem here, but if it were me submitting a man
> page, I'd be getting frustrated by (or before) this point.  I just "git
> pulled" https://git.kernel.org/pub/scm/docs/man-pages/man-pages/ and
> checked "./man/man7/man-pages.7", and practically _none_ of the rules
> you've been stating to Jason is expressed there.
> 
> I propose that the submissions of patches to the Linux man-pages not be
> a black-box process, with you serving as the oracle that accepts or
> rejects the input.  I admit you're offering a bit more information than
> a binary semaphore (ACCEPT/REJECT), but still, it would be better if
> Jason, and others, had a "Linux man-pages example C code style guide"
> document they could consult so that they could anticipate more of your
> objections.
> 
> If the construction of such a document is what this precise instance of
> the process is groping toward, good.  If not, then I suggest that it's
> about time to prepare that document.
> 
> I don't dispute that having a consistent style for code examples in the
> Linux man-page corpus is worthwhile; I do think it will, ultimately, pay
> dividends to harried hackers in a hurry.  But it is precisely to the
> extent that style guidelines are arbitrary that they need to be
> documented and easily located.

Thank you for standing up for me here, Branden.  I am going to continue
the back and forth with Alex, but I am frustrated by the process.  It
does indeed feel like a black-box process.  I would have much preferred
it if Alex had given me as many feedback points as possible each time.
I really dislike it when I receive feedback and think to myself “I could
have fixed this all the way back in v6.  Why wasn’t I told this
earlier?”

I agree that having a “Linux man-pages example C code style guide” would
be good.  Alex said in another email “I'm just not looking at all the
code at once, because it was highly unreadable.”  It was impossible for
me to produce code that was not highly unreadable to Alex.  I say that
because readability is in the eye of the beholder.  When I first created
the example program, I did many things to try and make my code as
readable as possible.  What I’m discovering now is that most of the
things that I did made the code more readable for me and less readable
for Alex.  If there had been a “Linux man-pages example C code style
guide” document, then I would have produced code that was more readable
to Alex to begin with and I wouldn’t have been frustrated by the
process.

