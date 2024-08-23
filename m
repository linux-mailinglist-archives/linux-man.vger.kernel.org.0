Return-Path: <linux-man+bounces-1682-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 45CD895D5B7
	for <lists+linux-man@lfdr.de>; Fri, 23 Aug 2024 21:02:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 02DF1283786
	for <lists+linux-man@lfdr.de>; Fri, 23 Aug 2024 19:02:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D3F271925B5;
	Fri, 23 Aug 2024 19:01:42 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from munnari.OZ.AU (munnari.OZ.AU [202.29.151.3])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38652192599
	for <linux-man@vger.kernel.org>; Fri, 23 Aug 2024 19:01:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=202.29.151.3
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724439702; cv=none; b=f1x4mGFylf10UX2G3xprt8ebcOlr21pUBaElHSM8wzMee3z/mWGs4YuMH8Q2lsvmg2zMSaxfu2S1atRjqxRVO6TLcEKf2UNhViLota55qJHgyk/luh7wvUSJ6f6SPrAD8G7SGf5odkvh8v3rnWti24cYkIm4nG1Nu9WM4Gierfs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724439702; c=relaxed/simple;
	bh=N1B/ZdfGVy8lUyrtLs7ukoj0pcvVgiQvdn6dxw78M5I=;
	h=From:To:cc:Subject:In-Reply-To:References:Mime-Version:
	 Content-Type:Date:Message-ID; b=rsQxAQ13QOzSIh/GWCThqkts0lzFVSzBu7hJE309zmo88yFvwJVzKYljeCVRVRPgfqREaEn4nlVe/Iicw7PkXfXaKSoFEJYbYUQf+BlmXhWVQ+U9AL5OHY6vP2rhdWWKMxwnDDUBdPfjDVZn464w2ADXS3xrDPWa4yok2itsFDc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=munnari.OZ.AU; spf=fail smtp.mailfrom=munnari.OZ.AU; arc=none smtp.client-ip=202.29.151.3
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=munnari.OZ.AU
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=munnari.OZ.AU
Received: from jacaranda.noi.kre.to (localhost [IPv6:0:0:0:0:0:0:0:1]) by munnari.OZ.AU with ESMTP
	id 47NIkEx8018754; Sat, 24 Aug 2024 01:46:14 +0700 (+07)
Received: from jacaranda.noi.kre.to (localhost [127.0.0.1])
	by jacaranda.noi.kre.to (8.16.1/8.14.2) with ESMTP id 47NIk5Mj008714;
	Sat, 24 Aug 2024 01:46:05 +0700 (+07)
From: Robert Elz <kre@munnari.OZ.AU>
To: Alejandro Colomar <alx@kernel.org>
cc: Andrew Josey <ajosey@opengroup.org>, Geoff Clare <gwc@opengroup.org>,
        Vincent Lefevre <vincent@vinc17.net>, Xi Ruoyao <xry111@xry111.site>,
        Paul Eggert <eggert@cs.ucla.edu>, libc-alpha@sourceware.org,
        DJ Delorie <dj@redhat.com>, linux-man@vger.kernel.org,
        carlos@redhat.com, Jens Gustedt <jens.gustedt@inria.fr>,
        austin-group-l@opengroup.org
Subject: Re: [PATCH v3] ctime.3: EXAMPLES: Add example program
In-Reply-To: <cb65drmcb6cotrz6rzkfuwg5aod2jta4ma6f6cds4pouk5tjdj@6wl6iwby2isi>
References: <cb65drmcb6cotrz6rzkfuwg5aod2jta4ma6f6cds4pouk5tjdj@6wl6iwby2isi> <e9e31a505f59c75ae5f9549b67102a433b39b42c.1724370362.git.alx@kernel.org> <53dc1a78-980f-49cf-a6cc-ab5a42cde3dd@cs.ucla.edu> <kibbmshdcm3jfmpdyrspdnodqfehwd4bredtojemojvngdnzno@cfommtte6drm> <7be010d1eb77d72caef1ff7018213f94e0074714.camel@xry111.site> <jexdbqmvupx3q546nipasrhunylrjazpbe2d3inmbqa4llowjo@6gu4orqoerbo> <20240823125313.GB2713@cventin.lip.ens-lyon.fr> <daswt7u6tvj7mq4x5ntjzel5cspkyfmkphrtvsdsywoaalhrgh@7s2eedsskylp> <20240823135449.GF2713@cventin.lip.ens-lyon.fr> <4n6fqru43irlzw7qcqkj6za4hxtn5g3icvtmyuneap4fs2aryk@ctcmkvw2xxl5> <20240823152617.GI2713@cventin.lip.ens-lyon.fr>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Date: Sat, 24 Aug 2024 01:46:05 +0700
Message-ID: <9649.1724438765@jacaranda.noi.kre.to>

    Date:        Fri, 23 Aug 2024 19:48:09 +0200
    From:        Alejandro Colomar <alx@kernel.org>
    Message-ID:  <cb65drmcb6cotrz6rzkfuwg5aod2jta4ma6f6cds4pouk5tjdj@6wl6iwby2isi>

I kind of suspect there has been some discussion I am not privy to
preceding this, so if anything I add here seems redundant, or whatever,
that's why.

  | (Although I'm not sure if that mailing list is open.  maybe it rejects
  |  mail from this account.  Please anyone bounce it if you find that it
  |  doesn't reach the list.)

Same here.  I am fairly sure (since I have received no recent messages)
that I got dropped from the austin list during a period when munnari.oz.au
was reachable only via IPv6 (something of an experiment, though the
original reasoning was different).    It appears that the austin-group
mailing list is only able to transmit mail via IPv4.   Shame.

Also note that I removed "Robert C. Seacord" <rcseacord@gmail.com>
from the recipient list, as gmail continue to refuse to receive mail
from munnari - there was no point attempting that one.   Someone can
forward if that seems called for.


  | > and which implementations have been checked.
  | Robert, Geoff, Andrew, can you please clarify?

Me, no, sorry, that is something from the linux world I think.

I actually have no idea whether our implementation (Paul might be
able to guess, since this is unlikely to have been changed from tzcode)
whether our implementation alters tm_wday in various failure cases or
not.

  | Robert, Geoff, Andrew, can you please clarify where is the discussion
  | that led to the following change?:

There were a lot of discussions about mtime() - lots of it on the list,
some of it in the mantis defect report database (associated with more than
one bug), and more about strftime("%s") which is almost the same thing.

Sorry, I can't point you at anything in particular which led to that.

  | You could argue with them that there's no way to test for errors other
  | than this method,

That's probably a reasonable summary of the rationale.

  | I guess if a weekday was ever added,

If there's anything about the management of times less likely to happen
than that one, I cannot imagine it.   Weeks with fewer days are possible,
in bizarre circumstances (like when Gregorian time became standard) but
not ones with more.   It would be more likely that the concept of a week,
and weekday names, would be eliminated, than a new day be added.

Adding months would be a far more likely thing to happen - after all,
that's happened before.

Of course, if the whole way of measuring time were to be changed, then
almost anything might appear as a replacement.   mktime() wouldn't apply.

kre



