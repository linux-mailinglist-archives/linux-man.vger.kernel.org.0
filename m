Return-Path: <linux-man+bounces-1663-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 314C295C727
	for <lists+linux-man@lfdr.de>; Fri, 23 Aug 2024 10:00:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CF20C1F21D70
	for <lists+linux-man@lfdr.de>; Fri, 23 Aug 2024 08:00:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5460C5FEE4;
	Fri, 23 Aug 2024 08:00:19 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from joooj.vinc17.net (joooj.vinc17.net [155.133.131.76])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E0F62AE95
	for <linux-man@vger.kernel.org>; Fri, 23 Aug 2024 08:00:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=155.133.131.76
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724400019; cv=none; b=H5SHB0WE7GBza9+CJay6DEQHSDcp2zglW9umUA4GRN6OWSMM9D1A4TytSLOT85A4vdiBEIrNuo61j4pYfVBVEFyYp9JZ17UPz5RUgZp/Kf8zcLf5DZjqiGT7881plpO2a+BRyWdTw6ONb2jYTEyC1HBNxiYWcewT+6UwJJgnfMk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724400019; c=relaxed/simple;
	bh=8Tabc+0DHSZBn+BH80PMUPpYl1r5qd4byoBHku+2bMU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=HFmWYjwW2NDwyXxL/fenkwxNToEj8O0Ud2R2vA2ukIWLBt+cQV0RfLwXwW8QEkWABrOOEHZMwUSWpWolPe8e0mpCTIcOca1FlBplSkhGhx9tOy7FWD1LFY9ReFSuH0u1NHjNQS79lr/h8SgbjJgeJjKz/lSiHFuXXuTVsHDNRRE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=vinc17.net; spf=pass smtp.mailfrom=vinc17.net; arc=none smtp.client-ip=155.133.131.76
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=vinc17.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=vinc17.net
Received: from smtp-qaa.vinc17.net (2a02-8428-1b1d-4d01-96a9-491d-7b48-ba31.rev.sfr.net [IPv6:2a02:8428:1b1d:4d01:96a9:491d:7b48:ba31])
	by joooj.vinc17.net (Postfix) with ESMTPSA id 8AB555D0;
	Fri, 23 Aug 2024 09:57:30 +0200 (CEST)
Received: by qaa.vinc17.org (Postfix, from userid 1000)
	id 281C3CA0100; Fri, 23 Aug 2024 09:57:30 +0200 (CEST)
Date: Fri, 23 Aug 2024 09:57:30 +0200
From: Vincent Lefevre <vincent@vinc17.net>
To: Xi Ruoyao <xry111@xry111.site>
Cc: Alejandro Colomar <alx@kernel.org>, Paul Eggert <eggert@cs.ucla.edu>,
	libc-alpha@sourceware.org, DJ Delorie <dj@redhat.com>,
	linux-man@vger.kernel.org, carlos@redhat.com
Subject: Re: [PATCH v3] ctime.3: EXAMPLES: Add example program
Message-ID: <20240823075730.GG2981@qaa.vinc17.org>
Mail-Followup-To: Vincent Lefevre <vincent@vinc17.net>,
	Xi Ruoyao <xry111@xry111.site>, Alejandro Colomar <alx@kernel.org>,
	Paul Eggert <eggert@cs.ucla.edu>, libc-alpha@sourceware.org,
	DJ Delorie <dj@redhat.com>, linux-man@vger.kernel.org,
	carlos@redhat.com
References: <xned6jlywd.fsf@greed.delorie.com>
 <e9e31a505f59c75ae5f9549b67102a433b39b42c.1724370362.git.alx@kernel.org>
 <53dc1a78-980f-49cf-a6cc-ab5a42cde3dd@cs.ucla.edu>
 <kibbmshdcm3jfmpdyrspdnodqfehwd4bredtojemojvngdnzno@cfommtte6drm>
 <7be010d1eb77d72caef1ff7018213f94e0074714.camel@xry111.site>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <7be010d1eb77d72caef1ff7018213f94e0074714.camel@xry111.site>
X-Mailer-Info: https://www.vinc17.net/mutt/
User-Agent: Mutt/2.2.13+77 (9dc98409) vl-169878 (2024-06-20)

On 2024-08-23 15:26:04 +0800, Xi Ruoyao wrote:
> On Fri, 2024-08-23 at 09:02 +0200, Alejandro Colomar wrote:
> > Is mktime(3) allowed to return -1 and set EOVERFLOW on a successful
> > call?
> > 
> > RETURN VALUE
> >      The mktime() function shall return the specified  time  since  the
> >      Epoch  encoded  as  a value of type time_t.  If the time since the
> >      Epoch cannot be represented, the function shall return  the  value
> >      (time_t)-1 and set errno to indicate the error.
> 
> For mktime the standard only says "return (time_t)-1."  It does not
> mention errno at all.  And the standard also says:
> 
>    The value of errno may be set to nonzero by a library function call
>    whether or not there is an error, provided the use of errno is not
>    documented in the description of the function in this document.
> 
> > Then I think the API is completely broken.  How should we check for
> > errors after a mktime(3) call?
> 
> Maybe, special case if tm contains Dec 31 1969 23:59:59 UTC...  But it's
> just stupid.
> 
> > If this is so, let me file a glibc bug requesting a fix of the API,
> > adding a promise that on success, errno will remain unset.
> 
> It's a bug in the standard, not glibc.  And the standard has deprecated
> it anyway.
> 
> https://www.open-std.org/JTC1/SC22/WG14/www/docs/n2566.pdf

I can see only asctime and ctime mentioned there, not mktime.
So mktime isn't deprecated, is it?

-- 
Vincent Lefèvre <vincent@vinc17.net> - Web: <https://www.vinc17.net/>
100% accessible validated (X)HTML - Blog: <https://www.vinc17.net/blog/>
Work: CR INRIA - computer arithmetic / AriC project (LIP, ENS-Lyon)

