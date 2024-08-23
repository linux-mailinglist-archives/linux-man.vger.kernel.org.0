Return-Path: <linux-man+bounces-1676-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 64BE795D156
	for <lists+linux-man@lfdr.de>; Fri, 23 Aug 2024 17:26:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 93E381C234A5
	for <lists+linux-man@lfdr.de>; Fri, 23 Aug 2024 15:26:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D08611891B2;
	Fri, 23 Aug 2024 15:26:23 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from cventin.lip.ens-lyon.fr (cventin.lip.ens-lyon.fr [140.77.13.17])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09F38188A1B
	for <linux-man@vger.kernel.org>; Fri, 23 Aug 2024 15:26:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=140.77.13.17
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724426783; cv=none; b=kdBIEAlCKbmB4k2qCOvtoKSjQj7rlkw/dl4W/xvda3xwmSA8TNuiXwwmtky09c/jPnHsmcZzjAvkikmGVCDVGQLPjujV8oTLIKgv7fgbGBdDcq0zr4BhSk8xQ8xHDaPlQLIl6SCAAHCHr/L37g72AyX9D47d7umanQIo9uMgZ3I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724426783; c=relaxed/simple;
	bh=bj7FKYi8LuqGLRCRpoHUP36YW3z4U6vz81l9Iec/l9U=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NPzBVAWEZDQ7fPsGSUg27rYxfyPvYfMk0C4R206IqQ4HZtmj9yJLY42I2CRrJisXsA/FIywtIr48Qi61eW2Z54qEvJXZLfp0mmOI4DdZjRPnEaBCOZDQbWMUKXLqQ+KxpOsn+78YAuECZTU38/hamPpmXvkgjfZ0Duk+qrsELQc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=vinc17.net; spf=pass smtp.mailfrom=vinc17.net; arc=none smtp.client-ip=140.77.13.17
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=vinc17.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=vinc17.net
Received: from vlefevre by cventin.lip.ens-lyon.fr with local (Exim 4.98)
	(envelope-from <vincent@vinc17.net>)
	id 1shWB7-0000000Dcib-3hXN;
	Fri, 23 Aug 2024 17:26:17 +0200
Date: Fri, 23 Aug 2024 17:26:17 +0200
From: Vincent Lefevre <vincent@vinc17.net>
To: Alejandro Colomar <alx@kernel.org>
Cc: Xi Ruoyao <xry111@xry111.site>, Paul Eggert <eggert@cs.ucla.edu>,
	libc-alpha@sourceware.org, DJ Delorie <dj@redhat.com>,
	linux-man@vger.kernel.org, carlos@redhat.com,
	"Robert C. Seacord" <rcseacord@gmail.com>,
	Jens Gustedt <jens.gustedt@inria.fr>
Subject: Re: [PATCH v3] ctime.3: EXAMPLES: Add example program
Message-ID: <20240823152617.GI2713@cventin.lip.ens-lyon.fr>
Mail-Followup-To: Vincent Lefevre <vincent@vinc17.net>,
	Alejandro Colomar <alx@kernel.org>, Xi Ruoyao <xry111@xry111.site>,
	Paul Eggert <eggert@cs.ucla.edu>, libc-alpha@sourceware.org,
	DJ Delorie <dj@redhat.com>, linux-man@vger.kernel.org,
	carlos@redhat.com, "Robert C. Seacord" <rcseacord@gmail.com>,
	Jens Gustedt <jens.gustedt@inria.fr>
