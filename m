Return-Path: <linux-man+bounces-1667-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 81C9795CD0E
	for <lists+linux-man@lfdr.de>; Fri, 23 Aug 2024 14:58:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3DF6D28A70A
	for <lists+linux-man@lfdr.de>; Fri, 23 Aug 2024 12:58:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 805A618455E;
	Fri, 23 Aug 2024 12:58:32 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from cventin.lip.ens-lyon.fr (cventin.lip.ens-lyon.fr [140.77.13.17])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0ABB18595B
	for <linux-man@vger.kernel.org>; Fri, 23 Aug 2024 12:58:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=140.77.13.17
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724417912; cv=none; b=P+G/bXFgIreF5butLbqmQsYx/LTL58+B+P39Rj81c1OBwHPjd9yR6ObTkfTNol7OCTf+5MMqATTGsx6D2kqvn/L7hSjdwPsStruRRCWp1BnrJKsBLFngoLIxgtYi4Da/m0hlh9FHqvPRDzFqd99GSnxob37+A/5Y9YGtkEmW+4c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724417912; c=relaxed/simple;
	bh=WdrD0j8kP75RdVB1Wm5R1TLHjDPQuhTN/IiO9nOQ8lI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cQ9Othq/ioLnur326CWY/g1hvJ3aCK2E/BJSj+OCcAw5q/wBxD8sstweiSB6vnYBQAyqiU51IuobiQPxm2iK41beiWIKDNh79j3jNcrpNeUECxWxpdMQvssTcq+Q+VaD+THwBZFR37MVO9mfdD8KA+0Hl3ifQpM+G1fRSuPxhU0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=vinc17.net; spf=pass smtp.mailfrom=vinc17.net; arc=none smtp.client-ip=140.77.13.17
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=vinc17.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=vinc17.net
Received: from vlefevre by cventin.lip.ens-lyon.fr with local (Exim 4.98)
	(envelope-from <vincent@vinc17.net>)
	id 1shTmz-0000000BBFk-2CZk;
	Fri, 23 Aug 2024 14:53:13 +0200
Date: Fri, 23 Aug 2024 14:53:13 +0200
From: Vincent Lefevre <vincent@vinc17.net>
To: Alejandro Colomar <alx@kernel.org>
Cc: Xi Ruoyao <xry111@xry111.site>, Paul Eggert <eggert@cs.ucla.edu>,
	libc-alpha@sourceware.org, DJ Delorie <dj@redhat.com>,
	linux-man@vger.kernel.org, carlos@redhat.com
Subject: Re: [PATCH v3] ctime.3: EXAMPLES: Add example program
Message-ID: <20240823125313.GB2713@cventin.lip.ens-lyon.fr>
Mail-Followup-To: Vincent Lefevre <vincent@vinc17.net>,
	Alejandro Colomar <alx@kernel.org>, Xi Ruoyao <xry111@xry111.site>,
	Paul Eggert <eggert@cs.ucla.edu>, libc-alpha@sourceware.org,
	DJ Delorie <dj@redhat.com>, linux-man@vger.kernel.org,
	carlos@redhat.com
References: <xned6jlywd.fsf@greed.delorie.com>
 <e9e31a505f59c75ae5f9549b67102a433b39b42c.1724370362.git.alx@kernel.org>
 <53dc1a78-980f-49cf-a6cc-ab5a42cde3dd@cs.ucla.edu>
 <kibbmshdcm3jfmpdyrspdnodqfehwd4bredtojemojvngdnzno@cfommtte6drm>
 <7be010d1eb77d72caef1ff7018213f94e0074714.camel@xry111.site>
 <jexdbqmvupx3q546nipasrhunylrjazpbe2d3inmbqa4llowjo@6gu4orqoerbo>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <jexdbqmvupx3q546nipasrhunylrjazpbe2d3inmbqa4llowjo@6gu4orqoerbo>
X-Mailer-Info: https://www.vinc17.net/mutt/
User-Agent: Mutt/2.2.13+77 (9dc98409) vl-169878 (2024-06-20)

On 2024-08-23 14:28:13 +0200, Alejandro Colomar wrote:
[about mktime]
> tm_wday is guaranteed to be left unmodified on a failed call.

Where did you see that?

I cannot see any guarantee in case of a failed call, so that I would
say that tm_wday could have been modified, e.g. if the values are
set before checking whether the calendar time can be represented.

> This provides a way to determine if the call failed.

The example in C17 does not use the above claim that "tm_wday is
guaranteed to be left unmodified on a failed call" to determine
whether the call failed. Instead, it uses

  if (mktime(&time_str) == (time_t)(-1))

which is not 100% correct, since -1 can be a valid value (as already
noticed).

> Indeed, this is the only way to determine if the call failed:
> 
> 	tm.tm_wday = INT_MAX;
> 	mktime(&tm);
> 	if (tm.tm_wday == INT_MAX)
> 		err(1, "mktime");

Because of my above remark, I think that a mktime(&tm) == (time_t)(-1)
test is needed *in addition to* the tm.tm_wday == INT_MAX test.

-- 
Vincent Lefèvre <vincent@vinc17.net> - Web: <https://www.vinc17.net/>
100% accessible validated (X)HTML - Blog: <https://www.vinc17.net/blog/>
Work: CR INRIA - computer arithmetic / AriC project (LIP, ENS-Lyon)

