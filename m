Return-Path: <linux-man+bounces-1849-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DE1B9BA360
	for <lists+linux-man@lfdr.de>; Sun,  3 Nov 2024 02:15:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 55447282AB0
	for <lists+linux-man@lfdr.de>; Sun,  3 Nov 2024 01:15:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 964D12AF00;
	Sun,  3 Nov 2024 01:15:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=chiark.greenend.org.uk header.i=@chiark.greenend.org.uk header.b="1szn5lWC"
X-Original-To: linux-man@vger.kernel.org
Received: from chiark.greenend.org.uk (permutation-city.chiark.greenend.org.uk [93.93.131.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8802833FE;
	Sun,  3 Nov 2024 01:15:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=93.93.131.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730596550; cv=none; b=ErRpuDS//WBPM9Wb3+fAkFKDXIE8b6HeJ/J8aWtfUIc7JIKRei1e3G3ZZt4M/r6pXsnXg494zStTa1wPoGEnB9yHzEZ4AJEfDN1H6lMelh3Q68XzUaRdUZHwtUmMDH+aacyluqKDYPx1ao+iFLJMIG9C0XMX7h83ObfMp89ncTA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730596550; c=relaxed/simple;
	bh=9+sfWe5DTppdkBK63wDI4UAYPWvSDfIFCh5NjA+1ygc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=CLmlyXL6Rf723aTBfL+emP47bAmErx6R4bGV1KoKW/TemvKbZhcFUrqiYHJy4JULLDE7YpuxrL+/l3I/vTM5q29EO/dRr4mIeTQy9IIJW7SjqPJWR1wW33xO2hNh9E1TeRMCCIxVXsWrnVarSeIS8GMMc0Z/pMEh3ZaRL6Q+kzs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=chiark.greenend.org.uk; spf=none smtp.mailfrom=chiark.greenend.org.uk; dkim=pass (2048-bit key) header.d=chiark.greenend.org.uk header.i=@chiark.greenend.org.uk header.b=1szn5lWC; arc=none smtp.client-ip=93.93.131.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=chiark.greenend.org.uk
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=chiark.greenend.org.uk
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=chiark.greenend.org.uk; s=n.chiark; h=DKIM-Signature-Warning:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Sender:Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:
	List-Archive; bh=K99DbM/X9UDHqpSWXZmsvhSxE/wI224pXodl18QBjjc=; b=1szn5lWCj0MX
	gtLNF6kOo6nFKs6bFCQSI0pAS2NpCHfz7ONVIRmyjk2IOVYg16FTFxxgCgnYBaTSElylSUb4s4lEj
	tuSbfMibikiHc4pFLr9IIQu0y5OfBCjGWtENWVaCjMZC7V8vA7aHvF2JP4FVdif/Jcu8HLejxngLm
	8aFp0uD14Ld/cQkFX/4EXzVc9gSsvy/UHPeJwGP12EznSzHZnStMMXxkjhXoA6UWG1+pE/TYoSLW5
	Q+jwfNBw1AE/alCeI5+YCk+TX+WbU6JckYan5uAjQ7Lte0aVzBwEXHEQMsKlf/Fs7eeDAmGtbNnSc
	U50F/3jX7gEAg4+DuT7Glg==;
Received: from [90.155.79.218] (helo=riva.rosewood.vpn.ucam.org)
	by chiark.greenend.org.uk (Debian Exim 4.94.2 #2) with esmtpsa
	(return-path cjwatson@chiark.greenend.org.uk)
	id 1t7Om4-0007mI-EQ; Sun, 03 Nov 2024 00:47:24 +0000
Received: from ns1.rosewood.vpn.ucam.org ([172.20.153.2] helo=riva.ucam.org)
	by riva.rosewood.vpn.ucam.org with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <cjwatson@chiark.greenend.org.uk>)
	id 1t7Om4-004mHG-0S;
	Sun, 03 Nov 2024 00:47:24 +0000
Date: Sun, 3 Nov 2024 00:47:23 +0000
From: Colin Watson <cjwatson@chiark.greenend.org.uk>
To: Alejandro Colomar <cjwatson@debian.org>
Cc: "G. Branden Robinson" <g.branden.robinson@gmail.com>,
	Ian Rogers <irogers@google.com>, David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Jonathan Corbet <corbet@lwn.net>, dri-devel@lists.freedesktop.org,
	linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-man@vger.kernel.org, groff@gnu.org
Subject: Re: [PATCH v2 1/3] proc_pid_fdinfo.5: Reduce indent for most of the
 page
Message-ID: <ZybIG9xykOW6driW@riva.ucam.org>
Mail-Followup-To: "G. Branden Robinson" <g.branden.robinson@gmail.com>,
	Ian Rogers <irogers@google.com>, David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Jonathan Corbet <corbet@lwn.net>, dri-devel@lists.freedesktop.org,
	linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-man@vger.kernel.org, groff@gnu.org
References: <20241015211719.1152862-1-irogers@google.com>
 <20241101132437.ahn7xdgvmqamatce@devuan>
 <CAP-5=fXo5XjxUXshm9eRX-hCcC5VWOv0C5LBZ3Z0_wQb+rdnsw@mail.gmail.com>
 <20241101200729.6wgyksuwdtsms3eu@devuan>
 <20241102100837.anfonowxfx4ekn3d@illithid>
 <20241102103937.ose4y72a7yl3dcmz@devuan>
 <20241102213620.kfccilxvhihwmnld@devuan>
 <Zya6ApewCZQNEfJb@riva.ucam.org>
 <20241103000534.th3jq7umwojlxnma@devuan>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241103000534.th3jq7umwojlxnma@devuan>
DKIM-Signature-Warning: NOTE REGARDING DKIM KEY COMPROMISE https://www.chiark.greenend.org.uk/dkim-rotate/README.txt https://www.chiark.greenend.org.uk/dkim-rotate/99/994dcb1603a1454f0f92dbe5c4081b04.pem

I'm not trying to stop you committing whatever you want to your
repository, of course, but I want to be clear that this doesn't actually
solve the right problem for manual page indexing.  The point of the
parsing code in mandb(8) - and I'm not claiming that it's great code or
the perfect design, just that it works most of the time - is to extract
the names and summary-descriptions from each page so that they can be
used by tools such as apropos(1) and whatis(1).  Splitting on section
boundaries is just the simplest part of that problem, and I don't think
that doing it in a separate program really gains anything.

(That's leaving aside things like localized man pages, which I know some
folks on the groff list tend to sniff at but I think they're important,
and the fact that the NAME section has both semantic and presentational
meaning means that like it or not the parser needs to be aware of this.)

-- 
Colin Watson (he/him)                              [cjwatson@debian.org]

