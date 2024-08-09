Return-Path: <linux-man+bounces-1600-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D894C94CABC
	for <lists+linux-man@lfdr.de>; Fri,  9 Aug 2024 08:44:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7CFA91F22EF0
	for <lists+linux-man@lfdr.de>; Fri,  9 Aug 2024 06:44:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7924916D317;
	Fri,  9 Aug 2024 06:44:15 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from key0.esi.com.au (key0.esi.com.au [192.84.230.32])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A47D333CD1
	for <linux-man@vger.kernel.org>; Fri,  9 Aug 2024 06:44:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.84.230.32
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723185855; cv=none; b=kuHhmNM/jfUsty/hPxaRHilX4WHEphKZMBGVeWfoSAoXM5AsrZ2Bmp4JZVT2bRVAdwsM/ylmRoV7431O2GKhm+X6QW5Fep5RXCPfHCVjsRB84dI/t80QNS8zuYeQDmGPDVvboP6pWnfHdGK43KjUmlf4t366jscor6IF07mAI3c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723185855; c=relaxed/simple;
	bh=aPoWXdSJKKy5r6UnGrbFrVWbwJ3qBZP3WUO7HvwoSTk=;
	h=Date:From:To:cc:Subject:In-Reply-To:Message-ID:References:
	 MIME-Version:Content-Type; b=kJ2ydnpZ+NpRFk4TZ0vO7EgbjMyxstc+hzNITR3Rfilnmyu5+w3Q8Xs2xWKGq094uPnrTnzAeaFpnlroBXQObAV4vFwveBexSdUVad4PtwN2a7ZzeMnD0YXKq40ECTbpaTwChvYAvbBpc8yWHbObfJyaZJFB+3Sb5t4FsU/Ffbg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=esi.com.au; spf=pass smtp.mailfrom=esi.com.au; arc=none smtp.client-ip=192.84.230.32
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=esi.com.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=esi.com.au
Received: by key0.esi.com.au (Postfix, from userid 201)
	id ECB9820047478; Fri,  9 Aug 2024 16:37:19 +1000 (AEST)
Received: from localhost (localhost [127.0.0.1])
	by key0.esi.com.au (Postfix) with ESMTP id E832E3000012E;
	Fri,  9 Aug 2024 16:37:19 +1000 (AEST)
Date: Fri, 9 Aug 2024 16:37:19 +1000 (AEST)
From: Damian McGuckin <damianm@esi.com.au>
To: John Gardner <gardnerjohng@gmail.com>
cc: Dave Kemper <saint.snit@gmail.com>, Vincent Lefevre <vincent@vinc17.net>, 
    linux-man@vger.kernel.org, groff@gnu.org
Subject: Re: [PATCH] nextup.3: minor improvements
In-Reply-To: <CAGcdaje1Fo_DuFf87ST8rrNCHmXx8uEzjJCwHiZ2Wf47h_O0Pg@mail.gmail.com>
Message-ID: <605224ca-ba25-f585-3ed7-7e851cbf7db6@esi.com.au>
References: <20240807105617.GH3221@qaa.vinc17.org> <oa5aca4pqtnnwjopngqkouwueglyujmusnms535mgh4ipyawbk@4wonm4ymhcdv> <20240808025636.GE3086@qaa.vinc17.org> <wpkh52aryrsgp52qur6igf5uwidbhetszb4krfcfgfpyarv7yg@abea5srk4kuy> <20240808121603.fatotzqmtpbf2jez@illithid>
 <20240808125838.GD2669@cventin.lip.ens-lyon.fr> <CACRhBXPyVNN8q9pbeZSzSFj-nB1woJLWhTGw8N8yuBpJRyY6CQ@mail.gmail.com> <CAGcdaje1Fo_DuFf87ST8rrNCHmXx8uEzjJCwHiZ2Wf47h_O0Pg@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII

On Fri, 9 Aug 2024, John Gardner wrote:

>> So ideally, the fallback for "?0" should be "+0 or -0", which is
>> much more readable and less ambiguous than "+-0" or "+/-0".
>
>> For approximating ? in ASCII, is there some reason \z_+0 hasn't been
>> considered?

I had forgotten that approach.

The problem of discussing signed zeros goes beyond way beyond nextup.3.

I had a discussion with someone wanting to use the UTF-8 character that 
renders like \z_+0 inside comments in a C program to better document 
branch cuts for complex numbers. I was not enthused because I use an 
editor that does not understand UTF-8.

But I think the fact that "...+0 and -0" are used already makes the 
argument for consistency pretty compelling.

My 2c - Damian

