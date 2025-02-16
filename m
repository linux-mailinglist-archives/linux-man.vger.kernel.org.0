Return-Path: <linux-man+bounces-2454-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 55008A374FB
	for <lists+linux-man@lfdr.de>; Sun, 16 Feb 2025 16:17:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 23E2D167D0D
	for <lists+linux-man@lfdr.de>; Sun, 16 Feb 2025 15:17:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 55980194091;
	Sun, 16 Feb 2025 15:17:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=systematicsw.ab.ca header.i=@systematicsw.ab.ca header.b="dW3jqFck"
X-Original-To: linux-man@vger.kernel.org
Received: from relay.hostedemail.com (smtprelay0010.hostedemail.com [216.40.44.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6334F4C8E
	for <linux-man@vger.kernel.org>; Sun, 16 Feb 2025 15:17:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=216.40.44.10
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739719065; cv=none; b=BqDCLY/KJYIGuYIYTPW4mW2mDuSu6w03nrs+Sh3AKCvGokdA77avicrvDBha/li1mEyQhhtBMXBy7k2Wur1Yy0GyfSsERjDaOoDFoNkW0VK4LTwqJTrE+z8kTfZ2Vb8Ctwh6YHdRkeRdU33od7aNFb0iUDhGSfTGnlpw22JGp0M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739719065; c=relaxed/simple;
	bh=7ujHsaTer8mrvbAh+xRLnSrrioeD02EDNP3nNE/CgDE=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=gIzC+rNp0+2MUSXDK5V+w10jN/WIaOzv+Wtcq07BBjnAJT7XEereyhSocl/cX50u6lktAchDwt50OueZZg/lCHNcKuLaQ8zOfN58J8AjeXpU3+5IrslcfzTzGjkRLAzWU2Q93EPujpUpvERXiWKGcdZbwYCGvj1picN+zUCupJU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=systematicsw.ab.ca; spf=pass smtp.mailfrom=systematicsw.ab.ca; dkim=pass (2048-bit key) header.d=systematicsw.ab.ca header.i=@systematicsw.ab.ca header.b=dW3jqFck; arc=none smtp.client-ip=216.40.44.10
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=systematicsw.ab.ca
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=systematicsw.ab.ca
Received: from omf06.hostedemail.com (a10.router.float.18 [10.200.18.1])
	by unirelay01.hostedemail.com (Postfix) with ESMTP id C5A7E1C7CB9;
	Sun, 16 Feb 2025 15:17:35 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: Brian.Inglis@SystematicSW.ab.ca) by omf06.hostedemail.com (Postfix) with ESMTPA id E23B22000E;
	Sun, 16 Feb 2025 15:17:33 +0000 (UTC)
Message-ID: <378a2eba-c973-4de9-a362-6e25123bf75b@systematicsw.ab.ca>
Date: Sun, 16 Feb 2025 08:17:33 -0700
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: brian.inglis@systematicsw.ab.ca
Reply-To: Brian.Inglis@SystematicSW.ab.ca
Subject: Re: man-pages-6.11 released
Content-Language: en-CA
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>, help-make@gnu.org, psmith@gnu.org,
 sam@gentoo.org
References: <frz5e2i7dv3kpl3mqxnkrrl5v54bjvw77fev6szkrggtx2ztxh@oyfvhx7zfm4u>
 <b6a4f0ba-2d13-4fa2-933d-131792adea3e@systematicsw.ab.ca>
 <t3ha5wm6yqgkx43y5mycwcw2ynwidl6gi2sq5erlhssadibvcr@mbmk2qff45fl>
 <672qhmdi2ef7l2lgczjaxwmkxdxhhi3ng7ivqgp6w6clgfhznj@hk3it3n4vz6v>
 <krlptdeymwpx4i6cb464p2rjo5pugmszrw7lnio5ioln5iw6jl@sfs7bnishw7y>
Autocrypt: addr=brian.inglis@systematicsw.ab.ca; keydata=
 xjMEXopx8xYJKwYBBAHaRw8BAQdAnCK0qv/xwUCCZQoA9BHRYpstERrspfT0NkUWQVuoePbN
 LkJyaWFuIEluZ2xpcyA8QnJpYW4uSW5nbGlzQFN5c3RlbWF0aWNTdy5hYi5jYT7ClgQTFggA
 PhYhBMM5/lbU970GBS2bZB62lxu92I8YBQJeinHzAhsDBQkJZgGABQsJCAcCBhUKCQgLAgQW
 AgMBAh4BAheAAAoJEB62lxu92I8Y0ioBAI8xrggNxziAVmr+Xm6nnyjoujMqWcq3oEhlYGAO
 WacZAQDFtdDx2koSVSoOmfaOyRTbIWSf9/Cjai29060fsmdsDM44BF6KcfMSCisGAQQBl1UB
 BQEBB0Awv8kHI2PaEgViDqzbnoe8B9KMHoBZLS92HdC7ZPh8HQMBCAfCfgQYFggAJhYhBMM5
 /lbU970GBS2bZB62lxu92I8YBQJeinHzAhsMBQkJZgGAAAoJEB62lxu92I8YZwUBAJw/74rF
 IyaSsGI7ewCdCy88Lce/kdwX7zGwid+f8NZ3AQC/ezTFFi5obXnyMxZJN464nPXiggtT9gN5
 RSyTY8X+AQ==
Organization: Systematic Software
In-Reply-To: <krlptdeymwpx4i6cb464p2rjo5pugmszrw7lnio5ioln5iw6jl@sfs7bnishw7y>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Stat-Signature: wothu8iec36yxwywz389k3r6bbepitok
X-Rspamd-Server: rspamout01
X-Rspamd-Queue-Id: E23B22000E
X-Session-Marker: 427269616E2E496E676C69734053797374656D6174696353572E61622E6361
X-Session-ID: U2FsdGVkX1/n3ig0HcdwJTbNOKKf+cDuAU8IeToHa4Y=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=systematicsw.ab.ca; h=message-id:date:mime-version:from:reply-to:subject:to:cc:references:in-reply-to:content-type:content-transfer-encoding; s=he; bh=zzOxbnI+vAFIPnq3Yu5LHt2amUE0KL7ybiqgx8vM3Is=; b=dW3jqFck2kuDfJh1XbclUYB2rSbRqhRTspk0MLkBwnhuyJjPUhnmqHbztacHq+gZROi8N/Fl3iU74010DPoU9EJ5pvYUOg3MNzgekJ8aWW8f1isjABe8wMV18P1ro67aoJ1xT7qzen2lx8AUpBI0Zi2TaqTLgPlhl3XHBmFv6xnqZoButeaSs4lR1bZxvwZo9oPGnCMW4IMbLm3f6t1raDxrrU1muWz5O7FzzdzTLdEIxfXPg9t5yiX5Qsk0RmlpjZVsp5BGmRCjxPLoMrayNUVzBdvvv6OnoTPWDlN4TSPSUw4jzTeJvRIpmCbj+Ic0IyhaIA8/QLLP3xD7VJ4ggQ==
X-HE-Tag: 1739719053-899166
X-HE-Meta: U2FsdGVkX18UA1UsSIbxxWqAspQyjy8PDob8S4hho8fkxfUfm80RM4G+L/gBxRKQOcjdoZv0+gGd4qRMiBOtzAalWVYr0qL8haq5gPgNlO1McxjcYeGAtM8Yj6cShdarc+6xvjBuNKuG4qaZWUuoLn65Rfi8uv+Q05dNyTeDapuu/cPQJBzH34QFCt4BF68H0hOL/udPbYrRm2jUjHiieBS6qbt97XVwOgPR0MwZWTgF6iA5jqZwKrS8RmxKRW2kfIcZVvWCfESJv5wsG0Hl7UyiaozFqEkF0X6lvzDnp2Zo25zdeBqHXWuDw3CPCcKeitPF3eYIl9KTt87ptqsVzlilHlPu5hHx

On 2025-02-16 07:02, Alejandro Colomar wrote:
> [CC += Paul, Sam, help-make@]
> 
> Hi Brian, Paul, Sam,
> 
> On Sun, Feb 16, 2025 at 02:48:54PM +0100, Alejandro Colomar wrote:
>> Bisecting the bug shows it's fault of this commit:
>>
>> 0d69e51cd4b8 (2025-02-10; "share/mk/: Use ?= assignments for user-facing variables")
>>
>> I suspect there's some variable that we use that exists in a normal
>> environment?  I'll check.
> 
> Hmmm, at first glance, I don't see anything from the environment that
> would make this behave differently:
> 
> 	$ (
> 		git show 0d69e51cd4b8 \
> 		| grep '^+' \
> 		| grep -v '^++' \
> 		| sed 's/\s*?=.*//' \
> 		| grep -v '$.' \
> 		| tr -d '+';
> 
> 		env \
> 		| sed 's/=.*//';
> 	) \
> 	| sort \
> 	| uniq -d \
> 	| wc -l;
> 	0
> 
> The command above says there are no clashes with my environment.
> 
> My second guess is that ?= since has the = behavior, which is different
> from :=, that might be the problem.  We'd need a hypothetical ?:=,
> maybe?
> 
> Sam, that means that I'll have to revert this change with no short-term
> replacement.  We'll have to live without environment variables for some
> more time.  ?= doesn't work for well here, it seems.
> 
> I remember GNU make(1) was working on some of that.  Paul, how is it
> going with the idea you suggested some time ago of adding "trigraphs" to
> GNU make(1)?

Cygwin like Gentoo uses a shell script based build and packaging system (Cygport 
vs Ebuild) using env vars so the following variables may conflict:

CC=gcc
CFLAGS=-ggdb -O2 -pipe -Wall -Werror=format-security -Wp,-D_FORTIFY_SOURCE=3 
-fstack-protector-strong --param=ssp-buffer-size=4
PKG_CONFIG=pkg-config
VERSION=6.11

VERSION is the only package dependent variable that conflicts, but that should 
not be an issue unless you assume somewhere that it may not be a "clean" version.

Non-Make-Standard "local" variables could perhaps be prefixed or suffixed by _ - 
_VERSION VERSION_?

Trying to write packaging checks to ensure man pages installed either sourced 
another file .so, or had the version in the .TH line, found exceptions:

man7/bpf-helpers.7.gz - "Linux v6.?" - you may wish to change that?

man5/tzfile.5.gz man8/tzselect.8.gz man8/zdump.8.gz man8/zic.8.gz
- "Time Zone Database" - I can live with those four (or five?)

-- 
Take care. Thanks, Brian Inglis              Calgary, Alberta, Canada

La perfection est atteinte                   Perfection is achieved
non pas lorsqu'il n'y a plus rien à ajouter  not when there is no more to add
mais lorsqu'il n'y a plus rien à retrancher  but when there is no more to cut
                                 -- Antoine de Saint-Exupéry

