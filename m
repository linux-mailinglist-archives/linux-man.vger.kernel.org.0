Return-Path: <linux-man+bounces-1845-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A9AE9BA33E
	for <lists+linux-man@lfdr.de>; Sun,  3 Nov 2024 01:25:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3DA181F21A9A
	for <lists+linux-man@lfdr.de>; Sun,  3 Nov 2024 00:25:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 746C6B673;
	Sun,  3 Nov 2024 00:25:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=debian.org header.i=@debian.org header.b="NNturAPR"
X-Original-To: linux-man@vger.kernel.org
Received: from stravinsky.debian.org (stravinsky.debian.org [82.195.75.108])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1F3BAD2D;
	Sun,  3 Nov 2024 00:25:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=82.195.75.108
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730593507; cv=none; b=Knv6kGkKSHmnRrtR/W2WqsvzV51uiG2R8ReDfLuwesjlpXjbcHWlma9aKP9r7lg3/tPodqG+KVLoQar91mlOPdP4OAEq3vVme1+mZgHr9XAj1XYkH4wE4tegpcL6HuXtlcAHvsphf/Yb48Xs8auRE6lACVTeNq7AeJ4DrysLWEE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730593507; c=relaxed/simple;
	bh=D22Gz/Z9kgve6VcEIj1ypHm1rEOeN5VxcdNwajs3BRQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=nkZW56Idj/FX/P+0CJEkhJaqrdLoCsNabd410tVKgl1FdQ/uuMtvi4NF2InDAO+Cm5yXD2Ry5RXcEcoMYZ3PJ9hwnwsi5CSAw5kYb5+n3iWs/N1uwe24vB0a7RM8vx0wQXl21m5TlBcDZiiaSQWoGX6V5FzBKrfU8ETYV36Hd1E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=debian.org; spf=none smtp.mailfrom=debian.org; dkim=pass (2048-bit key) header.d=debian.org header.i=@debian.org header.b=NNturAPR; arc=none smtp.client-ip=82.195.75.108
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=debian.org
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=debian.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=debian.org;
	s=smtpauto.stravinsky; h=X-Debian-User:In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=3kS/UVmVDyI71Z9yQSfW9xsxDEcWDmKwrG8nTAZtBSA=; b=NNturAPRF3OuCUxqIHmJQGP61t
	AQUzJ/PCDKZvEpxfbL0mz4DC7KebGur7pw5CWM/V5W+Hvr6UPrsedT3N9WcFoXpGcEi/JwKIc2cpM
	uakGn1J2WrxQImRiPNUYxqHzxN7bdKS0C4O9118G2Un+s+SyNMB1iGupUHA80tcyN61HwQJFoNIfb
	Q//BmI8EriT+LG0XVdcLtB+T0Te2h6VhEe0q2BBJhsvso1gVm4AqRrHvG9SQmPMKLS05Q6vCRLAtQ
	2V2CZ7HppDh8O0bcLqQaVTk63x1nuUnZRya75APgPJLh8jvJfpGd4/RD2Hd5IyPtSZNQR/SMaUts5
	rQs5eeRQ==;
Received: from authenticated user
	by stravinsky.debian.org with esmtpsa (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
	(Exim 4.94.2)
	(envelope-from <cjwatson@debian.org>)
	id 1t7OQL-00B22N-1Z; Sun, 03 Nov 2024 00:24:57 +0000
Received: from ns1.rosewood.vpn.ucam.org ([172.20.153.2] helo=riva.ucam.org)
	by riva.rosewood.vpn.ucam.org with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <cjwatson@debian.org>)
	id 1t7OQJ-004io1-1u;
	Sun, 03 Nov 2024 00:24:55 +0000
Date: Sun, 3 Nov 2024 00:24:54 +0000
From: Colin Watson <cjwatson@debian.org>
To: Alejandro Colomar <alx@kernel.org>
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
Message-ID: <ZybC1lsbMb91DzFW@riva.ucam.org>
Mail-Followup-To: Alejandro Colomar <alx@kernel.org>,
	"G. Branden Robinson" <g.branden.robinson@gmail.com>,
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
X-Debian-User: cjwatson

On Sun, Nov 03, 2024 at 01:05:34AM +0100, Alejandro Colomar wrote:
> Are you sure?  With a small tweak, I get the following comparison:
> 
> 	alx@devuan:~/src/linux/man-pages/man-pages/main$ time lexgrog man/*/* | wc
> 	lexgrog: can't resolve man7/groff_man.7
> 	  12475   99295  919842

Comparing anything to lexgrog isn't very interesting; it's a debugging
tool and is not in itself very performance-sensitive.  As I've explained
elsewhere, the interesting thing is mandb, which uses the same code
in-process to scan a whole tree of pages in one go.  I do not expect to
ever want to replace that with a shell pipeline.

-- 
Colin Watson (he/him)                              [cjwatson@debian.org]

