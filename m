Return-Path: <linux-man+bounces-2466-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 555A6A38729
	for <lists+linux-man@lfdr.de>; Mon, 17 Feb 2025 16:01:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D2C553A76BC
	for <lists+linux-man@lfdr.de>; Mon, 17 Feb 2025 15:00:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 171BB2222B1;
	Mon, 17 Feb 2025 15:00:19 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from brightrain.aerifal.cx (brightrain.aerifal.cx [104.156.224.86])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E884E21D58E
	for <linux-man@vger.kernel.org>; Mon, 17 Feb 2025 15:00:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=104.156.224.86
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739804418; cv=none; b=F9NtOjAIpso0m0Fu2LGPNxpEwg5IK3pBLuVreD/vDeWl68If+rr68xMs+Q1cYD/Eca1ApCNhmLNjH0I45uRShLAhKartfvmiQZpaMB69eAU4N1TUQYqdHVVRU9pzJPunmJ13HI7Ms3YyUsk0ncyvGqKClBlQANnk6/hcYllGmhA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739804418; c=relaxed/simple;
	bh=pvmkauSg4xsT3zccwjSO6WpkAILvS8yYvhYxapn7WKk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=hyc/CuHFmrMqqAve8193TzCpnmbehAeKY/LYGugKyVAgOxclOrlp5oSxE3VmCIhrgIWKDREiFzmocVQl/CFmDapYJetPNYyXPMe3P5xDC7rKBpCRkIQ4+3r34m5HlQfO+agHBw+qWUD1yzWX3tQB0f9b5AUHlNG7eWbCDVHaamU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=libc.org; spf=pass smtp.mailfrom=aerifal.cx; arc=none smtp.client-ip=104.156.224.86
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=libc.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=aerifal.cx
Date: Mon, 17 Feb 2025 09:44:58 -0500
From: Rich Felker <dalias@libc.org>
To: Alejandro Colomar <alx@kernel.org>
Cc: libc-help@sourceware.org, linux-man@vger.kernel.org,
	Karlson2k <k2k@narod.ru>, Tobias Stoeckmann <tobias@stoeckmann.org>,
	Serge Hallyn <serge@hallyn.com>, Iker Pedrosa <ipedrosa@redhat.com>,
	musl@lists.openwall.com
Subject: Re: [musl] Re: [shadow-maint/shadow] Add cheap defense mechanisms
 (PR #1171)
Message-ID: <20250217143829.GA1827@brightrain.aerifal.cx>
References: <shadow-maint/shadow/pull/1171@github.com>
 <shadow-maint/shadow/pull/1171/c2661802270@github.com>
 <p6zqecnj4czocoksbicabvp3ec4sgicejct6nhuq4mccisemig@2i3dhnffkav5>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <p6zqecnj4czocoksbicabvp3ec4sgicejct6nhuq4mccisemig@2i3dhnffkav5>
User-Agent: Mutt/1.9.5 (2018-04-13)

On Mon, Feb 17, 2025 at 10:42:06AM +0100, Alejandro Colomar wrote:
> Hi,
> 
> On Sun, Feb 16, 2025 at 06:15:18PM -0800, Karlson2k wrote:
> > Karlson2k left a comment (shadow-maint/shadow#1171)
> > 
> > Doesn't use of glibc extensions break functioning with non-glibc, like musl?
> 
> Hmmm, I didn't know musl doesn't support this.  It would be interesting
> to get them to support it.  I've CCd several interested parties in this
> email.

It's in the latest POSIX and we have supported it for a long time as
POSIX-future (since 2012/release 0.9.7).

> > Isn't it safe to use constructs like 
> > ``` C
> > shadow = fopen (SGROUP_FILE, "re");
> > if (NULL == shadow )
> >   shadow = fopen (SGROUP_FILE, "r");
> > ```
> > ?

Unfortunately this doesn't work because it's UB to pass any modes but
the standards-specified ones.

In any case use of fopen is just gratuitously bad for software that
targets POSIX. The right way to do things is a two-step open+fdopen.
This avoids needing to depend on new features to open and lets you use
all the modern open flags, openat if needed, etc.

Rich


P.S. Had to omit shadow-utils <~hallyn/shadow@lists.sr.ht> from CC
because my mail software rejects / in an address... gotta fix that.
Apologies.

