Return-Path: <linux-man+bounces-2863-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A1F2CAA915B
	for <lists+linux-man@lfdr.de>; Mon,  5 May 2025 12:50:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A03141895F14
	for <lists+linux-man@lfdr.de>; Mon,  5 May 2025 10:50:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5F9101F9F7C;
	Mon,  5 May 2025 10:50:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=debian.org header.i=@debian.org header.b="qXc23ZY7"
X-Original-To: linux-man@vger.kernel.org
Received: from stravinsky.debian.org (stravinsky.debian.org [82.195.75.108])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8AC2B1F4C98
	for <linux-man@vger.kernel.org>; Mon,  5 May 2025 10:50:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=82.195.75.108
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746442222; cv=none; b=ZQBnarJW7b6WZYGuEfqKTDk8/We9FhDWoha5Ym9ODHaJR6/xbNoJcb8y3i1WlhZ/cSKh20aVP7g80+DJ6jiTmoLIHHwQxWvN+ao7IIrKOpDehc9KqdC8dAe0zwtsSRS5G2+KlBAPinH7bf4oOEyGm04OuqmS6VolP5wL9a9iwBg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746442222; c=relaxed/simple;
	bh=JXBgAbZit0dycCWLeI4O/obZVIYI5vDHox+C5Okgn8g=;
	h=Date:From:To:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RHDD3sMmI5fNhrYLG2io9sU0ki0f9PGoHtOHQEAkIvRCwZbd02FJdamWRbzHOU7ayQDTzxL4HhWLJm8KnKficAyjDOk2ZP96HAcr+jbm7R+mEz7c5x85OdEL3xqZVO2sAy2Bx+S3aYafztU+ozGaGC0iTlI+6GWE5IR4SVKWbcI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=debian.org; spf=none smtp.mailfrom=debian.org; dkim=pass (2048-bit key) header.d=debian.org header.i=@debian.org header.b=qXc23ZY7; arc=none smtp.client-ip=82.195.75.108
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=debian.org
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=debian.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=debian.org;
	s=smtpauto.stravinsky; h=X-Debian-User:In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:To:From:Date:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=jiIjY3uQazIiCjXLFQ6hZP9QENx6oCPZrkJ1cHXGJ3A=; b=qXc23ZY7JJH4k+cT9kmgepsx3l
	W4HOWxXmep1ykOsIjBds6Sdk6EQXceQGcLxjq6G9bb4RdaQFVGzMjL56t7wKZsgKLnGlR1qnTZiSz
	eUK47NP+8BdPfIN41bjRepXZmxgCOdMS1Fx6RnOwZ8Gko1AfaBd5mo/7ES7b7XujSuwTwt1XOITCa
	Ug+LkOGdmKkOCDBiHiZ3BgLiZWHmdSA/fzNl/3u7KXanz0tna2LKVwOs+GyP3zt3veexfGS9iRbJH
	PzBN83pXvymbCYB79R3/+2yPZH5ianX5oYKgysTZcwK0ELx8mb/HDgDIAKSUMNWNp/1ER8Cyjwa6l
	m9OeoTyg==;
Received: from authenticated user
	by stravinsky.debian.org with esmtpsa (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
	(Exim 4.94.2)
	(envelope-from <cjwatson@debian.org>)
	id 1uBtOm-003jFg-OD; Mon, 05 May 2025 10:50:13 +0000
Received: from ns1.rosewood.vpn.ucam.org ([172.20.153.2] helo=riva.ucam.org)
	by riva.rosewood.vpn.ucam.org with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <cjwatson@debian.org>)
	id 1uBtOl-00Aip9-26;
	Mon, 05 May 2025 11:50:11 +0100
Date: Mon, 5 May 2025 11:50:10 +0100
From: Colin Watson <cjwatson@debian.org>
To: groff@gnu.org, linux-man@vger.kernel.org
Subject: Re: grof --run
Message-ID: <aBiX4joChgpehn0B@riva.ucam.org>
Mail-Followup-To: groff@gnu.org, linux-man@vger.kernel.org
References: <dbczpry2ukcht3d2pw4b2l7yla63eetfprfpblhvhwj2dpalvv@ba4itgqked3d>
 <20250502120139.yqstcq32hdtagozl@illithid>
 <fg6yru6cwn4itrn55mmnpt2eerjeph3z3ow3asowf2dhkq5iwv@qewmi2xgqgf6>
 <20250502141948.bszoef7vvhnuworm@illithid>
 <ina3kzpisr62v4dcrzrneae6mo5vlaoosgmlhaewpeqhusv6u6@xy33kozxiknz>
 <20250503004917.6hg6ymsdfnnn4o7v@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <20250503004917.6hg6ymsdfnnn4o7v@illithid>
X-Debian-User: cjwatson

On Fri, May 02, 2025 at 07:49:17PM -0500, G. Branden Robinson wrote:
>In my shell startup files, I make sure to update $MANPATH any time I
>update $PATH.
>
>This is not a common piece of cargo that Unix newcomers acquire;
>historically, I suppose a lot of man(1) implementations didn't support
>$MANPATH, but man-db has for decades, and I see mandoc(1) does too.

FWIW, with man-db, it's usually best for most people not to set MANPATH 
at all unless manual pages are somewhere that can't be straightforwardly 
derived from PATH.  man-db will normally work it out based on PATH, and 
that way it's harder for them to get out of sync.

-- 
Colin Watson (he/him)                              [cjwatson@debian.org]

