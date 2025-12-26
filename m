Return-Path: <linux-man+bounces-4580-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 34170CDEC76
	for <lists+linux-man@lfdr.de>; Fri, 26 Dec 2025 15:53:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 967043007957
	for <lists+linux-man@lfdr.de>; Fri, 26 Dec 2025 14:52:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0B03923507C;
	Fri, 26 Dec 2025 14:52:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=debian.org header.i=@debian.org header.b="TRCSL2w3"
X-Original-To: linux-man@vger.kernel.org
Received: from stravinsky.debian.org (stravinsky.debian.org [82.195.75.108])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 215E4142E83
	for <linux-man@vger.kernel.org>; Fri, 26 Dec 2025 14:52:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=82.195.75.108
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766760760; cv=none; b=J/KqU0qH7fNTghRifSHWNr7SvpMILm5Bw6k3N6U6GsERRAkG4BMgGiZncWv+Sk+tPsMdNTHRplEkWFltkRSEodB5HN765CDhd/j4ff6Mq7JyjGAdXygo2lw+ky5TsqwbozUsznrUtr5pOBSg2q7C/sOW60qoRbPQzE5dd7bhaCs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766760760; c=relaxed/simple;
	bh=in4oaFGe+e9ZNO4eqJUhqsmpJ76hcf8Ii0yh14KVeg8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=BW1R7Fnn6Pwauwirmh0OGLSs8kkraktUlmz5zaCT+9xXN8wPfRwEGMh1C6GYJOTM+ccLLpQG0ijak4Y3vqF35oTp/dWnqZB2swdyRkd6rmjcLdPVtvXFRjiAC9zZqWwfypz18bHi+IuW9nSvUPzZMF/fRbfflfOaSeG/CpNB3QQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=debian.org; spf=none smtp.mailfrom=debian.org; dkim=pass (2048-bit key) header.d=debian.org header.i=@debian.org header.b=TRCSL2w3; arc=none smtp.client-ip=82.195.75.108
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=debian.org
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=debian.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=debian.org;
	s=smtpauto.stravinsky; h=X-Debian-User:In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=n/TNgfgB7edv3XW6lxpNRs0IOHBYepdlMPZh/5leD5U=; b=TRCSL2w3nCtsgqmVkp1fgvd9xw
	b7DrBwebxjHk+2Mzo9Mv0BGi74TH6r9LGfPecAbD6S5AJUsCDz9lBvstgeQjqbECBfowF88AHpRVk
	mNy/gE+PyUbydCs5glK/bJwNU5mq2mH4d8PqbVwWpY3k4rUjnKrdhogWA5eejH97423j0Jo4UIJbe
	e2jmOUlnOADCgKXvlWZW7vRxfwW05DkLpZ/ISfu4QJHZelmUpRxxrUU6OSGFiuSr/C/bp2NUIyjsc
	v1/3HZnN+MlMklg6T4cbx6j9RoUojVQg64WA3cUkVcWQi4vRTzQySDuKP0Y7zfDc6AZpCaGTXXQiq
	niBy+JWg==;
Received: from authenticated user
	by stravinsky.debian.org with esmtpsa (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
	(Exim 4.94.2)
	(envelope-from <smcv@debian.org>)
	id 1vZ9B2-008vIW-CZ; Fri, 26 Dec 2025 14:52:24 +0000
Date: Fri, 26 Dec 2025 14:52:22 +0000
From: Simon McVittie <smcv@debian.org>
To: Marc Haber <mh+debian-bugs@zugschlus.de>
Cc: Russ Allbery <rra@debian.org>, Alejandro Colomar <alx@kernel.org>,
	debian-policy@lists.debian.org,
	"Dr. Tobias Quathamer" <toddy@debian.org>,
	linux-man@vger.kernel.org, Helge Kreutzmann <debian@helgefjell.de>,
	"G. Branden Robinson" <branden@debian.org>,
	Colin Watson <cjwatson@debian.org>
Subject: Re: Stop compressing manual pages
Message-ID: <aU6hJsCVLgzpY9Ve@remnant.pseudorandom.co.uk>
References: <aUzUvdZEJpDHb3QX@meinfjell.helgefjelltest.de>
 <aUzUvdZEJpDHb3QX@meinfjell.helgefjelltest.de>
 <aU0WjfHED1esOwPy@devuan>
 <fec615b5-af5b-46cd-ae09-d9343db6da77@debian.org>
 <aU1D0aL00gy1V-NX@devuan>
 <87ms364c05.fsf@hope.eyrie.org>
 <aU5ovCzIf7t3ie_x@torres.zugschlus.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <aU5ovCzIf7t3ie_x@torres.zugschlus.de>
X-Debian-User: smcv

On Fri, 26 Dec 2025 at 11:51:40 +0100, Marc Haber wrote:
>In embedded and other small installations, I'd prefer everyting under 
>/usr/share/man just excluded from installations on the package manager 
>level, but I never have been able to find out how to rub dpkg 
>--path-exclude the right way to do that. While we're at it, exclude 
>everything under /usr/share/doc with the exception of 
>/usr/share/doc/*/copyright*

Here's how the semi-official debian:sid-slim, etc. Docker images do it:

https://github.com/debuerreotype/debuerreotype/blob/master/scripts/debuerreotype-slimify
https://github.com/debuerreotype/debuerreotype/blob/master/scripts/.slimify-excludes
(each non-comment line $x becomes "path-exclude $x" in /etc/dpkg.cfg.d/docker)
https://github.com/debuerreotype/debuerreotype/blob/master/scripts/.slimify-includes
(each non-comment line $x becomes "path-include $x" in /etc/dpkg.cfg.d/docker)

     smcv

