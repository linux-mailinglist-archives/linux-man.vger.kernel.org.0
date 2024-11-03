Return-Path: <linux-man+bounces-1858-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 136449BA36E
	for <lists+linux-man@lfdr.de>; Sun,  3 Nov 2024 02:19:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 8E9ABB2208B
	for <lists+linux-man@lfdr.de>; Sun,  3 Nov 2024 01:19:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1FEA02AF00;
	Sun,  3 Nov 2024 01:18:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=debian.org header.i=@debian.org header.b="oZZjPwIo"
X-Original-To: linux-man@vger.kernel.org
Received: from stravinsky.debian.org (stravinsky.debian.org [82.195.75.108])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60F7433FE;
	Sun,  3 Nov 2024 01:18:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=82.195.75.108
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730596736; cv=none; b=YBTdSmFYLyOPXWi6FqVjqMyuzdJiEkLvJFzGpWDtdAS7M9zsj8/QCUlmxLft45g3nkK6qgbalgB0tPLhV9/0PkI50qJV4Riz1uy/pu6vB4zNDF/tnrwvQus1B5soIwS86GBOQSQZ1fpEtWwdYbpIc7hYs+bvjigRmqZsLk38NQg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730596736; c=relaxed/simple;
	bh=WTX1ZWReIBnrdeQNOih4l4kEUIEo/nK+wfcp8IDoEM8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=lG2F4LJ3etXm8v5lIy8SGEo8QoRlmIt47ul7QDZfIwG1eUWD8VNhm5iBdrj2Z6E+KY4iV+bUU54n/qte/z2JHFLBHbvdmnhJOT2sMXsRGPnK4okh1NIqYi2LqGLOcLssgK/DVwej6wtHE02C4WAY/6CR12czRk9OjnByhA8PYus=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=debian.org; spf=none smtp.mailfrom=debian.org; dkim=pass (2048-bit key) header.d=debian.org header.i=@debian.org header.b=oZZjPwIo; arc=none smtp.client-ip=82.195.75.108
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=debian.org
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=debian.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=debian.org;
	s=smtpauto.stravinsky; h=X-Debian-User:In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=tXQXYJsNjDvSzDy6sM0+n74th0uBmgUZPr+cgVqYamw=; b=oZZjPwIoemtSxKJonQP5vJP0Cd
	EEy2ZE4tn6jEtgGO3UUiG4l90WvnonAm90MRDssjgA1cPAZzFwVzL/r64i7DQLmzT2+FGX9/lhZcR
	Bu8GmkuUMCFolHUDegMLu5kvZSyhsR0J/hP5su++QiHi3VZ3lKw521X1Z3T4LWCHGntwpLvAbMQ/y
	Bpgjze4aHbIjxHbnJpfFSRNN47VZyO05jDmwLMMTgJAB63D4X7cSvxFT8hI9mEk9iAuSmuqtc4+3R
	xJAp9/Fi/O32demqCie7LwoCaQgjO3+HosRHsrrcichLrauoRzMOFdbg1Fs8Z0Jw3hX3GHgkGOX81
	wenrq8rg==;
Received: from authenticated user
	by stravinsky.debian.org with esmtpsa (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
	(Exim 4.94.2)
	(envelope-from <cjwatson@debian.org>)
	id 1t7PGO-00B3pR-7h; Sun, 03 Nov 2024 01:18:44 +0000
Received: from ns1.rosewood.vpn.ucam.org ([172.20.153.2] helo=riva.ucam.org)
	by riva.rosewood.vpn.ucam.org with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <cjwatson@debian.org>)
	id 1t7PGN-004qFr-0R;
	Sun, 03 Nov 2024 01:18:43 +0000
Date: Sun, 3 Nov 2024 01:18:42 +0000
From: Colin Watson <cjwatson@debian.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Ian Rogers <irogers@google.com>, David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Jonathan Corbet <corbet@lwn.net>, dri-devel@lists.freedesktop.org,
	linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-man@vger.kernel.org, groff@gnu.org
Subject: Re: [PATCH v2 1/3] proc_pid_fdinfo.5: Reduce indent for most of the
 page
Message-ID: <ZybPcmC-93wvsxtr@riva.ucam.org>
Mail-Followup-To: "G. Branden Robinson" <g.branden.robinson@gmail.com>,
	Ian Rogers <irogers@google.com>, David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Jonathan Corbet <corbet@lwn.net>, dri-devel@lists.freedesktop.org,
	linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
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
 <20241103010929.ke6vf4amh76hyqb4@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241103010929.ke6vf4amh76hyqb4@illithid>
X-Debian-User: cjwatson

(now with some local vim macros fixed to stop accidentally corrupting
the To: lines of some of my outgoing emails ...)

On Sat, Nov 02, 2024 at 08:09:29PM -0500, G. Branden Robinson wrote:
> At 2024-11-03T00:47:23+0000, Colin Watson wrote:
> > and the fact that the NAME section has both semantic and
> > presentational meaning means that like it or not the parser needs to
> > be aware of this.)
> 
> Even if mandb(8) doesn't run groff to extract the summary descriptions/
> apropos lines, I think this feature might be useful to you for
> coverage/regression testing.  Presumably, for valid inputs, groff and
> mandb(8) should reach similar conclusions about how the text of a "Name"
> section is to be formatted.

Yes, that's a good point and I agree with that.

-- 
Colin Watson (he/him)                              [cjwatson@debian.org]