References: <xned6jlywd.fsf@greed.delorie.com>
 <e9e31a505f59c75ae5f9549b67102a433b39b42c.1724370362.git.alx@kernel.org>
 <53dc1a78-980f-49cf-a6cc-ab5a42cde3dd@cs.ucla.edu>
 <kibbmshdcm3jfmpdyrspdnodqfehwd4bredtojemojvngdnzno@cfommtte6drm>
 <7be010d1eb77d72caef1ff7018213f94e0074714.camel@xry111.site>
 <jexdbqmvupx3q546nipasrhunylrjazpbe2d3inmbqa4llowjo@6gu4orqoerbo>
 <20240823125313.GB2713@cventin.lip.ens-lyon.fr>
 <daswt7u6tvj7mq4x5ntjzel5cspkyfmkphrtvsdsywoaalhrgh@7s2eedsskylp>
 <20240823135449.GF2713@cventin.lip.ens-lyon.fr>
 <4n6fqru43irlzw7qcqkj6za4hxtn5g3icvtmyuneap4fs2aryk@ctcmkvw2xxl5>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <4n6fqru43irlzw7qcqkj6za4hxtn5g3icvtmyuneap4fs2aryk@ctcmkvw2xxl5>
X-Mailer-Info: https://www.vinc17.net/mutt/
User-Agent: Mutt/2.2.13+77 (9dc98409) vl-169878 (2024-06-20)

On 2024-08-23 16:18:21 +0200, Alejandro Colomar wrote:
> Hi Vincent,
> 
> On Fri, Aug 23, 2024 at 03:54:49PM GMT, Vincent Lefevre wrote:
> > On 2024-08-23 15:12:16 +0200, Alejandro Colomar wrote:
> > > Looking at the WG14 document logs, it seems it was added in n3147:
> > > <https://www.open-std.org/jtc1/sc22/wg14/www/docs/n3147.txt>
> > 
> > Thanks for the reference. Additional details can be found
> > in CD2 ballot at
> > 
> >   https://open-std.org/JTC1/SC22/WG14/www/docs/n3148.doc
> 
> It's interesting that WG14 claims that they're not aware of any existing
> implementations that would modify tm_wday on failure.

AFAIK, this is not a claim from WG14, but from the one who submitted
the GB-159 comment. The claim is

  There is some existing practice where application code sets tm_wday
  to an out-of-range sentinel value and checks whether it was changed
  by mktime, and we are not aware of any implementation where this
  does not work.

and this is rather vague: we do not know whether this existing practice
is common and which implementations have been checked.

> Although it's weird, because WG14 attributes that claim to the Austin
> Group, and

The comment attributes the issues to the Austin Group, but perhaps
not all the details.

> > which references the POSIX bug
> > 
> >   https://austingroupbugs.net/view.php?id=1614
> 
> I don't see any discussion about tm_wday in that Austin Group bug.  :|
> Maybe it happened in a mailing list or elsewhere.

Yes, perhaps in the austin-group-l mailing-list.

> (If any implementation does not conform, at least it should
> be feasible to fix that implementation to conform.)

That's something new in the future C23 standard. So I don't think
that older implementations (stable releases) would change.

> > This is the test I suggested: a check that mktime() returns -1,
> 
> I think that test suggested by POSIX is bogus (redundant).  If mktime(3)
> has failed, tm_wday is unchanged.  If it has succeeded, tm_wday must be
> changed.  Thus, the return value is meaningless for the purpose of
> determining if it has failed.

Yes, after some thoughts, I agree.

However, it should be said that with pre-C23 implementations,
it is not guaranteed to detect failures.

Said otherwise, the change from

  if (mktime(&time_str) == -1)

to

  if (time_str.tm_wday == -1)

will avoid spurious failures (the case where -1 is a valid calendar
value), but it might make some failures be undetected, though no
implementations with such an issue are known.

> > and since it can be a valid value, a second test on tm_wday
> > (where the input, which is ignored, has an invalid value such
> > as -1 here, or INT_MAX in your case; note that -1 may be more
> > efficient with some processors, and shorter to write).
> 
> I didn't use -1 because I thought some weird weeks might contain 8 days
> (for some of those weird timezone adjustments), and that that might
> cause wday -1 to actually exist.

This is invalid and could cause crashes in programs, or worse.
In C17:

  int tm_wday; // days since Sunday -- [0, 6]

-- 
Vincent Lefèvre <vincent@vinc17.net> - Web: <https://www.vinc17.net/>
100% accessible validated (X)HTML - Blog: <https://www.vinc17.net/blog/>
Work: CR INRIA - computer arithmetic / AriC project (LIP, ENS-Lyon)

