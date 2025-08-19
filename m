Return-Path: <linux-man+bounces-3493-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FDB7B2C10B
	for <lists+linux-man@lfdr.de>; Tue, 19 Aug 2025 13:49:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D782A726DC8
	for <lists+linux-man@lfdr.de>; Tue, 19 Aug 2025 11:46:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1113632C330;
	Tue, 19 Aug 2025 11:46:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=treblig.org header.i=@treblig.org header.b="iq8LfMxp"
X-Original-To: linux-man@vger.kernel.org
Received: from mx.treblig.org (mx.treblig.org [46.235.229.95])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C336232C302
	for <linux-man@vger.kernel.org>; Tue, 19 Aug 2025 11:46:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=46.235.229.95
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755603972; cv=none; b=bX5JoeChd1E3ojpn29ztJ3uCsglBOYi132gmpASy3IKKruGR8pis0Kw9K3PSTVRuHeN748sAm1bEL77JtElnHOD8yGk/TSXve9M0taSNhZZTkzuoZRd3BOLJ8UIY2bGlaEkzmGaie32OYXRsrSFtwF5xpp/Ec0CJEpdPijfTaH0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755603972; c=relaxed/simple;
	bh=zwG6TYcONn62VNuuzejojCif7yI9ouZbteiUH733KxU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZLmZ93foSf9IaZ8LsO7UsYXoQYth6zXdyPNZg/ow7hQ3/y5cCFBZRVPAiwgcvDnZ5rZI/kKa3t5CgWRaJ1JOff2KKSDMrJplNI1SETAe1yLxBppIgq+UHzSkQ4SsDRrECbu0ZkFJYO8PbUR6ru4M+rABXuzFYbhu1alJhekzPCk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=treblig.org; spf=pass smtp.mailfrom=treblig.org; dkim=pass (2048-bit key) header.d=treblig.org header.i=@treblig.org header.b=iq8LfMxp; arc=none smtp.client-ip=46.235.229.95
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=treblig.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=treblig.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=treblig.org
	; s=bytemarkmx; h=Content-Type:MIME-Version:Message-ID:Subject:From:Date:From
	:Subject; bh=AVPq94WOEf8PFZ3xNLzknAa3Qbs78KACnfgAsPDKp54=; b=iq8LfMxpVUMfb3HD
	TgtSMGd/w0/LSEM0OeZ55reE5rnCbPFJCBLC5x4Ca3JySHH9F415AYaNk17Ir27mHwW44jjPoBi2d
	m6vVt5sgEc1jviAyzCd83ENjFALdn1axphSNw6+1JCzZENtwJx0GdHn6pYGZa4bnUs03C1lRKbDBd
	mke1/bL0EgMVWInS6n/otOQsFw+JKqyHxVM4LszsUxH84G3V5PkWxn1mfCgMOWjVBJQcSXmm56LLq
	D7kEOlhECUP/eDLfL41ngM0uqg958Hvux8719I7DzuJlfRJYwWQZn7uuJ4kMqlNjCr1y73NUKWSOX
	QKE/jAWAIlC8kuMwsg==;
Received: from dg by mx.treblig.org with local (Exim 4.96)
	(envelope-from <dg@treblig.org>)
	id 1uoKn1-004wnq-3C;
	Tue, 19 Aug 2025 11:46:07 +0000
Date: Tue, 19 Aug 2025 11:46:07 +0000
From: "Dr. David Alan Gilbert" <dave@treblig.org>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v2] man/man3/strftime.3: Check parameter
Message-ID: <aKRj_-jnlO_BxWHr@gallifrey>
References: <20250818174553.70132-1-dave@treblig.org>
 <sa3mkaxgskcwrma3g7chd6d2bokswwk6i32bn74ueca3qr7f63@tn4ddlmihqon>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
In-Reply-To: <sa3mkaxgskcwrma3g7chd6d2bokswwk6i32bn74ueca3qr7f63@tn4ddlmihqon>
X-Chocolate: 70 percent or better cocoa solids preferably
X-Operating-System: Linux/6.1.0-34-amd64 (x86_64)
X-Uptime: 11:43:20 up 113 days, 19:56,  1 user,  load average: 0.00, 0.00,
 0.01
User-Agent: Mutt/2.2.12 (2023-09-09)

* Alejandro Colomar (alx@kernel.org) wrote:
> Hi Dave,
> 
> On Mon, Aug 18, 2025 at 06:45:53PM +0100, dave@treblig.org wrote:
> > From: "Dr. David Alan Gilbert" <dave@treblig.org>
> > 
> > The strftime example requires a format paramter.  If you don't
> > pass one it crashes.
> > Check for the parameter.
> > 
> > Signed-off-by: Dr. David Alan Gilbert <dave@treblig.org>
> 
> Thanks!  I've applied the patch.  (But see some minor comment below.)

Thanks!
Is that something that I can spot locally?
Since I seem to be working my way through the set checking most of the
examples, I'm probably going to be posting some more so I should
get the checks running.

I'm trying to run:
   make -R lint build-all check

but it seems to be missing 'checkpatch' and I'm not sure which checkpatch
that is. (I'm on Fedora 42).

Dave

> 
> Have a lovely day!
> Alex
> 
> > ---
> >  v2
> >     Use a more standard Usage: format.
> > 
> >  man/man3/strftime.3 | 5 +++++
> >  1 file changed, 5 insertions(+)
> > 
> > diff --git a/man/man3/strftime.3 b/man/man3/strftime.3
> > index 4a3f805bb..a27dfd01b 100644
> > --- a/man/man3/strftime.3
> > +++ b/man/man3/strftime.3
> > @@ -739,6 +739,11 @@ .SS Program source
> >      char outstr[200];
> >      time_t t;
> >      struct tm *tmp;
> > +\&
> > +    if (argc != 2) {
> > +        fprintf(stderr,"Usage: %s: <format\-string>\[rs]n", argv[0]);
> 
> CI detected some issue in this line of code:
> 
> 	remote: .tmp/man/man3/strftime.3.d/strftime.c:14:  Missing space after ,  [whitespace/comma] [3]
> 
> I've amended it with a space.
> 
> > +        exit(EXIT_FAILURE);
> > +    }
> >  \&
> >      t = time(NULL);
> >      tmp = localtime(&t);
> > -- 
> > 2.50.1
> > 
> 
> -- 
> <https://www.alejandro-colomar.es/>


-- 
 -----Open up your eyes, open up your mind, open up your code -------   
/ Dr. David Alan Gilbert    |       Running GNU/Linux       | Happy  \ 
\        dave @ treblig.org |                               | In Hex /
 \ _________________________|_____ http://www.treblig.org   |_______/

