Return-Path: <linux-man+bounces-1671-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 6425295CE74
	for <lists+linux-man@lfdr.de>; Fri, 23 Aug 2024 15:55:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0D1721F22801
	for <lists+linux-man@lfdr.de>; Fri, 23 Aug 2024 13:55:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CBBEF187FEE;
	Fri, 23 Aug 2024 13:54:55 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from cventin.lip.ens-lyon.fr (cventin.lip.ens-lyon.fr [140.77.13.17])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA19046556
	for <linux-man@vger.kernel.org>; Fri, 23 Aug 2024 13:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=140.77.13.17
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724421295; cv=none; b=sQxtOqGNPiJ40JWCPY/gpPxCHtg8bRYD7Dmte10cyXF1LHJRTOMFXaN3vzaaEgoPAnmf75nqbiDgFRLMu4RZgS7aCz10jFctmantnA+EZvl2C3RVWiXdwGhQrrosPQl2vmSJuHgMo6NMVcxhrpKxVwIM2jp89URe3fdzhVET578=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724421295; c=relaxed/simple;
	bh=dythOZ9opzbwxFAuMU6RKNcCNVnAxXzA+hHtHyihz7k=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ATwGmn1NSdmgjiswzNxS0DUQSe/rvb8RUmjlr9wp0I40KFhMo3SITwaVV7HwZ53At6Ir0CkL1rsVx2kbxP2lMRtkD9QYUJfR43Uhs2SXnVasKX8qtu5VdGIzelJp3xX3fL8MqXzSHaZvkLS6Awqcts5gL7W7hiYv/58AqAT2dwA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=vinc17.net; spf=pass smtp.mailfrom=vinc17.net; arc=none smtp.client-ip=140.77.13.17
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=vinc17.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=vinc17.net
Received: from vlefevre by cventin.lip.ens-lyon.fr with local (Exim 4.98)
	(envelope-from <vincent@vinc17.net>)
	id 1shUkb-0000000CBzc-3kWr;
	Fri, 23 Aug 2024 15:54:49 +0200
Date: Fri, 23 Aug 2024 15:54:49 +0200
From: Vincent Lefevre <vincent@vinc17.net>
To: Alejandro Colomar <alx@kernel.org>
Cc: Xi Ruoyao <xry111@xry111.site>, Paul Eggert <eggert@cs.ucla.edu>,
	libc-alpha@sourceware.org, DJ Delorie <dj@redhat.com>,
	linux-man@vger.kernel.org, carlos@redhat.com,
	"Robert C. Seacord" <rcseacord@gmail.com>,
	Jens Gustedt <jens.gustedt@inria.fr>
Subject: Re: [PATCH v3] ctime.3: EXAMPLES: Add example program
Message-ID: <20240823135449.GF2713@cventin.lip.ens-lyon.fr>
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
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <daswt7u6tvj7mq4x5ntjzel5cspkyfmkphrtvsdsywoaalhrgh@7s2eedsskylp>
X-Mailer-Info: https://www.vinc17.net/mutt/
User-Agent: Mutt/2.2.13+77 (9dc98409) vl-169878 (2024-06-20)

On 2024-08-23 15:12:16 +0200, Alejandro Colomar wrote:
> Looking at the WG14 document logs, it seems it was added in n3147:
> <https://www.open-std.org/jtc1/sc22/wg14/www/docs/n3147.txt>

Thanks for the reference. Additional details can be found
in CD2 ballot at

  https://open-std.org/JTC1/SC22/WG14/www/docs/n3148.doc

which references the POSIX bug

  https://austingroupbugs.net/view.php?id=1614

where I can see at the end:

  On page 1332 line 44348 section mktime(), change:

    if (mktime(&time_str) == -1)

  to:

    time_str.tm_wday = -1;
    if (mktime(&time_str) == (time_t)-1 && time_str.tm_wday == -1)

This is the test I suggested: a check that mktime() returns -1,
and since it can be a valid value, a second test on tm_wday
(where the input, which is ignored, has an invalid value such
as -1 here, or INT_MAX in your case; note that -1 may be more
efficient with some processors, and shorter to write).

-- 
Vincent Lefèvre <vincent@vinc17.net> - Web: <https://www.vinc17.net/>
100% accessible validated (X)HTML - Blog: <https://www.vinc17.net/blog/>
Work: CR INRIA - computer arithmetic / AriC project (LIP, ENS-Lyon)

