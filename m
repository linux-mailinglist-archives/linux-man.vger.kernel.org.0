Return-Path: <linux-man+bounces-1597-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 5443794BE13
	for <lists+linux-man@lfdr.de>; Thu,  8 Aug 2024 14:59:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0D79D1F2245C
	for <lists+linux-man@lfdr.de>; Thu,  8 Aug 2024 12:59:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5BD1E18DF7A;
	Thu,  8 Aug 2024 12:58:43 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from cventin.lip.ens-lyon.fr (cventin.lip.ens-lyon.fr [140.77.13.17])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 709A718CC16
	for <linux-man@vger.kernel.org>; Thu,  8 Aug 2024 12:58:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=140.77.13.17
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723121923; cv=none; b=Njc3iN7wi/lqZI9dBWcUc0Bl/BwqGXTl4+FK6bU8uGOzpIb7WjfU1k0UrbmecKLACLOUE7GA56wxSlRfHzEemDq7MO7Roj+vgmEcJl86LxwBA3fCVEu6XL3CUOiTKDmTTE321o9E3BE8iycX4HadKn+weLptCdbOA4WU+H1nBfA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723121923; c=relaxed/simple;
	bh=M9wLJSR9Xb/DdgNbDKsATTzcr388INrZinNXcBPQskk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=uiLvMl8Kbr6nf5aJhfOwzf6RAc+dF9C9Z0XHE2gGPClfcnhMK6klPRbc801d1YVEg9+iATCD3kyq1jF5GJGF+STi1Qw4WzG1TcFjTRm9pWXKr1hON1cwNkbTxuHbscuo3IeuyoHEqxoKqIc0wB5Z8L5lAZQpp5V2OTfuqHsMx4w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=vinc17.net; spf=pass smtp.mailfrom=vinc17.net; arc=none smtp.client-ip=140.77.13.17
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=vinc17.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=vinc17.net
Received: from vlefevre by cventin.lip.ens-lyon.fr with local (Exim 4.98)
	(envelope-from <vincent@vinc17.net>)
	id 1sc2j0-00000000qzT-3xCd;
	Thu, 08 Aug 2024 14:58:38 +0200
Date: Thu, 8 Aug 2024 14:58:38 +0200
From: Vincent Lefevre <vincent@vinc17.net>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Alejandro Colomar <alx@kernel.org>,
	Michael Kerrisk <mtk.manpages@gmail.com>, linux-man@vger.kernel.org,
	groff@gnu.org
Subject: Re: [PATCH] nextup.3: minor improvements
Message-ID: <20240808125838.GD2669@cventin.lip.ens-lyon.fr>
References: <20240807105617.GH3221@qaa.vinc17.org>
 <oa5aca4pqtnnwjopngqkouwueglyujmusnms535mgh4ipyawbk@4wonm4ymhcdv>
 <20240808025636.GE3086@qaa.vinc17.org>
 <wpkh52aryrsgp52qur6igf5uwidbhetszb4krfcfgfpyarv7yg@abea5srk4kuy>
 <20240808121603.fatotzqmtpbf2jez@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240808121603.fatotzqmtpbf2jez@illithid>
X-Mailer-Info: https://www.vinc17.net/mutt/
User-Agent: Mutt/2.2.13+77 (9dc98409) vl-169878 (2024-06-20)

On 2024-08-08 07:16:03 -0500, G. Branden Robinson wrote:
> At 2024-08-08T10:07:35+0200, Alejandro Colomar wrote:
> > Hmmm, I see.  Thanks!  I think "If x is ±0" is the clearest way to say
> > it.  I'm not sure if that glyph is available everywhere, though.  How
> > about "If x is 0 or -0"?
> 
> I think it's reasonable to assume that it's available.[1]  groff's
> terminal output devices will either output it as-is or substitute a
> fallback.
> 
> $ printf '±\n' | groff -K utf8 -T ascii | cat -s
> +-
> 
> An argument could be made that this fallback should render "+/-"
> instead.
> 
> With low-capability devices, there's often no single best answer to how
> one should limp along.

FYI, +-0 could be interpreted by the reader as in C, where a unary
minus operator is applied, then a unary plus operator. And about +/-0,
the "/" is already used a the division operator, so that this doesn't
help parsing.

So ideally, the fallback for "±0" should be "+0 or -0", which is
much more readable and less ambiguous than "+-0" or "+/-0". But
this would imply the following:

> In groff, of course, you can ask an output device whether it supports a
> given glyph and define a string appropriately--but the first part of
> that is not portable to formatters that don't implement groff
> extensions, and doing so could rouse the ire of Ingo Schwarze's
> mandoc(1).

Anyway, currently, for consistency, this should be "+0 or -0",
as this is already used:

cventin:~/software/man-pages> grep -r '\+0 or' man
man/man3/tgamma.3:Pole error: \fIx\fP is +0 or \-0
man/man3/tgamma.3:an argument of +0 or \-0 incorrectly produced a domain error
man/man3/pow.3:is +0 or \-0,
man/man3/pow.3:is +0 or \-0,
man/man3/atan2.3:is +0 or \-0, \-pi/2 is returned.
man/man3/atan2.3:is +0 or \-0, pi/2 is returned.
man/man3/cosh.3:is +0 or \-0, 1 is returned.
man/man3/erfc.3:is +0 or \-0, 1 is returned.

-- 
Vincent Lefèvre <vincent@vinc17.net> - Web: <https://www.vinc17.net/>
100% accessible validated (X)HTML - Blog: <https://www.vinc17.net/blog/>
Work: CR INRIA - computer arithmetic / AriC project (LIP, ENS-Lyon)

