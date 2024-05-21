Return-Path: <linux-man+bounces-965-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 099CD8CAD7C
	for <lists+linux-man@lfdr.de>; Tue, 21 May 2024 13:40:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 8B9CAB22B11
	for <lists+linux-man@lfdr.de>; Tue, 21 May 2024 11:40:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2FB8173535;
	Tue, 21 May 2024 11:40:37 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from joooj.vinc17.net (joooj.vinc17.net [155.133.131.76])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87D596CDA9
	for <linux-man@vger.kernel.org>; Tue, 21 May 2024 11:40:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=155.133.131.76
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716291637; cv=none; b=JHe+g2ays8i8Nb7ga2kOxa9f6k4ARYFksY/okZkBpoF+y3LlzO1FCUuBtLN5de6BBGIxtxDTglqebGa8IEzrDU+9/f0j6jj4c7ZZXywyp1BMXX4LHCOHpWGZGI60erbcIqs9J6EZz5LyUvrUcMcQmo1LqGelXHUVczTfj5ntLzo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716291637; c=relaxed/simple;
	bh=2Acy4J6clMMOhsHBDwwmnrvvU0HHY1nGOSMj8SSxrY4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=VN7lOz6iVzlIIS/COvztxrGjyRnl1Q9SZUmqlV7DRZcmsEsMqMQ0+E9wBU1333Ttc2uNxZX8rue2ujYXrb+H2pTyS0thj59oOywRvNSYUnITqZ6Emr9/aSXlbzwanf94ZvO0kOOE+HXZyVxFTLxD763UXPTD4i+Rb6tM2KemBcU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=vinc17.net; spf=pass smtp.mailfrom=vinc17.net; arc=none smtp.client-ip=155.133.131.76
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=vinc17.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=vinc17.net
Received: from smtp-qaa.vinc17.net (2a02-8428-1b1d-4d01-96a9-491d-7b48-ba31.rev.sfr.net [IPv6:2a02:8428:1b1d:4d01:96a9:491d:7b48:ba31])
	by joooj.vinc17.net (Postfix) with ESMTPSA id 61552487;
	Tue, 21 May 2024 13:40:33 +0200 (CEST)
Received: by qaa.vinc17.org (Postfix, from userid 1000)
	id 1CA95CA011C; Tue, 21 May 2024 13:40:33 +0200 (CEST)
Date: Tue, 21 May 2024 13:40:33 +0200
From: Vincent Lefevre <vincent@vinc17.net>
To: Alejandro Colomar <alx@kernel.org>
Cc: libc-alpha@sourceware.org, Eric Blake <eblake@redhat.com>,
	linux-man@vger.kernel.org
Subject: Re: LINE_MAX
Message-ID: <20240521114033.GI2665@qaa.vinc17.org>
Mail-Followup-To: Vincent Lefevre <vincent@vinc17.net>,
	Alejandro Colomar <alx@kernel.org>, libc-alpha@sourceware.org,
	Eric Blake <eblake@redhat.com>, linux-man@vger.kernel.org
References: <qjp55g4oisyltajr4hckjgqjfbfwx7w5jwfgpeuqhdghppxrft@khoxlratj7kl>
 <20240520222658.GG2665@qaa.vinc17.org>
 <6wyb3mkthtzlyknwasft2fwolujrpeldsw272eqppdsv5qwxcq@mzvxfyd6epoh>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <6wyb3mkthtzlyknwasft2fwolujrpeldsw272eqppdsv5qwxcq@mzvxfyd6epoh>
X-Mailer-Info: https://www.vinc17.net/mutt/
User-Agent: Mutt/2.2.13+76 (1f3da810) vl-167818 (2024-04-20)

On 2024-05-21 12:08:13 +0200, Alejandro Colomar wrote:
> On Tue, May 21, 2024 at 12:26:58AM GMT, Vincent Lefevre wrote:
> > See thread "fgets/strtok and LINE_MAX" I started on 2009-09-21
> > in the Austin Group mailing-list. It is available on gmane:
> > 
> > Path: news.gmane.org!not-for-mail
> > From: Vincent Lefevre <vincent-opgr-opTGSl+ZDNkdnm+yROfE0A@public.gmane.org>
> > Newsgroups: gmane.comp.standards.posix.austin.general
> > Subject: fgets/strtok and LINE_MAX
> > Date: Mon, 21 Sep 2009 01:03:13 +0200
> > Lines: 31
> > Approved: news@gmane.org
> > Message-ID: <20090920230313.GV657@prunille.vinc17.org>
> > [...]
> 
> Hmmm, how does that thing work?

You need a NNTP client, such a "tin", and the server is currently
news.gmane.io (news.gmane.org was the one at that time, but it
changed in January 2020). If you use "tin", you may use something
like

news.gmane.io .newsrc-gmane gmane

in the .tin/newsrctable file, and run "tin -g gmane".

> Any http link available?

For Gmane, it is no longer possible to access it via http.
And I don't know any website that has archives for such old
Austin Group messages.

> > There's the issue with the missing "+1", but also whether
> > LINE_MAX < INT_MAX.
> 
> I guess the LINE_MAX <? INT_MAX issue is not an actual issue as long as
> implementations do the Right Thing and don't set it to >= INT_MAX.

Unfortunately, the int type is typically a 32-bit type, even on
64-bit platforms. This would mean a silly limit for 64-bit platforms.
2^31 is quite large, but for some particular uses (hmm... GNU MPFR
tests, for instance?), one may want to support larger text files.

Note also that some XML files have all the contents on a single line.

-- 
Vincent Lefèvre <vincent@vinc17.net> - Web: <https://www.vinc17.net/>
100% accessible validated (X)HTML - Blog: <https://www.vinc17.net/blog/>
Work: CR INRIA - computer arithmetic / AriC project (LIP, ENS-Lyon)

