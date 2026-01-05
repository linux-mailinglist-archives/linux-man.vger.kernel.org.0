Return-Path: <linux-man+bounces-4639-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 40998CF5148
	for <lists+linux-man@lfdr.de>; Mon, 05 Jan 2026 18:51:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 4123A302351D
	for <lists+linux-man@lfdr.de>; Mon,  5 Jan 2026 17:51:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D9DA233BBD7;
	Mon,  5 Jan 2026 17:44:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=treblig.org header.i=@treblig.org header.b="YXExXFrt"
X-Original-To: linux-man@vger.kernel.org
Received: from mx.treblig.org (mx.treblig.org [46.235.229.95])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBAD8221F13
	for <linux-man@vger.kernel.org>; Mon,  5 Jan 2026 17:44:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=46.235.229.95
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767635096; cv=none; b=X8pcgXeEGEobWVnhIseiNPTfn2YdrF0NeWlTUCSFSmc1WZLQJRHCaL9T4+vm6qP0ovN4uJr8C+G++Y4Rgg76nedEbxCYP65JKIDJqAomJBHu8XCd2RBzhbf2CTyWvIS2KHzB4ZjpNabo8yHXUuQSp1HNa8kqO19wpKkQsurJORg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767635096; c=relaxed/simple;
	bh=6e8wCHybvXVQlsu1UPzKpJegk2/C6WuQHnlQ6Vv/3gw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ppOOJ0cR0DEest9L1Kyh3q+h++5IJ2ZiwNqZb/oPL29MlvtQ5y838JnfMbGyZ2LbYJxx3c3z+NvjLlkvMuTDVzTehLaGkB4lbNC9+lwI/0EUeZUunn+TXxfTy+XGO8ZvM9xqZfOeXVkDBKy6xYW217z6JwHNzzdkeci+P767D4A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=treblig.org; spf=pass smtp.mailfrom=treblig.org; dkim=pass (2048-bit key) header.d=treblig.org header.i=@treblig.org header.b=YXExXFrt; arc=none smtp.client-ip=46.235.229.95
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=treblig.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=treblig.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=treblig.org
	; s=bytemarkmx; h=Content-Type:MIME-Version:Message-ID:Subject:From:Date:From
	:Subject; bh=tsnA+XgckvgTbjaSsLilDvRkQTSL0q5fnRs8HwdWEQE=; b=YXExXFrtQenHlhz5
	ULLwhJL38rNSMprXkDvGGWOBss6kN7PZ02AYgFIps6FqsfrqRfFi/isV8zxA1PvFWoV0UjbwB/OF0
	IMCu6WHFY8OMtMFkfOYmTvOaTOdYdB3j3CYBM6iLwcfFWVjA6rjAMTk1knTW+fMSY2DuIR3ENl01r
	tGRJlNJSRHlXQmQFJEftEIX+ZN0A/Db2pMZE//fMAUnonKT89J1IzKo3jO4ebrY7IxwJwlIYm9xSt
	NTkj08RFVGXQPDMuP+sgS3VVGShfsobRfunaUdbFQFcE1zMhXKyG+eLtbho5odrhwPR5i7a+fhV5V
	70sjcYO/h2wOx0wP+g==;
Received: from dg by mx.treblig.org with local (Exim 4.98.2)
	(envelope-from <dg@treblig.org>)
	id 1vcodR-0000000CVdr-0WCm;
	Mon, 05 Jan 2026 17:44:53 +0000
Date: Mon, 5 Jan 2026 17:44:53 +0000
From: "Dr. David Alan Gilbert" <dave@treblig.org>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man5/gai.conf: Document glibc label additions
Message-ID: <aVv4lWZ7G6Pg4Uas@gallifrey>
References: <20260105170001.209785-1-dg@treblig.org>
 <aVvyTfS5CC6zadBG@devuan>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
In-Reply-To: <aVvyTfS5CC6zadBG@devuan>
X-Chocolate: 70 percent or better cocoa solids preferably
X-Operating-System: Linux/6.12.48+deb13-amd64 (x86_64)
X-Uptime: 17:44:22 up 70 days, 17:20,  2 users,  load average: 0.08, 0.04,
 0.01
User-Agent: Mutt/2.2.13 (2024-03-09)

* Alejandro Colomar (alx@kernel.org) wrote:
> Hi Dave,
> 
> On Mon, Jan 05, 2026 at 05:00:01PM +0000, dg@treblig.org wrote:
> > From: "Dr. David Alan Gilbert" <dave@treblig.org>
> > 
> > Glibc includes some extra entries in its default label table
> > as listed in the gai.conf it distributes:
> >    https://sourceware.org/git/?p=glibc.git;a=blob;f=posix/gai.conf
> > 
> > Update the EXAMPLES to include the spec default and the version glibc
> > actually uses.

See v4:
  20260105174401.222443-1-dg@treblig.org

With the .in and extra newlines.
(Ahem, sorry about v2,v3 )

Dave

> > Signed-off-by: Dr. David Alan Gilbert <dave@treblig.org>
> > ---
> >  man/man5/gai.conf.5 | 14 ++++++++++++++
> >  1 file changed, 14 insertions(+)
> > 
> > diff --git a/man/man5/gai.conf.5 b/man/man5/gai.conf.5
> > index ef330995d..0d3c86842 100644
> > --- a/man/man5/gai.conf.5
> > +++ b/man/man5/gai.conf.5
> > @@ -87,6 +87,20 @@ .SH EXAMPLES
> >  precedence ::/96          20
> >  precedence ::ffff:0:0/96  10
> >  .EE
> 
> You forgot to close with '.in'.
> 
> > +.P
> > +Glibc includes some extra rules in the label table for site-local addresses,
> > +ULA, and Teredo tunnels. Its default label table is:
> 
> Please use semantic newlines.  See man-pages(7):
> 
> $ MANWIDTH=72 man man-pages | sed -n '/Use semantic newlines/,/^$/p'
>    Use semantic newlines
>      In the source of a manual page, new sentences should be started on
>      new lines, long sentences should be split  into  lines  at  clause
>      breaks  (commas,  semicolons, colons, and so on), and long clauses
>      should be split at phrase boundaries.  This convention,  sometimes
>      known as "semantic newlines", makes it easier to see the effect of
>      patches, which often operate at the level of individual sentences,
>      clauses, or phrases.
> 
> 
> Have a lovely night!
> Alex
> 
> > +.in +4n
> > +.EX
> > +label ::1/128        0
> > +label ::/0           1
> > +label 2002::/16      2
> > +label ::/96          3
> > +label ::ffff:0:0/96  4
> > +label fec0::/10      5
> > +label fc00::/7       6
> > +label 2001:0::/32    7
> > +.EE
> >  .in
> >  .\" .SH AUTHOR
> >  .\" Ulrich Drepper <drepper@redhat.com>
> > -- 
> > 2.52.0
> > 
> 
> -- 
> <https://www.alejandro-colomar.es>


-- 
 -----Open up your eyes, open up your mind, open up your code -------   
/ Dr. David Alan Gilbert    |       Running GNU/Linux       | Happy  \ 
\        dave @ treblig.org |                               | In Hex /
 \ _________________________|_____ http://www.treblig.org   |_______/

