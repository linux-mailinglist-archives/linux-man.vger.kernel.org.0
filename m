Return-Path: <linux-man+bounces-900-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B1E978C14D4
	for <lists+linux-man@lfdr.de>; Thu,  9 May 2024 20:38:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6C26F2829BA
	for <lists+linux-man@lfdr.de>; Thu,  9 May 2024 18:38:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5D98873535;
	Thu,  9 May 2024 18:38:08 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from relay.hostedemail.com (smtprelay0017.hostedemail.com [216.40.44.17])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E016E1A2C09
	for <linux-man@vger.kernel.org>; Thu,  9 May 2024 18:38:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=216.40.44.17
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715279888; cv=none; b=o1NpIToDBwDANfPBwPXcv8Ppz45dlGJ9ZjYYaf3f8J5IgFmI9xi1MQ+60ZNb/2hzgpSGtx4zxMCXVnF5MjxNWltvEJTw51tfJGvFY2L2/6NBSb8XVgWUUa/TUfNuIja/Pruf9W/XDgfG6cqaO8BtC5Jka7kUIGU3G038NXjjSW0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715279888; c=relaxed/simple;
	bh=na+6LRh58H4tqvBeuIojNYoWg2+keYwQScnHwUSa4To=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=IQqWcxG7BvC5llu6E/KQXR4dhUUwWGJxlbjncIpn3rukQzkgZVmxl4TomREMf1s1I56PpRB6Nv7k9erOFSI4gKOtL/bHxTtCdMhKYxRxRRja+DkOtYtpMbXj3BESUQDLvNr8fIPXZF0Yr4LyAw0fa+01jW7sIIwaH0MV6hvLXb8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=systematicsw.ab.ca; spf=pass smtp.mailfrom=systematicsw.ab.ca; arc=none smtp.client-ip=216.40.44.17
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=systematicsw.ab.ca
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=systematicsw.ab.ca
Received: from omf14.hostedemail.com (a10.router.float.18 [10.200.18.1])
	by unirelay07.hostedemail.com (Postfix) with ESMTP id 82622161546;
	Thu,  9 May 2024 18:37:59 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: Brian.Inglis@SystematicSW.ab.ca) by omf14.hostedemail.com (Postfix) with ESMTPA id 9D25E30;
	Thu,  9 May 2024 18:37:57 +0000 (UTC)
Message-ID: <0508b2c5-2523-44f1-9a6f-c906bd4bf62e@systematicsw.ab.ca>
Date: Thu, 9 May 2024 12:37:56 -0600
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: brian.inglis@systematicsw.ab.ca
Reply-To: tz@iana.org
Subject: Re: [tz] manual pages in tzdb
Content-Language: en-CA
To: Paul Eggert <eggert@cs.ucla.edu>
Cc: linux-man@vger.kernel.org, tz@iana.org, Alejandro Colomar <alx@kernel.org>
References: <vexmpmalky6xddplkpr6md6b7r664gmyt3fthmmiuxnwwiw3fu@55ga4tnb5zuj>
 <b0faabc0-6dcb-4540-b392-56c244b53817@cs.ucla.edu>
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
In-Reply-To: <b0faabc0-6dcb-4540-b392-56c244b53817@cs.ucla.edu>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Stat-Signature: f9a6fkutfoga738xjhxnq6rdwhk4yyhn
X-Rspamd-Server: rspamout03
X-Rspamd-Queue-Id: 9D25E30
X-Session-Marker: 427269616E2E496E676C69734053797374656D6174696353572E61622E6361
X-Session-ID: U2FsdGVkX18bSx5Otz96g/kZwCTJYEHkb1s5zeE1/bE=
X-HE-Tag: 1715279877-555611
X-HE-Meta: U2FsdGVkX1/NQTY1RCSlt0o01m+GW2FaCBGHoJ9m0cAKEXXcls2ea7O4tVMfpgz8q9uRcW6eZaGrZtjgFVzdIW0AxMVWagZTDIlk5BEzCdGl5jkuA/jh3haWf/tNv9jyYOQsH46685OWCo7cTYUOKYYyQZvaJVPw1Vu50hkKIZC6xxNjUau/yxjOsPaf89FHsyPTw63J/jjALpaoztxwmIBq+yjs51JQ/MtPns3jY+CcdJCPdsLR2HtrDvJubf9TcibmNquyM9fuLipCWUWwgih3ZJTP6NtqKdpO0tycpw1uXVq6qLbYMHkwGYvNR4iY7NgP5NlF24S5VApyImcTJfFl1TmInlim4gZYz/MPICq89ToVpUcoO1HQSv9j1tuFYm9fghSuaeoNgsVimeyWJA==

On 2024-05-08 10:57, Paul Eggert via tz wrote:
> On 2024-05-08 09:24, Alejandro Colomar wrote:
>> What do you think of moving the pages in the tzdb repository into
>> man/man*/ directories?  I see your repository is perfectly flat, so I
>> don't know if there are strong reasons for that, or if it's just
>> innertia.
> 
> To be fair, inertia itself is a strong reason....
> 
> I wouldn't mind renaming the man pages, though I'd get rid of the "new" prefixes 
> while we're at it. However, I worry that other downstream users would be 
> adversely affected. Perhaps others could chime in.

Not seeing any obvious man[1358] references in Linux distro RPM specs/builds: 
presumably rely on man-pages.

Gentoo reported https://bugs.gentoo.org/920035 sys-libs/timezone-data: installs 
man3 manpages without corresponding libraries.

Some BSDs seem to customize utilities and man pages (or use old releases) based 
on online man pages.

What about updating glibc/manual/time.texi, and are any (non-info) docs or man 
pages generated from that in any distro or downstream?

-- 
Take care. Thanks, Brian Inglis              Calgary, Alberta, Canada

La perfection est atteinte                   Perfection is achieved
non pas lorsqu'il n'y a plus rien à ajouter  not when there is no more to add
mais lorsqu'il n'y a plus rien à retirer     but when there is no more to cut
                                 -- Antoine de Saint-Exupéry

