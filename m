Return-Path: <linux-man+bounces-1864-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id B3E929BA5EE
	for <lists+linux-man@lfdr.de>; Sun,  3 Nov 2024 15:32:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 25098B21196
	for <lists+linux-man@lfdr.de>; Sun,  3 Nov 2024 14:32:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E5E1BF9E4;
	Sun,  3 Nov 2024 14:32:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=debian.org header.i=@debian.org header.b="Q+IX4rql"
X-Original-To: linux-man@vger.kernel.org
Received: from stravinsky.debian.org (stravinsky.debian.org [82.195.75.108])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DF284C81
	for <linux-man@vger.kernel.org>; Sun,  3 Nov 2024 14:32:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=82.195.75.108
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730644341; cv=none; b=nwuSnsfaA5jcOBB7IxP57hT0sqjvosdu3mjgsOYzeNprJEJe/6XBl9mkWB+nbNwHPveBkxdgJ7GsJSPBGV1M4UPtXNrVUTHj299qd6jvNELiGQJHuMv8WSLETcNNRnU0UDFPLCSi3YIRwMbVu78wLC3xyJgCoyKv18yoY4abvkI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730644341; c=relaxed/simple;
	bh=hM9REaEL+juKbWB50TCMfRrSMiKZ3pAI3Iol1+1mAl0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bhdAjSt6iRfHR3qquKza2NDEhCl7KWwBa7avm8qFfk+tUPMI/Rd8t3BxY4pV3AeLBOVU3+O99P9J4wyHZWBLeXk/FtQ/Ro8lhbwscaIilZiftSi0TJT3DI8ye5Ut+gY37UUBf21LYccKb86zjsF0u0ahmluvEHHZRxgg/KbeQwI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=debian.org; spf=none smtp.mailfrom=debian.org; dkim=pass (2048-bit key) header.d=debian.org header.i=@debian.org header.b=Q+IX4rql; arc=none smtp.client-ip=82.195.75.108
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=debian.org
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=debian.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=debian.org;
	s=smtpauto.stravinsky; h=X-Debian-User:In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=nCn61xfrKxFAUXdzREBpw/VvPzpD3gKXYPL1+Jo7ntc=; b=Q+IX4rqlZyTITLKjha1IBx07+5
	ELFYsO6ZvEUn0dCQ8aLMH+I1RPnQ/cR3A/IJCkiZGx8wvqo38EMNWE1Zdr0M0g1aRzSaBcwX3WHrk
	awbUlOwRaiyg5ZRHuxL+cBFSWy1k9dJe/DbcNPs6+4AlkFMgHZdZKrOjLuNVox4aU+5fW71fmbNh0
	puIQg78eu1wI3YsDJO14R6nliJLScuSaHYuN8yO6btCLrCBJEH/VyRg0DfMJeQlSKtLv/UGmVdLcz
	Zp3GUSRvS8+WIo64zfUMjyakOQCn20gaQ72VQzKmUv7KpENhbIcg2r+Rt2hleuIMuG5fC2CNvPTRZ
	ymkqTebQ==;
Received: from authenticated user
	by stravinsky.debian.org with esmtpsa (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
	(Exim 4.94.2)
	(envelope-from <cjwatson@debian.org>)
	id 1t7beK-00BVwr-Hk; Sun, 03 Nov 2024 14:32:16 +0000
Received: from ns1.rosewood.vpn.ucam.org ([172.20.153.2] helo=riva.ucam.org)
	by riva.rosewood.vpn.ucam.org with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <cjwatson@debian.org>)
	id 1t7beJ-006URf-06;
	Sun, 03 Nov 2024 14:32:15 +0000
Date: Sun, 3 Nov 2024 14:32:13 +0000
From: Colin Watson <cjwatson@debian.org>
To: Alejandro Colomar <alx@kernel.org>
Cc: "G. Branden Robinson" <g.branden.robinson@gmail.com>,
	linux-man@vger.kernel.org, groff@gnu.org
Subject: Re: [PATCH v2 1/3] proc_pid_fdinfo.5: Reduce indent for most of the
 page
Message-ID: <ZyeJbQdlXiMPcM7j@riva.ucam.org>
Mail-Followup-To: Alejandro Colomar <alx@kernel.org>,
	"G. Branden Robinson" <g.branden.robinson@gmail.com>,
	linux-man@vger.kernel.org, groff@gnu.org
References: <20241101132437.ahn7xdgvmqamatce@devuan>
 <CAP-5=fXo5XjxUXshm9eRX-hCcC5VWOv0C5LBZ3Z0_wQb+rdnsw@mail.gmail.com>
 <20241101200729.6wgyksuwdtsms3eu@devuan>
 <20241102100837.anfonowxfx4ekn3d@illithid>
 <20241102103937.ose4y72a7yl3dcmz@devuan>
 <20241102213620.kfccilxvhihwmnld@devuan>
 <Zya6ApewCZQNEfJb@riva.ucam.org>
 <20241103000534.th3jq7umwojlxnma@devuan>
 <ZybIG9xykOW6driW@riva.ucam.org>
 <20241103015934.gs67lyd2x77ehoev@devuan>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241103015934.gs67lyd2x77ehoev@devuan>
X-Debian-User: cjwatson

On Sun, Nov 03, 2024 at 02:59:34AM +0100, Alejandro Colomar wrote:
> On Sun, Nov 03, 2024 at 12:47:23AM +0000, Colin Watson wrote:
> > I'm not trying to stop you committing whatever you want to your
> > repository, of course, but I want to be clear that this doesn't actually
> > solve the right problem for manual page indexing.  The point of the
> > parsing code in mandb(8) - and I'm not claiming that it's great code or
> > the perfect design, just that it works most of the time - is to extract
> > the names and summary-descriptions from each page so that they can be
> > used by tools such as apropos(1) and whatis(1).  Splitting on section
> > boundaries is just the simplest part of that problem, and I don't think
> > that doing it in a separate program really gains anything.
> 
> Splitting on section boundaries is the minimum thing so that mandb(8)
> can use groff(1) directly to parse the section (instead of rolling your
> own man(7) parser).

No, it doesn't help, because mandb(8) still has to do a bunch of other
man(7) parsing on top of that (including the problem that caused me to
be CCed into this thread in the first place).  Delegating just the
section splitting to a separate tool would add quite a bit of complexity
without removing the need for man-db's own parser.

A separate tool is only useful if it solves the whole problem at hand,
rather than maybe 10% of it.  And even then it would need some careful
thought around integration.

Thanks,

-- 
Colin Watson (he/him)                              [cjwatson@debian.org]

